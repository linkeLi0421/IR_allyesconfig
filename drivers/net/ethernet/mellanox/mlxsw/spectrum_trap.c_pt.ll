; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.mlxsw_sp_trap_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp_trap_policer_item = type { %struct.devlink_trap_policer, i16 }
%struct.devlink_trap_policer = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.mlxsw_sp_trap_group_item = type { %struct.devlink_trap_group, i16, i8, i8 }
%struct.devlink_trap_group = type { ptr, i16, i8, i32 }
%struct.mlxsw_sp_trap_item = type { %struct.devlink_trap, [3 x %struct.mlxsw_listener], i8 }
%struct.devlink_trap = type { i32, i32, i8, i16, ptr, i16, i32 }
%struct.mlxsw_listener = type { i16, %union.anon.169, i32, i32, i8, i8, i8 }
%union.anon.169 = type { %struct.mlxsw_rx_listener }
%struct.mlxsw_rx_listener = type { ptr, i16, i8, i16 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlxsw_sp_trap = type { ptr, i32, ptr, i32, ptr, i32, i16, i64, [0 x i32] }
%struct.mlxsw_bus_info = type { ptr, ptr, ptr, %struct.mlxsw_fw_rev, [208 x i8], [16 x i8], i8, i8, [4 x i8] }
%struct.mlxsw_fw_rev = type { i16, i16, i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.121, [48 x i8], %union.anon.122, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.124, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.121 = type { i64 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.126, i32, i32, i32, i16, i16, %union.anon.128, i32, %union.anon.129, %union.anon.130, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.126 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mlxsw_sp_port = type { ptr, ptr, ptr, i16, i8, i16, i16, %struct.anon.161, %struct.anon.162, %struct.mlxsw_sp_port_mapping, %struct.anon.163, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.anon.165, i32, i32, ptr, i64 }
%struct.anon.161 = type { i8 }
%struct.anon.162 = type { ptr, ptr, ptr, i32 }
%struct.mlxsw_sp_port_mapping = type { i8, i8, i8, i8 }
%struct.anon.163 = type { %struct.rtnl_link_stats64, %struct.mlxsw_sp_port_xstats, %struct.delayed_work }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlxsw_sp_port_xstats = type { i64, [16 x i64], [16 x i64], [16 x i64], [16 x i64], [8 x i64], [8 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.165 = type { %struct.delayed_work, %struct.hwtstamp_config, i16, i16, %struct.mlxsw_sp_ptp_port_stats }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mlxsw_sp_ptp_port_stats = type { %struct.mlxsw_sp_ptp_port_dir_stats, %struct.mlxsw_sp_ptp_port_dir_stats }
%struct.mlxsw_sp_ptp_port_dir_stats = type { i64, i64 }
%struct.mlxsw_sp_port_pcpu_stats = type { i64, i64, i64, i64, %struct.u64_stats_sync, i32 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mlxsw_sp_sample_trigger = type { i32, i16 }
%struct.psample_metadata = type { i32, i32, i32, i16, i64, i64, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.160, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.160 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mlxsw_sp_sample_params = type { ptr, i32, i32, i8 }

@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c\00", [44 x i8] zeroinitializer }, align 32
@mlxsw_sp_trap_action_set.__msg = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"mlxsw_spectrum: Changing the action of source traps is not supported\00", [59 x i8] zeroinitializer }, align 32
@mlxsw_reg_qpcr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 16388, i16 40, ptr @.str.143 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_sp1_trap_ops = dso_local constant { %struct.mlxsw_sp_trap_ops, [24 x i8] } { %struct.mlxsw_sp_trap_ops { ptr @mlxsw_sp1_trap_groups_init, ptr @mlxsw_sp1_traps_init }, [24 x i8] zeroinitializer }, align 32
@mlxsw_sp2_trap_ops = dso_local constant { %struct.mlxsw_sp_trap_ops, [24 x i8] } { %struct.mlxsw_sp_trap_ops { ptr @mlxsw_sp2_trap_groups_init, ptr @mlxsw_sp2_traps_init }, [24 x i8] zeroinitializer }, align 32
@mlxsw_reg_htgt = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 28674, i16 32, ptr @.str.22 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 35, ptr null, ptr null }, align 1
@.str.1 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_htgt_pide\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_htgt_pid\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_htgt_type\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_htgt_trap_group\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_htgt_mirror_action\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_htgt_mirroring_agent\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_htgt_priority\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"reg_htgt_local_path_cpu_tclass\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_htgt_local_path_rdq\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"htgt\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_sp_trap_policer_items_arr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 1249, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Exceeded number of supported packet trap policers\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mlxsw_sp_trap_policer_items_arr_init\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_trap_policer_items_arr_init._entry_ptr = internal global ptr @mlxsw_sp_trap_policer_items_arr_init._entry, section ".printk_index", align 4
@mlxsw_sp_trap_policer_items_arr = internal constant { [20 x %struct.mlxsw_sp_trap_policer_item], [320 x i8] } { [20 x %struct.mlxsw_sp_trap_policer_item] [%struct.mlxsw_sp_trap_policer_item { %struct.devlink_trap_policer { i32 1, i64 10240, i64 4096, i64 2000000000, i64 1, i64 16777216, i64 16 }, i16 0 }, %struct.mlxsw_sp_trap_policer_item { %struct.devlink_trap_policer { i32 2, i64 128, i64 128, i64 2000000000, i64 1, i64 16777216, i64 16 }, i16 0 }, %struct.mlxsw_sp_trap_policer_item { %struct.devlink_trap_policer { i32 3, i64 128, i64 128, i64 2000000000, i64 1, i64 16777216, i64 16 }, i16 0 }, %struct.mlxsw_sp_trap_policer_item { %struct.devlink_trap_policer { i32 4, i64 128, i64 128, i64 2000000000, i64 1, i64 16777216, i64 16 }, i16 0 }, %struct.mlxsw_sp_trap_policer_item { %struct.devlink_trap_policer { i32 5, i64 16384, i64 8192, i64 2000000000, i64 1, i64 16777216, i64 16 }, i16 0 }, %struct.mlxsw_sp_trap_policer_item { %struct.devlink_trap_policer { i32 6, i64 128, i64 128, i64 2000000000, i64 1, i64 16777216, i64 16 }, i16 0 }, %struct.mlxsw_sp_trap_policer_item { %struct.devlink_trap_policer { i32 7, i64 1024, i64 512, i64 2000000000, i64 1, i64 16777216, i64 16 }, i16 0 }, %struct.mlxsw_sp_trap_policer_item { %struct.devlink_trap_policer { i32 8, i64 20480, i64 8192, i64 2000000000, i64 1, i64 16777216, i64 16 }, i16 0 }, %struct.mlxsw_sp_trap_policer_item { %struct.devlink_trap_policer { i32 9, i64 128, i64 128, i64 2000000000, i64 1, i64 16777216, i64 16 }, i16 0 }, %struct.mlxsw_sp_trap_policer_item { %struct.devlink_trap_policer { i32 10, i64 1024, i64 512, i64 2000000000, i64 1, i64 16777216, i64 16 }, i16 0 }, %struct.mlxsw_sp_trap_policer_item { %struct.devlink_trap_policer { i32 11, i64 256, i64 128, i64 2000000000, i64 1, i64 16777216, i64 16 }, i16 0 }, %struct.mlxsw_sp_trap_policer_item { %struct.devlink_trap_policer { i32 12, i64 128, i64 128, i64 2000000000, i64 1, i64 16777216, i64 16 }, i16 0 }, %struct.mlxsw_sp_trap_policer_item { %struct.devlink_trap_policer { i32 13, i64 128, i64 128, i64 2000000000, i64 1, i64 16777216, i64 16 }, i16 0 }, %struct.mlxsw_sp_trap_policer_item { %struct.devlink_trap_policer { i32 14, i64 1024, i64 512, i64 2000000000, i64 1, i64 16777216, i64 16 }, i16 0 }, %struct.mlxsw_sp_trap_policer_item { %struct.devlink_trap_policer { i32 15, i64 1024, i64 512, i64 2000000000, i64 1, i64 16777216, i64 16 }, i16 0 }, %struct.mlxsw_sp_trap_policer_item { %struct.devlink_trap_policer { i32 16, i64 24576, i64 16384, i64 2000000000, i64 1, i64 16777216, i64 16 }, i16 0 }, %struct.mlxsw_sp_trap_policer_item { %struct.devlink_trap_policer { i32 17, i64 19456, i64 8192, i64 2000000000, i64 1, i64 16777216, i64 16 }, i16 0 }, %struct.mlxsw_sp_trap_policer_item { %struct.devlink_trap_policer { i32 18, i64 1024, i64 512, i64 2000000000, i64 1, i64 16777216, i64 16 }, i16 0 }, %struct.mlxsw_sp_trap_policer_item { %struct.devlink_trap_policer { i32 19, i64 1024, i64 512, i64 2000000000, i64 1, i64 16777216, i64 16 }, i16 0 }, %struct.mlxsw_sp_trap_policer_item { %struct.devlink_trap_policer { i32 20, i64 10240, i64 4096, i64 2000000000, i64 1, i64 16777216, i64 16 }, i16 0 }], [320 x i8] zeroinitializer }, align 32
@mlxsw_sp_trap_group_items_arr = internal constant { [23 x %struct.mlxsw_sp_trap_group_item], [80 x i8] } { [23 x %struct.mlxsw_sp_trap_group_item] [%struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.27, i16 0, i8 1, i32 1 }, i16 28, i8 0, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.28, i16 1, i8 1, i32 1 }, i16 29, i8 0, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.29, i16 2, i8 1, i32 1 }, i16 30, i8 2, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.30, i16 4, i8 1, i32 1 }, i16 31, i8 0, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.31, i16 5, i8 1, i32 1 }, i16 32, i8 0, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.32, i16 6, i8 1, i32 2 }, i16 4, i8 5, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.33, i16 7, i8 1, i32 3 }, i16 5, i8 5, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.34, i16 8, i8 1, i32 4 }, i16 6, i8 5, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.35, i16 9, i8 1, i32 5 }, i16 7, i8 3, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.36, i16 10, i8 1, i32 6 }, i16 16, i8 2, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.37, i16 11, i8 1, i32 7 }, i16 12, i8 2, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.38, i16 12, i8 1, i32 8 }, i16 26, i8 5, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.39, i16 13, i8 1, i32 9 }, i16 9, i8 5, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.40, i16 14, i8 1, i32 10 }, i16 8, i8 4, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.41, i16 15, i8 1, i32 11 }, i16 22, i8 5, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.42, i16 16, i8 1, i32 12 }, i16 10, i8 5, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.43, i16 17, i8 1, i32 13 }, i16 19, i8 0, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.44, i16 18, i8 1, i32 14 }, i16 15, i8 2, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.45, i16 19, i8 1, i32 19 }, i16 14, i8 1, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.46, i16 20, i8 1, i32 15 }, i16 18, i8 2, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.47, i16 21, i8 1, i32 16 }, i16 20, i8 5, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.48, i16 22, i8 1, i32 17 }, i16 21, i8 2, i8 0 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.49, i16 24, i8 1, i32 18 }, i16 24, i8 4, i8 0 }], [80 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l2_drops\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l3_drops\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l3_exceptions\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tunnel_drops\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"acl_drops\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"stp\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lacp\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lldp\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mc_snooping\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dhcp\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"neigh_discovery\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bfd\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ospf\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bgp\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vrrp\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pim\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uc_loopback\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"local_delivery\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"external_delivery\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipv6\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ptp_event\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ptp_general\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"acl_trap\00", [23 x i8] zeroinitializer }, align 32
@mlxsw_sp_trap_items_arr = internal constant { [74 x %struct.mlxsw_sp_trap_item], [2048 x i8] } { [74 x %struct.mlxsw_sp_trap_item] [%struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 0, ptr @.str.50, i16 0, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 320, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 320 } }, i32 6, i32 15, i8 28, i8 28, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 1, ptr @.str.51, i16 0, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 328, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 328 } }, i32 6, i32 15, i8 28, i8 28, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 2, ptr @.str.52, i16 0, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 329, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 329 } }, i32 6, i32 15, i8 28, i8 28, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 3, ptr @.str.53, i16 0, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 330, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 330 } }, i32 6, i32 15, i8 28, i8 28, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 4, ptr @.str.54, i16 0, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 336, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 336 } }, i32 6, i32 15, i8 28, i8 28, i8 0 }, %struct.mlxsw_listener { i16 337, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 337 } }, i32 6, i32 15, i8 28, i8 28, i8 0 }, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 5, ptr @.str.55, i16 0, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 338, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 338 } }, i32 6, i32 15, i8 28, i8 28, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 6, ptr @.str.56, i16 1, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 304, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 304 } }, i32 6, i32 15, i8 29, i8 29, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 9, ptr @.str.57, i16 1, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 352, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 352 } }, i32 6, i32 15, i8 29, i8 29, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 10, ptr @.str.58, i16 1, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 353, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 353 } }, i32 6, i32 15, i8 29, i8 29, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 11, ptr @.str.59, i16 1, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 354, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 354 } }, i32 6, i32 15, i8 29, i8 29, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 12, ptr @.str.60, i16 1, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 355, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 355 } }, i32 6, i32 15, i8 29, i8 29, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 13, ptr @.str.61, i16 1, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 357, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 357 } }, i32 6, i32 15, i8 29, i8 29, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 14, ptr @.str.62, i16 1, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 359, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 359 } }, i32 6, i32 15, i8 29, i8 29, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 15, ptr @.str.63, i16 1, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 362, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 362 } }, i32 6, i32 15, i8 29, i8 29, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 16, ptr @.str.64, i16 1, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 432, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 432 } }, i32 6, i32 15, i8 29, i8 29, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 17, ptr @.str.65, i16 1, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 433, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 433 } }, i32 6, i32 15, i8 29, i8 29, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 1, i32 1, i8 1, i16 18, ptr @.str.66, i16 2, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 82, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 82 } }, i32 1, i32 15, i8 30, i8 30, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 1, i32 1, i8 1, i16 7, ptr @.str.67, i16 2, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 83, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 83 } }, i32 1, i32 15, i8 30, i8 30, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 1, i32 1, i8 1, i16 20, ptr @.str.68, i16 2, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 92, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 92 } }, i32 1, i32 15, i8 30, i8 30, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 1, i32 1, i8 1, i16 21, ptr @.str.69, i16 2, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 113, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 113 } }, i32 1, i32 15, i8 30, i8 30, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 1, i32 1, i8 1, i16 19, ptr @.str.70, i16 2, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 144, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 144 } }, i32 1, i32 15, i8 30, i8 30, i8 32 }, %struct.mlxsw_listener { i16 146, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 146 } }, i32 1, i32 15, i8 30, i8 30, i8 32 }, %struct.mlxsw_listener { i16 128, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 128 } }, i32 6, i32 15, i8 30, i8 30, i8 32 }], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 1, i32 1, i8 1, i16 22, ptr @.str.71, i16 2, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 379, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 379 } }, i32 6, i32 15, i8 30, i8 30, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 1, i32 1, i8 1, i16 23, ptr @.str.72, i16 2, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 380, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 380 } }, i32 6, i32 15, i8 30, i8 30, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 0, i16 92, ptr @.str.73, i16 1, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 376, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 376 } }, i32 6, i32 15, i8 29, i8 29, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 0, i16 93, ptr @.str.74, i16 1, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 377, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 377 } }, i32 6, i32 15, i8 29, i8 29, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 24, ptr @.str.75, i16 1, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 282, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 282 } }, i32 6, i32 15, i8 29, i8 29, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 1, i32 1, i8 1, i16 25, ptr @.str.76, i16 4, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 64, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 64 } }, i32 6, i32 15, i8 31, i8 31, i8 32 }, %struct.mlxsw_listener { i16 177, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 177 } }, i32 6, i32 15, i8 31, i8 31, i8 32 }, %struct.mlxsw_listener { i16 392, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 392 } }, i32 6, i32 15, i8 31, i8 31, i8 32 }], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 26, ptr @.str.77, i16 4, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 400, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 400 } }, i32 6, i32 15, i8 31, i8 31, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 27, ptr @.str.78, i16 5, i32 3 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 451, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_acl_drop_listener, i16 255, i8 0, i16 451 } }, i32 6, i32 15, i8 32, i8 27, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 28, ptr @.str.79, i16 5, i32 3 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 452, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_acl_drop_listener, i16 255, i8 0, i16 452 } }, i32 6, i32 15, i8 32, i8 27, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 29, ptr @.str.32, i16 6, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 16, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_no_mark_listener, i16 255, i8 0, i16 16 } }, i32 1, i32 3, i8 4, i8 4, i8 -96 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 30, ptr @.str.33, i16 7, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 17, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_no_mark_listener, i16 255, i8 0, i16 17 } }, i32 1, i32 3, i8 5, i8 5, i8 -96 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 31, ptr @.str.34, i16 8, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 19, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_ptp_listener, i16 255, i8 0, i16 19 } }, i32 1, i32 3, i8 6, i8 6, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 2, i8 1, i16 32, ptr @.str.80, i16 9, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 48, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 48 } }, i32 2, i32 3, i8 7, i8 7, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 33, ptr @.str.81, i16 9, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 49, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_no_mark_listener, i16 255, i8 0, i16 49 } }, i32 1, i32 3, i8 7, i8 7, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 34, ptr @.str.82, i16 9, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 50, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_no_mark_listener, i16 255, i8 0, i16 50 } }, i32 1, i32 3, i8 7, i8 7, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 35, ptr @.str.83, i16 9, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 52, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_no_mark_listener, i16 255, i8 0, i16 52 } }, i32 1, i32 3, i8 7, i8 7, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 36, ptr @.str.84, i16 9, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 51, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_no_mark_listener, i16 255, i8 0, i16 51 } }, i32 1, i32 3, i8 7, i8 7, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 2, i8 1, i16 37, ptr @.str.85, i16 9, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 101, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 101 } }, i32 2, i32 3, i8 7, i8 7, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 38, ptr @.str.86, i16 9, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 102, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_no_mark_listener, i16 255, i8 0, i16 102 } }, i32 1, i32 3, i8 7, i8 7, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 39, ptr @.str.87, i16 9, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 104, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_no_mark_listener, i16 255, i8 0, i16 104 } }, i32 1, i32 3, i8 7, i8 7, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 40, ptr @.str.88, i16 9, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 103, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_no_mark_listener, i16 255, i8 0, i16 103 } }, i32 1, i32 3, i8 7, i8 7, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 41, ptr @.str.89, i16 10, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 143, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 143 } }, i32 1, i32 3, i8 16, i8 16, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 42, ptr @.str.90, i16 10, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 105, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 105 } }, i32 1, i32 3, i8 16, i8 16, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 2, i8 1, i16 43, ptr @.str.91, i16 11, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 80, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 80 } }, i32 2, i32 3, i8 12, i8 12, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 2, i8 1, i16 44, ptr @.str.92, i16 11, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 81, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 81 } }, i32 2, i32 3, i8 12, i8 12, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 45, ptr @.str.93, i16 11, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 184, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_no_mark_listener, i16 255, i8 0, i16 184 } }, i32 1, i32 3, i8 12, i8 12, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 46, ptr @.str.94, i16 11, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 140, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 140 } }, i32 1, i32 3, i8 12, i8 12, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 47, ptr @.str.95, i16 11, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 141, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 141 } }, i32 1, i32 3, i8 12, i8 12, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 48, ptr @.str.96, i16 12, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 208, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 208 } }, i32 1, i32 3, i8 26, i8 26, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 49, ptr @.str.97, i16 12, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 209, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 209 } }, i32 1, i32 3, i8 26, i8 26, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 50, ptr @.str.98, i16 13, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 85, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 85 } }, i32 1, i32 3, i8 9, i8 9, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 51, ptr @.str.99, i16 13, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 100, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 100 } }, i32 1, i32 3, i8 9, i8 9, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 52, ptr @.str.100, i16 14, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 136, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 136 } }, i32 1, i32 3, i8 8, i8 8, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 53, ptr @.str.101, i16 14, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 137, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 137 } }, i32 1, i32 3, i8 8, i8 8, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 54, ptr @.str.102, i16 15, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 89, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 89 } }, i32 1, i32 3, i8 22, i8 22, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 55, ptr @.str.103, i16 15, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 122, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 122 } }, i32 1, i32 3, i8 22, i8 22, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 56, ptr @.str.104, i16 16, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 88, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 88 } }, i32 1, i32 3, i8 10, i8 10, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 57, ptr @.str.105, i16 16, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 121, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 121 } }, i32 1, i32 3, i8 10, i8 10, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 2, i8 1, i16 58, ptr @.str.43, i16 17, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 84, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_l3_mark_listener, i16 255, i8 0, i16 84 } }, i32 2, i32 3, i8 19, i8 19, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 59, ptr @.str.106, i16 18, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 95, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 95 } }, i32 1, i32 3, i8 15, i8 15, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 60, ptr @.str.107, i16 19, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 112, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 112 } }, i32 1, i32 3, i8 14, i8 14, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 61, ptr @.str.108, i16 18, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 97, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 97 } }, i32 1, i32 3, i8 15, i8 15, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 67, ptr @.str.109, i16 18, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 214, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 214 } }, i32 1, i32 3, i8 15, i8 15, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 68, ptr @.str.110, i16 18, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 215, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 215 } }, i32 1, i32 3, i8 15, i8 15, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 62, ptr @.str.111, i16 20, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 99, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 99 } }, i32 1, i32 3, i8 18, i8 18, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 63, ptr @.str.112, i16 20, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 111, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 111 } }, i32 1, i32 3, i8 18, i8 18, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 64, ptr @.str.113, i16 20, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 138, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 138 } }, i32 1, i32 3, i8 18, i8 18, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 65, ptr @.str.114, i16 20, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 139, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 139 } }, i32 1, i32 3, i8 18, i8 18, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 66, ptr @.str.115, i16 20, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 142, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_mark_listener, i16 255, i8 0, i16 142 } }, i32 1, i32 3, i8 18, i8 18, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 69, ptr @.str.47, i16 21, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 40, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_ptp_listener, i16 255, i8 0, i16 40 } }, i32 1, i32 3, i8 20, i8 20, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 70, ptr @.str.48, i16 22, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 41, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_no_mark_listener, i16 255, i8 0, i16 41 } }, i32 1, i32 3, i8 21, i8 21, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 1, i8 1, i16 72, ptr @.str.116, i16 24, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 448, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_no_mark_listener, i16 255, i8 0, i16 448 } }, i32 1, i32 3, i8 24, i8 24, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 0, i8 1, i16 90, ptr @.str.117, i16 1, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 305, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 0, i16 305 } }, i32 6, i32 15, i8 29, i8 29, i8 0 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }], [2048 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"source_mac_is_multicast\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vlan_tag_mismatch\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ingress_vlan_filter\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ingress_spanning_tree_filter\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"port_list_is_empty\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"port_loopback_filter\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"blackhole_route\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"non_ip\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uc_dip_over_mc_dmac\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dip_is_loopback_address\00", [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sip_is_mc\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sip_is_loopback_address\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ip_header_corrupted\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ipv4_sip_is_limited_bc\00", [41 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ipv6_mc_dip_reserved_scope\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ipv6_mc_dip_interface_local_scope\00", [62 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtu_value_is_too_small\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ttl_value_is_too_small\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mc_reverse_path_forwarding\00", [37 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reject_route\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unresolved_neigh\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ipv4_lpm_miss\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ipv6_lpm_miss\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"irif_disabled\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"erif_disabled\00", [18 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"non_routable_packet\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"decap_error\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"overlay_smac_is_mc\00", [45 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ingress_flow_action_drop\00", [39 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"egress_flow_action_drop\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"igmp_query\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"igmp_v1_report\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"igmp_v2_report\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"igmp_v3_report\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"igmp_v2_leave\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mld_query\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mld_v1_report\00", [18 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mld_v2_report\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mld_v1_done\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipv4_dhcp\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipv6_dhcp\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arp_request\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"arp_response\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arp_overlay\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipv6_neigh_solicit\00", [45 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipv6_neigh_advert\00", [46 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipv4_bfd\00", [23 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipv6_bfd\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipv4_ospf\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipv6_ospf\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipv4_bgp\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipv6_bgp\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipv4_vrrp\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipv6_vrrp\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipv4_pim\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipv6_pim\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"local_route\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"external_route\00", [17 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ipv6_uc_dip_link_local_scope\00", [35 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipv4_router_alert\00", [46 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipv6_router_alert\00", [46 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipv6_dip_all_nodes\00", [45 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ipv6_dip_all_routers\00", [43 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ipv6_router_solicit\00", [44 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipv6_router_advert\00", [45 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ipv6_redirect\00", [18 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"flow_action_trap\00", [47 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"blackhole_nexthop\00", [46 x i8] zeroinitializer }, align 32
@mlxsw_sp_rx_listener._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.118, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.mlxsw_sp_rx_listener = private unnamed_addr constant [21 x i8] c"mlxsw_sp_rx_listener\00", align 1
@mlxsw_sp_rx_listener._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @__func__.mlxsw_sp_rx_listener, ptr @.str, i32 70, ptr @.str.120, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Port %d: skb received for non-existent port\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mlxsw_sp_rx_listener._entry_ptr = internal global ptr @mlxsw_sp_rx_listener._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.122 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.124 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__mlxsw_sp_trap_group_init.__msg = internal constant [76 x i8] c"mlxsw_spectrum: Changing the policer binding of this group is not supported\00", align 1
@mlxsw_sp_trap_policer_bs.__msg = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"mlxsw_spectrum: Policer burst size is not power of two\00", [41 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_qpcr_clear_counter\00", [41 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_qpcr_pid\00", [19 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reg_qpcr_g\00", [21 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_qpcr_rate_type\00", [45 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_qpcr_violate_action\00", [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_qpcr_cir\00", [19 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_qpcr_ir_units\00", [46 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_qpcr_bytes\00", [17 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_qpcr_cbs\00", [19 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qpcr\00", [27 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_qpcr_violate_count\00", [41 x i8] zeroinitializer }, align 32
@mlxsw_sp1_trap_group_items_arr = internal constant { [1 x %struct.mlxsw_sp_trap_group_item], [16 x i8] } { [1 x %struct.mlxsw_sp_trap_group_item] [%struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.146, i16 23, i8 1, i32 0 }, i16 23, i8 0, i8 0 }], [16 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"acl_sample\00", [21 x i8] zeroinitializer }, align 32
@mlxsw_sp1_trap_items_arr = internal constant { [1 x %struct.mlxsw_sp_trap_item], [48 x i8] } { [1 x %struct.mlxsw_sp_trap_item] [%struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 2, i8 1, i16 71, ptr @.str.147, i16 23, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 56, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_sample_listener, i16 255, i8 0, i16 56 } }, i32 2, i32 3, i8 23, i8 23, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 0 }], [48 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"flow_action_sample\00", [45 x i8] zeroinitializer }, align 32
@mlxsw_sp2_trap_group_items_arr = internal constant { [2 x %struct.mlxsw_sp_trap_group_item], [32 x i8] } { [2 x %struct.mlxsw_sp_trap_group_item] [%struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.148, i16 3, i8 1, i32 20 }, i16 33, i8 0, i8 -128 }, %struct.mlxsw_sp_trap_group_item { %struct.devlink_trap_group { ptr @.str.146, i16 23, i8 1, i32 0 }, i16 23, i8 0, i8 -128 }], [32 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buffer_drops\00", [19 x i8] zeroinitializer }, align 32
@mlxsw_sp2_trap_items_arr = internal constant { [2 x %struct.mlxsw_sp_trap_item], [32 x i8] } { [2 x %struct.mlxsw_sp_trap_item] [%struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 0, i32 1, i8 1, i16 73, ptr @.str.149, i16 3, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 544, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_drop_listener, i16 255, i8 9, i16 544 } }, i32 1, i32 1, i8 33, i8 33, i8 32 }, %struct.mlxsw_listener zeroinitializer, %struct.mlxsw_listener zeroinitializer], i8 -128 }, %struct.mlxsw_sp_trap_item { %struct.devlink_trap { i32 2, i32 2, i8 1, i16 71, ptr @.str.147, i16 23, i32 1 }, [3 x %struct.mlxsw_listener] [%struct.mlxsw_listener { i16 545, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_sample_listener, i16 255, i8 1, i16 545 } }, i32 1, i32 1, i8 23, i8 23, i8 32 }, %struct.mlxsw_listener { i16 545, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_sample_tx_listener, i16 255, i8 14, i16 545 } }, i32 1, i32 1, i8 23, i8 23, i8 32 }, %struct.mlxsw_listener { i16 545, %union.anon.169 { %struct.mlxsw_rx_listener { ptr @mlxsw_sp_rx_sample_acl_listener, i16 255, i8 2, i16 545 } }, i32 1, i32 1, i8 23, i8 23, i8 32 }], i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"early_drop\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1552, i32 6 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1605, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_qpcr\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [19 x i8] c"mlxsw_sp1_trap_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1899, i32 32 }
@___asan_gen_.164 = private unnamed_addr constant [19 x i8] c"mlxsw_sp2_trap_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1967, i32 32 }
@___asan_gen_.167 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_htgt\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 33, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 6145, i32 1 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 6153, i32 1 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 6086, i32 1 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 6134, i32 1 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 6166, i32 1 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 6172, i32 1 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 6187, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 6195, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 6207, i32 1 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 6072, i32 1 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1249, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [32 x i8] c"mlxsw_sp_trap_policer_items_arr\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 452, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant [30 x i8] c"mlxsw_sp_trap_group_items_arr\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 515, i32 46 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 517, i32 12 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 522, i32 12 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 527, i32 12 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 532, i32 12 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 537, i32 12 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 542, i32 12 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 547, i32 12 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 552, i32 12 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 557, i32 12 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 562, i32 12 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 567, i32 12 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 572, i32 12 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 577, i32 12 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 582, i32 12 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 587, i32 12 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 592, i32 12 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 597, i32 12 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 602, i32 12 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 607, i32 12 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 612, i32 12 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 617, i32 12 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 622, i32 12 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 627, i32 12 }
@___asan_gen_.299 = private unnamed_addr constant [24 x i8] c"mlxsw_sp_trap_items_arr\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 633, i32 40 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 635, i32 11 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 641, i32 11 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 648, i32 11 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 654, i32 11 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 660, i32 11 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 667, i32 11 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 673, i32 11 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 679, i32 11 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 686, i32 11 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 693, i32 11 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 699, i32 11 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 705, i32 11 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 711, i32 11 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 718, i32 11 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 725, i32 11 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 733, i32 11 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 741, i32 11 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 748, i32 11 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 755, i32 11 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 761, i32 11 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 768, i32 11 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 780, i32 11 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 789, i32 11 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 798, i32 11 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 804, i32 11 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 810, i32 11 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 816, i32 11 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 828, i32 11 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 834, i32 11 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 843, i32 11 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 871, i32 11 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 878, i32 11 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 886, i32 11 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 894, i32 11 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 902, i32 11 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 910, i32 11 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 917, i32 11 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 925, i32 11 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 933, i32 11 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 941, i32 11 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 947, i32 11 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 953, i32 11 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 961, i32 11 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 969, i32 11 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 977, i32 11 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 985, i32 11 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 993, i32 11 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 999, i32 11 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1005, i32 11 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1011, i32 11 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1017, i32 11 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1023, i32 11 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1029, i32 11 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1035, i32 11 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1041, i32 11 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1047, i32 11 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1060, i32 11 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1067, i32 11 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1075, i32 11 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1083, i32 11 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1095, i32 11 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1103, i32 11 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1110, i32 11 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1117, i32 11 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1124, i32 11 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1131, i32 11 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1151, i32 11 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1158, i32 11 }
@___asan_gen_.506 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.512 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 69, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 271, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 695, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 723, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1722, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3575, i32 1 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3569, i32 1 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3563, i32 1 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3616, i32 1 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3672, i32 1 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3638, i32 1 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3603, i32 1 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3590, i32 1 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3629, i32 1 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3552, i32 1 }
@___asan_gen_.567 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3678, i32 1 }
@___asan_gen_.569 = private unnamed_addr constant [31 x i8] c"mlxsw_sp1_trap_group_items_arr\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1858, i32 1 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1860, i32 12 }
@___asan_gen_.575 = private unnamed_addr constant [25 x i8] c"mlxsw_sp1_trap_items_arr\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1867, i32 1 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1869, i32 11 }
@___asan_gen_.581 = private unnamed_addr constant [31 x i8] c"mlxsw_sp2_trap_group_items_arr\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1905, i32 1 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1907, i32 12 }
@___asan_gen_.587 = private unnamed_addr constant [25 x i8] c"mlxsw_sp2_trap_items_arr\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1921, i32 1 }
@___asan_gen_.590 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.591 = private constant [55 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1923, i32 11 }
@llvm.compiler.used = appending global [151 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp_rx_listener._entry, ptr @mlxsw_sp_rx_listener._entry_ptr, ptr @mlxsw_sp_trap_policer_items_arr_init._entry, ptr @mlxsw_sp_trap_policer_items_arr_init._entry_ptr, ptr @.str, ptr @mlxsw_sp_trap_action_set.__msg, ptr @mlxsw_reg_qpcr, ptr @mlxsw_sp1_trap_ops, ptr @mlxsw_sp2_trap_ops, ptr @mlxsw_reg_htgt, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @mlxsw_sp_trap_policer_items_arr, ptr @mlxsw_sp_trap_group_items_arr, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @mlxsw_sp_trap_items_arr, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @mlxsw_sp_rx_listener._rs, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @mlxsw_sp_trap_policer_bs.__msg, ptr @.str.125, ptr @.str.127, ptr @.str.129, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @mlxsw_sp1_trap_group_items_arr, ptr @.str.146, ptr @mlxsw_sp1_trap_items_arr, ptr @.str.147, ptr @mlxsw_sp2_trap_group_items_arr, ptr @.str.148, ptr @mlxsw_sp2_trap_items_arr, ptr @.str.149], section "llvm.metadata"
@0 = internal global [147 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_trap_action_set.__msg to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_qpcr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_trap_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_trap_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_htgt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_trap_policer_items_arr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_trap_policer_items_arr to i32), i32 1280, i32 1600, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_trap_group_items_arr to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_trap_items_arr to i32), i32 8288, i32 10336, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_rx_listener._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_rx_listener._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_trap_policer_bs.__msg to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_trap_group_items_arr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_trap_items_arr to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_trap_group_items_arr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_trap_items_arr to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_devlink_traps_init(ptr noundef %mlxsw_sp) local_unnamed_addr #0 align 64 {
entry:
  %spec_trap_items_arr.i.i = alloca ptr, align 4
  %spec_traps_count.i.i = alloca i32, align 4
  %spec_group_items_arr.i.i = alloca ptr, align 4
  %spec_groups_count.i.i = alloca i32, align 4
  %htgt_pl.i = alloca [32 x i8], align 1
  %qpcr_pl.i = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %trap1.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 23
  %0 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trap1.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %qpcr_pl.i) #10
  %2 = call ptr @memset(ptr %qpcr_pl.i, i32 255, i32 40)
  %policers_usage.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %1, i32 0, i32 8
  %max_policers.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %max_policers.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %max_policers.i, align 8
  %conv.i = trunc i64 %4 to i32
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %policers_usage.i, i32 noundef %conv.i) #10
  %conv2.mask.i = and i32 %call.i, 65535
  %conv3.i = zext i32 %conv2.mask.i to i64
  %5 = ptrtoint ptr %max_policers.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %max_policers.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %conv3.i)
  %cmp.i = icmp eq i64 %6, %conv3.i
  br i1 %cmp.i, label %mlxsw_sp_trap_cpu_policers_set.exit.thread, label %mlxsw_sp_trap_cpu_policers_set.exit, !prof !320

mlxsw_sp_trap_cpu_policers_set.exit.thread:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1217, i32 noundef 9, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %qpcr_pl.i) #10
  br label %cleanup

mlxsw_sp_trap_cpu_policers_set.exit:              ; preds = %entry
  %conv2.i = trunc i32 %call.i to i16
  %rem.i.i = and i32 %call.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv2.mask.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %policers_usage.i, i32 %div2.i.i
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %8, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %thin_policer_hw_id.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %thin_policer_hw_id.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv2.i, ptr %thin_policer_hw_id.i, align 8
  call fastcc void @mlxsw_reg_qpcr_pack(ptr noundef nonnull %qpcr_pl.i, i16 noundef zeroext %conv2.i, i32 noundef 1, i16 noundef zeroext 4) #10
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %10 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core.i, align 4
  %call32.i = call i32 @mlxsw_reg_write(ptr noundef %11, ptr noundef nonnull @mlxsw_reg_qpcr, ptr noundef nonnull %qpcr_pl.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %qpcr_pl.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool.not = icmp eq i32 %call32.i, 0
  br i1 %tobool.not, label %if.end, label %mlxsw_sp_trap_cpu_policers_set.exit.cleanup_crit_edge

mlxsw_sp_trap_cpu_policers_set.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_trap_cpu_policers_set.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %mlxsw_sp_trap_cpu_policers_set.exit
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %htgt_pl.i) #10
  %12 = call ptr @memset(ptr %htgt_pl.i, i32 255, i32 32)
  %13 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trap1.i, align 4
  %thin_policer_hw_id.i31 = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %thin_policer_hw_id.i31 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %thin_policer_hw_id.i31, align 8
  %conv.i32 = trunc i16 %16 to i8
  call fastcc void @mlxsw_reg_htgt_pack(ptr noundef nonnull %htgt_pl.i, i8 noundef zeroext 27, i8 noundef zeroext %conv.i32, i8 noundef zeroext 0, i8 noundef zeroext 1) #10
  %17 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %core.i, align 4
  %call.i34 = call i32 @mlxsw_reg_write(ptr noundef %18, ptr noundef nonnull @mlxsw_reg_htgt, ptr noundef nonnull %htgt_pl.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %htgt_pl.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool2.not = icmp eq i32 %call.i34, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %19 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core.i, align 4
  %call.i36 = call ptr @priv_to_devlink(ptr noundef %20) #10
  %21 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %trap1.i, align 4
  %policers_usage.i.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %22, i32 0, i32 8
  %max_policers.i.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %max_policers.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %max_policers.i.i, align 8
  %conv.i.i = trunc i64 %24 to i32
  %call.i.i = call i32 @_find_next_zero_bit_be(ptr noundef %policers_usage.i.i, i32 noundef %conv.i.i, i32 noundef 0) #10
  %conv277.i.i = sext i32 %call.i.i to i64
  %25 = ptrtoint ptr %max_policers.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %max_policers.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %conv277.i.i)
  %cmp78.i.i = icmp ugt i64 %26, %conv277.i.i
  br i1 %cmp78.i.i, label %for.body.preheader.i.i, label %if.end4.do.end.i.i_crit_edge

if.end4.do.end.i.i_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

for.body.preheader.i.i:                           ; preds = %if.end4
  %extract.t84.i.i = trunc i64 %26 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %.off0.i.i = phi i32 [ %extract.t.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %extract.t84.i.i, %for.body.preheader.i.i ]
  %i.080.i.i = phi i32 [ %call9.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %for.body.preheader.i.i ]
  %free_policers.079.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %inc.i.i = add i32 %free_policers.079.i.i, 1
  %add.i.i = add i32 %i.080.i.i, 1
  %call9.i.i = call i32 @_find_next_zero_bit_be(ptr noundef %policers_usage.i.i, i32 noundef %.off0.i.i, i32 noundef %add.i.i) #10
  %conv2.i.i = sext i32 %call9.i.i to i64
  %27 = ptrtoint ptr %max_policers.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %max_policers.i.i, align 8
  %cmp.i.i = icmp ugt i64 %28, %conv2.i.i
  %extract.t.i.i = trunc i64 %28 to i32
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc.i.i)
  %cmp10.i.i = icmp ult i32 %inc.i.i, 20
  br i1 %cmp10.i.i, label %for.end.i.i.do.end.i.i_crit_edge, label %if.end.i.i

for.end.i.i.do.end.i.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %for.end.i.i.do.end.i.i_crit_edge, %if.end4.do.end.i.i_crit_edge
  %bus_info.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %29 = ptrtoint ptr %bus_info.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus_info.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.23) #13
  br label %cleanup

if.end.i.i:                                       ; preds = %for.end.i.i
  %33 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i.i, i32 64) #10
  %34 = extractvalue { i32, i1 } %33, 1
  br i1 %34, label %kcalloc.exit.thread.i.i, label %if.end7.i.i.i.i, !prof !320

kcalloc.exit.thread.i.i:                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %22, align 8
  br label %cleanup

if.end7.i.i.i.i:                                  ; preds = %if.end.i.i
  %36 = extractvalue { i32, i1 } %33, 0
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef 3520) #14
  %37 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call8.i.i.i.i, ptr %22, align 8
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i.i.i.cleanup_crit_edge, label %if.end15.i.i

if.end7.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.i.i:                                     ; preds = %if.end7.i.i.i.i
  %policers_count.i.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %22, i32 0, i32 1
  %38 = ptrtoint ptr %policers_count.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %inc.i.i, ptr %policers_count.i.i, align 4
  %39 = call ptr @memcpy(ptr %call8.i.i.i.i, ptr @mlxsw_sp_trap_policer_items_arr, i32 1280)
  %40 = load i32, ptr %policers_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %40)
  %cmp1981.i.i = icmp ugt i32 %40, 20
  br i1 %cmp1981.i.i, label %if.end15.i.i.for.body21.i.i_crit_edge, label %if.end15.i.i.mlxsw_sp_trap_policer_items_arr_init.exit.i_crit_edge

if.end15.i.i.mlxsw_sp_trap_policer_items_arr_init.exit.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_trap_policer_items_arr_init.exit.i

if.end15.i.i.for.body21.i.i_crit_edge:            ; preds = %if.end15.i.i
  br label %for.body21.i.i

for.body21.i.i:                                   ; preds = %for.body21.i.i.for.body21.i.i_crit_edge, %if.end15.i.i.for.body21.i.i_crit_edge
  %i.183.i.i = phi i32 [ %inc36.i.i, %for.body21.i.i.for.body21.i.i_crit_edge ], [ 20, %if.end15.i.i.for.body21.i.i_crit_edge ]
  %41 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %22, align 8
  %arrayidx23.i.i = getelementptr %struct.mlxsw_sp_trap_policer_item, ptr %42, i32 %i.183.i.i
  %43 = call ptr @memcpy(ptr %arrayidx23.i.i, ptr @mlxsw_sp_trap_policer_items_arr, i32 64)
  %inc36.i.i = add nuw i32 %i.183.i.i, 1
  %44 = load ptr, ptr %22, align 8
  %arrayidx26.i.i = getelementptr %struct.mlxsw_sp_trap_policer_item, ptr %44, i32 %i.183.i.i
  %45 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %inc36.i.i, ptr %arrayidx26.i.i, align 8
  %46 = load ptr, ptr %22, align 8
  %init_rate.i.i = getelementptr %struct.mlxsw_sp_trap_policer_item, ptr %46, i32 %i.183.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %init_rate.i.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 1, ptr %init_rate.i.i, align 8
  %48 = load ptr, ptr %22, align 8
  %init_burst.i.i = getelementptr %struct.mlxsw_sp_trap_policer_item, ptr %48, i32 %i.183.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %init_burst.i.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 16, ptr %init_burst.i.i, align 8
  %50 = ptrtoint ptr %policers_count.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %policers_count.i.i, align 4
  %cmp19.i.i = icmp ult i32 %inc36.i.i, %51
  br i1 %cmp19.i.i, label %for.body21.i.i.for.body21.i.i_crit_edge, label %for.body21.i.i.mlxsw_sp_trap_policer_items_arr_init.exit.i_crit_edge

for.body21.i.i.mlxsw_sp_trap_policer_items_arr_init.exit.i_crit_edge: ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_trap_policer_items_arr_init.exit.i

for.body21.i.i.for.body21.i.i_crit_edge:          ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body21.i.i

mlxsw_sp_trap_policer_items_arr_init.exit.i:      ; preds = %for.body21.i.i.mlxsw_sp_trap_policer_items_arr_init.exit.i_crit_edge, %if.end15.i.i.mlxsw_sp_trap_policer_items_arr_init.exit.i_crit_edge
  %52 = phi i32 [ %40, %if.end15.i.i.mlxsw_sp_trap_policer_items_arr_init.exit.i_crit_edge ], [ %51, %for.body21.i.i.mlxsw_sp_trap_policer_items_arr_init.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp39.not.i = icmp eq i32 %52, 0
  br i1 %cmp39.not.i, label %mlxsw_sp_trap_policer_items_arr_init.exit.i.if.end8_crit_edge, label %mlxsw_sp_trap_policer_items_arr_init.exit.i.for.body.i_crit_edge

mlxsw_sp_trap_policer_items_arr_init.exit.i.for.body.i_crit_edge: ; preds = %mlxsw_sp_trap_policer_items_arr_init.exit.i
  br label %for.body.i

mlxsw_sp_trap_policer_items_arr_init.exit.i.if.end8_crit_edge: ; preds = %mlxsw_sp_trap_policer_items_arr_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %mlxsw_sp_trap_policer_items_arr_init.exit.i.for.body.i_crit_edge
  %i.040.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %mlxsw_sp_trap_policer_items_arr_init.exit.i.for.body.i_crit_edge ]
  %53 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %22, align 8
  %arrayidx.i = getelementptr %struct.mlxsw_sp_trap_policer_item, ptr %54, i32 %i.040.i
  %call3.i = call i32 @devlink_trap_policers_register(ptr noundef %call.i36, ptr noundef %arrayidx.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %for.inc.i, label %for.cond7.preheader.i

for.cond7.preheader.i:                            ; preds = %for.body.i
  %i.141.i = add i32 %i.040.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.141.i)
  %cmp842.i = icmp sgt i32 %i.141.i, -1
  br i1 %cmp842.i, label %for.cond7.preheader.i.for.body9.i_crit_edge, label %for.cond7.preheader.i.mlxsw_sp_trap_policers_init.exit_crit_edge

for.cond7.preheader.i.mlxsw_sp_trap_policers_init.exit_crit_edge: ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_trap_policers_init.exit

for.cond7.preheader.i.for.body9.i_crit_edge:      ; preds = %for.cond7.preheader.i
  br label %for.body9.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.040.i, 1
  %55 = ptrtoint ptr %policers_count.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %policers_count.i.i, align 4
  %cmp.i38 = icmp ult i32 %inc.i, %56
  br i1 %cmp.i38, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end8_crit_edge

for.inc.i.if.end8_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body9.i:                                      ; preds = %for.body9.i.for.body9.i_crit_edge, %for.cond7.preheader.i.for.body9.i_crit_edge
  %i.143.i = phi i32 [ %i.1.i, %for.body9.i.for.body9.i_crit_edge ], [ %i.141.i, %for.cond7.preheader.i.for.body9.i_crit_edge ]
  %57 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %22, align 8
  %arrayidx11.i = getelementptr %struct.mlxsw_sp_trap_policer_item, ptr %58, i32 %i.143.i
  call void @devlink_trap_policers_unregister(ptr noundef %call.i36, ptr noundef %arrayidx11.i, i32 noundef 1) #10
  %i.1.i = add nsw i32 %i.143.i, -1
  %cmp8.i.not = icmp eq i32 %i.143.i, 0
  br i1 %cmp8.i.not, label %for.body9.i.mlxsw_sp_trap_policers_init.exit_crit_edge, label %for.body9.i.for.body9.i_crit_edge

for.body9.i.for.body9.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9.i

for.body9.i.mlxsw_sp_trap_policers_init.exit_crit_edge: ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_trap_policers_init.exit

mlxsw_sp_trap_policers_init.exit:                 ; preds = %for.body9.i.mlxsw_sp_trap_policers_init.exit_crit_edge, %for.cond7.preheader.i.mlxsw_sp_trap_policers_init.exit_crit_edge
  %59 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %trap1.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  call void @kfree(ptr noundef %62) #10
  br label %cleanup

if.end8:                                          ; preds = %for.inc.i.if.end8_crit_edge, %mlxsw_sp_trap_policer_items_arr_init.exit.i.if.end8_crit_edge
  %63 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %core.i, align 4
  %call.i41 = call ptr @priv_to_devlink(ptr noundef %64) #10
  %65 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %trap1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spec_group_items_arr.i.i) #10
  %67 = ptrtoint ptr %spec_group_items_arr.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 -1 to ptr), ptr %spec_group_items_arr.i.i, align 4, !annotation !321
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spec_groups_count.i.i) #10
  %68 = ptrtoint ptr %spec_groups_count.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %spec_groups_count.i.i, align 4, !annotation !321
  %trap_ops.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 40
  %69 = ptrtoint ptr %trap_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %trap_ops.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %call.i.i43 = call i32 %72(ptr noundef %mlxsw_sp, ptr noundef nonnull %spec_group_items_arr.i.i, ptr noundef nonnull %spec_groups_count.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i43)
  %tobool.not.i.i44 = icmp eq i32 %call.i.i43, 0
  br i1 %tobool.not.i.i44, label %if.end.i.i46, label %if.end8.mlxsw_sp_trap_groups_init.exit.thread170_crit_edge

if.end8.mlxsw_sp_trap_groups_init.exit.thread170_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_trap_groups_init.exit.thread170

if.end.i.i46:                                     ; preds = %if.end8
  %73 = ptrtoint ptr %spec_groups_count.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %spec_groups_count.i.i, align 4
  %add.i.i45 = add i32 %74, 23
  %75 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i.i45, i32 16) #10
  %76 = extractvalue { i32, i1 } %75, 1
  br i1 %76, label %kcalloc.exit.thread.i.i47, label %if.end7.i.i.i.i78, !prof !320

kcalloc.exit.thread.i.i47:                        ; preds = %if.end.i.i46
  call void @__sanitizer_cov_trace_pc() #12
  %group_items_arr30.i.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %66, i32 0, i32 2
  %77 = ptrtoint ptr %group_items_arr30.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %group_items_arr30.i.i, align 8
  br label %mlxsw_sp_trap_groups_init.exit.thread170

if.end7.i.i.i.i78:                                ; preds = %if.end.i.i46
  %78 = extractvalue { i32, i1 } %75, 0
  %call8.i.i.i.i77 = call noalias align 128 ptr @__kmalloc(i32 noundef %78, i32 noundef 3520) #14
  %group_items_arr.i.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %66, i32 0, i32 2
  %79 = ptrtoint ptr %group_items_arr.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call8.i.i.i.i77, ptr %group_items_arr.i.i, align 8
  %tobool4.not.i.i = icmp eq ptr %call8.i.i.i.i77, null
  br i1 %tobool4.not.i.i, label %if.end7.i.i.i.i78.mlxsw_sp_trap_groups_init.exit.thread170_crit_edge, label %mlxsw_sp_trap_group_items_arr_init.exit.i

if.end7.i.i.i.i78.mlxsw_sp_trap_groups_init.exit.thread170_crit_edge: ; preds = %if.end7.i.i.i.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_trap_groups_init.exit.thread170

mlxsw_sp_trap_groups_init.exit.thread170:         ; preds = %if.end7.i.i.i.i78.mlxsw_sp_trap_groups_init.exit.thread170_crit_edge, %kcalloc.exit.thread.i.i47, %if.end8.mlxsw_sp_trap_groups_init.exit.thread170_crit_edge
  %retval.0.i.ph.i = phi i32 [ -12, %kcalloc.exit.thread.i.i47 ], [ -12, %if.end7.i.i.i.i78.mlxsw_sp_trap_groups_init.exit.thread170_crit_edge ], [ %call.i.i43, %if.end8.mlxsw_sp_trap_groups_init.exit.thread170_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spec_groups_count.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spec_group_items_arr.i.i) #10
  br label %err_trap_groups_init

mlxsw_sp_trap_group_items_arr_init.exit.i:        ; preds = %if.end7.i.i.i.i78
  %80 = call ptr @memcpy(ptr %call8.i.i.i.i77, ptr @mlxsw_sp_trap_group_items_arr, i32 368)
  %81 = ptrtoint ptr %group_items_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %group_items_arr.i.i, align 8
  %add.ptr.i.i81 = getelementptr %struct.mlxsw_sp_trap_group_item, ptr %82, i32 23
  %83 = ptrtoint ptr %spec_group_items_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %spec_group_items_arr.i.i, align 4
  %85 = ptrtoint ptr %spec_groups_count.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %spec_groups_count.i.i, align 4
  %mul9.i.i = shl i32 %86, 4
  %87 = call ptr @memcpy(ptr %add.ptr.i.i81, ptr %84, i32 %mul9.i.i)
  %groups_count10.i.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %66, i32 0, i32 3
  %88 = ptrtoint ptr %groups_count10.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add.i.i45, ptr %groups_count10.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spec_groups_count.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spec_group_items_arr.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i45)
  %cmp40.not.i = icmp eq i32 %add.i.i45, 0
  br i1 %cmp40.not.i, label %mlxsw_sp_trap_group_items_arr_init.exit.i.if.end12_crit_edge, label %for.body.lr.ph.i

mlxsw_sp_trap_group_items_arr_init.exit.i.if.end12_crit_edge: ; preds = %mlxsw_sp_trap_group_items_arr_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

for.body.lr.ph.i:                                 ; preds = %mlxsw_sp_trap_group_items_arr_init.exit.i
  %group_items_arr.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %66, i32 0, i32 2
  br label %for.body.i85

for.body.i85:                                     ; preds = %for.inc.i89.for.body.i85_crit_edge, %for.body.lr.ph.i
  %i.041.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i87, %for.inc.i89.for.body.i85_crit_edge ]
  %89 = ptrtoint ptr %group_items_arr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %group_items_arr.i, align 8
  %arrayidx.i82 = getelementptr %struct.mlxsw_sp_trap_group_item, ptr %90, i32 %i.041.i
  %call3.i83 = call i32 @devlink_trap_groups_register(ptr noundef %call.i41, ptr noundef %arrayidx.i82, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i83)
  %tobool4.not.i84 = icmp eq i32 %call3.i83, 0
  br i1 %tobool4.not.i84, label %for.inc.i89, label %for.cond7.preheader.i86

for.cond7.preheader.i86:                          ; preds = %for.body.i85
  %i.142.i = add i32 %i.041.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.142.i)
  %cmp843.i = icmp sgt i32 %i.142.i, -1
  br i1 %cmp843.i, label %for.cond7.preheader.i86.for.body9.i93_crit_edge, label %for.cond7.preheader.i86.mlxsw_sp_trap_groups_init.exit_crit_edge

for.cond7.preheader.i86.mlxsw_sp_trap_groups_init.exit_crit_edge: ; preds = %for.cond7.preheader.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_trap_groups_init.exit

for.cond7.preheader.i86.for.body9.i93_crit_edge:  ; preds = %for.cond7.preheader.i86
  br label %for.body9.i93

for.inc.i89:                                      ; preds = %for.body.i85
  %inc.i87 = add nuw i32 %i.041.i, 1
  %91 = ptrtoint ptr %groups_count10.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %groups_count10.i.i, align 4
  %cmp.i88 = icmp ult i32 %inc.i87, %92
  br i1 %cmp.i88, label %for.inc.i89.for.body.i85_crit_edge, label %for.inc.i89.if.end12_crit_edge

for.inc.i89.if.end12_crit_edge:                   ; preds = %for.inc.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

for.inc.i89.for.body.i85_crit_edge:               ; preds = %for.inc.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i85

for.body9.i93:                                    ; preds = %for.body9.i93.for.body9.i93_crit_edge, %for.cond7.preheader.i86.for.body9.i93_crit_edge
  %i.144.i = phi i32 [ %i.1.i91, %for.body9.i93.for.body9.i93_crit_edge ], [ %i.142.i, %for.cond7.preheader.i86.for.body9.i93_crit_edge ]
  %93 = ptrtoint ptr %group_items_arr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %group_items_arr.i, align 8
  %arrayidx11.i90 = getelementptr %struct.mlxsw_sp_trap_group_item, ptr %94, i32 %i.144.i
  call void @devlink_trap_groups_unregister(ptr noundef %call.i41, ptr noundef %arrayidx11.i90, i32 noundef 1) #10
  %i.1.i91 = add nsw i32 %i.144.i, -1
  %cmp8.i92.not = icmp eq i32 %i.144.i, 0
  br i1 %cmp8.i92.not, label %for.body9.i93.mlxsw_sp_trap_groups_init.exit_crit_edge, label %for.body9.i93.for.body9.i93_crit_edge

for.body9.i93.for.body9.i93_crit_edge:            ; preds = %for.body9.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9.i93

for.body9.i93.mlxsw_sp_trap_groups_init.exit_crit_edge: ; preds = %for.body9.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_trap_groups_init.exit

mlxsw_sp_trap_groups_init.exit:                   ; preds = %for.body9.i93.mlxsw_sp_trap_groups_init.exit_crit_edge, %for.cond7.preheader.i86.mlxsw_sp_trap_groups_init.exit_crit_edge
  %95 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %trap1.i, align 4
  %group_items_arr.i36.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %group_items_arr.i36.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %group_items_arr.i36.i, align 8
  call void @kfree(ptr noundef %98) #10
  br label %err_trap_groups_init

if.end12:                                         ; preds = %for.inc.i89.if.end12_crit_edge, %mlxsw_sp_trap_group_items_arr_init.exit.i.if.end12_crit_edge
  %99 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %core.i, align 4
  %call.i97 = call ptr @priv_to_devlink(ptr noundef %100) #10
  %101 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %trap1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spec_trap_items_arr.i.i) #10
  %103 = ptrtoint ptr %spec_trap_items_arr.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 -1 to ptr), ptr %spec_trap_items_arr.i.i, align 4, !annotation !321
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spec_traps_count.i.i) #10
  %104 = ptrtoint ptr %spec_traps_count.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -1, ptr %spec_traps_count.i.i, align 4, !annotation !321
  %105 = ptrtoint ptr %trap_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %trap_ops.i.i, align 4
  %traps_init.i.i = getelementptr inbounds %struct.mlxsw_sp_trap_ops, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %traps_init.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %traps_init.i.i, align 4
  %call.i.i100 = call i32 %108(ptr noundef %mlxsw_sp, ptr noundef nonnull %spec_trap_items_arr.i.i, ptr noundef nonnull %spec_traps_count.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i100)
  %tobool.not.i.i101 = icmp eq i32 %call.i.i100, 0
  br i1 %tobool.not.i.i101, label %if.end.i.i103, label %if.end12.mlxsw_sp_traps_init.exit.thread175_crit_edge

if.end12.mlxsw_sp_traps_init.exit.thread175_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_traps_init.exit.thread175

if.end.i.i103:                                    ; preds = %if.end12
  %109 = ptrtoint ptr %spec_traps_count.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %spec_traps_count.i.i, align 4
  %add.i.i102 = add i32 %110, 74
  %111 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i.i102, i32 112) #10
  %112 = extractvalue { i32, i1 } %111, 1
  br i1 %112, label %kcalloc.exit.thread.i.i104, label %if.end7.i.i.i.i136, !prof !320

kcalloc.exit.thread.i.i104:                       ; preds = %if.end.i.i103
  call void @__sanitizer_cov_trace_pc() #12
  %trap_items_arr30.i.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %102, i32 0, i32 4
  %113 = ptrtoint ptr %trap_items_arr30.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %trap_items_arr30.i.i, align 8
  br label %mlxsw_sp_traps_init.exit.thread175

if.end7.i.i.i.i136:                               ; preds = %if.end.i.i103
  %114 = extractvalue { i32, i1 } %111, 0
  %call8.i.i.i.i135 = call noalias align 128 ptr @__kmalloc(i32 noundef %114, i32 noundef 3520) #14
  %trap_items_arr.i.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %102, i32 0, i32 4
  %115 = ptrtoint ptr %trap_items_arr.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call8.i.i.i.i135, ptr %trap_items_arr.i.i, align 8
  %tobool4.not.i.i138 = icmp eq ptr %call8.i.i.i.i135, null
  br i1 %tobool4.not.i.i138, label %if.end7.i.i.i.i136.mlxsw_sp_traps_init.exit.thread175_crit_edge, label %mlxsw_sp_trap_items_arr_init.exit.i

if.end7.i.i.i.i136.mlxsw_sp_traps_init.exit.thread175_crit_edge: ; preds = %if.end7.i.i.i.i136
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_traps_init.exit.thread175

mlxsw_sp_traps_init.exit.thread175:               ; preds = %if.end7.i.i.i.i136.mlxsw_sp_traps_init.exit.thread175_crit_edge, %kcalloc.exit.thread.i.i104, %if.end12.mlxsw_sp_traps_init.exit.thread175_crit_edge
  %retval.0.i.ph.i140 = phi i32 [ -12, %kcalloc.exit.thread.i.i104 ], [ -12, %if.end7.i.i.i.i136.mlxsw_sp_traps_init.exit.thread175_crit_edge ], [ %call.i.i100, %if.end12.mlxsw_sp_traps_init.exit.thread175_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spec_traps_count.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spec_trap_items_arr.i.i) #10
  br label %err_traps_init

mlxsw_sp_trap_items_arr_init.exit.i:              ; preds = %if.end7.i.i.i.i136
  %116 = call ptr @memcpy(ptr %call8.i.i.i.i135, ptr @mlxsw_sp_trap_items_arr, i32 8288)
  %117 = ptrtoint ptr %trap_items_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %trap_items_arr.i.i, align 8
  %add.ptr.i.i142 = getelementptr %struct.mlxsw_sp_trap_item, ptr %118, i32 74
  %119 = ptrtoint ptr %spec_trap_items_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %spec_trap_items_arr.i.i, align 4
  %121 = ptrtoint ptr %spec_traps_count.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %spec_traps_count.i.i, align 4
  %mul9.i.i143 = mul i32 %122, 112
  %123 = call ptr @memcpy(ptr %add.ptr.i.i142, ptr %120, i32 %mul9.i.i143)
  %traps_count10.i.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %102, i32 0, i32 5
  %124 = ptrtoint ptr %traps_count10.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %add.i.i102, ptr %traps_count10.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spec_traps_count.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spec_trap_items_arr.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i102)
  %cmp42.not.i = icmp eq i32 %add.i.i102, 0
  br i1 %cmp42.not.i, label %mlxsw_sp_trap_items_arr_init.exit.i.cleanup_crit_edge, label %for.body.lr.ph.i144

mlxsw_sp_trap_items_arr_init.exit.i.cleanup_crit_edge: ; preds = %mlxsw_sp_trap_items_arr_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i144:                              ; preds = %mlxsw_sp_trap_items_arr_init.exit.i
  %trap_items_arr.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %102, i32 0, i32 4
  br label %for.body.i146

for.body.i146:                                    ; preds = %for.inc.i150.for.body.i146_crit_edge, %for.body.lr.ph.i144
  %i.043.i = phi i32 [ 0, %for.body.lr.ph.i144 ], [ %inc.i148, %for.inc.i150.for.body.i146_crit_edge ]
  %125 = ptrtoint ptr %trap_items_arr.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %trap_items_arr.i, align 8
  %arrayidx.i145 = getelementptr %struct.mlxsw_sp_trap_item, ptr %126, i32 %i.043.i
  %call4.i = call i32 @devlink_traps_register(ptr noundef %call.i97, ptr noundef %arrayidx.i145, i32 noundef 1, ptr noundef %mlxsw_sp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %for.inc.i150, label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.body.i146
  %i.144.i147 = add i32 %i.043.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.144.i147)
  %cmp945.i = icmp sgt i32 %i.144.i147, -1
  br i1 %cmp945.i, label %for.cond8.preheader.i.for.body10.i_crit_edge, label %for.cond8.preheader.i.mlxsw_sp_traps_init.exit_crit_edge

for.cond8.preheader.i.mlxsw_sp_traps_init.exit_crit_edge: ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_traps_init.exit

for.cond8.preheader.i.for.body10.i_crit_edge:     ; preds = %for.cond8.preheader.i
  br label %for.body10.i

for.inc.i150:                                     ; preds = %for.body.i146
  %inc.i148 = add nuw i32 %i.043.i, 1
  %127 = ptrtoint ptr %traps_count10.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %traps_count10.i.i, align 4
  %cmp.i149 = icmp ult i32 %inc.i148, %128
  br i1 %cmp.i149, label %for.inc.i150.for.body.i146_crit_edge, label %for.inc.i150.cleanup_crit_edge

for.inc.i150.cleanup_crit_edge:                   ; preds = %for.inc.i150
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i150.for.body.i146_crit_edge:             ; preds = %for.inc.i150
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i146

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.cond8.preheader.i.for.body10.i_crit_edge
  %i.146.i = phi i32 [ %i.1.i151, %for.body10.i.for.body10.i_crit_edge ], [ %i.144.i147, %for.cond8.preheader.i.for.body10.i_crit_edge ]
  %129 = ptrtoint ptr %trap_items_arr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %trap_items_arr.i, align 8
  %arrayidx12.i = getelementptr %struct.mlxsw_sp_trap_item, ptr %130, i32 %i.146.i
  call void @devlink_traps_unregister(ptr noundef %call.i97, ptr noundef %arrayidx12.i, i32 noundef 1) #10
  %i.1.i151 = add nsw i32 %i.146.i, -1
  %cmp9.i.not = icmp eq i32 %i.146.i, 0
  br i1 %cmp9.i.not, label %for.body10.i.mlxsw_sp_traps_init.exit_crit_edge, label %for.body10.i.for.body10.i_crit_edge

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10.i

for.body10.i.mlxsw_sp_traps_init.exit_crit_edge:  ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_traps_init.exit

mlxsw_sp_traps_init.exit:                         ; preds = %for.body10.i.mlxsw_sp_traps_init.exit_crit_edge, %for.cond8.preheader.i.mlxsw_sp_traps_init.exit_crit_edge
  %131 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %trap1.i, align 4
  %trap_items_arr.i38.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %132, i32 0, i32 4
  %133 = ptrtoint ptr %trap_items_arr.i38.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %trap_items_arr.i38.i, align 8
  call void @kfree(ptr noundef %134) #10
  br label %err_traps_init

err_traps_init:                                   ; preds = %mlxsw_sp_traps_init.exit, %mlxsw_sp_traps_init.exit.thread175
  %retval.0.i152178 = phi i32 [ %retval.0.i.ph.i140, %mlxsw_sp_traps_init.exit.thread175 ], [ %call4.i, %mlxsw_sp_traps_init.exit ]
  call fastcc void @mlxsw_sp_trap_groups_fini(ptr noundef %mlxsw_sp)
  br label %err_trap_groups_init

err_trap_groups_init:                             ; preds = %err_traps_init, %mlxsw_sp_trap_groups_init.exit, %mlxsw_sp_trap_groups_init.exit.thread170
  %err.0 = phi i32 [ %call3.i83, %mlxsw_sp_trap_groups_init.exit ], [ %retval.0.i152178, %err_traps_init ], [ %retval.0.i.ph.i, %mlxsw_sp_trap_groups_init.exit.thread170 ]
  %135 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %core.i, align 4
  %call.i154 = call ptr @priv_to_devlink(ptr noundef %136) #10
  %137 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %trap1.i, align 4
  %policers_count.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %policers_count.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %policers_count.i, align 4
  %i.07.i = add i32 %140, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.07.i)
  %cmp8.i156 = icmp sgt i32 %i.07.i, -1
  br i1 %cmp8.i156, label %err_trap_groups_init.for.body.i159_crit_edge, label %err_trap_groups_init.mlxsw_sp_trap_policers_fini.exit_crit_edge

err_trap_groups_init.mlxsw_sp_trap_policers_fini.exit_crit_edge: ; preds = %err_trap_groups_init
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_trap_policers_fini.exit

err_trap_groups_init.for.body.i159_crit_edge:     ; preds = %err_trap_groups_init
  br label %for.body.i159

for.body.i159:                                    ; preds = %for.body.i159.for.body.i159_crit_edge, %err_trap_groups_init.for.body.i159_crit_edge
  %i.09.i = phi i32 [ %i.0.i, %for.body.i159.for.body.i159_crit_edge ], [ %i.07.i, %err_trap_groups_init.for.body.i159_crit_edge ]
  %141 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %138, align 8
  %arrayidx.i157 = getelementptr %struct.mlxsw_sp_trap_policer_item, ptr %142, i32 %i.09.i
  call void @devlink_trap_policers_unregister(ptr noundef %call.i154, ptr noundef %arrayidx.i157, i32 noundef 1) #10
  %i.0.i = add nsw i32 %i.09.i, -1
  %cmp.i158.not = icmp eq i32 %i.09.i, 0
  br i1 %cmp.i158.not, label %for.body.i159.mlxsw_sp_trap_policers_fini.exit_crit_edge, label %for.body.i159.for.body.i159_crit_edge

for.body.i159.for.body.i159_crit_edge:            ; preds = %for.body.i159
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i159

for.body.i159.mlxsw_sp_trap_policers_fini.exit_crit_edge: ; preds = %for.body.i159
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_trap_policers_fini.exit

mlxsw_sp_trap_policers_fini.exit:                 ; preds = %for.body.i159.mlxsw_sp_trap_policers_fini.exit_crit_edge, %err_trap_groups_init.mlxsw_sp_trap_policers_fini.exit_crit_edge
  %143 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %trap1.i, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 8
  call void @kfree(ptr noundef %146) #10
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_trap_policers_fini.exit, %for.inc.i150.cleanup_crit_edge, %mlxsw_sp_trap_items_arr_init.exit.i.cleanup_crit_edge, %mlxsw_sp_trap_policers_init.exit, %if.end7.i.i.i.i.cleanup_crit_edge, %kcalloc.exit.thread.i.i, %do.end.i.i, %if.end.cleanup_crit_edge, %mlxsw_sp_trap_cpu_policers_set.exit.cleanup_crit_edge, %mlxsw_sp_trap_cpu_policers_set.exit.thread
  %retval.0 = phi i32 [ %err.0, %mlxsw_sp_trap_policers_fini.exit ], [ %call32.i, %mlxsw_sp_trap_cpu_policers_set.exit.cleanup_crit_edge ], [ %call.i34, %if.end.cleanup_crit_edge ], [ %call3.i, %mlxsw_sp_trap_policers_init.exit ], [ -105, %mlxsw_sp_trap_cpu_policers_set.exit.thread ], [ -105, %do.end.i.i ], [ -12, %if.end7.i.i.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread.i.i ], [ 0, %mlxsw_sp_trap_items_arr_init.exit.i.cleanup_crit_edge ], [ 0, %for.inc.i150.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_trap_groups_fini(ptr nocapture noundef readonly %mlxsw_sp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call ptr @priv_to_devlink(ptr noundef %1) #10
  %trap1 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 23
  %2 = ptrtoint ptr %trap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trap1, align 4
  %groups_count = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %groups_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %groups_count, align 4
  %i.07 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.07)
  %cmp8 = icmp sgt i32 %i.07, -1
  br i1 %cmp8, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %group_items_arr = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ %i.07, %for.body.lr.ph ], [ %i.0, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %group_items_arr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group_items_arr, align 8
  %arrayidx = getelementptr %struct.mlxsw_sp_trap_group_item, ptr %7, i32 %i.09
  tail call void @devlink_trap_groups_unregister(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 1) #10
  %i.0 = add nsw i32 %i.09, -1
  %cmp = icmp sgt i32 %i.09, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = ptrtoint ptr %trap1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trap1, align 4
  %group_items_arr.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %group_items_arr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %group_items_arr.i, align 8
  tail call void @kfree(ptr noundef %11) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_devlink_traps_fini(ptr nocapture noundef readonly %mlxsw_sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core.i, align 4
  %call.i = tail call ptr @priv_to_devlink(ptr noundef %1) #10
  %trap1.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 23
  %2 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trap1.i, align 4
  %traps_count.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %traps_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %traps_count.i, align 4
  %i.08.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.08.i)
  %cmp9.i = icmp sgt i32 %i.08.i, -1
  br i1 %cmp9.i, label %for.body.lr.ph.i, label %entry.mlxsw_sp_traps_fini.exit_crit_edge

entry.mlxsw_sp_traps_fini.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_traps_fini.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %trap_items_arr.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %3, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ %i.08.i, %for.body.lr.ph.i ], [ %i.0.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %trap_items_arr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trap_items_arr.i, align 8
  %arrayidx.i = getelementptr %struct.mlxsw_sp_trap_item, ptr %7, i32 %i.010.i
  tail call void @devlink_traps_unregister(ptr noundef %call.i, ptr noundef %arrayidx.i, i32 noundef 1) #10
  %i.0.i = add nsw i32 %i.010.i, -1
  %cmp.i.not = icmp eq i32 %i.010.i, 0
  br i1 %cmp.i.not, label %for.body.i.mlxsw_sp_traps_fini.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.mlxsw_sp_traps_fini.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_traps_fini.exit

mlxsw_sp_traps_fini.exit:                         ; preds = %for.body.i.mlxsw_sp_traps_fini.exit_crit_edge, %entry.mlxsw_sp_traps_fini.exit_crit_edge
  %8 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trap1.i, align 4
  %trap_items_arr.i.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %trap_items_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trap_items_arr.i.i, align 8
  tail call void @kfree(ptr noundef %11) #10
  %12 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core.i, align 4
  %call.i4 = tail call ptr @priv_to_devlink(ptr noundef %13) #10
  %14 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trap1.i, align 4
  %groups_count.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %groups_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %groups_count.i, align 4
  %i.07.i = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.07.i)
  %cmp8.i = icmp sgt i32 %i.07.i, -1
  br i1 %cmp8.i, label %for.body.lr.ph.i6, label %mlxsw_sp_traps_fini.exit.mlxsw_sp_trap_groups_fini.exit_crit_edge

mlxsw_sp_traps_fini.exit.mlxsw_sp_trap_groups_fini.exit_crit_edge: ; preds = %mlxsw_sp_traps_fini.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_trap_groups_fini.exit

for.body.lr.ph.i6:                                ; preds = %mlxsw_sp_traps_fini.exit
  %group_items_arr.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %15, i32 0, i32 2
  br label %for.body.i10

for.body.i10:                                     ; preds = %for.body.i10.for.body.i10_crit_edge, %for.body.lr.ph.i6
  %i.09.i = phi i32 [ %i.07.i, %for.body.lr.ph.i6 ], [ %i.0.i8, %for.body.i10.for.body.i10_crit_edge ]
  %18 = ptrtoint ptr %group_items_arr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %group_items_arr.i, align 8
  %arrayidx.i7 = getelementptr %struct.mlxsw_sp_trap_group_item, ptr %19, i32 %i.09.i
  tail call void @devlink_trap_groups_unregister(ptr noundef %call.i4, ptr noundef %arrayidx.i7, i32 noundef 1) #10
  %i.0.i8 = add nsw i32 %i.09.i, -1
  %cmp.i9.not = icmp eq i32 %i.09.i, 0
  br i1 %cmp.i9.not, label %for.body.i10.mlxsw_sp_trap_groups_fini.exit_crit_edge, label %for.body.i10.for.body.i10_crit_edge

for.body.i10.for.body.i10_crit_edge:              ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i10

for.body.i10.mlxsw_sp_trap_groups_fini.exit_crit_edge: ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_trap_groups_fini.exit

mlxsw_sp_trap_groups_fini.exit:                   ; preds = %for.body.i10.mlxsw_sp_trap_groups_fini.exit_crit_edge, %mlxsw_sp_traps_fini.exit.mlxsw_sp_trap_groups_fini.exit_crit_edge
  %20 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trap1.i, align 4
  %group_items_arr.i.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %group_items_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %group_items_arr.i.i, align 8
  tail call void @kfree(ptr noundef %23) #10
  %24 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core.i, align 4
  %call.i12 = tail call ptr @priv_to_devlink(ptr noundef %25) #10
  %26 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %trap1.i, align 4
  %policers_count.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %policers_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %policers_count.i, align 4
  %i.07.i14 = add i32 %29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.07.i14)
  %cmp8.i15 = icmp sgt i32 %i.07.i14, -1
  br i1 %cmp8.i15, label %mlxsw_sp_trap_groups_fini.exit.for.body.i20_crit_edge, label %mlxsw_sp_trap_groups_fini.exit.mlxsw_sp_trap_policers_fini.exit_crit_edge

mlxsw_sp_trap_groups_fini.exit.mlxsw_sp_trap_policers_fini.exit_crit_edge: ; preds = %mlxsw_sp_trap_groups_fini.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_trap_policers_fini.exit

mlxsw_sp_trap_groups_fini.exit.for.body.i20_crit_edge: ; preds = %mlxsw_sp_trap_groups_fini.exit
  br label %for.body.i20

for.body.i20:                                     ; preds = %for.body.i20.for.body.i20_crit_edge, %mlxsw_sp_trap_groups_fini.exit.for.body.i20_crit_edge
  %i.09.i16 = phi i32 [ %i.0.i18, %for.body.i20.for.body.i20_crit_edge ], [ %i.07.i14, %mlxsw_sp_trap_groups_fini.exit.for.body.i20_crit_edge ]
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 8
  %arrayidx.i17 = getelementptr %struct.mlxsw_sp_trap_policer_item, ptr %31, i32 %i.09.i16
  tail call void @devlink_trap_policers_unregister(ptr noundef %call.i12, ptr noundef %arrayidx.i17, i32 noundef 1) #10
  %i.0.i18 = add nsw i32 %i.09.i16, -1
  %cmp.i19.not = icmp eq i32 %i.09.i16, 0
  br i1 %cmp.i19.not, label %for.body.i20.mlxsw_sp_trap_policers_fini.exit_crit_edge, label %for.body.i20.for.body.i20_crit_edge

for.body.i20.for.body.i20_crit_edge:              ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i20

for.body.i20.mlxsw_sp_trap_policers_fini.exit_crit_edge: ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_trap_policers_fini.exit

mlxsw_sp_trap_policers_fini.exit:                 ; preds = %for.body.i20.mlxsw_sp_trap_policers_fini.exit_crit_edge, %mlxsw_sp_trap_groups_fini.exit.mlxsw_sp_trap_policers_fini.exit_crit_edge
  %32 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %trap1.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  tail call void @kfree(ptr noundef %35) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_trap_init(ptr noundef %mlxsw_core, ptr nocapture noundef readonly %trap, ptr noundef %trap_ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_core_driver_priv(ptr noundef %mlxsw_core) #10
  %id = getelementptr inbounds %struct.devlink_trap, ptr %trap, i32 0, i32 3
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 2
  %trap1.i = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 23
  %2 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trap1.i, align 4
  %traps_count.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %traps_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %traps_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp15.not.i = icmp eq i32 %5, 0
  br i1 %cmp15.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %trap_items_arr.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %trap_items_arr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trap_items_arr.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlxsw_sp_trap_item, ptr %7, i32 %i.016.i
  %id3.i = getelementptr inbounds %struct.devlink_trap, ptr %arrayidx.i, i32 0, i32 3
  %8 = ptrtoint ptr %id3.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %id3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %1)
  %cmp5.i = icmp eq i16 %9, %1
  br i1 %cmp5.i, label %mlxsw_sp_trap_item_lookup.exit, label %for.cond.i

mlxsw_sp_trap_item_lookup.exit:                   ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %mlxsw_sp_trap_item_lookup.exit.do.end_crit_edge, label %for.body.preheader, !prof !320

mlxsw_sp_trap_item_lookup.exit.do.end_crit_edge:  ; preds = %mlxsw_sp_trap_item_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.preheader:                               ; preds = %mlxsw_sp_trap_item_lookup.exit
  %arrayidx = getelementptr %struct.mlxsw_sp_trap_item, ptr %7, i32 %i.016.i, i32 1, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.i.not = icmp eq i16 %11, 0
  br i1 %cmp.i.not, label %for.body.preheader.for.inc_crit_edge, label %if.end27

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end:                                           ; preds = %mlxsw_sp_trap_item_lookup.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1552, i32 noundef 9, ptr noundef null) #10
  br label %cleanup33

if.end27:                                         ; preds = %for.body.preheader
  %call28 = tail call i32 @mlxsw_core_trap_register(ptr noundef %mlxsw_core, ptr noundef %arrayidx, ptr noundef %trap_ctx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.for.inc_crit_edge, label %if.end27.cleanup33_crit_edge

if.end27.cleanup33_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup33

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end27.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.mlxsw_sp_trap_item, ptr %7, i32 %i.016.i, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.i.not.1 = icmp eq i16 %13, 0
  br i1 %cmp.i.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end27.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end27.1:                                       ; preds = %for.inc
  %call28.1 = tail call i32 @mlxsw_core_trap_register(ptr noundef %mlxsw_core, ptr noundef %arrayidx.1, ptr noundef %trap_ctx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.1)
  %tobool29.not.1 = icmp eq i32 %call28.1, 0
  br i1 %tobool29.not.1, label %if.end27.1.for.inc.1_crit_edge, label %if.end27.1.cleanup33_crit_edge

if.end27.1.cleanup33_crit_edge:                   ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup33

if.end27.1.for.inc.1_crit_edge:                   ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end27.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.mlxsw_sp_trap_item, ptr %7, i32 %i.016.i, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i.not.2 = icmp eq i16 %15, 0
  br i1 %cmp.i.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end27.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end27.2:                                       ; preds = %for.inc.1
  %call28.2 = tail call i32 @mlxsw_core_trap_register(ptr noundef %mlxsw_core, ptr noundef %arrayidx.2, ptr noundef %trap_ctx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.2)
  %tobool29.not.2 = icmp eq i32 %call28.2, 0
  br i1 %tobool29.not.2, label %if.end27.2.for.inc.2_crit_edge, label %if.end27.2.cleanup33_crit_edge

if.end27.2.cleanup33_crit_edge:                   ; preds = %if.end27.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup33

if.end27.2.for.inc.2_crit_edge:                   ; preds = %if.end27.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end27.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  br label %cleanup33

cleanup33:                                        ; preds = %for.inc.2, %if.end27.2.cleanup33_crit_edge, %if.end27.1.cleanup33_crit_edge, %if.end27.cleanup33_crit_edge, %do.end
  %retval.2 = phi i32 [ -22, %do.end ], [ %call28, %if.end27.cleanup33_crit_edge ], [ %call28.1, %if.end27.1.cleanup33_crit_edge ], [ %call28.2, %if.end27.2.cleanup33_crit_edge ], [ 0, %for.inc.2 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_core_driver_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_trap_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_trap_fini(ptr noundef %mlxsw_core, ptr nocapture noundef readonly %trap, ptr noundef %trap_ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_core_driver_priv(ptr noundef %mlxsw_core) #10
  %id = getelementptr inbounds %struct.devlink_trap, ptr %trap, i32 0, i32 3
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 2
  %trap1.i = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 23
  %2 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trap1.i, align 4
  %traps_count.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %traps_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %traps_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp15.not.i = icmp eq i32 %5, 0
  br i1 %cmp15.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %trap_items_arr.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %trap_items_arr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trap_items_arr.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlxsw_sp_trap_item, ptr %7, i32 %i.016.i
  %id3.i = getelementptr inbounds %struct.devlink_trap, ptr %arrayidx.i, i32 0, i32 3
  %8 = ptrtoint ptr %id3.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %id3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %1)
  %cmp5.i = icmp eq i16 %9, %1
  br i1 %cmp5.i, label %mlxsw_sp_trap_item_lookup.exit, label %for.cond.i

mlxsw_sp_trap_item_lookup.exit:                   ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %mlxsw_sp_trap_item_lookup.exit.do.end_crit_edge, label %for.body.preheader, !prof !320

mlxsw_sp_trap_item_lookup.exit.do.end_crit_edge:  ; preds = %mlxsw_sp_trap_item_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.preheader:                               ; preds = %mlxsw_sp_trap_item_lookup.exit
  %arrayidx = getelementptr %struct.mlxsw_sp_trap_item, ptr %7, i32 %i.016.i, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.i.not = icmp eq i16 %11, 0
  br i1 %cmp.i.not, label %for.body.preheader.cleanup_crit_edge, label %if.end27

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %mlxsw_sp_trap_item_lookup.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1578, i32 noundef 9, ptr noundef null) #10
  br label %cleanup28

if.end27:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlxsw_core_trap_unregister(ptr noundef %mlxsw_core, ptr noundef %arrayidx, ptr noundef %trap_ctx) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %for.body.preheader.cleanup_crit_edge
  %arrayidx.1 = getelementptr %struct.mlxsw_sp_trap_item, ptr %7, i32 %i.016.i, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.i.not.1 = icmp eq i16 %13, 0
  br i1 %cmp.i.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end27.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.1

if.end27.1:                                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlxsw_core_trap_unregister(ptr noundef %mlxsw_core, ptr noundef %arrayidx.1, ptr noundef %trap_ctx) #10
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end27.1, %cleanup.cleanup.1_crit_edge
  %arrayidx.2 = getelementptr %struct.mlxsw_sp_trap_item, ptr %7, i32 %i.016.i, i32 1, i32 0
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i.not.2 = icmp eq i16 %15, 0
  br i1 %cmp.i.not.2, label %cleanup.1.cleanup28_crit_edge, label %if.end27.2

cleanup.1.cleanup28_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

if.end27.2:                                       ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlxsw_core_trap_unregister(ptr noundef %mlxsw_core, ptr noundef %arrayidx.2, ptr noundef %trap_ctx) #10
  br label %cleanup28

cleanup28:                                        ; preds = %if.end27.2, %cleanup.1.cleanup28_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_core_trap_unregister(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_trap_action_set(ptr noundef %mlxsw_core, ptr nocapture noundef readonly %trap, i32 noundef %action, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_core_driver_priv(ptr noundef %mlxsw_core) #10
  %id = getelementptr inbounds %struct.devlink_trap, ptr %trap, i32 0, i32 3
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 2
  %trap1.i = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 23
  %2 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trap1.i, align 4
  %traps_count.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %traps_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %traps_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp15.not.i = icmp eq i32 %5, 0
  br i1 %cmp15.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %trap_items_arr.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %trap_items_arr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trap_items_arr.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlxsw_sp_trap_item, ptr %7, i32 %i.016.i
  %id3.i = getelementptr inbounds %struct.devlink_trap, ptr %arrayidx.i, i32 0, i32 3
  %8 = ptrtoint ptr %id3.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %id3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %1)
  %cmp5.i = icmp eq i16 %9, %1
  br i1 %cmp5.i, label %mlxsw_sp_trap_item_lookup.exit, label %for.cond.i

mlxsw_sp_trap_item_lookup.exit:                   ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %mlxsw_sp_trap_item_lookup.exit.do.end_crit_edge, label %if.end24, !prof !320

mlxsw_sp_trap_item_lookup.exit.do.end_crit_edge:  ; preds = %mlxsw_sp_trap_item_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %mlxsw_sp_trap_item_lookup.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1601, i32 noundef 9, ptr noundef null) #10
  br label %cleanup45

if.end24:                                         ; preds = %mlxsw_sp_trap_item_lookup.exit
  %is_source = getelementptr %struct.mlxsw_sp_trap_item, ptr %7, i32 %i.016.i, i32 2
  %10 = ptrtoint ptr %is_source to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %is_source, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool25.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool25.not, label %for.body.preheader, label %do.body27

for.body.preheader:                               ; preds = %if.end24
  %arrayidx = getelementptr %struct.mlxsw_sp_trap_item, ptr %7, i32 %i.016.i, i32 1, i32 0
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.i.not = icmp eq i16 %12, 0
  br i1 %cmp.i.not, label %for.body.preheader.for.inc_crit_edge, label %if.end36

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body27:                                        ; preds = %if.end24
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_trap_action_set.__msg) #10
  %tobool28.not = icmp eq ptr %extack, null
  br i1 %tobool28.not, label %do.body27.cleanup45_crit_edge, label %if.then29

do.body27.cleanup45_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

if.then29:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mlxsw_sp_trap_action_set.__msg, ptr %extack, align 4
  br label %cleanup45

if.end36:                                         ; preds = %for.body.preheader
  %14 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %action, label %if.end36.cleanup45_crit_edge [
    i32 0, label %if.end36.sw.epilog_crit_edge
    i32 1, label %sw.bb37
  ]

if.end36.sw.epilog_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end36.cleanup45_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

sw.bb37:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb37, %if.end36.sw.epilog_crit_edge
  %enabled.0.off0 = phi i1 [ true, %sw.bb37 ], [ false, %if.end36.sw.epilog_crit_edge ]
  %call39 = tail call i32 @mlxsw_core_trap_state_set(ptr noundef %mlxsw_core, ptr noundef %arrayidx, i1 noundef zeroext %enabled.0.off0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %sw.epilog.for.inc_crit_edge, label %sw.epilog.cleanup45_crit_edge

sw.epilog.cleanup45_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.mlxsw_sp_trap_item, ptr %7, i32 %i.016.i, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.i.not.1 = icmp eq i16 %16, 0
  br i1 %cmp.i.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end36.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end36.1:                                       ; preds = %for.inc
  %17 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %action, label %if.end36.1.cleanup45_crit_edge [
    i32 0, label %if.end36.1.sw.epilog.1_crit_edge
    i32 1, label %sw.bb37.1
  ]

if.end36.1.sw.epilog.1_crit_edge:                 ; preds = %if.end36.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.1

if.end36.1.cleanup45_crit_edge:                   ; preds = %if.end36.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

sw.bb37.1:                                        ; preds = %if.end36.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.1

sw.epilog.1:                                      ; preds = %sw.bb37.1, %if.end36.1.sw.epilog.1_crit_edge
  %enabled.0.off0.1 = phi i1 [ true, %sw.bb37.1 ], [ false, %if.end36.1.sw.epilog.1_crit_edge ]
  %call39.1 = tail call i32 @mlxsw_core_trap_state_set(ptr noundef %mlxsw_core, ptr noundef %arrayidx.1, i1 noundef zeroext %enabled.0.off0.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.1)
  %tobool40.not.1 = icmp eq i32 %call39.1, 0
  br i1 %tobool40.not.1, label %sw.epilog.1.for.inc.1_crit_edge, label %sw.epilog.1.cleanup45_crit_edge

sw.epilog.1.cleanup45_crit_edge:                  ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

sw.epilog.1.for.inc.1_crit_edge:                  ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %sw.epilog.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.mlxsw_sp_trap_item, ptr %7, i32 %i.016.i, i32 1, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp.i.not.2 = icmp eq i16 %19, 0
  br i1 %cmp.i.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end36.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end36.2:                                       ; preds = %for.inc.1
  %20 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %action, label %if.end36.2.cleanup45_crit_edge [
    i32 0, label %if.end36.2.sw.epilog.2_crit_edge
    i32 1, label %sw.bb37.2
  ]

if.end36.2.sw.epilog.2_crit_edge:                 ; preds = %if.end36.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.2

if.end36.2.cleanup45_crit_edge:                   ; preds = %if.end36.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

sw.bb37.2:                                        ; preds = %if.end36.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.2

sw.epilog.2:                                      ; preds = %sw.bb37.2, %if.end36.2.sw.epilog.2_crit_edge
  %enabled.0.off0.2 = phi i1 [ true, %sw.bb37.2 ], [ false, %if.end36.2.sw.epilog.2_crit_edge ]
  %call39.2 = tail call i32 @mlxsw_core_trap_state_set(ptr noundef %mlxsw_core, ptr noundef %arrayidx.2, i1 noundef zeroext %enabled.0.off0.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.2)
  %tobool40.not.2 = icmp eq i32 %call39.2, 0
  br i1 %tobool40.not.2, label %sw.epilog.2.for.inc.2_crit_edge, label %sw.epilog.2.cleanup45_crit_edge

sw.epilog.2.cleanup45_crit_edge:                  ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

sw.epilog.2.for.inc.2_crit_edge:                  ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %sw.epilog.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  br label %cleanup45

cleanup45:                                        ; preds = %for.inc.2, %sw.epilog.2.cleanup45_crit_edge, %if.end36.2.cleanup45_crit_edge, %sw.epilog.1.cleanup45_crit_edge, %if.end36.1.cleanup45_crit_edge, %sw.epilog.cleanup45_crit_edge, %if.end36.cleanup45_crit_edge, %if.then29, %do.body27.cleanup45_crit_edge, %do.end
  %retval.2 = phi i32 [ -22, %do.end ], [ -95, %if.then29 ], [ -95, %do.body27.cleanup45_crit_edge ], [ %call39, %sw.epilog.cleanup45_crit_edge ], [ -22, %if.end36.cleanup45_crit_edge ], [ -22, %if.end36.1.cleanup45_crit_edge ], [ %call39.1, %sw.epilog.1.cleanup45_crit_edge ], [ -22, %if.end36.2.cleanup45_crit_edge ], [ %call39.2, %sw.epilog.2.cleanup45_crit_edge ], [ 0, %for.inc.2 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_trap_state_set(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_trap_group_init(ptr noundef %mlxsw_core, ptr nocapture noundef readonly %group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %init_policer_id = getelementptr inbounds %struct.devlink_trap_group, ptr %group, i32 0, i32 3
  %0 = ptrtoint ptr %init_policer_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %init_policer_id, align 4
  %call = tail call fastcc i32 @__mlxsw_sp_trap_group_init(ptr noundef %mlxsw_core, ptr noundef %group, i32 noundef %1, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mlxsw_sp_trap_group_init(ptr noundef %mlxsw_core, ptr nocapture noundef readonly %group, i32 noundef %policer_id, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  %htgt_pl = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_core_driver_priv(ptr noundef %mlxsw_core) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %htgt_pl) #10
  %id = getelementptr inbounds %struct.devlink_trap_group, ptr %group, i32 0, i32 1
  %0 = call ptr @memset(ptr %htgt_pl, i32 255, i32 32)
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %id, align 4
  %trap1.i = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 23
  %3 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trap1.i, align 4
  %groups_count.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %groups_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %groups_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp14.not.i = icmp eq i32 %6, 0
  br i1 %cmp14.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %group_items_arr.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %group_items_arr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %group_items_arr.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlxsw_sp_trap_group_item, ptr %8, i32 %i.015.i
  %id2.i = getelementptr inbounds %struct.devlink_trap_group, ptr %arrayidx.i, i32 0, i32 1
  %9 = ptrtoint ptr %id2.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %id2.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %2)
  %cmp4.i = icmp eq i16 %10, %2
  br i1 %cmp4.i, label %mlxsw_sp_trap_group_item_lookup.exit, label %for.cond.i

mlxsw_sp_trap_group_item_lookup.exit:             ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %mlxsw_sp_trap_group_item_lookup.exit.do.end_crit_edge, label %if.end24, !prof !320

mlxsw_sp_trap_group_item_lookup.exit.do.end_crit_edge: ; preds = %mlxsw_sp_trap_group_item_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %mlxsw_sp_trap_group_item_lookup.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1647, i32 noundef 9, ptr noundef null) #10
  br label %cleanup80

if.end24:                                         ; preds = %mlxsw_sp_trap_group_item_lookup.exit
  %fixed_policer = getelementptr %struct.mlxsw_sp_trap_group_item, ptr %8, i32 %i.015.i, i32 3
  %11 = ptrtoint ptr %fixed_policer to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %fixed_policer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool25.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool25.not, label %if.end24.if.end34_crit_edge, label %land.lhs.true

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end24
  %init_policer_id = getelementptr inbounds %struct.devlink_trap_group, ptr %group, i32 0, i32 3
  %12 = ptrtoint ptr %init_policer_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %init_policer_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %policer_id)
  %cmp.not = icmp eq i32 %13, %policer_id
  br i1 %cmp.not, label %land.lhs.true.if.end34_crit_edge, label %do.body28

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.body28:                                        ; preds = %land.lhs.true
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__mlxsw_sp_trap_group_init.__msg) #10
  %tobool29.not = icmp eq ptr %extack, null
  br i1 %tobool29.not, label %do.body28.cleanup80_crit_edge, label %if.then30

do.body28.cleanup80_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup80

if.then30:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @__mlxsw_sp_trap_group_init.__msg, ptr %extack, align 4
  br label %cleanup80

if.end34:                                         ; preds = %land.lhs.true.if.end34_crit_edge, %if.end24.if.end34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %policer_id)
  %tobool35.not = icmp eq i32 %policer_id, 0
  br i1 %tobool35.not, label %if.end34.if.end74_crit_edge, label %if.then36

if.end34.if.end74_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then36:                                        ; preds = %if.end34
  %policers_count.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %4, i32 0, i32 1
  %15 = ptrtoint ptr %policers_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %policers_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp12.not.i = icmp eq i32 %16, 0
  br i1 %cmp12.not.i, label %if.then36.cleanup.thread_crit_edge, label %for.body.lr.ph.i98

if.then36.cleanup.thread_crit_edge:               ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.body.lr.ph.i98:                               ; preds = %if.then36
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %4, align 8
  br label %for.body.i103

for.cond.i101:                                    ; preds = %for.body.i103
  %inc.i99 = add nuw i32 %i.013.i, 1
  %exitcond.not.i100 = icmp eq i32 %inc.i99, %16
  br i1 %exitcond.not.i100, label %for.cond.i101.cleanup.thread_crit_edge, label %for.cond.i101.for.body.i103_crit_edge

for.cond.i101.for.body.i103_crit_edge:            ; preds = %for.cond.i101
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i103

for.cond.i101.cleanup.thread_crit_edge:           ; preds = %for.cond.i101
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.body.i103:                                    ; preds = %for.cond.i101.for.body.i103_crit_edge, %for.body.lr.ph.i98
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i98 ], [ %inc.i99, %for.cond.i101.for.body.i103_crit_edge ]
  %arrayidx.i102 = getelementptr %struct.mlxsw_sp_trap_policer_item, ptr %18, i32 %i.013.i
  %19 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i102, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %policer_id)
  %cmp3.i = icmp eq i32 %20, %policer_id
  br i1 %cmp3.i, label %mlxsw_sp_trap_policer_item_lookup.exit, label %for.cond.i101

mlxsw_sp_trap_policer_item_lookup.exit:           ; preds = %for.body.i103
  %tobool39.not = icmp eq ptr %arrayidx.i102, null
  br i1 %tobool39.not, label %mlxsw_sp_trap_policer_item_lookup.exit.cleanup.thread_crit_edge, label %cleanup, !prof !320

mlxsw_sp_trap_policer_item_lookup.exit.cleanup.thread_crit_edge: ; preds = %mlxsw_sp_trap_policer_item_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %mlxsw_sp_trap_policer_item_lookup.exit.cleanup.thread_crit_edge, %for.cond.i101.cleanup.thread_crit_edge, %if.then36.cleanup.thread_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1660, i32 noundef 9, ptr noundef null) #10
  br label %cleanup80

cleanup:                                          ; preds = %mlxsw_sp_trap_policer_item_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %hw_id = getelementptr %struct.mlxsw_sp_trap_policer_item, ptr %18, i32 %i.013.i, i32 1
  %21 = ptrtoint ptr %hw_id to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hw_id, align 8
  %phi.cast = trunc i16 %22 to i8
  br label %if.end74

if.end74:                                         ; preds = %cleanup, %if.end34.if.end74_crit_edge
  %hw_policer_id.1.off0 = phi i8 [ %phi.cast, %cleanup ], [ -1, %if.end34.if.end74_crit_edge ]
  %hw_group_id = getelementptr %struct.mlxsw_sp_trap_group_item, ptr %8, i32 %i.015.i, i32 1
  %23 = ptrtoint ptr %hw_group_id to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hw_group_id, align 4
  %conv75 = trunc i16 %24 to i8
  %priority = getelementptr %struct.mlxsw_sp_trap_group_item, ptr %8, i32 %i.015.i, i32 2
  %25 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %priority, align 2
  call fastcc void @mlxsw_reg_htgt_pack(ptr noundef nonnull %htgt_pl, i8 noundef zeroext %conv75, i8 noundef zeroext %hw_policer_id.1.off0, i8 noundef zeroext %26, i8 noundef zeroext %26)
  %call79 = call i32 @mlxsw_reg_write(ptr noundef %mlxsw_core, ptr noundef nonnull @mlxsw_reg_htgt, ptr noundef nonnull %htgt_pl) #10
  br label %cleanup80

cleanup80:                                        ; preds = %if.end74, %cleanup.thread, %if.then30, %do.body28.cleanup80_crit_edge, %do.end
  %retval.1 = phi i32 [ -22, %do.end ], [ %call79, %if.end74 ], [ -95, %if.then30 ], [ -95, %do.body28.cleanup80_crit_edge ], [ -22, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %htgt_pl) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_trap_group_set(ptr noundef %mlxsw_core, ptr nocapture noundef readonly %group, ptr noundef readonly %policer, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %policer, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %policer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %policer, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %call = tail call fastcc i32 @__mlxsw_sp_trap_group_init(ptr noundef %mlxsw_core, ptr noundef %group, i32 noundef %cond, ptr noundef %extack)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_trap_policer_init(ptr noundef %mlxsw_core, ptr nocapture noundef readonly %policer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_core_driver_priv(ptr noundef %mlxsw_core) #10
  %0 = ptrtoint ptr %policer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %policer, align 8
  %trap1.i = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 23
  %2 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trap1.i, align 4
  %policers_count.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %policers_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %policers_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12.not.i = icmp eq i32 %5, 0
  br i1 %cmp12.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlxsw_sp_trap_policer_item, ptr %7, i32 %i.013.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp3.i = icmp eq i32 %9, %1
  br i1 %cmp3.i, label %mlxsw_sp_trap_policer_item_lookup.exit, label %for.cond.i

mlxsw_sp_trap_policer_item_lookup.exit:           ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %mlxsw_sp_trap_policer_item_lookup.exit.do.end_crit_edge, label %if.end24, !prof !320

mlxsw_sp_trap_policer_item_lookup.exit.do.end_crit_edge: ; preds = %mlxsw_sp_trap_policer_item_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %mlxsw_sp_trap_policer_item_lookup.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1757, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end24:                                         ; preds = %mlxsw_sp_trap_policer_item_lookup.exit
  %policers_usage.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %3, i32 0, i32 8
  %max_policers.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %max_policers.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %max_policers.i, align 8
  %conv.i = trunc i64 %11 to i32
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %policers_usage.i, i32 noundef %conv.i) #10
  %conv2.mask.i = and i32 %call.i, 65535
  %conv3.i = zext i32 %conv2.mask.i to i64
  %12 = ptrtoint ptr %max_policers.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %max_policers.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv3.i)
  %cmp.i = icmp eq i64 %13, %conv3.i
  br i1 %cmp.i, label %mlxsw_sp_trap_policer_item_init.exit, label %if.end28, !prof !320

mlxsw_sp_trap_policer_item_init.exit:             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1700, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %conv2.i = trunc i32 %call.i to i16
  %rem.i.i = and i32 %call.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv2.mask.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %policers_usage.i, i32 %div2.i.i
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %15, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %hw_id30.i = getelementptr %struct.mlxsw_sp_trap_policer_item, ptr %7, i32 %i.013.i, i32 1
  %16 = ptrtoint ptr %hw_id30.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv2.i, ptr %hw_id30.i, align 8
  %init_rate = getelementptr inbounds %struct.devlink_trap_policer, ptr %policer, i32 0, i32 1
  %17 = ptrtoint ptr %init_rate to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %init_rate, align 8
  %init_burst = getelementptr inbounds %struct.devlink_trap_policer, ptr %policer, i32 0, i32 2
  %19 = ptrtoint ptr %init_burst to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %init_burst, align 8
  %call29 = tail call fastcc i32 @__mlxsw_sp_trap_policer_set(ptr noundef %call, i16 noundef zeroext %conv2.i, i64 noundef %18, i64 noundef %20, i1 noundef zeroext true, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %err_trap_policer_set

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_trap_policer_set:                             ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %hw_id30.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hw_id30.i, align 8
  %conv.i49 = zext i16 %22 to i32
  %23 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trap1.i, align 4
  %policers_usage.i50 = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %24, i32 0, i32 8
  %rem.i.i51 = and i32 %conv.i49, 31
  %shl.i.i52 = shl nuw i32 1, %rem.i.i51
  %div2.i.i53 = lshr i32 %conv.i49, 5
  %add.ptr.i.i54 = getelementptr i32, ptr %policers_usage.i50, i32 %div2.i.i53
  %neg.i.i = xor i32 %shl.i.i52, -1
  %25 = ptrtoint ptr %add.ptr.i.i54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i54, align 4
  %and.i.i = and i32 %26, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i54, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_trap_policer_set, %if.end28.cleanup_crit_edge, %mlxsw_sp_trap_policer_item_init.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call29, %err_trap_policer_set ], [ -105, %mlxsw_sp_trap_policer_item_init.exit ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mlxsw_sp_trap_policer_set(ptr nocapture noundef readonly %mlxsw_sp, i16 noundef zeroext %hw_id, i64 noundef %rate, i64 noundef %burst, i1 noundef zeroext %clear_counter, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  %qpcr_pl = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %qpcr_pl) #10
  %0 = call ptr @memset(ptr %qpcr_pl, i32 255, i32 40)
  %shr.i.i = lshr i64 %burst, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #10, !range !322
  %add.i.i = sub nuw nsw i32 64, %1
  br label %fls64.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i.i = trunc i64 %burst to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #10, !range !322
  %sub.i6.i.i = sub nuw nsw i32 32, %2
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %fls64.exit.i

fls64.exit.i:                                     ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  %sub.i = add nsw i32 %retval.0.i.i, -1
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %burst)
  %cmp.not.i = icmp eq i64 %shl.i, %burst
  br i1 %cmp.not.i, label %if.end, label %do.body.i

do.body.i:                                        ; preds = %fls64.exit.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_trap_policer_bs.__msg) #10
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %if.then1.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mlxsw_sp_trap_policer_bs.__msg, ptr %extack, align 4
  br label %cleanup

if.end:                                           ; preds = %fls64.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i64 %rate to i32
  %4 = trunc i32 %sub.i to i16
  %conv1 = and i16 %4, 255
  call fastcc void @mlxsw_reg_qpcr_pack(ptr noundef nonnull %qpcr_pl, i16 noundef zeroext %hw_id, i32 noundef %conv, i16 noundef zeroext %conv1)
  %spec.select.i.i = select i1 %clear_counter, i32 -2147483648, i32 0
  %arrayidx.i.i = getelementptr inbounds i32, ptr %qpcr_pl, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i, align 4
  %and7.i.i = and i32 %6, 2147483647
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %7 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core, align 4
  %call6 = call i32 @mlxsw_reg_write(ptr noundef %8, ptr noundef nonnull @mlxsw_reg_qpcr, ptr noundef nonnull %qpcr_pl) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then1.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -22, %if.then1.i ], [ -22, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %qpcr_pl) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_trap_policer_fini(ptr noundef %mlxsw_core, ptr nocapture noundef readonly %policer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_core_driver_priv(ptr noundef %mlxsw_core) #10
  %0 = ptrtoint ptr %policer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %policer, align 8
  %trap1.i = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 23
  %2 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trap1.i, align 4
  %policers_count.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %policers_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %policers_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12.not.i = icmp eq i32 %5, 0
  br i1 %cmp12.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlxsw_sp_trap_policer_item, ptr %7, i32 %i.013.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp3.i = icmp eq i32 %9, %1
  br i1 %cmp3.i, label %mlxsw_sp_trap_policer_item_lookup.exit, label %for.cond.i

mlxsw_sp_trap_policer_item_lookup.exit:           ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %mlxsw_sp_trap_policer_item_lookup.exit.do.end_crit_edge, label %if.end24, !prof !320

mlxsw_sp_trap_policer_item_lookup.exit.do.end_crit_edge: ; preds = %mlxsw_sp_trap_policer_item_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %mlxsw_sp_trap_policer_item_lookup.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1784, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end24:                                         ; preds = %mlxsw_sp_trap_policer_item_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %hw_id.i = getelementptr %struct.mlxsw_sp_trap_policer_item, ptr %7, i32 %i.013.i, i32 1
  %10 = ptrtoint ptr %hw_id.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hw_id.i, align 8
  %conv.i = zext i16 %11 to i32
  %policers_usage.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %3, i32 0, i32 8
  %rem.i.i = and i32 %conv.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %policers_usage.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %13, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_trap_policer_set(ptr noundef %mlxsw_core, ptr nocapture noundef readonly %policer, i64 noundef %rate, i64 noundef %burst, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_core_driver_priv(ptr noundef %mlxsw_core) #10
  %0 = ptrtoint ptr %policer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %policer, align 8
  %trap1.i = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 23
  %2 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trap1.i, align 4
  %policers_count.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %policers_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %policers_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12.not.i = icmp eq i32 %5, 0
  br i1 %cmp12.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlxsw_sp_trap_policer_item, ptr %7, i32 %i.013.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp3.i = icmp eq i32 %9, %1
  br i1 %cmp3.i, label %mlxsw_sp_trap_policer_item_lookup.exit, label %for.cond.i

mlxsw_sp_trap_policer_item_lookup.exit:           ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %mlxsw_sp_trap_policer_item_lookup.exit.do.end_crit_edge, label %if.end24, !prof !320

mlxsw_sp_trap_policer_item_lookup.exit.do.end_crit_edge: ; preds = %mlxsw_sp_trap_policer_item_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %mlxsw_sp_trap_policer_item_lookup.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1799, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end24:                                         ; preds = %mlxsw_sp_trap_policer_item_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %hw_id = getelementptr %struct.mlxsw_sp_trap_policer_item, ptr %7, i32 %i.013.i, i32 1
  %10 = ptrtoint ptr %hw_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hw_id, align 8
  %call25 = tail call fastcc i32 @__mlxsw_sp_trap_policer_set(ptr noundef %call, i16 noundef zeroext %11, i64 noundef %rate, i64 noundef %burst, i1 noundef zeroext false, ptr noundef %extack)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call25, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_trap_policer_counter_get(ptr noundef %mlxsw_core, ptr nocapture noundef readonly %policer, ptr nocapture noundef writeonly %p_drops) local_unnamed_addr #0 align 64 {
entry:
  %qpcr_pl = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_core_driver_priv(ptr noundef %mlxsw_core) #10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %qpcr_pl) #10
  %0 = call ptr @memset(ptr %qpcr_pl, i32 255, i32 40)
  %1 = ptrtoint ptr %policer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %policer, align 8
  %trap1.i = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 23
  %3 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trap1.i, align 4
  %policers_count.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %policers_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %policers_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp12.not.i = icmp eq i32 %6, 0
  br i1 %cmp12.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlxsw_sp_trap_policer_item, ptr %8, i32 %i.013.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %2)
  %cmp3.i = icmp eq i32 %10, %2
  br i1 %cmp3.i, label %mlxsw_sp_trap_policer_item_lookup.exit, label %for.cond.i

mlxsw_sp_trap_policer_item_lookup.exit:           ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %mlxsw_sp_trap_policer_item_lookup.exit.do.end_crit_edge, label %if.end24, !prof !320

mlxsw_sp_trap_policer_item_lookup.exit.do.end_crit_edge: ; preds = %mlxsw_sp_trap_policer_item_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %mlxsw_sp_trap_policer_item_lookup.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1817, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end24:                                         ; preds = %mlxsw_sp_trap_policer_item_lookup.exit
  %hw_id = getelementptr %struct.mlxsw_sp_trap_policer_item, ptr %8, i32 %i.013.i, i32 1
  %11 = ptrtoint ptr %hw_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hw_id, align 8
  call fastcc void @mlxsw_reg_qpcr_pack(ptr noundef nonnull %qpcr_pl, i16 noundef zeroext %12, i32 noundef 0, i16 noundef zeroext 0)
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %core, align 4
  %call26 = call i32 @mlxsw_reg_query(ptr noundef %14, ptr noundef nonnull @mlxsw_reg_qpcr, ptr noundef nonnull %qpcr_pl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %mlxsw_reg_qpcr_violate_count_get.exit, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mlxsw_reg_qpcr_violate_count_get.exit:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr inbounds i64, ptr %qpcr_pl, i32 4
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx.i.i, align 8
  %17 = ptrtoint ptr %p_drops to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %p_drops, align 8
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_reg_qpcr_violate_count_get.exit, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %mlxsw_reg_qpcr_violate_count_get.exit ], [ %call26, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %qpcr_pl) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_qpcr_pack(ptr nocapture noundef %payload, i16 noundef zeroext %pid, i32 noundef %cir, i16 noundef zeroext %cbs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = call ptr @memset(ptr %payload, i32 0, i32 40)
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %2, -65536
  %3 = and i16 %pid, 16383
  %and6.i.i.masked = zext i16 %3 to i32
  %and7.i.i26 = or i32 %and7.i.i, %and6.i.i.masked
  %or.i.i27 = or i32 %and7.i.i26, 32768
  store i32 %or.i.i27, ptr %payload, align 4
  %arrayidx.i.i52 = getelementptr i32, ptr %payload, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i52 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i52, align 4
  %and7.i.i54 = and i32 %5, -769
  %or.i.i55 = or i32 %and7.i.i54, 256
  store i32 %or.i.i55, ptr %arrayidx.i.i52, align 4
  %arrayidx.i.i80 = getelementptr i32, ptr %payload, i32 6
  %6 = ptrtoint ptr %arrayidx.i.i80 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i80, align 4
  %and7.i.i82 = and i32 %7, -16
  %or.i.i83 = or i32 %and7.i.i82, 1
  store i32 %or.i.i83, ptr %arrayidx.i.i80, align 4
  %arrayidx.i.i108 = getelementptr i32, ptr %payload, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i108 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cir, ptr %arrayidx.i.i108, align 4
  %arrayidx.i.i132 = getelementptr i32, ptr %payload, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i132 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i132, align 4
  %arrayidx.i.i155 = getelementptr i32, ptr %payload, i32 1
  %and7.i.i157 = and i32 %10, -20481
  %11 = ptrtoint ptr %arrayidx.i.i155 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and7.i.i157, ptr %arrayidx.i.i155, align 4
  %conv3 = zext i16 %cbs to i32
  %spec.select.i.i176 = shl i32 %conv3, 24
  %and6.i.i181 = and i32 %spec.select.i.i176, 1056964608
  %arrayidx.i.i182 = getelementptr i32, ptr %payload, i32 2
  %12 = ptrtoint ptr %arrayidx.i.i182 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i182, align 4
  %and7.i.i184 = and i32 %13, -1056964609
  %or.i.i185 = or i32 %and6.i.i181, %and7.i.i184
  store i32 %or.i.i185, ptr %arrayidx.i.i182, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_trap_group_policer_hw_id_get(ptr nocapture noundef readonly %mlxsw_sp, i16 noundef zeroext %id, ptr nocapture noundef writeonly %p_enabled, ptr nocapture noundef writeonly %p_hw_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %trap1.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 23
  %0 = ptrtoint ptr %trap1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trap1.i, align 4
  %groups_count.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %groups_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %groups_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14.not.i = icmp eq i32 %3, 0
  br i1 %cmp14.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %group_items_arr.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %group_items_arr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group_items_arr.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlxsw_sp_trap_group_item, ptr %5, i32 %i.015.i
  %id2.i = getelementptr inbounds %struct.devlink_trap_group, ptr %arrayidx.i, i32 0, i32 1
  %6 = ptrtoint ptr %id2.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %id2.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %id)
  %cmp4.i = icmp eq i16 %7, %id
  br i1 %cmp4.i, label %mlxsw_sp_trap_group_item_lookup.exit, label %for.cond.i

mlxsw_sp_trap_group_item_lookup.exit:             ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %mlxsw_sp_trap_group_item_lookup.exit.cleanup_crit_edge, label %if.end

mlxsw_sp_trap_group_item_lookup.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_trap_group_item_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %mlxsw_sp_trap_group_item_lookup.exit
  %init_policer_id = getelementptr inbounds %struct.devlink_trap_group, ptr %arrayidx.i, i32 0, i32 3
  %8 = ptrtoint ptr %init_policer_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %init_policer_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %p_enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %p_enabled, align 1
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %policers_count.i = getelementptr inbounds %struct.mlxsw_sp_trap, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %policers_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %policers_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp12.not.i = icmp eq i32 %12, 0
  br i1 %cmp12.not.i, label %if.end3.do.end_crit_edge, label %for.body.lr.ph.i40

if.end3.do.end_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.lr.ph.i40:                               ; preds = %if.end3
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  br label %for.body.i45

for.cond.i43:                                     ; preds = %for.body.i45
  %inc.i41 = add nuw i32 %i.013.i, 1
  %exitcond.not.i42 = icmp eq i32 %inc.i41, %12
  br i1 %exitcond.not.i42, label %for.cond.i43.do.end_crit_edge, label %for.cond.i43.for.body.i45_crit_edge

for.cond.i43.for.body.i45_crit_edge:              ; preds = %for.cond.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i45

for.cond.i43.do.end_crit_edge:                    ; preds = %for.cond.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.i45:                                     ; preds = %for.cond.i43.for.body.i45_crit_edge, %for.body.lr.ph.i40
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i40 ], [ %inc.i41, %for.cond.i43.for.body.i45_crit_edge ]
  %arrayidx.i44 = getelementptr %struct.mlxsw_sp_trap_policer_item, ptr %14, i32 %i.013.i
  %15 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i44, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %9)
  %cmp3.i = icmp eq i32 %16, %9
  br i1 %cmp3.i, label %mlxsw_sp_trap_policer_item_lookup.exit, label %for.cond.i43

mlxsw_sp_trap_policer_item_lookup.exit:           ; preds = %for.body.i45
  %tobool5.not = icmp eq ptr %arrayidx.i44, null
  br i1 %tobool5.not, label %mlxsw_sp_trap_policer_item_lookup.exit.do.end_crit_edge, label %if.end30, !prof !320

mlxsw_sp_trap_policer_item_lookup.exit.do.end_crit_edge: ; preds = %mlxsw_sp_trap_policer_item_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %mlxsw_sp_trap_policer_item_lookup.exit.do.end_crit_edge, %for.cond.i43.do.end_crit_edge, %if.end3.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1849, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end30:                                         ; preds = %mlxsw_sp_trap_policer_item_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %p_enabled to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %p_enabled, align 1
  %hw_id = getelementptr %struct.mlxsw_sp_trap_policer_item, ptr %14, i32 %i.013.i, i32 1
  %18 = ptrtoint ptr %hw_id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hw_id, align 8
  %20 = ptrtoint ptr %p_hw_id to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %p_hw_id, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end, %if.then2, %mlxsw_sp_trap_group_item_lookup.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end ], [ 0, %if.end30 ], [ 0, %if.then2 ], [ -2, %mlxsw_sp_trap_group_item_lookup.exit.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ -2, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mlxsw_sp1_trap_groups_init(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef writeonly %arr, ptr nocapture noundef writeonly %p_groups_count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mlxsw_sp1_trap_group_items_arr, ptr %arr, align 4
  %1 = ptrtoint ptr %p_groups_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %p_groups_count, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mlxsw_sp1_traps_init(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef writeonly %arr, ptr nocapture noundef writeonly %p_traps_count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mlxsw_sp1_trap_items_arr, ptr %arr, align 4
  %1 = ptrtoint ptr %p_traps_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %p_traps_count, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mlxsw_sp2_trap_groups_init(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef writeonly %arr, ptr nocapture noundef writeonly %p_groups_count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mlxsw_sp2_trap_group_items_arr, ptr %arr, align 4
  %1 = ptrtoint ptr %p_groups_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %p_groups_count, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mlxsw_sp2_traps_init(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef writeonly %arr, ptr nocapture noundef writeonly %p_traps_count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mlxsw_sp2_trap_items_arr, ptr %arr, align 4
  %1 = ptrtoint ptr %p_traps_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %p_traps_count, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_htgt_pack(ptr nocapture noundef %payload, i8 noundef zeroext %group, i8 noundef zeroext %policer_id, i8 noundef zeroext %priority, i8 noundef zeroext %tc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = call ptr @memset(ptr %payload, i32 0, i32 32)
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %policer_id)
  %cmp = icmp eq i8 %policer_id, -1
  br i1 %cmp, label %mlxsw_reg_htgt_pide_set.exit, label %if.else

mlxsw_reg_htgt_pide_set.exit:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr i32, ptr %payload, i32 1
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i.i, align 4
  %and7.i.i = and i32 %2, -32769
  store i32 %and7.i.i, ptr %arrayidx.i.i, align 4
  br label %mlxsw_reg_htgt_type_set.exit

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv1 = zext i8 %policer_id to i32
  %arrayidx.i.i42 = getelementptr i32, ptr %payload, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i42 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i42, align 4
  %arrayidx.i.i70 = getelementptr i32, ptr %payload, i32 1
  %or.i.i = and i32 %4, -33024
  %and7.i.i72 = or i32 %or.i.i, %conv1
  %or.i.i73 = or i32 %and7.i.i72, 32768
  %5 = ptrtoint ptr %arrayidx.i.i70 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i.i73, ptr %arrayidx.i.i70, align 4
  br label %mlxsw_reg_htgt_type_set.exit

mlxsw_reg_htgt_type_set.exit:                     ; preds = %if.else, %mlxsw_reg_htgt_pide_set.exit
  %6 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %payload, align 4
  %conv4 = zext i8 %group to i32
  %and7.i.i123 = and i32 %7, -4096
  %or.i.i124 = or i32 %and7.i.i123, %conv4
  store i32 %or.i.i124, ptr %payload, align 4
  %arrayidx.i.i145 = getelementptr i32, ptr %payload, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i145 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i145, align 4
  %arrayidx.i.i168 = getelementptr i32, ptr %payload, i32 2
  %and7.i.i170 = and i32 %9, -776
  %10 = ptrtoint ptr %arrayidx.i.i168 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and7.i.i170, ptr %arrayidx.i.i168, align 4
  %11 = and i8 %priority, 15
  %and6.i.i194 = zext i8 %11 to i32
  %arrayidx.i.i195 = getelementptr i32, ptr %payload, i32 3
  %12 = ptrtoint ptr %arrayidx.i.i195 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i195, align 4
  %and7.i.i197 = and i32 %13, -16
  %or.i.i198 = or i32 %and7.i.i197, %and6.i.i194
  store i32 %or.i.i198, ptr %arrayidx.i.i195, align 4
  %conv6 = zext i8 %tc to i32
  %spec.select.i.i217 = shl nuw nsw i32 %conv6, 16
  %and6.i.i222 = and i32 %spec.select.i.i217, 4128768
  %arrayidx.i.i223 = getelementptr i32, ptr %payload, i32 4
  %14 = ptrtoint ptr %arrayidx.i.i223 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i223, align 4
  %and7.i.i225 = and i32 %15, -4128832
  %or.i.i226 = or i32 %and6.i.i222, %and7.i.i225
  %and6.i.i250 = and i32 %conv4, 63
  %arrayidx.i.i251 = getelementptr i32, ptr %payload, i32 4
  %or.i.i254 = or i32 %and6.i.i250, %or.i.i226
  %16 = ptrtoint ptr %arrayidx.i.i251 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i.i254, ptr %arrayidx.i.i251, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_trap_policers_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_trap_policers_unregister(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_trap_groups_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_trap_groups_unregister(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_traps_register(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_traps_unregister(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_rx_drop_listener(ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %trap_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_trap_ctx_priv(ptr noundef %trap_ctx) #10
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %idxprom = zext i16 %local_port to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call fastcc i32 @mlxsw_sp_rx_listener(ptr noundef %call, ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %call2 = tail call ptr @priv_to_devlink(ptr noundef %5) #10
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %call4 = tail call ptr @mlxsw_core_port_devlink_port_get(ptr noundef %7, i16 noundef zeroext %local_port) #10
  %call5 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 14) #10
  tail call void @devlink_trap_report(ptr noundef %call2, ptr noundef %skb, ptr noundef %trap_ctx, ptr noundef %call4, ptr noundef null) #10
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_rx_mark_listener(ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %trap_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %offload_fwd_mark = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %0 = ptrtoint ptr %offload_fwd_mark to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load = load i32, ptr %offload_fwd_mark, align 2
  %bf.set = or i32 %bf.load, 1048576
  store i32 %bf.set, ptr %offload_fwd_mark, align 2
  %call.i = tail call fastcc i32 @__mlxsw_sp_rx_no_mark_listener(ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %trap_ctx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mlxsw_sp_rx_no_mark_listener.exit_crit_edge

entry.mlxsw_sp_rx_no_mark_listener.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_rx_no_mark_listener.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @netif_receive_skb(ptr noundef %skb) #10
  br label %mlxsw_sp_rx_no_mark_listener.exit

mlxsw_sp_rx_no_mark_listener.exit:                ; preds = %if.end.i, %entry.mlxsw_sp_rx_no_mark_listener.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_rx_acl_drop_listener(ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %trap_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i, align 4
  %call2 = tail call ptr @devlink_trap_ctx_priv(ptr noundef %trap_ctx) #10
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call2, align 4
  %idxprom = zext i16 %local_port to i32
  %arrayidx = getelementptr ptr, ptr %3, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call fastcc i32 @mlxsw_sp_rx_listener(ptr noundef %call2, ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %call2, i32 0, i32 1
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %call4 = tail call ptr @priv_to_devlink(ptr noundef %7) #10
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %call6 = tail call ptr @mlxsw_core_port_devlink_port_get(ptr noundef %9, i16 noundef zeroext %local_port) #10
  %call7 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 14) #10
  %10 = tail call i32 @llvm.read_register.i32(metadata !310) #10
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !323
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.122, i32 noundef 696, ptr noundef nonnull @.str.123) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %afa.i = getelementptr inbounds %struct.mlxsw_sp, ptr %call2, i32 0, i32 12
  %14 = ptrtoint ptr %afa.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %afa.i, align 4
  %call.i26 = tail call ptr @mlxsw_afa_cookie_lookup(ptr noundef %15, i32 noundef %1) #10
  tail call void @devlink_trap_report(ptr noundef %call4, ptr noundef %skb, ptr noundef %trap_ctx, ptr noundef %call6, ptr noundef %call.i26) #10
  %call.i27 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i27, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i30

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i30:                                ; preds = %rcu_read_lock.exit
  %call1.i28 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool.not.i29 = icmp eq i32 %call1.i28, 0
  br i1 %tobool.not.i29, label %land.lhs.true.i30.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i32

land.lhs.true.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i32:                               ; preds = %land.lhs.true.i30
  %.b4.i31 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i31, label %land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge, label %if.then.i33

land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i33:                                      ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.122, i32 noundef 724, ptr noundef nonnull @.str.124) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i33, %land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i30.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !324
  %16 = tail call i32 @llvm.read_register.i32(metadata !310) #10
  %and.i.i.i.i.i34 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i34 to ptr
  %preempt_count.i.i.i.i35 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i35, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i35, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_rx_no_mark_listener(ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %trap_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__mlxsw_sp_rx_no_mark_listener(ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %trap_ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @netif_receive_skb(ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_rx_ptp_listener(ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %trap_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_trap_ctx_priv(ptr noundef %trap_ctx) #10
  %call1 = tail call fastcc i32 @__mlxsw_sp_rx_no_mark_listener(ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %trap_ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 14) #10
  tail call void @mlxsw_sp_ptp_receive(ptr noundef %call, ptr noundef %skb, i16 noundef zeroext %local_port) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_rx_l3_mark_listener(ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %trap_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %offload_l3_fwd_mark = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %0 = ptrtoint ptr %offload_l3_fwd_mark to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load = load i32, ptr %offload_l3_fwd_mark, align 2
  %bf.set3 = or i32 %bf.load, 1572864
  store i32 %bf.set3, ptr %offload_l3_fwd_mark, align 2
  %call.i = tail call fastcc i32 @__mlxsw_sp_rx_no_mark_listener(ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %trap_ctx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mlxsw_sp_rx_no_mark_listener.exit_crit_edge

entry.mlxsw_sp_rx_no_mark_listener.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_sp_rx_no_mark_listener.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @netif_receive_skb(ptr noundef %skb) #10
  br label %mlxsw_sp_rx_no_mark_listener.exit

mlxsw_sp_rx_no_mark_listener.exit:                ; preds = %if.end.i, %entry.mlxsw_sp_rx_no_mark_listener.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_trap_ctx_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_rx_listener(ptr nocapture noundef readonly %mlxsw_sp, ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef readonly %mlxsw_sp_port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mlxsw_sp_port, null
  br i1 %tobool.not, label %do.body, label %if.end9, !prof !320

do.body:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @mlxsw_sp_rx_listener._rs, ptr noundef nonnull @__func__.mlxsw_sp_rx_listener) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.body.do.end8_crit_edge, label %do.end

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %bus_info = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %0 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_info, align 4
  %dev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %conv = zext i16 %local_port to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.119, i32 noundef %conv) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end9:                                          ; preds = %entry
  %4 = ptrtoint ptr %mlxsw_sp_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mlxsw_sp_port, align 8
  %6 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %6, align 8
  %pcpu_stats14 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 1
  %8 = ptrtoint ptr %pcpu_stats14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcpu_stats14, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !310) #10
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.mlxsw_sp_port_pcpu_stats, ptr %17, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %18 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.end9.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i

if.end9.u64_stats_update_begin.exit_crit_edge:    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i:                                ; preds = %if.end9
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !325
  %21 = tail call i32 @llvm.read_register.i32(metadata !310) #10
  %and.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %26, ptrtoint (ptr @lockdep_recursion to i32)
  %27 = inttoptr i32 %add.i.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !326
  %30 = tail call i32 @llvm.read_register.i32(metadata !310) #10
  %and.i.i.i7.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool20.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %34 = tail call i32 @llvm.read_register.i32(metadata !310) #10
  %and.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i = icmp eq i32 %37, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %38 = tail call i32 @llvm.read_register.i32(metadata !310) #10
  %and.i.i.i9.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %41, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !327
  %42 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %45, ptrtoint (ptr @hardirqs_enabled to i32)
  %46 = inttoptr i32 %add47.i.i to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !328
  %49 = tail call i32 @llvm.read_register.i32(metadata !310) #10
  %and.i.i.i12.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %52, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool54.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !329

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.121, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge, %if.end9.u64_stats_update_begin.exit_crit_edge
  %53 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %syncp, align 4
  %inc.i.i.i.i = add i32 %54, 1
  store i32 %inc.i.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !330
  %dep_map.i.i.i = getelementptr inbounds %struct.mlxsw_sp_port_pcpu_stats, ptr %17, i32 0, i32 4, i32 0, i32 1
  %55 = tail call ptr @llvm.returnaddress(i32 0) #10
  %56 = ptrtoint ptr %55 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %56) #10
  %57 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %17, align 8
  %inc = add i64 %58, 1
  store i64 %inc, ptr %17, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %59 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len, align 4
  %conv17 = zext i32 %60 to i64
  %rx_bytes = getelementptr inbounds %struct.mlxsw_sp_port_pcpu_stats, ptr %17, i32 0, i32 1
  %61 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %rx_bytes, align 8
  %add18 = add i64 %62, %conv17
  store i64 %add18, ptr %rx_bytes, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %56) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !331
  %63 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %64, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  %65 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %6, align 8
  %call20 = tail call zeroext i16 @eth_type_trans(ptr noundef %skb, ptr noundef %66) #10
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %67 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %call20, ptr %protocol, align 8
  br label %cleanup

cleanup:                                          ; preds = %u64_stats_update_begin.exit, %do.end8
  %retval.0 = phi i32 [ -22, %do.end8 ], [ 0, %u64_stats_update_begin.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_core_port_devlink_port_get(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_trap_report(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_afa_cookie_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mlxsw_sp_rx_no_mark_listener(ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %trap_ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_trap_ctx_priv(ptr noundef %trap_ctx) #10
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %idxprom = zext i16 %local_port to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call fastcc i32 @mlxsw_sp_rx_listener(ptr noundef %call, ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %call2 = tail call ptr @priv_to_devlink(ptr noundef %5) #10
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %call4 = tail call ptr @mlxsw_core_port_devlink_port_get(ptr noundef %7, i16 noundef zeroext %local_port) #10
  %call5 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 14) #10
  tail call void @devlink_trap_report(ptr noundef %call2, ptr noundef %skb, ptr noundef %trap_ctx, ptr noundef %call4, ptr noundef null) #10
  %call6 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 14) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_ptp_receive(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_rx_sample_listener(ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %trap_ctx) #0 align 64 {
entry:
  %trigger = alloca %struct.mlxsw_sp_sample_trigger, align 8
  %md = alloca %struct.psample_metadata, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_trap_ctx_priv(ptr noundef %trap_ctx) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %trigger) #10
  %0 = ptrtoint ptr %trigger to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %trigger, align 8, !annotation !321
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %md) #10
  %1 = call ptr @memset(ptr %md, i32 0, i32 40)
  %call1 = tail call fastcc i32 @__mlxsw_sp_rx_no_mark_listener(ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %trap_ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %idxprom = zext i16 %local_port to i32
  %arrayidx = getelementptr ptr, ptr %3, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %trigger to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %trigger, align 8
  %local_port5 = getelementptr inbounds %struct.mlxsw_sp_sample_trigger, ptr %trigger, i32 0, i32 1
  %7 = ptrtoint ptr %local_port5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %local_port, ptr %local_port5, align 4
  %call6 = call ptr @mlxsw_sp_sample_trigger_params_lookup(ptr noundef %call, ptr noundef nonnull %trigger) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end4.out_crit_edge, label %if.end9

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = call ptr @skb_push(ptr noundef %skb, i32 noundef 14) #10
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifindex, align 4
  %truncate = getelementptr inbounds %struct.mlxsw_sp_sample_params, ptr %call6, i32 0, i32 3
  %12 = ptrtoint ptr %truncate to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %truncate, align 4, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11 = icmp ne i8 %13, 0
  %trunc_size = getelementptr inbounds %struct.mlxsw_sp_sample_params, ptr %call6, i32 0, i32 1
  %14 = ptrtoint ptr %trunc_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %trunc_size, align 4
  call fastcc void @mlxsw_sp_psample_md_init(ptr noundef %call, ptr noundef nonnull %md, ptr noundef %skb, i32 noundef %11, i1 noundef zeroext %tobool11, i32 noundef %15)
  %16 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call6, align 4
  %rate = getelementptr inbounds %struct.mlxsw_sp_sample_params, ptr %call6, i32 0, i32 2
  %18 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rate, align 4
  call void @psample_sample_packet(ptr noundef %17, ptr noundef %skb, i32 noundef %19, ptr noundef nonnull %md) #10
  br label %out

out:                                              ; preds = %if.end9, %if.end4.out_crit_edge, %if.end.out_crit_edge
  call void @consume_skb(ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %md) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %trigger) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_sample_trigger_params_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_psample_md_init(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef %md, ptr nocapture noundef readonly %skb, i32 noundef %in_ifindex, i1 noundef zeroext %truncate, i32 noundef %trunc_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %truncate, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.false ], [ %trunc_size, %entry.cond.end_crit_edge ]
  %2 = ptrtoint ptr %md to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %md, align 8
  %in_ifindex2 = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 1
  %3 = ptrtoint ptr %in_ifindex2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %in_ifindex, ptr %in_ifindex2, align 4
  %tx_port_valid.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 17
  %4 = ptrtoint ptr %tx_port_valid.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %tx_port_valid.i, align 1
  %5 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %cond.end.cond.end9_crit_edge, label %if.end.i

cond.end.cond.end9_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

if.end.i:                                         ; preds = %cond.end
  %6 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not.i = icmp eq i8 %6, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %7 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core.i, align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 4
  %tx_lag_port_index.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %12 = ptrtoint ptr %tx_lag_port_index.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tx_lag_port_index.i, align 2
  %conv.i = trunc i16 %13 to i8
  %call.i = tail call zeroext i16 @mlxsw_core_lag_mapping_get(ptr noundef %8, i16 noundef zeroext %11, i8 noundef zeroext %conv.i) #10
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then5.i
  %local_port.0.i = phi i16 [ %call.i, %if.then5.i ], [ %16, %if.else.i ]
  %conv7.i = zext i16 %local_port.0.i to i32
  %core8.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %17 = ptrtoint ptr %core8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %core8.i, align 4
  %call9.i = tail call i32 @mlxsw_core_max_ports(ptr noundef %18) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i, i32 %conv7.i)
  %cmp.not.i = icmp ugt i32 %call9.i, %conv7.i
  br i1 %cmp.not.i, label %mlxsw_sp_sample_tx_port_get.exit, label %if.end6.i.cond.end9_crit_edge

if.end6.i.cond.end9_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

mlxsw_sp_sample_tx_port_get.exit:                 ; preds = %if.end6.i
  %19 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mlxsw_sp, align 4
  %arrayidx.i = getelementptr ptr, ptr %20, i32 %conv7.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not = icmp eq ptr %22, null
  br i1 %tobool4.not, label %mlxsw_sp_sample_tx_port_get.exit.cond.end9_crit_edge, label %land.lhs.true

mlxsw_sp_sample_tx_port_get.exit.cond.end9_crit_edge: ; preds = %mlxsw_sp_sample_tx_port_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

land.lhs.true:                                    ; preds = %mlxsw_sp_sample_tx_port_get.exit
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %tobool5.not = icmp eq ptr %24, null
  br i1 %tobool5.not, label %land.lhs.true.cond.end9_crit_edge, label %cond.true6

land.lhs.true.cond.end9_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

cond.true6:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %ifindex = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ifindex, align 4
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true6, %land.lhs.true.cond.end9_crit_edge, %mlxsw_sp_sample_tx_port_get.exit.cond.end9_crit_edge, %if.end6.i.cond.end9_crit_edge, %cond.end.cond.end9_crit_edge
  %cond10 = phi i32 [ %26, %cond.true6 ], [ 0, %land.lhs.true.cond.end9_crit_edge ], [ 0, %mlxsw_sp_sample_tx_port_get.exit.cond.end9_crit_edge ], [ 0, %cond.end.cond.end9_crit_edge ], [ 0, %if.end6.i.cond.end9_crit_edge ]
  %out_ifindex = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 2
  %27 = ptrtoint ptr %out_ifindex to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond10, ptr %out_ifindex, align 8
  %28 = ptrtoint ptr %tx_port_valid.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %tx_port_valid.i, align 1
  %out_tc_valid = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 6
  %29 = ptrtoint ptr %out_tc_valid to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load11 = load i8, ptr %out_tc_valid, align 8
  %30 = shl i8 %bf.load, 2
  %bf.shl = and i8 %30, -128
  %bf.clear12 = and i8 %bf.load11, 127
  %bf.set = or i8 %bf.clear12, %bf.shl
  store i8 %bf.set, ptr %out_tc_valid, align 8
  %tx_tc = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %31 = ptrtoint ptr %tx_tc to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tx_tc, align 4
  %conv = zext i8 %32 to i16
  %out_tc = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 3
  %33 = ptrtoint ptr %out_tc to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv, ptr %out_tc, align 4
  %bf.load13 = load i8, ptr %tx_port_valid.i, align 1
  %bf.clear15 = and i8 %bf.load13, 64
  %bf.clear19 = and i8 %bf.set, -65
  %bf.set20 = or i8 %bf.clear15, %bf.clear19
  store i8 %bf.set20, ptr %out_tc_valid, align 8
  %tx_congestion = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %34 = ptrtoint ptr %tx_congestion to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_congestion, align 4
  %conv21 = zext i32 %35 to i64
  %out_tc_occ = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 4
  %36 = ptrtoint ptr %out_tc_occ to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv21, ptr %out_tc_occ, align 8
  %bf.load22 = load i8, ptr %tx_port_valid.i, align 1
  %37 = lshr i8 %bf.load22, 2
  %bf.shl27 = and i8 %37, 32
  %bf.clear28 = and i8 %bf.set20, -33
  %bf.set29 = or i8 %bf.shl27, %bf.clear28
  store i8 %bf.set29, ptr %out_tc_valid, align 8
  %latency = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %38 = ptrtoint ptr %latency to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %latency, align 4
  %conv30 = zext i32 %39 to i64
  %latency31 = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 5
  %shl = shl nuw nsw i64 %conv30, 6
  %40 = ptrtoint ptr %latency31 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %shl, ptr %latency31, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @psample_sample_packet(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlxsw_core_lag_mapping_get(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_max_ports(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_rx_sample_tx_listener(ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %trap_ctx) #0 align 64 {
entry:
  %trigger = alloca %struct.mlxsw_sp_sample_trigger, align 8
  %md = alloca %struct.psample_metadata, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @devlink_trap_ctx_priv(ptr noundef %trap_ctx) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %trigger) #10
  %0 = ptrtoint ptr %trigger to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %trigger, align 8, !annotation !321
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %md) #10
  %1 = call ptr @memset(ptr %md, i32 0, i32 40)
  %conv = zext i16 %local_port to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %local_port)
  %cmp = icmp eq i16 %local_port, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @__mlxsw_sp_rx_no_mark_listener(ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %trap_ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call1, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end5.out_crit_edge, label %if.end8

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8:                                          ; preds = %if.end5
  %tx_port_valid.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 17
  %6 = ptrtoint ptr %tx_port_valid.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %tx_port_valid.i, align 1
  %7 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end8.out_crit_edge, label %if.end.i

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i:                                         ; preds = %if.end8
  %8 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not.i = icmp eq i8 %8, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %call1, i32 0, i32 1
  %9 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core.i, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 4
  %tx_lag_port_index.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %14 = ptrtoint ptr %tx_lag_port_index.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tx_lag_port_index.i, align 2
  %conv.i = trunc i16 %15 to i8
  %call.i = tail call zeroext i16 @mlxsw_core_lag_mapping_get(ptr noundef %10, i16 noundef zeroext %13, i8 noundef zeroext %conv.i) #10
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then5.i
  %local_port.0.i = phi i16 [ %call.i, %if.then5.i ], [ %18, %if.else.i ]
  %conv7.i = zext i16 %local_port.0.i to i32
  %core8.i = getelementptr inbounds %struct.mlxsw_sp, ptr %call1, i32 0, i32 1
  %19 = ptrtoint ptr %core8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core8.i, align 4
  %call9.i = tail call i32 @mlxsw_core_max_ports(ptr noundef %20) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i, i32 %conv7.i)
  %cmp.not.i = icmp ugt i32 %call9.i, %conv7.i
  br i1 %cmp.not.i, label %mlxsw_sp_sample_tx_port_get.exit, label %if.end6.i.out_crit_edge

if.end6.i.out_crit_edge:                          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

mlxsw_sp_sample_tx_port_get.exit:                 ; preds = %if.end6.i
  %21 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call1, align 4
  %arrayidx.i = getelementptr ptr, ptr %22, i32 %conv7.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %tobool10.not = icmp eq ptr %24, null
  br i1 %tobool10.not, label %mlxsw_sp_sample_tx_port_get.exit.out_crit_edge, label %if.end12

mlxsw_sp_sample_tx_port_get.exit.out_crit_edge:   ; preds = %mlxsw_sp_sample_tx_port_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end12:                                         ; preds = %mlxsw_sp_sample_tx_port_get.exit
  %25 = ptrtoint ptr %trigger to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %trigger, align 8
  %local_port13 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %24, i32 0, i32 3
  %26 = ptrtoint ptr %local_port13 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %local_port13, align 4
  %local_port14 = getelementptr inbounds %struct.mlxsw_sp_sample_trigger, ptr %trigger, i32 0, i32 1
  %28 = ptrtoint ptr %local_port14 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %local_port14, align 4
  %call15 = call ptr @mlxsw_sp_sample_trigger_params_lookup(ptr noundef %call1, ptr noundef nonnull %trigger) #10
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end12.out_crit_edge, label %if.end18

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = call ptr @skb_push(ptr noundef %skb, i32 noundef 14) #10
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %5, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 17
  %31 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ifindex, align 4
  %truncate = getelementptr inbounds %struct.mlxsw_sp_sample_params, ptr %call15, i32 0, i32 3
  %33 = ptrtoint ptr %truncate to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %truncate, align 4, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool20 = icmp ne i8 %34, 0
  %trunc_size = getelementptr inbounds %struct.mlxsw_sp_sample_params, ptr %call15, i32 0, i32 1
  %35 = ptrtoint ptr %trunc_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %trunc_size, align 4
  call fastcc void @mlxsw_sp_psample_md_init(ptr noundef %call1, ptr noundef nonnull %md, ptr noundef %skb, i32 noundef %32, i1 noundef zeroext %tobool20, i32 noundef %36)
  %37 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call15, align 4
  %rate = getelementptr inbounds %struct.mlxsw_sp_sample_params, ptr %call15, i32 0, i32 2
  %39 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rate, align 4
  call void @psample_sample_packet(ptr noundef %38, ptr noundef %skb, i32 noundef %40, ptr noundef nonnull %md) #10
  br label %out

out:                                              ; preds = %if.end18, %if.end12.out_crit_edge, %mlxsw_sp_sample_tx_port_get.exit.out_crit_edge, %if.end6.i.out_crit_edge, %if.end8.out_crit_edge, %if.end5.out_crit_edge, %entry.out_crit_edge
  call void @consume_skb(ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %md) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %trigger) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_rx_sample_acl_listener(ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %trap_ctx) #0 align 64 {
entry:
  %trigger = alloca %struct.mlxsw_sp_sample_trigger, align 8
  %md = alloca %struct.psample_metadata, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_trap_ctx_priv(ptr noundef %trap_ctx) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %trigger) #10
  %0 = ptrtoint ptr %trigger to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 8589934592, ptr %trigger, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %md) #10
  %1 = call ptr @memset(ptr %md, i32 0, i32 40)
  %call1 = tail call fastcc i32 @__mlxsw_sp_rx_no_mark_listener(ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %trap_ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %idxprom = zext i16 %local_port to i32
  %arrayidx = getelementptr ptr, ptr %3, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @mlxsw_sp_sample_trigger_params_lookup(ptr noundef %call, ptr noundef nonnull %trigger) #10
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.out_crit_edge, label %if.end8

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = call ptr @skb_push(ptr noundef %skb, i32 noundef 14) #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ifindex, align 4
  %truncate = getelementptr inbounds %struct.mlxsw_sp_sample_params, ptr %call5, i32 0, i32 3
  %10 = ptrtoint ptr %truncate to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %truncate, align 4, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10 = icmp ne i8 %11, 0
  %trunc_size = getelementptr inbounds %struct.mlxsw_sp_sample_params, ptr %call5, i32 0, i32 1
  %12 = ptrtoint ptr %trunc_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %trunc_size, align 4
  call fastcc void @mlxsw_sp_psample_md_init(ptr noundef %call, ptr noundef nonnull %md, ptr noundef %skb, i32 noundef %9, i1 noundef zeroext %tobool10, i32 noundef %13)
  %14 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call5, align 4
  %rate = getelementptr inbounds %struct.mlxsw_sp_sample_params, ptr %call5, i32 0, i32 2
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rate, align 4
  call void @psample_sample_packet(ptr noundef %15, ptr noundef %skb, i32 noundef %17, ptr noundef nonnull %md) #10
  br label %out

out:                                              ; preds = %if.end8, %if.end4.out_crit_edge, %if.end.out_crit_edge
  call void @consume_skb(ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %md) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %trigger) #10
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 147)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 147)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !242, !243, !244, !245, !246, !247, !249, !250, !252, !253, !254, !256, !257, !259, !261, !263, !264, !266, !267, !269, !270, !272, !273, !275, !276, !278, !279, !281, !282, !284, !285, !287, !288, !290, !291, !293, !294, !296, !298, !300, !302, !304, !306, !308}
!llvm.named.register.sp = !{!310}
!llvm.module.flags = !{!311, !312, !313, !314, !315, !316, !317, !318}
!llvm.ident = !{!319}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1552, i32 6}
!2 = !{ptr @mlxsw_sp_trap_action_set.__msg, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1605, i32 3}
!4 = !{ptr @mlxsw_sp1_trap_ops, !5, !"mlxsw_sp1_trap_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1899, i32 32}
!6 = !{ptr @mlxsw_sp2_trap_ops, !7, !"mlxsw_sp2_trap_ops", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1967, i32 32}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__mlxsw_item_offset._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @__mlxsw_item_offset._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 6145, i32 1}
!16 = distinct !{null, !15, !"mlxsw_reg_htgt_pide_item", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 6153, i32 1}
!19 = distinct !{null, !18, !"mlxsw_reg_htgt_pid_item", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 6086, i32 1}
!22 = distinct !{null, !21, !"mlxsw_reg_htgt_type_item", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 6134, i32 1}
!25 = distinct !{null, !24, !"mlxsw_reg_htgt_trap_group_item", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 6166, i32 1}
!28 = distinct !{null, !27, !"mlxsw_reg_htgt_mirror_action_item", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 6172, i32 1}
!31 = distinct !{null, !30, !"mlxsw_reg_htgt_mirroring_agent_item", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 6187, i32 1}
!34 = distinct !{null, !33, !"mlxsw_reg_htgt_priority_item", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 6195, i32 1}
!37 = distinct !{null, !36, !"mlxsw_reg_htgt_local_path_cpu_tclass_item", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 6207, i32 1}
!40 = distinct !{null, !39, !"mlxsw_reg_htgt_local_path_rdq_item", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 6072, i32 1}
!43 = !{ptr @mlxsw_reg_htgt, !42, !"mlxsw_reg_htgt", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1249, i32 3}
!46 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mlxsw_sp_trap_policer_items_arr_init._entry, !45, !"_entry", i1 false, i1 false}
!50 = !{ptr @mlxsw_sp_trap_policer_items_arr_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @mlxsw_sp_trap_policer_items_arr, !52, !"mlxsw_sp_trap_policer_items_arr", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 452, i32 1}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 517, i32 12}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 522, i32 12}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 527, i32 12}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 532, i32 12}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 537, i32 12}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 542, i32 12}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 547, i32 12}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 552, i32 12}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 557, i32 12}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 562, i32 12}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 567, i32 12}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 572, i32 12}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 577, i32 12}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 582, i32 12}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 587, i32 12}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 592, i32 12}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 597, i32 12}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 602, i32 12}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 607, i32 12}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 612, i32 12}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 617, i32 12}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 622, i32 12}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 627, i32 12}
!99 = !{ptr @mlxsw_sp_trap_group_items_arr, !100, !"mlxsw_sp_trap_group_items_arr", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 515, i32 46}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 635, i32 11}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 641, i32 11}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 648, i32 11}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 654, i32 11}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 660, i32 11}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 667, i32 11}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 673, i32 11}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 679, i32 11}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 686, i32 11}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 693, i32 11}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 699, i32 11}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 705, i32 11}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 711, i32 11}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 718, i32 11}
!129 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 725, i32 11}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 733, i32 11}
!133 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 741, i32 11}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 748, i32 11}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 755, i32 11}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 761, i32 11}
!141 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 768, i32 11}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 780, i32 11}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 789, i32 11}
!147 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 798, i32 11}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 804, i32 11}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 810, i32 11}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 816, i32 11}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 828, i32 11}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 834, i32 11}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 843, i32 11}
!161 = !{ptr @.str.80, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 871, i32 11}
!163 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 878, i32 11}
!165 = !{ptr @.str.82, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 886, i32 11}
!167 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 894, i32 11}
!169 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 902, i32 11}
!171 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 910, i32 11}
!173 = !{ptr @.str.86, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 917, i32 11}
!175 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 925, i32 11}
!177 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 933, i32 11}
!179 = !{ptr @.str.89, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 941, i32 11}
!181 = !{ptr @.str.90, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 947, i32 11}
!183 = !{ptr @.str.91, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 953, i32 11}
!185 = !{ptr @.str.92, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 961, i32 11}
!187 = !{ptr @.str.93, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 969, i32 11}
!189 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 977, i32 11}
!191 = !{ptr @.str.95, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 985, i32 11}
!193 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 993, i32 11}
!195 = !{ptr @.str.97, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 999, i32 11}
!197 = !{ptr @.str.98, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1005, i32 11}
!199 = !{ptr @.str.99, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1011, i32 11}
!201 = !{ptr @.str.100, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1017, i32 11}
!203 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1023, i32 11}
!205 = !{ptr @.str.102, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1029, i32 11}
!207 = !{ptr @.str.103, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1035, i32 11}
!209 = !{ptr @.str.104, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1041, i32 11}
!211 = !{ptr @.str.105, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1047, i32 11}
!213 = !{ptr @.str.106, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1060, i32 11}
!215 = !{ptr @.str.107, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1067, i32 11}
!217 = !{ptr @.str.108, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1075, i32 11}
!219 = !{ptr @.str.109, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1083, i32 11}
!221 = !{ptr @.str.110, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1095, i32 11}
!223 = !{ptr @.str.111, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1103, i32 11}
!225 = !{ptr @.str.112, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1110, i32 11}
!227 = !{ptr @.str.113, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1117, i32 11}
!229 = !{ptr @.str.114, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1124, i32 11}
!231 = !{ptr @.str.115, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1131, i32 11}
!233 = !{ptr @.str.116, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1151, i32 11}
!235 = !{ptr @.str.117, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1158, i32 11}
!237 = !{ptr @mlxsw_sp_trap_items_arr, !238, !"mlxsw_sp_trap_items_arr", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 633, i32 40}
!239 = !{ptr @.str.118, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 69, i32 3}
!241 = !{ptr @mlxsw_sp_rx_listener._rs, !240, !"_rs", i1 false, i1 false}
!242 = !{ptr @__func__.mlxsw_sp_rx_listener, !240, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.119, !240, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.120, !240, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @mlxsw_sp_rx_listener._entry, !240, !"_entry", i1 false, i1 false}
!246 = !{ptr @mlxsw_sp_rx_listener._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!247 = distinct !{null, !248, !"__already_done", i1 false, i1 false}
!248 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!249 = !{ptr @.str.121, !248, !"<string literal>", i1 false, i1 false}
!250 = distinct !{null, !251, !"__warned", i1 false, i1 false}
!251 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!252 = !{ptr @.str.122, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.123, !251, !"<string literal>", i1 false, i1 false}
!254 = distinct !{null, !255, !"__warned", i1 false, i1 false}
!255 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!256 = !{ptr @.str.124, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @__mlxsw_sp_trap_group_init.__msg, !258, !"__msg", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1651, i32 3}
!259 = !{ptr @mlxsw_sp_trap_policer_bs.__msg, !260, !"__msg", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1722, i32 3}
!261 = !{ptr @.str.125, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3575, i32 1}
!263 = distinct !{null, !262, !"mlxsw_reg_qpcr_clear_counter_item", i1 false, i1 false}
!264 = !{ptr @.str.127, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3569, i32 1}
!266 = distinct !{null, !265, !"mlxsw_reg_qpcr_pid_item", i1 false, i1 false}
!267 = !{ptr @.str.129, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3563, i32 1}
!269 = distinct !{null, !268, !"mlxsw_reg_qpcr_g_item", i1 false, i1 false}
!270 = !{ptr @.str.131, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3616, i32 1}
!272 = distinct !{null, !271, !"mlxsw_reg_qpcr_rate_type_item", i1 false, i1 false}
!273 = !{ptr @.str.133, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3672, i32 1}
!275 = distinct !{null, !274, !"mlxsw_reg_qpcr_violate_action_item", i1 false, i1 false}
!276 = !{ptr @.str.135, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3638, i32 1}
!278 = distinct !{null, !277, !"mlxsw_reg_qpcr_cir_item", i1 false, i1 false}
!279 = !{ptr @.str.137, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3603, i32 1}
!281 = distinct !{null, !280, !"mlxsw_reg_qpcr_ir_units_item", i1 false, i1 false}
!282 = !{ptr @.str.139, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3590, i32 1}
!284 = distinct !{null, !283, !"mlxsw_reg_qpcr_bytes_item", i1 false, i1 false}
!285 = !{ptr @.str.141, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3629, i32 1}
!287 = distinct !{null, !286, !"mlxsw_reg_qpcr_cbs_item", i1 false, i1 false}
!288 = !{ptr @.str.143, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3552, i32 1}
!290 = !{ptr @mlxsw_reg_qpcr, !289, !"mlxsw_reg_qpcr", i1 false, i1 false}
!291 = !{ptr @.str.144, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3678, i32 1}
!293 = distinct !{null, !292, !"mlxsw_reg_qpcr_violate_count_item", i1 false, i1 false}
!294 = !{ptr @.str.146, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1860, i32 12}
!296 = !{ptr @mlxsw_sp1_trap_group_items_arr, !297, !"mlxsw_sp1_trap_group_items_arr", i1 false, i1 false}
!297 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1858, i32 1}
!298 = !{ptr @.str.147, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1869, i32 11}
!300 = !{ptr @mlxsw_sp1_trap_items_arr, !301, !"mlxsw_sp1_trap_items_arr", i1 false, i1 false}
!301 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1867, i32 1}
!302 = !{ptr @.str.148, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1907, i32 12}
!304 = !{ptr @mlxsw_sp2_trap_group_items_arr, !305, !"mlxsw_sp2_trap_group_items_arr", i1 false, i1 false}
!305 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1905, i32 1}
!306 = !{ptr @.str.149, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1923, i32 11}
!308 = !{ptr @mlxsw_sp2_trap_items_arr, !309, !"mlxsw_sp2_trap_items_arr", i1 false, i1 false}
!309 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_trap.c", i32 1921, i32 1}
!310 = !{!"sp"}
!311 = !{i32 1, !"wchar_size", i32 2}
!312 = !{i32 1, !"min_enum_size", i32 4}
!313 = !{i32 8, !"branch-target-enforcement", i32 0}
!314 = !{i32 8, !"sign-return-address", i32 0}
!315 = !{i32 8, !"sign-return-address-all", i32 0}
!316 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!317 = !{i32 7, !"uwtable", i32 1}
!318 = !{i32 7, !"frame-pointer", i32 2}
!319 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!320 = !{!"branch_weights", i32 1, i32 2000}
!321 = !{!"auto-init"}
!322 = !{i32 0, i32 33}
!323 = !{i64 2149742897}
!324 = !{i64 2149743163}
!325 = !{i64 2150251518}
!326 = !{i64 2150256452}
!327 = !{i64 2150278170}
!328 = !{i64 2150283064}
!329 = !{!"branch_weights", i32 2000, i32 1}
!330 = !{i64 2150359591}
!331 = !{i64 2150359916}
!332 = !{i8 0, i8 2}

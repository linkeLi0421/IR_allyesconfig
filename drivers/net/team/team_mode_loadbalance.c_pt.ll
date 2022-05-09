; ModuleID = '/llk/IR_all_yes/drivers/net/team/team_mode_loadbalance.c_pt.bc'
source_filename = "../drivers/net/team/team_mode_loadbalance.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.team_mode = type { ptr, ptr, i32, i32, ptr, i32 }
%struct.team_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.team_option = type { %struct.list_head, ptr, i8, i32, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lb_select_tx_port = type { ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.135 }
%struct.atomic_t = type { i32 }
%union.anon.135 = type { i32 }
%struct.team = type { ptr, ptr, %struct.mutex, i32, [16 x %struct.hlist_head], %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.team_mode_ops, i8, i8, ptr, i8, %struct.anon.160, %struct.anon.161, %struct.lock_class_key, [4 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.anon.160 = type { i32, i32, %struct.atomic_t, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.161 = type { i32, i32, %struct.atomic_t, %struct.delayed_work }
%struct.lb_pcpu_stats = type { [256 x %struct.lb_stats], %struct.u64_stats_sync }
%struct.lb_stats = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lb_priv_ex = type { ptr, [256 x %struct.lb_port_mapping], ptr, %struct.anon.166 }
%struct.lb_port_mapping = type { ptr, ptr }
%struct.anon.166 = type { i32, %struct.delayed_work, [256 x %struct.lb_stats_info] }
%struct.lb_stats_info = type { %struct.lb_stats, %struct.lb_stats, ptr }
%struct.sock_fprog_kern = type { i16, ptr }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.team_port = type { ptr, %struct.hlist_node, %struct.list_head, ptr, i32, i8, %struct.anon.157, %struct.anon.158, i8, i8, %struct.anon.159, ptr, i32, i16, %struct.list_head, %struct.callback_head, [0 x i32] }
%struct.anon.157 = type { i8, i32, i8 }
%struct.anon.158 = type { i8, i8 }
%struct.anon.159 = type { [32 x i8], i32 }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.lb_priv = type { ptr, ptr, ptr, ptr }
%struct.anon.168 = type { ptr, i32 }
%struct.team_gsetter_ctx = type { %union.anon.167, ptr }
%union.anon.167 = type { %struct.anon.168 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.136, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.156, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.136 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.156 = type { ptr }
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
%struct.team_option_inst_info = type { i32, ptr }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.97 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { %struct.anon.99, [0 x %struct.sock_filter] }
%struct.anon.99 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }

@lb_mode = internal constant { %struct.team_mode, [40 x i8] } { %struct.team_mode { ptr @.str, ptr null, i32 16, i32 32, ptr @lb_mode_ops, i32 5 }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_team_mode_loadbalance__426_709_lb_init_module6 = internal global ptr @lb_init_module, section ".initcall6.init", align 4
@__exitcall_lb_cleanup_module = internal global ptr @lb_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file427 = internal constant [66 x i8] c"team_mode_loadbalance.file=drivers/net/team/team_mode_loadbalance\00", section ".modinfo", align 1
@__UNIQUE_ID_license428 = internal constant [37 x i8] c"team_mode_loadbalance.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author429 = internal constant [60 x i8] c"team_mode_loadbalance.author=Jiri Pirko <jpirko@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description430 = internal constant [63 x i8] c"team_mode_loadbalance.description=Load-balancing mode for team\00", section ".modinfo", align 1
@__UNIQUE_ID_alias431 = internal constant [50 x i8] c"team_mode_loadbalance.alias=team-mode-loadbalance\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"loadbalance\00", [20 x i8] zeroinitializer }, align 32
@lb_mode_ops = internal constant { %struct.team_mode_ops, [60 x i8] } { %struct.team_mode_ops { ptr @lb_init, ptr @lb_exit, ptr @lb_receive, ptr @lb_transmit, ptr @lb_port_enter, ptr @lb_port_leave, ptr null, ptr null, ptr @lb_port_disabled }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hash\00", [27 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@lb_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&team_lb_stats->syncp)->seq\00", [34 x i8] zeroinitializer }, align 32
@lb_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"(work_completion)(&(&lb_priv->ex->stats.refresh_dw)->work)\00", [37 x i8] zeroinitializer }, align 32
@lb_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"&(&lb_priv->ex->stats.refresh_dw)->timer\00", [55 x i8] zeroinitializer }, align 32
@lb_options = internal constant { [6 x %struct.team_option], [40 x i8] } { [6 x %struct.team_option] [%struct.team_option { %struct.list_head zeroinitializer, ptr @.str.12, i8 0, i32 0, i32 2, ptr null, ptr @lb_bpf_func_get, ptr @lb_bpf_func_set }, %struct.team_option { %struct.list_head zeroinitializer, ptr @.str.13, i8 0, i32 0, i32 1, ptr null, ptr @lb_tx_method_get, ptr @lb_tx_method_set }, %struct.team_option { %struct.list_head zeroinitializer, ptr @.str.14, i8 0, i32 256, i32 0, ptr @lb_tx_hash_to_port_mapping_init, ptr @lb_tx_hash_to_port_mapping_get, ptr @lb_tx_hash_to_port_mapping_set }, %struct.team_option { %struct.list_head zeroinitializer, ptr @.str.15, i8 0, i32 256, i32 2, ptr @lb_hash_stats_init, ptr @lb_hash_stats_get, ptr null }, %struct.team_option { %struct.list_head zeroinitializer, ptr @.str.16, i8 1, i32 0, i32 2, ptr @lb_port_stats_init, ptr @lb_port_stats_get, ptr null }, %struct.team_option { %struct.list_head zeroinitializer, ptr @.str.17, i8 0, i32 0, i32 0, ptr null, ptr @lb_stats_refresh_interval_get, ptr @lb_stats_refresh_interval_set }], [40 x i8] zeroinitializer }, align 32
@lb_select_tx_port_list = internal constant { [2 x %struct.lb_select_tx_port], [16 x i8] } { [2 x %struct.lb_select_tx_port] [%struct.lb_select_tx_port { ptr @.str.1, ptr @lb_hash_select_tx_port }, %struct.lb_select_tx_port { ptr @.str.7, ptr @lb_htpm_select_tx_port }], [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hash_to_port_mapping\00", [43 x i8] zeroinitializer }, align 32
@team_get_port_by_index_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_team.h\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@lb_htpm_select_tx_port.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/team/team_mode_loadbalance.c\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bpf_hash_func\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lb_tx_method\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lb_tx_hash_to_port_mapping\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lb_hash_stats\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lb_port_stats\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lb_stats_refresh_interval\00", [38 x i8] zeroinitializer }, align 32
@lb_bpf_func_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@lb_tx_method_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@lb_bpf_func_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@lb_transmit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@lb_get_skb_hash.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [8 x i8] c"lb_mode\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 690, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 691, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"lb_mode_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 680, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 610, i32 36 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 628, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 632, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [11 x i8] c"lb_options\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 560, i32 33 }
@___asan_gen_.54 = private unnamed_addr constant [23 x i8] c"lb_select_tx_port_list\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 150, i32 39 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 156, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [27 x i8] c"../include/linux/if_team.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 275, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 138, i32 9 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 562, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 568, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 574, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 582, i32 11 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 589, i32 11 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 596, i32 11 }
@___asan_gen_.91 = private constant [44 x i8] c"../drivers/net/team/team_mode_loadbalance.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 310, i32 13 }
@___asan_gen_.94 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 613, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 271, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_alias431, ptr @__UNIQUE_ID_author429, ptr @__UNIQUE_ID_description430, ptr @__UNIQUE_ID_file427, ptr @__UNIQUE_ID_license428, ptr @__exitcall_lb_cleanup_module, ptr @__initcall__kmod_team_mode_loadbalance__426_709_lb_init_module6, ptr @lb_cleanup_module, ptr @lb_mode, ptr @.str, ptr @lb_mode_ops, ptr @.str.1, ptr @lb_init.__key, ptr @.str.2, ptr @lb_init.__key.3, ptr @.str.4, ptr @lb_init.__key.5, ptr @.str.6, ptr @lb_options, ptr @lb_select_tx_port_list, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb_mode to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb_mode_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb_options to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb_select_tx_port_list to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lb_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @team_mode_unregister(ptr noundef nonnull @lb_mode) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @team_mode_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lb_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @team_mode_register(ptr noundef nonnull @lb_mode) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lb_init(ptr noundef %team) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !87
  %select_tx_port_func35 = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17, i32 1
  %0 = ptrtoint ptr %select_tx_port_func35 to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr @lb_hash_select_tx_port, ptr %select_tx_port_func35, align 4
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8304, i32 noundef 3520, i32 noundef 2) #16
  %ex = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17, i32 3
  %1 = ptrtoint ptr %ex to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1.i.i.i, ptr %ex, align 4
  %tobool49.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool49.not, label %entry.cleanup_crit_edge, label %if.end51

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end51:                                         ; preds = %entry
  %2 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %team, ptr %call1.i.i.i, align 4096
  %call54 = tail call noalias ptr @__alloc_percpu(i32 noundef 2080, i32 noundef 8) #16
  %pcpu_stats = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17, i32 2
  %3 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call54, ptr %pcpu_stats, align 4
  %tobool56.not = icmp eq ptr %call54, null
  br i1 %tobool56.not, label %if.end51.err_alloc_pcpu_stats_crit_edge, label %for.cond.preheader

if.end51.err_alloc_pcpu_stats_crit_edge:          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_alloc_pcpu_stats

for.cond.preheader:                               ; preds = %if.end51
  %call59131 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call59131, i32 %4)
  %cmp60132 = icmp ult i32 %call59131, %4
  br i1 %cmp60132, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.do.body70_crit_edge

for.cond.preheader.do.body70_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body70

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call59133 = phi i32 [ %call59, %for.body.for.body_crit_edge ], [ %call59131, %for.cond.preheader.for.body_crit_edge ]
  %5 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcpu_stats, align 4
  %7 = ptrtoint ptr %6 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call59133
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %7
  %10 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.lb_pcpu_stats, ptr %10, i32 0, i32 1
  %dep_map.i = getelementptr inbounds %struct.lb_pcpu_stats, ptr %10, i32 0, i32 1, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @lb_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %11 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %syncp, align 4
  %call59 = tail call i32 @cpumask_next(i32 noundef %call59133, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cmp60 = icmp ult i32 %call59, %12
  br i1 %cmp60, label %for.body.for.body_crit_edge, label %for.body.do.body70_crit_edge

for.body.do.body70_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body70

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body70:                                        ; preds = %for.body.do.body70_crit_edge, %for.cond.preheader.do.body70_crit_edge
  %13 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ex, align 4
  %refresh_dw = getelementptr inbounds %struct.lb_priv_ex, ptr %14, i32 0, i32 3, i32 1
  tail call void @__init_work(ptr noundef %refresh_dw, i32 noundef 0) #13
  %15 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ex, align 4
  %refresh_dw74 = getelementptr inbounds %struct.lb_priv_ex, ptr %16, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %refresh_dw74 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %refresh_dw74, align 4
  %18 = load ptr, ptr %ex, align 4
  %lockdep_map = getelementptr inbounds %struct.lb_priv_ex, ptr %18, i32 0, i32 3, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @lb_init.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %19 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ex, align 4
  %entry84 = getelementptr inbounds %struct.lb_priv_ex, ptr %20, i32 0, i32 3, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %entry84 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry84, ptr %entry84, align 4
  %prev.i = getelementptr inbounds %struct.lb_priv_ex, ptr %20, i32 0, i32 3, i32 1, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry84, ptr %prev.i, align 4
  %23 = load ptr, ptr %ex, align 4
  %func89 = getelementptr inbounds %struct.lb_priv_ex, ptr %23, i32 0, i32 3, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %func89 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @lb_stats_refresh, ptr %func89, align 4
  %25 = load ptr, ptr %ex, align 4
  %timer = getelementptr inbounds %struct.lb_priv_ex, ptr %25, i32 0, i32 3, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @lb_init.__key.5) #13
  %call100 = tail call i32 @team_options_register(ptr noundef %team, ptr noundef nonnull @lb_options, i32 noundef 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %do.body70.cleanup_crit_edge, label %err_options_register

do.body70.cleanup_crit_edge:                      ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_options_register:                             ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcpu_stats, align 4
  tail call void @free_percpu(ptr noundef %27) #13
  br label %err_alloc_pcpu_stats

err_alloc_pcpu_stats:                             ; preds = %err_options_register, %if.end51.err_alloc_pcpu_stats_crit_edge
  %err.0 = phi i32 [ %call100, %err_options_register ], [ -12, %if.end51.err_alloc_pcpu_stats_crit_edge ]
  %28 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ex, align 4
  tail call void @kfree(ptr noundef %29) #13
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_pcpu_stats, %do.body70.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_alloc_pcpu_stats ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body70.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lb_exit(ptr noundef %team) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_priv.i = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17
  tail call void @team_options_unregister(ptr noundef %team, ptr noundef nonnull @lb_options, i32 noundef 6) #13
  %ex.i = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17, i32 3
  %0 = ptrtoint ptr %ex.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ex.i, align 4
  %orig_fprog.i = getelementptr inbounds %struct.lb_priv_ex, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %orig_fprog.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orig_fprog.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.lb_bpf_func_free.exit_crit_edge, label %if.end.i

entry.lb_bpf_func_free.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lb_bpf_func_free.exit

if.end.i:                                         ; preds = %entry
  %filter.i.i = getelementptr inbounds %struct.sock_fprog_kern, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %filter.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %filter.i.i, align 4
  tail call void @kfree(ptr noundef %5) #13
  tail call void @kfree(ptr noundef nonnull %3) #13
  %dep_map.i = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 2, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b16.i = load i1, ptr @lb_bpf_func_free.__warned, align 1
  br i1 %.b16.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then9.i

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @lb_bpf_func_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 334, ptr noundef nonnull @.str.18) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then9.i, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %6 = ptrtoint ptr %mode_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_priv.i, align 4
  tail call void @bpf_prog_destroy(ptr noundef %7) #13
  br label %lb_bpf_func_free.exit

lb_bpf_func_free.exit:                            ; preds = %do.end.i, %entry.lb_bpf_func_free.exit_crit_edge
  %8 = ptrtoint ptr %ex.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ex.i, align 4
  %refresh_dw = getelementptr inbounds %struct.lb_priv_ex, ptr %9, i32 0, i32 3, i32 1
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %refresh_dw) #13
  %pcpu_stats = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17, i32 2
  %10 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcpu_stats, align 4
  tail call void @free_percpu(ptr noundef %11) #13
  %12 = ptrtoint ptr %ex.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ex.i, align 4
  tail call void @kfree(ptr noundef %13) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lb_receive(ptr nocapture noundef readnone %team, ptr nocapture noundef readnone %port, ptr nocapture noundef readonly %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30711, i16 %1)
  %cmp = icmp eq i16 %1, -30711
  br i1 %cmp, label %if.then, label %entry.return_crit_edge, !prof !88

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then:                                          ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %xor.i = xor i32 %7, 25215488
  %arrayidx.i = getelementptr i16, ptr %add.ptr.i.i, i32 2
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  %10 = and i16 %9, -16
  %and.i = zext i16 %10 to i32
  %or.i = or i32 %xor.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true, label %if.then.cleanup.thread_crit_edge

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

land.lhs.true:                                    ; preds = %if.then
  %arrayidx = getelementptr i8, ptr %add.ptr.i.i, i32 5
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp6 = icmp eq i8 %12, 2
  br i1 %cmp6, label %land.lhs.true.return_crit_edge, label %land.lhs.true.cleanup.thread_crit_edge

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

cleanup.thread:                                   ; preds = %land.lhs.true.cleanup.thread_crit_edge, %if.then.cleanup.thread_crit_edge
  br label %return

return:                                           ; preds = %cleanup.thread, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ 2, %land.lhs.true.return_crit_edge ], [ 1, %cleanup.thread ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @lb_transmit(ptr noundef %team, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_priv.i = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %call1 = tail call fastcc i32 @lb_get_skb_hash(ptr noundef %mode_priv.i, ptr noundef %skb)
  %conv = trunc i32 %call1 to i8
  %select_tx_port_func2 = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %select_tx_port_func2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %select_tx_port_func2, align 4
  %call4 = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

land.lhs.true:                                    ; preds = %entry
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b40 = load i1, ptr @lb_transmit.__warned, align 1
  br i1 %.b40, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @lb_transmit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 231, ptr noundef nonnull @.str.11) #13
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %entry.do.end10_crit_edge
  %call12 = tail call ptr %3(ptr noundef %team, ptr noundef %mode_priv.i, ptr noundef %skb, i8 noundef zeroext %conv) #13
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %drop, label %if.end18, !prof !88

if.end18:                                         ; preds = %do.end10
  %slave_dev_queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %4 = ptrtoint ptr %slave_dev_queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %slave_dev_queue_mapping.i, align 4
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %6 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %queue_mapping1.i.i, align 8
  %7 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call12, align 4
  %9 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %9, align 8
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !89
  %and.i.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i, label %team_dev_queue_xmit.exit, label %team_dev_queue_xmit.exit.thread, !prof !90

team_dev_queue_xmit.exit.thread:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %np.i.i = getelementptr inbounds %struct.team_port, ptr %call12, i32 0, i32 11
  %12 = ptrtoint ptr %np.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %np.i.i, align 4
  %call.i.i = tail call i32 @netpoll_send_skb(ptr noundef %13, ptr noundef %skb) #13
  br label %if.end22

team_dev_queue_xmit.exit:                         ; preds = %if.end18
  %call4.i = tail call i32 @dev_queue_xmit(ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool20.not = icmp eq i32 %call4.i, 0
  br i1 %tobool20.not, label %team_dev_queue_xmit.exit.if.end22_crit_edge, label %team_dev_queue_xmit.exit.cleanup_crit_edge

team_dev_queue_xmit.exit.cleanup_crit_edge:       ; preds = %team_dev_queue_xmit.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

team_dev_queue_xmit.exit.if.end22_crit_edge:      ; preds = %team_dev_queue_xmit.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.end22:                                         ; preds = %team_dev_queue_xmit.exit.if.end22_crit_edge, %team_dev_queue_xmit.exit.thread
  %mode_priv.i41 = getelementptr inbounds %struct.team_port, ptr %call12, i32 0, i32 16
  %pcpu_stats1.i = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17, i32 2
  %14 = ptrtoint ptr %pcpu_stats1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcpu_stats1.i, align 4
  %16 = tail call i32 @llvm.read_register.i32(metadata !77) #13
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %mode_priv.i41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mode_priv.i41, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %24 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i.i, label %if.end22.lb_update_tx_stats.exit_crit_edge, label %land.lhs.true.i.i.i

if.end22.lb_update_tx_stats.exit_crit_edge:       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %lb_update_tx_stats.exit

land.lhs.true.i.i.i:                              ; preds = %if.end22
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !91
  %27 = tail call i32 @llvm.read_register.i32(metadata !77) #13
  %and.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %32, ptrtoint (ptr @lockdep_recursion to i32)
  %33 = inttoptr i32 %add.i.i.i to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !92
  %36 = tail call i32 @llvm.read_register.i32(metadata !77) #13
  %and.i.i.i7.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool20.not.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.lb_update_tx_stats.exit_crit_edge

land.lhs.true.i.i.i.lb_update_tx_stats.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lb_update_tx_stats.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %40 = tail call i32 @llvm.read_register.i32(metadata !77) #13
  %and.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i.i.i = icmp eq i32 %43, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.lb_update_tx_stats.exit_crit_edge

land.rhs.i.i.i.lb_update_tx_stats.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lb_update_tx_stats.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %44 = tail call i32 @llvm.read_register.i32(metadata !77) #13
  %and.i.i.i9.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %47, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !93
  %48 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %51, ptrtoint (ptr @hardirqs_enabled to i32)
  %52 = inttoptr i32 %add47.i.i.i to ptr
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !94
  %55 = tail call i32 @llvm.read_register.i32(metadata !77) #13
  %and.i.i.i12.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %58, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool54.not.i.i.i = icmp eq i32 %54, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.lb_update_tx_stats.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.lb_update_tx_stats.exit_crit_edge: ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lb_update_tx_stats.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.lb_update_tx_stats.exit_crit_edge, label %if.then.i.i.i, !prof !90

land.rhs58.i.i.i.lb_update_tx_stats.exit_crit_edge: ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lb_update_tx_stats.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %lb_update_tx_stats.exit

lb_update_tx_stats.exit:                          ; preds = %if.then.i.i.i, %land.rhs58.i.i.i.lb_update_tx_stats.exit_crit_edge, %land.rhs22.i.i.i.lb_update_tx_stats.exit_crit_edge, %land.rhs.i.i.i.lb_update_tx_stats.exit_crit_edge, %land.lhs.true.i.i.i.lb_update_tx_stats.exit_crit_edge, %if.end22.lb_update_tx_stats.exit_crit_edge
  %59 = ptrtoint ptr %15 to i32
  %add.i = add i32 %21, %59
  %60 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.lb_pcpu_stats, ptr %60, i32 0, i32 1
  %idxprom.i = and i32 %call1, 255
  %arrayidx16.i = getelementptr [256 x %struct.lb_stats], ptr %60, i32 0, i32 %idxprom.i
  %61 = ptrtoint ptr %23 to i32
  %add14.i = add i32 %21, %61
  %62 = inttoptr i32 %add14.i to ptr
  %63 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %64, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !95
  %dep_map.i.i.i.i = getelementptr inbounds %struct.lb_pcpu_stats, ptr %60, i32 0, i32 1, i32 0, i32 1
  %65 = tail call ptr @llvm.returnaddress(i32 0) #13
  %66 = ptrtoint ptr %65 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %66) #13
  %conv.i = zext i32 %1 to i64
  %67 = ptrtoint ptr %62 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %62, align 8
  %add18.i = add i64 %68, %conv.i
  store i64 %add18.i, ptr %62, align 8
  %69 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx16.i, align 8
  %add21.i = add i64 %70, %conv.i
  store i64 %add21.i, ptr %arrayidx16.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %66) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !96
  %71 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %72, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  br label %cleanup

drop:                                             ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %drop, %lb_update_tx_stats.exit, %team_dev_queue_xmit.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %drop ], [ true, %lb_update_tx_stats.exit ], [ false, %team_dev_queue_xmit.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lb_port_enter(ptr nocapture noundef readnone %team, ptr nocapture noundef writeonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_priv.i = getelementptr inbounds %struct.team_port, ptr %port, i32 0, i32 16
  %call1 = tail call noalias ptr @__alloc_percpu(i32 noundef 8, i32 noundef 8) #16
  %0 = ptrtoint ptr %mode_priv.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %mode_priv.i, align 8
  %tobool.not = icmp eq ptr %call1, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lb_port_leave(ptr nocapture noundef readnone %team, ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_priv.i = getelementptr inbounds %struct.team_port, ptr %port, i32 0, i32 16
  %0 = ptrtoint ptr %mode_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode_priv.i, align 8
  tail call void @free_percpu(ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lb_port_disabled(ptr noundef %team, ptr noundef readnone %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ex.i = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17, i32 3
  br label %for.body.outer.i

for.body.outer.i:                                 ; preds = %if.end.thread.i.for.body.outer.i_crit_edge, %entry
  %changed.0.off027.ph.i = phi i1 [ true, %if.end.thread.i.for.body.outer.i_crit_edge ], [ false, %entry ]
  %i.025.ph.i = phi i32 [ %inc29.i, %if.end.thread.i.for.body.outer.i_crit_edge ], [ 0, %entry ]
  %0 = ptrtoint ptr %ex.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ex.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.outer.i
  %i.025.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ %i.025.ph.i, %for.body.outer.i ]
  %arrayidx.i = getelementptr %struct.lb_priv_ex, ptr %1, i32 0, i32 1, i32 %i.025.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp3.i = icmp eq ptr %3, %port
  br i1 %cmp3.i, label %if.end.thread.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end.thread.i:                                  ; preds = %for.body.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr null, ptr %arrayidx.i, align 4
  %opt_inst_info.i = getelementptr %struct.lb_priv_ex, ptr %1, i32 0, i32 1, i32 %i.025.i, i32 1
  %5 = ptrtoint ptr %opt_inst_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %opt_inst_info.i, align 4
  tail call void @team_option_inst_set_change(ptr noundef %6) #13
  %inc29.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not30.i = icmp eq i32 %inc29.i, 256
  br i1 %exitcond.not30.i, label %if.end.thread.i.if.then17.i_crit_edge, label %if.end.thread.i.for.body.outer.i_crit_edge

if.end.thread.i.for.body.outer.i_crit_edge:       ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.outer.i

if.end.thread.i.if.then17.i_crit_edge:            ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17.i

for.end.i:                                        ; preds = %if.end.i
  br i1 %changed.0.off027.ph.i, label %for.end.i.if.then17.i_crit_edge, label %for.end.i.lb_tx_hash_to_port_mapping_null_port.exit_crit_edge

for.end.i.lb_tx_hash_to_port_mapping_null_port.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lb_tx_hash_to_port_mapping_null_port.exit

for.end.i.if.then17.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17.i

if.then17.i:                                      ; preds = %for.end.i.if.then17.i_crit_edge, %if.end.thread.i.if.then17.i_crit_edge
  tail call void @team_options_change_check(ptr noundef %team) #13
  br label %lb_tx_hash_to_port_mapping_null_port.exit

lb_tx_hash_to_port_mapping_null_port.exit:        ; preds = %if.then17.i, %for.end.i.lb_tx_hash_to_port_mapping_null_port.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lb_stats_refresh(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2060
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %lock = getelementptr inbounds %struct.team, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @mutex_trylock(ptr noundef %lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %ex = getelementptr inbounds %struct.team, ptr %1, i32 0, i32 17, i32 3
  %pcpu_stats11 = getelementptr inbounds %struct.team, ptr %1, i32 0, i32 17, i32 2
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work, i32 noundef 0) #13
  br label %cleanup

for.body:                                         ; preds = %__lb_stats_info_refresh_check.exit.for.body_crit_edge, %for.cond.preheader
  %changed.0.off0142 = phi i1 [ false, %for.cond.preheader ], [ %or126, %__lb_stats_info_refresh_check.exit.for.body_crit_edge ]
  %j.0140 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %__lb_stats_info_refresh_check.exit.for.body_crit_edge ]
  %3 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ex, align 4
  %arrayidx = getelementptr %struct.lb_priv_ex, ptr %4, i32 0, i32 3, i32 2, i32 %j.0140
  %last_stats.i = getelementptr %struct.lb_priv_ex, ptr %4, i32 0, i32 3, i32 2, i32 %j.0140, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx, align 8
  %7 = ptrtoint ptr %last_stats.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %last_stats.i, align 8
  store i64 0, ptr %arrayidx, align 8
  %call7137 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call7137, i32 %8)
  %cmp8138 = icmp ult i32 %call7137, %8
  br i1 %cmp8138, label %for.body.do.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.do.body_crit_edge:                       ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.body.do.body_crit_edge
  %call7139 = phi i32 [ %call7, %do.body.do.body_crit_edge ], [ %call7137, %for.body.do.body_crit_edge ]
  %9 = ptrtoint ptr %pcpu_stats11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcpu_stats11, align 4
  %11 = ptrtoint ptr %10 to i32
  %arrayidx13 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call7139
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx13, align 4
  %add = add i32 %13, %11
  %14 = inttoptr i32 %add to ptr
  %arrayidx14 = getelementptr [256 x %struct.lb_stats], ptr %14, i32 0, i32 %j.0140
  %syncp = getelementptr inbounds %struct.lb_pcpu_stats, ptr %14, i32 0, i32 1
  tail call fastcc void @__lb_one_cpu_stats_add(ptr noundef %arrayidx, ptr noundef %arrayidx14, ptr noundef %syncp)
  %call7 = tail call i32 @cpumask_next(i32 noundef %call7139, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %cmp8 = icmp ult i32 %call7, %15
  br i1 %cmp8, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %for.body.for.end_crit_edge
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %last_stats.i, ptr noundef dereferenceable(8) %arrayidx, i32 8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %for.end.__lb_stats_info_refresh_check.exit_crit_edge, label %if.then.i

for.end.__lb_stats_info_refresh_check.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %__lb_stats_info_refresh_check.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %opt_inst_info.i = getelementptr %struct.lb_priv_ex, ptr %4, i32 0, i32 3, i32 2, i32 %j.0140, i32 2
  %16 = ptrtoint ptr %opt_inst_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %opt_inst_info.i, align 8
  tail call void @team_option_inst_set_change(ptr noundef %17) #13
  br label %__lb_stats_info_refresh_check.exit

__lb_stats_info_refresh_check.exit:               ; preds = %if.then.i, %for.end.__lb_stats_info_refresh_check.exit_crit_edge
  %18 = xor i1 %tobool.not.i, true
  %or126 = or i1 %changed.0.off0142, %18
  %inc = add nuw nsw i32 %j.0140, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end20, label %__lb_stats_info_refresh_check.exit.for.body_crit_edge

__lb_stats_info_refresh_check.exit.for.body_crit_edge: ; preds = %__lb_stats_info_refresh_check.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end20:                                        ; preds = %__lb_stats_info_refresh_check.exit
  %port_list = getelementptr inbounds %struct.team, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn146 = load ptr, ptr %port_list, align 4
  %cmp26.not147 = icmp eq ptr %.pn146, %port_list
  br i1 %cmp26.not147, label %for.end20.for.end71_crit_edge, label %for.end20.for.body28_crit_edge

for.end20.for.body28_crit_edge:                   ; preds = %for.end20
  br label %for.body28

for.end20.for.end71_crit_edge:                    ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end71

for.body28:                                       ; preds = %__lb_stats_info_refresh_check.exit135.for.body28_crit_edge, %for.end20.for.body28_crit_edge
  %.pn149 = phi ptr [ %.pn, %__lb_stats_info_refresh_check.exit135.for.body28_crit_edge ], [ %.pn146, %for.end20.for.body28_crit_edge ]
  %changed.1.off0148 = phi i1 [ %or62125, %__lb_stats_info_refresh_check.exit135.for.body28_crit_edge ], [ %or126, %for.end20.for.body28_crit_edge ]
  %mode_priv.i128 = getelementptr i8, ptr %.pn149, i32 100
  %stats_info = getelementptr i8, ptr %.pn149, i32 108
  %last_stats.i129 = getelementptr i8, ptr %.pn149, i32 116
  %20 = ptrtoint ptr %stats_info to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %stats_info, align 8
  %22 = ptrtoint ptr %last_stats.i129 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %last_stats.i129, align 8
  store i64 0, ptr %stats_info, align 8
  %call31143 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call31143, i32 %23)
  %cmp32144 = icmp ult i32 %call31143, %23
  br i1 %cmp32144, label %for.body28.do.body35_crit_edge, label %for.body28.for.end57_crit_edge

for.body28.for.end57_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end57

for.body28.do.body35_crit_edge:                   ; preds = %for.body28
  br label %do.body35

do.body35:                                        ; preds = %do.body35.do.body35_crit_edge, %for.body28.do.body35_crit_edge
  %call31145 = phi i32 [ %call31, %do.body35.do.body35_crit_edge ], [ %call31143, %for.body28.do.body35_crit_edge ]
  %24 = ptrtoint ptr %pcpu_stats11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcpu_stats11, align 4
  %26 = ptrtoint ptr %25 to i32
  %arrayidx43 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call31145
  %27 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx43, align 4
  %add44 = add i32 %28, %26
  %29 = inttoptr i32 %add44 to ptr
  %30 = ptrtoint ptr %mode_priv.i128 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mode_priv.i128, align 8
  %32 = ptrtoint ptr %31 to i32
  %add54 = add i32 %28, %32
  %33 = inttoptr i32 %add54 to ptr
  %syncp56 = getelementptr inbounds %struct.lb_pcpu_stats, ptr %29, i32 0, i32 1
  tail call fastcc void @__lb_one_cpu_stats_add(ptr noundef %stats_info, ptr noundef %33, ptr noundef %syncp56)
  %call31 = tail call i32 @cpumask_next(i32 noundef %call31145, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %34 = load i32, ptr @nr_cpu_ids, align 4
  %cmp32 = icmp ult i32 %call31, %34
  br i1 %cmp32, label %do.body35.do.body35_crit_edge, label %do.body35.for.end57_crit_edge

do.body35.for.end57_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end57

do.body35.do.body35_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body35

for.end57:                                        ; preds = %do.body35.for.end57_crit_edge, %for.body28.for.end57_crit_edge
  %bcmp.i131 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %last_stats.i129, ptr noundef dereferenceable(8) %stats_info, i32 8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i131)
  %tobool.not.i132 = icmp eq i32 %bcmp.i131, 0
  br i1 %tobool.not.i132, label %for.end57.__lb_stats_info_refresh_check.exit135_crit_edge, label %if.then.i134

for.end57.__lb_stats_info_refresh_check.exit135_crit_edge: ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %__lb_stats_info_refresh_check.exit135

if.then.i134:                                     ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #15
  %opt_inst_info.i133 = getelementptr i8, ptr %.pn149, i32 124
  %35 = ptrtoint ptr %opt_inst_info.i133 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %opt_inst_info.i133, align 8
  tail call void @team_option_inst_set_change(ptr noundef %36) #13
  br label %__lb_stats_info_refresh_check.exit135

__lb_stats_info_refresh_check.exit135:            ; preds = %if.then.i134, %for.end57.__lb_stats_info_refresh_check.exit135_crit_edge
  %37 = xor i1 %tobool.not.i132, true
  %or62125 = or i1 %changed.1.off0148, %37
  %38 = ptrtoint ptr %.pn149 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn = load ptr, ptr %.pn149, align 4
  %cmp26.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp26.not, label %__lb_stats_info_refresh_check.exit135.for.end71_crit_edge, label %__lb_stats_info_refresh_check.exit135.for.body28_crit_edge

__lb_stats_info_refresh_check.exit135.for.body28_crit_edge: ; preds = %__lb_stats_info_refresh_check.exit135
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body28

__lb_stats_info_refresh_check.exit135.for.end71_crit_edge: ; preds = %__lb_stats_info_refresh_check.exit135
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end71

for.end71:                                        ; preds = %__lb_stats_info_refresh_check.exit135.for.end71_crit_edge, %for.end20.for.end71_crit_edge
  %changed.1.off0.lcssa = phi i1 [ %or126, %for.end20.for.end71_crit_edge ], [ %or62125, %__lb_stats_info_refresh_check.exit135.for.end71_crit_edge ]
  br i1 %changed.1.off0.lcssa, label %if.then73, label %for.end71.if.end74_crit_edge

for.end71.if.end74_crit_edge:                     ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then73:                                        ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @team_options_change_check(ptr noundef %1) #13
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %for.end71.if.end74_crit_edge
  %stats75 = getelementptr i8, ptr %work, i32 -4
  %39 = ptrtoint ptr %stats75 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %stats75, align 8
  %mul = mul i32 %40, 100
  %div = udiv i32 %mul, 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %41 = load ptr, ptr @system_wq, align 4
  %call.i.i136 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %41, ptr noundef %work, i32 noundef %div) #13
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @team_options_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lb_hash_select_tx_port(ptr noundef %team, ptr nocapture noundef readnone %lb_priv, ptr nocapture noundef readnone %skb, i8 noundef zeroext %hash) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %en_port_count1.i = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 3
  %0 = ptrtoint ptr %en_port_count1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %en_port_count1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.team_num_to_port_index.exit_crit_edge, label %if.end.i, !prof !88

entry.team_num_to_port_index.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %team_num_to_port_index.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i8 %hash to i32
  %rem.i = urem i32 %conv, %1
  br label %team_num_to_port_index.exit

team_num_to_port_index.exit:                      ; preds = %if.end.i, %entry.team_num_to_port_index.exit_crit_edge
  %retval.0.i = phi i32 [ %rem.i, %if.end.i ], [ 0, %entry.team_num_to_port_index.exit_crit_edge ]
  %and.i.i = and i32 %retval.0.i, 15
  %arrayidx.i.i = getelementptr %struct.team, ptr %team, i32 0, i32 4, i32 %and.i.i
  %call1.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i3 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i, label %team_num_to_port_index.exit.do.end.i_crit_edge

team_num_to_port_index.exit.do.end.i_crit_edge:   ; preds = %team_num_to_port_index.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %team_num_to_port_index.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b39.i = load i1, ptr @team_get_port_by_index_rcu.__warned, align 1
  br i1 %.b39.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @team_get_port_by_index_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 275, ptr noundef nonnull @.str.9) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %team_num_to_port_index.exit.do.end.i_crit_edge
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool11.not.i = icmp eq ptr %3, null
  %add.ptr.i = getelementptr i8, ptr %3, i32 -4
  %tobool13.not4346.i = icmp eq ptr %add.ptr.i, null
  %tobool13.not43.i = or i1 %tobool11.not.i, %tobool13.not4346.i
  br i1 %tobool13.not43.i, label %do.end.i.team_get_port_by_index_rcu.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.team_get_port_by_index_rcu.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %team_get_port_by_index_rcu.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %port.044.i = phi ptr [ %add.ptr27.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %index.i = getelementptr inbounds %struct.team_port, ptr %port.044.i, i32 0, i32 4
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %5, %retval.0.i
  br i1 %cmp.i, label %for.body.i.team_get_port_by_index_rcu.exit_crit_edge, label %for.inc.i

for.body.i.team_get_port_by_index_rcu.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %team_get_port_by_index_rcu.exit

for.inc.i:                                        ; preds = %for.body.i
  %hlist.i = getelementptr inbounds %struct.team_port, ptr %port.044.i, i32 0, i32 1
  %6 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hlist.i, align 4
  %tobool23.not.i = icmp eq ptr %7, null
  %add.ptr27.i = getelementptr i8, ptr %7, i32 -4
  %tobool13.not47.i = icmp eq ptr %add.ptr27.i, null
  %tobool13.not.i = or i1 %tobool23.not.i, %tobool13.not47.i
  br i1 %tobool13.not.i, label %for.inc.i.team_get_port_by_index_rcu.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.team_get_port_by_index_rcu.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %team_get_port_by_index_rcu.exit

team_get_port_by_index_rcu.exit:                  ; preds = %for.inc.i.team_get_port_by_index_rcu.exit_crit_edge, %for.body.i.team_get_port_by_index_rcu.exit_crit_edge, %do.end.i.team_get_port_by_index_rcu.exit_crit_edge
  %port.0.lcssa.i = phi ptr [ null, %do.end.i.team_get_port_by_index_rcu.exit_crit_edge ], [ %port.044.i, %for.body.i.team_get_port_by_index_rcu.exit_crit_edge ], [ null, %for.inc.i.team_get_port_by_index_rcu.exit_crit_edge ]
  ret ptr %port.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lb_htpm_select_tx_port(ptr noundef %team, ptr nocapture noundef readonly %lb_priv, ptr nocapture noundef readnone %skb, i8 noundef zeroext %hash) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ex = getelementptr inbounds %struct.lb_priv, ptr %lb_priv, i32 0, i32 3
  %0 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ex, align 4
  %idxprom = zext i8 %hash to i32
  %arrayidx = getelementptr %struct.lb_priv_ex, ptr %1, i32 0, i32 1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b19 = load i1, ptr @lb_htpm_select_tx_port.__warned, align 1
  br i1 %.b19, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @lb_htpm_select_tx_port.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 138, ptr noundef nonnull @.str.11) #13
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %3, null
  br i1 %tobool10.not, label %if.end14, label %do.end8.cleanup_crit_edge, !prof !88

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = tail call ptr @lb_hash_select_tx_port(ptr noundef %team, ptr noundef %lb_priv, ptr noundef %skb, i8 noundef zeroext %hash)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end8.cleanup_crit_edge
  %retval.0 = phi ptr [ %call15, %if.end14 ], [ %3, %do.end8.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__lb_one_cpu_stats_add(ptr nocapture noundef %acc_stats, ptr nocapture noundef readonly %cpu_stats, ptr noundef %syncp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %u64_stats_fetch_begin_irq.exit.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !97
  %and.i.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  %1 = tail call ptr @llvm.returnaddress(i32 0) #13
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #13
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %2) #13
  tail call void @trace_hardirqs_on() #13
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %3 = tail call ptr @llvm.returnaddress(i32 0) #13
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #13
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %4) #13
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !89
  %and.i.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !88

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !98
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp, align 4
  %and18.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_fetch_begin_irq.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !100
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i.i = and i32 %9, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_fetch_begin_irq.exit

u64_stats_fetch_begin_irq.exit:                   ; preds = %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge
  %.lcssa.i.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ], [ %9, %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !101
  %10 = ptrtoint ptr %cpu_stats to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %cpu_stats, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !102
  %12 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %13, %.lcssa.i.i
  br i1 %cmp.i.i.i.i.not, label %do.end, label %u64_stats_fetch_begin_irq.exit.do.body_crit_edge

u64_stats_fetch_begin_irq.exit.do.body_crit_edge: ; preds = %u64_stats_fetch_begin_irq.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end:                                           ; preds = %u64_stats_fetch_begin_irq.exit
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %acc_stats to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %acc_stats, align 8
  %add = add i64 %15, %11
  store i64 %add, ptr %acc_stats, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @team_options_change_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @team_option_inst_set_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lb_bpf_func_get(ptr nocapture noundef readonly %team, ptr nocapture noundef writeonly %ctx) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ex = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17, i32 3
  %0 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ex, align 4
  %orig_fprog = getelementptr inbounds %struct.lb_priv_ex, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %orig_fprog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orig_fprog, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %len = getelementptr inbounds %struct.anon.168, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %len, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %3, align 4
  %conv = zext i16 %6 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %len6 = getelementptr inbounds %struct.anon.168, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %len6, align 4
  %8 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ex, align 4
  %orig_fprog8 = getelementptr inbounds %struct.lb_priv_ex, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %orig_fprog8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %orig_fprog8, align 4
  %filter = getelementptr inbounds %struct.sock_fprog_kern, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %filter, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %storemerge = phi ptr [ null, %if.then ], [ %13, %if.end ]
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %storemerge, ptr %ctx, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lb_bpf_func_set(ptr noundef %team, ptr nocapture noundef readonly %ctx) #2 align 64 {
entry:
  %fp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_priv.i = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fp) #13
  %0 = ptrtoint ptr %fp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fp, align 4
  %len = getelementptr inbounds %struct.anon.168, ptr %ctx, i32 0, i32 1
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %rem.i = and i32 %2, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 8) #19
  %tobool1.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call ptr @kmemdup(ptr noundef %4, i32 noundef %2, i32 noundef 3264) #13
  %filter5.i = getelementptr inbounds %struct.sock_fprog_kern, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %filter5.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4.i, ptr %filter5.i, align 4
  %tobool7.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end

if.then8.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end:                                           ; preds = %if.end3.i
  %div18.i = lshr i32 %2, 3
  %conv.i = trunc i32 %div18.i to i16
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %call7.i.i, align 8
  %call7 = call i32 @bpf_prog_create(ptr noundef nonnull %fp, ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %filter5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %filter5.i, align 4
  call void @kfree(ptr noundef %9) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  %fprog.1 = phi ptr [ null, %entry.if.end11_crit_edge ], [ %call7.i.i, %if.end.if.end11_crit_edge ]
  %ex = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17, i32 3
  %10 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ex, align 4
  %orig_fprog = getelementptr inbounds %struct.lb_priv_ex, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %orig_fprog to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %orig_fprog, align 4
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %if.end11.do.body26_crit_edge, label %if.then13

if.end11.do.body26_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body26

if.then13:                                        ; preds = %if.end11
  %filter.i86 = getelementptr inbounds %struct.sock_fprog_kern, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %filter.i86 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %filter.i86, align 4
  call void @kfree(ptr noundef %15) #13
  call void @kfree(ptr noundef nonnull %13) #13
  %dep_map = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 2, i32 5
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %land.lhs.true, label %if.then13.do.end_crit_edge

if.then13.do.end_crit_edge:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %if.then13
  %call18 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true20

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true20:                                  ; preds = %land.lhs.true
  %.b85 = load i1, ptr @lb_bpf_func_set.__warned, align 1
  br i1 %.b85, label %land.lhs.true20.do.end_crit_edge, label %if.then22

land.lhs.true20.do.end_crit_edge:                 ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @lb_bpf_func_set.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 311, ptr noundef nonnull @.str.18) #13
  br label %do.end

do.end:                                           ; preds = %if.then22, %land.lhs.true20.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.then13.do.end_crit_edge
  %16 = ptrtoint ptr %mode_priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mode_priv.i, align 4
  br label %do.body26

do.body26:                                        ; preds = %do.end, %if.end11.do.body26_crit_edge
  %orig_fp.0 = phi ptr [ %17, %do.end ], [ null, %if.end11.do.body26_crit_edge ]
  %18 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fp, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !103
  %20 = ptrtoint ptr %mode_priv.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %19, ptr %mode_priv.i, align 4
  %21 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ex, align 4
  %orig_fprog65 = getelementptr inbounds %struct.lb_priv_ex, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %orig_fprog65 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %fprog.1, ptr %orig_fprog65, align 4
  %tobool66.not = icmp eq ptr %orig_fp.0, null
  br i1 %tobool66.not, label %do.body26.cleanup_crit_edge, label %if.then67

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then67:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  call void @synchronize_rcu() #13
  call void @bpf_prog_destroy(ptr noundef nonnull %orig_fp.0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %do.body26.cleanup_crit_edge, %if.then9, %if.then8.i, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then9 ], [ 0, %if.then67 ], [ 0, %do.body26.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ -12, %if.then8.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fp) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lb_tx_method_get(ptr noundef %team, ptr nocapture noundef writeonly %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 2, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b24 = load i1, ptr @lb_tx_method_get.__warned, align 1
  br i1 %.b24, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @lb_tx_method_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 345, ptr noundef nonnull @.str.18) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %select_tx_port_func = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17, i32 1
  %0 = ptrtoint ptr %select_tx_port_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %select_tx_port_func, align 4
  %cmp2.i = icmp eq ptr %1, @lb_hash_select_tx_port
  br i1 %cmp2.i, label %do.end.lb_select_tx_port_get_name.exit_crit_edge, label %for.inc.i

do.end.lb_select_tx_port_get_name.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %lb_select_tx_port_get_name.exit

for.inc.i:                                        ; preds = %do.end
  %cmp2.1.i = icmp eq ptr %1, @lb_htpm_select_tx_port
  br i1 %cmp2.1.i, label %for.inc.i.lb_select_tx_port_get_name.exit_crit_edge, label %for.inc.i.do.body13_crit_edge

for.inc.i.do.body13_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body13

for.inc.i.lb_select_tx_port_get_name.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lb_select_tx_port_get_name.exit

lb_select_tx_port_get_name.exit:                  ; preds = %for.inc.i.lb_select_tx_port_get_name.exit_crit_edge, %do.end.lb_select_tx_port_get_name.exit_crit_edge
  %i.09.lcssa.i = phi i32 [ 0, %do.end.lb_select_tx_port_get_name.exit_crit_edge ], [ 1, %for.inc.i.lb_select_tx_port_get_name.exit_crit_edge ]
  %arrayidx.i = getelementptr [2 x %struct.lb_select_tx_port], ptr @lb_select_tx_port_list, i32 0, i32 %i.09.lcssa.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %lb_select_tx_port_get_name.exit.do.body13_crit_edge, label %do.end21, !prof !88

lb_select_tx_port_get_name.exit.do.body13_crit_edge: ; preds = %lb_select_tx_port_get_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body13

do.body13:                                        ; preds = %lb_select_tx_port_get_name.exit.do.body13_crit_edge, %for.inc.i.do.body13_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/team/team_mode_loadbalance.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #13, !srcloc !104
  unreachable

do.end21:                                         ; preds = %lb_select_tx_port_get_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %ctx, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lb_tx_method_set(ptr noundef %team, ptr nocapture noundef readonly %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.1, ptr noundef %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.do.body_crit_edge, label %for.inc.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.inc.i:                                        ; preds = %entry
  %call.1.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.7, ptr noundef %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.do.body_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.i.do.body_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %for.inc.i.do.body_crit_edge, %entry.do.body_crit_edge
  %i.08.lcssa.i = phi i32 [ 0, %entry.do.body_crit_edge ], [ 1, %for.inc.i.do.body_crit_edge ]
  %func.i = getelementptr [2 x %struct.lb_select_tx_port], ptr @lb_select_tx_port_list, i32 0, i32 %i.08.lcssa.i, i32 1
  %2 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !105
  %select_tx_port_func23 = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %select_tx_port_func23 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %select_tx_port_func23, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lb_tx_hash_to_port_mapping_init(ptr nocapture noundef readonly %team, ptr noundef %info) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 4
  %ex = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17, i32 3
  %2 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ex, align 4
  %idxprom = and i32 %1, 255
  %opt_inst_info = getelementptr %struct.lb_priv_ex, ptr %3, i32 0, i32 1, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %opt_inst_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %info, ptr %opt_inst_info, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lb_tx_hash_to_port_mapping_get(ptr nocapture noundef readonly %team, ptr nocapture noundef %ctx) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.team_gsetter_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %ex = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17, i32 3
  %4 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ex, align 4
  %idxprom = and i32 %3, 255
  %arrayidx = getelementptr %struct.lb_priv_ex, ptr %5, i32 0, i32 1, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifindex, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %11, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond, ptr %ctx, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lb_tx_hash_to_port_mapping_set(ptr noundef readonly %team, ptr nocapture noundef readonly %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.team_gsetter_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %port_list = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 5
  %4 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn63 = load ptr, ptr %port_list, align 4
  %cmp.not65 = icmp eq ptr %.pn63, %port_list
  br i1 %cmp.not65, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctx, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn66 = phi ptr [ %.pn63, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %port.067 = getelementptr i8, ptr %.pn66, i32 -12
  %7 = ptrtoint ptr %port.067 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port.067, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %10)
  %cmp3 = icmp eq i32 %6, %10
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %index.i = getelementptr i8, ptr %.pn66, i32 12
  %11 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i.not = icmp eq i32 %12, -1
  br i1 %cmp.i.not, label %land.lhs.true.for.inc_crit_edge, label %do.body

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %port.067.le = getelementptr i8, ptr %.pn66, i32 -12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !106
  %ex32 = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17, i32 3
  %13 = ptrtoint ptr %ex32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ex32, align 4
  %idxprom34 = and i32 %3, 255
  %arrayidx35 = getelementptr %struct.lb_priv_ex, ptr %14, i32 0, i32 1, i32 %idxprom34
  %15 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %port.067.le, ptr %arrayidx35, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn66 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn66, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lb_hash_stats_init(ptr nocapture noundef readonly %team, ptr noundef %info) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 4
  %ex = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17, i32 3
  %2 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ex, align 4
  %idxprom = and i32 %1, 255
  %opt_inst_info = getelementptr %struct.lb_priv_ex, ptr %3, i32 0, i32 3, i32 2, i32 %idxprom, i32 2
  %4 = ptrtoint ptr %opt_inst_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %info, ptr %opt_inst_info, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lb_hash_stats_get(ptr nocapture noundef readonly %team, ptr nocapture noundef %ctx) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.team_gsetter_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %ex = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17, i32 3
  %4 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ex, align 4
  %idxprom = and i32 %3, 255
  %arrayidx = getelementptr %struct.lb_priv_ex, ptr %5, i32 0, i32 3, i32 2, i32 %idxprom
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx, ptr %ctx, align 4
  %len = getelementptr inbounds %struct.anon.168, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %len, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lb_port_stats_init(ptr nocapture noundef readnone %team, ptr noundef %info) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.team_option_inst_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %opt_inst_info = getelementptr inbounds %struct.team_port, ptr %1, i32 1, i32 4
  %2 = ptrtoint ptr %opt_inst_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %info, ptr %opt_inst_info, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lb_port_stats_get(ptr nocapture noundef readnone %team, ptr nocapture noundef %ctx) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.team_gsetter_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %port1 = getelementptr inbounds %struct.team_option_inst_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 4
  %stats_info = getelementptr inbounds %struct.team_port, ptr %3, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %stats_info, ptr %ctx, align 4
  %len = getelementptr inbounds %struct.anon.168, ptr %ctx, i32 0, i32 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %len, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lb_stats_refresh_interval_get(ptr nocapture noundef readonly %team, ptr nocapture noundef writeonly %ctx) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ex = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17, i32 3
  %0 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ex, align 4
  %stats = getelementptr inbounds %struct.lb_priv_ex, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stats, align 8
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ctx, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lb_stats_refresh_interval_set(ptr nocapture noundef readonly %team, ptr nocapture noundef readonly %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctx, align 4
  %ex = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17, i32 3
  %2 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ex, align 4
  %stats = getelementptr inbounds %struct.lb_priv_ex, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp = icmp eq i32 %5, %1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %stats, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %7 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ex, align 4
  %refresh_dw10 = getelementptr inbounds %struct.lb_priv_ex, ptr %8, i32 0, i32 3, i32 1
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %refresh_dw10, i32 noundef 0) #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %refresh_dw10) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @team_options_unregister(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lb_get_skb_hash(ptr noundef %lb_priv, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lb_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %lb_priv, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @lb_get_skb_hash.__warned, align 1
  br i1 %.b31, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @lb_get_skb_hash.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 197, ptr noundef nonnull @.str.11) #13
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %do.end8.cleanup_crit_edge, label %if.end15, !prof !88

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %do.end8
  tail call void @__cant_migrate(ptr noundef nonnull @.str.19, i32 noundef 613) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@lb_get_skb_hash, %if.then.i.i)) #13
          to label %if.else.i.i [label %if.then.i.i], !srcloc !107

if.then.i.i:                                      ; preds = %if.end15
  %call3.i.i = tail call i64 @sched_clock() #13
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i = tail call i32 %3(ptr noundef %skb, ptr noundef %insnsi.i.i) #13
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats9.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !77) #13
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %13, i32 0, i32 3
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !97
  %and.i.i.i.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %15 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %16 = tail call i32 @llvm.read_register.i32(metadata !77) #13
  %and.i.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !91
  %20 = tail call i32 @llvm.read_register.i32(metadata !77) #13
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %25, ptrtoint (ptr @lockdep_recursion to i32)
  %26 = inttoptr i32 %add.i.i.i.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !92
  %29 = tail call i32 @llvm.read_register.i32(metadata !77) #13
  %and.i.i.i7.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool20.not.i.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %33 = tail call i32 @llvm.read_register.i32(metadata !77) #13
  %and.i.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i.i.i = icmp eq i32 %36, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %37 = tail call i32 @llvm.read_register.i32(metadata !77) #13
  %and.i.i.i9.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !93
  %41 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %44, ptrtoint (ptr @hardirqs_enabled to i32)
  %45 = inttoptr i32 %add47.i.i.i.i to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !94
  %48 = tail call i32 @llvm.read_register.i32(metadata !77) #13
  %and.i.i.i12.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %51, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool54.not.i.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !90

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %52 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %53, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !95
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %13, i32 0, i32 3, i32 0, i32 1
  %54 = tail call ptr @llvm.returnaddress(i32 0) #13
  %55 = ptrtoint ptr %54 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %55) #13
  %56 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %13, align 8
  %inc.i.i.i = add i64 %57, 1
  store i64 %inc.i.i.i, ptr %13, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %13, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #13
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %58 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %59
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %55) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !96
  %60 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %61, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_on() #13
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !89
  %and.i.i.i4.i.i = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !88

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #13, !srcloc !98
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 9
  %63 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = tail call i32 %64(ptr noundef %skb, ptr noundef %insnsi15.i.i) #13
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i ]
  %lhash.sroa.0.0.extract.shift = lshr i32 %ret.0.i.i, 24
  %lhash.sroa.5.0.extract.shift = lshr i32 %ret.0.i.i, 16
  %lhash.sroa.6.0.extract.shift = lshr i32 %ret.0.i.i, 8
  %conv18 = and i32 %lhash.sroa.5.0.extract.shift, 255
  %conv20 = and i32 %lhash.sroa.6.0.extract.shift, 255
  %conv23 = and i32 %ret.0.i.i, 255
  %xor = xor i32 %conv23, %lhash.sroa.0.0.extract.shift
  %xor21 = xor i32 %xor, %conv18
  %xor24 = xor i32 %xor21, %conv20
  br label %cleanup

cleanup:                                          ; preds = %bpf_prog_run.exit, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %xor24, %bpf_prog_run.exit ], [ 0, %do.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netpoll_send_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @team_mode_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !27, !28, !29, !31, !33, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76}
!llvm.named.register.sp = !{!77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_team_mode_loadbalance__426_709_lb_init_module6, !1, !"__initcall__kmod_team_mode_loadbalance__426_709_lb_init_module6", i1 false, i1 false}
!1 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 709, i32 1}
!2 = !{ptr @__exitcall_lb_cleanup_module, !3, !"__exitcall_lb_cleanup_module", i1 false, i1 false}
!3 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 710, i32 1}
!4 = !{ptr @__UNIQUE_ID_file427, !5, !"__UNIQUE_ID_file427", i1 false, i1 false}
!5 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 712, i32 1}
!6 = !{ptr @__UNIQUE_ID_license428, !5, !"__UNIQUE_ID_license428", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author429, !8, !"__UNIQUE_ID_author429", i1 false, i1 false}
!8 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 713, i32 1}
!9 = !{ptr @__UNIQUE_ID_description430, !10, !"__UNIQUE_ID_description430", i1 false, i1 false}
!10 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 714, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias431, !12, !"__UNIQUE_ID_alias431", i1 false, i1 false}
!12 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 715, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 691, i32 11}
!15 = !{ptr @lb_mode, !16, !"lb_mode", i1 false, i1 false}
!16 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 690, i32 31}
!17 = !{ptr @lb_mode_ops, !18, !"lb_mode_ops", i1 false, i1 false}
!18 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 680, i32 35}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 610, i32 36}
!21 = !{ptr @lb_init.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 628, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @lb_init.__key.3, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 632, i32 2}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @lb_init.__key.5, !25, !"__key", i1 false, i1 false}
!28 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 156, i32 11}
!31 = !{ptr @lb_select_tx_port_list, !32, !"lb_select_tx_port_list", i1 false, i1 false}
!32 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 150, i32 39}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/if_team.h", i32 275, i32 2}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 138, i32 9}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 562, i32 11}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 568, i32 11}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 574, i32 11}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 582, i32 11}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 589, i32 11}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 596, i32 11}
!53 = !{ptr @lb_options, !54, !"lb_options", i1 false, i1 false}
!54 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 560, i32 33}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 310, i32 13}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 344, i32 9}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 333, i32 7}
!62 = distinct !{null, !63, !"b", i1 false, i1 false}
!63 = !{!"../include/linux/etherdevice.h", i32 86, i32 23}
!64 = distinct !{null, !65, !"m", i1 false, i1 false}
!65 = !{!"../include/linux/etherdevice.h", i32 87, i32 22}
!66 = distinct !{null, !67, !"eth_reserved_addr_base", i1 false, i1 false}
!67 = !{!"../include/linux/etherdevice.h", i32 70, i32 17}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 231, i32 24}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../drivers/net/team/team_mode_loadbalance.c", i32 197, i32 7}
!72 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/filter.h", i32 613, i32 2}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!76 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!77 = !{!"sp"}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 2157220877}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i64 621193}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{i64 2149880448}
!92 = !{i64 2149885380}
!93 = !{i64 2149907092}
!94 = !{i64 2149911984}
!95 = !{i64 2149988441}
!96 = !{i64 2149988766}
!97 = !{i64 618461, i64 618522}
!98 = !{i64 621478}
!99 = !{i64 2152376161}
!100 = !{i64 2152376003}
!101 = !{i64 2152376331}
!102 = !{i64 2149988116}
!103 = !{i64 2157172742}
!104 = !{i64 2157177201, i64 2157177706, i64 2157177238, i64 2157177294, i64 2157177328, i64 2157177352, i64 2157177393, i64 2157177414, i64 2157177442, i64 2157177476}
!105 = !{i64 2157184489}
!106 = !{i64 2157198163}
!107 = !{i64 2148707795, i64 2148707800, i64 2148707813, i64 2148707857, i64 2148707891, i64 2148707912}

; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_set.c_pt.bc'
source_filename = "../net/netfilter/xt_set.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ip_set_adt_opt = type { i8, i8, i8, i32, %struct.ip_set_ext }
%struct.ip_set_ext = type { %struct.ip_set_skbinfo, i64, i64, ptr, i32, i8, i8, i8 }
%struct.ip_set_skbinfo = type { i32, i32, i32, i16, i16 }
%struct.xt_action_param = type { %union.anon.141, %union.anon.142, ptr, i32, i16, i8 }
%union.anon.141 = type { ptr }
%union.anon.142 = type { ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.xt_set_info_v0 = type { i16, %union.anon.147 }
%union.anon.147 = type { [7 x i32] }
%struct.anon.148 = type { [6 x i32], i8, i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_mtdtor_param = type { ptr, ptr, ptr, i8 }
%struct.xt_set_info = type { i16, i8, i8 }
%struct.xt_set_info_match_v3 = type { %struct.xt_set_info, %struct.ip_set_counter_match0, %struct.ip_set_counter_match0, i32 }
%struct.ip_set_counter_match0 = type { i8, i64 }
%struct.xt_set_info_match_v4 = type { %struct.xt_set_info, %struct.ip_set_counter_match, %struct.ip_set_counter_match, i32 }
%struct.ip_set_counter_match = type { i64, i8 }
%struct.xt_set_info_target_v0 = type { %struct.xt_set_info_v0, %struct.xt_set_info_v0 }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_tgdtor_param = type { ptr, ptr, ptr, i8 }
%struct.xt_set_info_target_v1 = type { %struct.xt_set_info, %struct.xt_set_info }
%struct.xt_set_info_target_v2 = type { %struct.xt_set_info, %struct.xt_set_info, i32, i32 }
%struct.xt_set_info_target_v3 = type { %struct.xt_set_info, %struct.xt_set_info, %struct.xt_set_info, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.123, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.123 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }

@__UNIQUE_ID_file489 = internal constant [33 x i8] c"xt_set.file=net/netfilter/xt_set\00", section ".modinfo", align 1
@__UNIQUE_ID_license490 = internal constant [19 x i8] c"xt_set.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author491 = internal constant [54 x i8] c"xt_set.author=Jozsef Kadlecsik <kadlec@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description492 = internal constant [59 x i8] c"xt_set.description=Xtables: IP set match and target module\00", section ".modinfo", align 1
@__UNIQUE_ID_alias493 = internal constant [20 x i8] c"xt_set.alias=xt_SET\00", section ".modinfo", align 1
@__UNIQUE_ID_alias494 = internal constant [21 x i8] c"xt_set.alias=ipt_set\00", section ".modinfo", align 1
@__UNIQUE_ID_alias495 = internal constant [22 x i8] c"xt_set.alias=ip6t_set\00", section ".modinfo", align 1
@__UNIQUE_ID_alias496 = internal constant [21 x i8] c"xt_set.alias=ipt_SET\00", section ".modinfo", align 1
@__UNIQUE_ID_alias497 = internal constant [22 x i8] c"xt_set.alias=ip6t_SET\00", section ".modinfo", align 1
@set_matches = internal global [9 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"set\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @set_match_v0, ptr @set_match_v0_checkentry, ptr @set_match_v0_destroy, ptr null, ptr null, i32 32, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"set\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @set_match_v1, ptr @set_match_v1_checkentry, ptr @set_match_v1_destroy, ptr null, ptr null, i32 4, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"set\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @set_match_v1, ptr @set_match_v1_checkentry, ptr @set_match_v1_destroy, ptr null, ptr null, i32 4, i32 0, i32 0, i16 0, i16 10 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"set\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 2, ptr @set_match_v1, ptr @set_match_v1_checkentry, ptr @set_match_v1_destroy, ptr null, ptr null, i32 4, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"set\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 2, ptr @set_match_v1, ptr @set_match_v1_checkentry, ptr @set_match_v1_destroy, ptr null, ptr null, i32 4, i32 0, i32 0, i16 0, i16 10 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"set\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 3, ptr @set_match_v3, ptr @set_match_v1_checkentry, ptr @set_match_v1_destroy, ptr null, ptr null, i32 48, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"set\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 3, ptr @set_match_v3, ptr @set_match_v1_checkentry, ptr @set_match_v1_destroy, ptr null, ptr null, i32 48, i32 0, i32 0, i16 0, i16 10 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"set\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 4, ptr @set_match_v4, ptr @set_match_v1_checkentry, ptr @set_match_v1_destroy, ptr null, ptr null, i32 48, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"set\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 4, ptr @set_match_v4, ptr @set_match_v1_checkentry, ptr @set_match_v1_destroy, ptr null, ptr null, i32 48, i32 0, i32 0, i16 0, i16 10 }], section ".data..read_mostly", align 4
@set_targets = internal global [7 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"SET\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @set_target_v0, ptr @set_target_v0_checkentry, ptr @set_target_v0_destroy, ptr null, ptr null, i32 64, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"SET\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @set_target_v1, ptr @set_target_v1_checkentry, ptr @set_target_v1_destroy, ptr null, ptr null, i32 8, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"SET\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @set_target_v1, ptr @set_target_v1_checkentry, ptr @set_target_v1_destroy, ptr null, ptr null, i32 8, i32 0, i32 0, i16 0, i16 10 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"SET\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 2, ptr @set_target_v2, ptr @set_target_v1_checkentry, ptr @set_target_v1_destroy, ptr null, ptr null, i32 16, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"SET\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 2, ptr @set_target_v2, ptr @set_target_v1_checkentry, ptr @set_target_v1_destroy, ptr null, ptr null, i32 16, i32 0, i32 0, i16 0, i16 10 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"SET\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 3, ptr @set_target_v3, ptr @set_target_v3_checkentry, ptr @set_target_v3_destroy, ptr null, ptr null, i32 20, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"SET\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 3, ptr @set_target_v3, ptr @set_target_v3_checkentry, ptr @set_target_v3_destroy, ptr null, ptr null, i32 20, i32 0, i32 0, i16 0, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_set__498_711_xt_set_init6 = internal global ptr @xt_set_init, section ".initcall6.init", align 4
@__exitcall_xt_set_fini = internal global ptr @xt_set_fini, section ".exitcall.exit", align 4
@set_match_v0_checkentry._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.set_match_v0_checkentry = private unnamed_addr constant [24 x i8] c"set_match_v0_checkentry\00", align 1
@set_match_v0_checkentry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.set_match_v0_checkentry, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016Cannot find set identified by id %u to match\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/netfilter/xt_set.c\00", [41 x i8] zeroinitializer }, align 32
@set_match_v0_checkentry._entry_ptr = internal global ptr @set_match_v0_checkentry._entry, section ".printk_index", align 4
@set_match_v0_checkentry._rs.3 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@set_match_v0_checkentry._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.set_match_v0_checkentry, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016set match dimension is over the limit!\0A\00", [54 x i8] zeroinitializer }, align 32
@set_match_v0_checkentry._entry_ptr.6 = internal global ptr @set_match_v0_checkentry._entry.4, section ".printk_index", align 4
@set_match_v1_checkentry._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.set_match_v1_checkentry = private unnamed_addr constant [24 x i8] c"set_match_v1_checkentry\00", align 1
@set_match_v1_checkentry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.set_match_v1_checkentry, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_match_v1_checkentry._entry_ptr = internal global ptr @set_match_v1_checkentry._entry, section ".printk_index", align 4
@set_match_v1_checkentry._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@set_match_v1_checkentry._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.set_match_v1_checkentry, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_match_v1_checkentry._entry_ptr.9 = internal global ptr @set_match_v1_checkentry._entry.8, section ".printk_index", align 4
@set_target_v0_checkentry._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.set_target_v0_checkentry = private unnamed_addr constant [25 x i8] c"set_target_v0_checkentry\00", align 1
@set_target_v0_checkentry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.set_target_v0_checkentry, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016Cannot find add_set index %u as target\0A\00", [54 x i8] zeroinitializer }, align 32
@set_target_v0_checkentry._entry_ptr = internal global ptr @set_target_v0_checkentry._entry, section ".printk_index", align 4
@set_target_v0_checkentry._rs.11 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@set_target_v0_checkentry._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.set_target_v0_checkentry, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016Cannot find del_set index %u as target\0A\00", [54 x i8] zeroinitializer }, align 32
@set_target_v0_checkentry._entry_ptr.14 = internal global ptr @set_target_v0_checkentry._entry.12, section ".printk_index", align 4
@set_target_v0_checkentry._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@set_target_v0_checkentry._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.set_target_v0_checkentry, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016SET target dimension over the limit!\0A\00", [56 x i8] zeroinitializer }, align 32
@set_target_v0_checkentry._entry_ptr.18 = internal global ptr @set_target_v0_checkentry._entry.16, section ".printk_index", align 4
@set_target_v1_checkentry._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.set_target_v1_checkentry = private unnamed_addr constant [25 x i8] c"set_target_v1_checkentry\00", align 1
@set_target_v1_checkentry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.set_target_v1_checkentry, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_target_v1_checkentry._entry_ptr = internal global ptr @set_target_v1_checkentry._entry, section ".printk_index", align 4
@set_target_v1_checkentry._rs.19 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@set_target_v1_checkentry._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.set_target_v1_checkentry, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_target_v1_checkentry._entry_ptr.21 = internal global ptr @set_target_v1_checkentry._entry.20, section ".printk_index", align 4
@set_target_v1_checkentry._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@set_target_v1_checkentry._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.set_target_v1_checkentry, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_target_v1_checkentry._entry_ptr.24 = internal global ptr @set_target_v1_checkentry._entry.23, section ".printk_index", align 4
@set_target_v3_checkentry._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.set_target_v3_checkentry = private unnamed_addr constant [25 x i8] c"set_target_v3_checkentry\00", align 1
@set_target_v3_checkentry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.set_target_v3_checkentry, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_target_v3_checkentry._entry_ptr = internal global ptr @set_target_v3_checkentry._entry, section ".printk_index", align 4
@set_target_v3_checkentry._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@set_target_v3_checkentry._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.set_target_v3_checkentry, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_target_v3_checkentry._entry_ptr.27 = internal global ptr @set_target_v3_checkentry._entry.26, section ".printk_index", align 4
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mangle\00", [25 x i8] zeroinitializer }, align 32
@set_target_v3_checkentry._rs.29 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@set_target_v3_checkentry._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.set_target_v3_checkentry, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016--map-set only usable from mangle table\0A\00", [53 x i8] zeroinitializer }, align 32
@set_target_v3_checkentry._entry_ptr.32 = internal global ptr @set_target_v3_checkentry._entry.30, section ".printk_index", align 4
@set_target_v3_checkentry._rs.33 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@set_target_v3_checkentry._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.set_target_v3_checkentry, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\016mapping of prio or/and queue is allowed only from OUTPUT/FORWARD/POSTROUTING chains\0A\00", [41 x i8] zeroinitializer }, align 32
@set_target_v3_checkentry._entry_ptr.36 = internal global ptr @set_target_v3_checkentry._entry.34, section ".printk_index", align 4
@set_target_v3_checkentry._rs.37 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@set_target_v3_checkentry._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @__func__.set_target_v3_checkentry, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016Cannot find map_set index %u as target\0A\00", [54 x i8] zeroinitializer }, align 32
@set_target_v3_checkentry._entry_ptr.40 = internal global ptr @set_target_v3_checkentry._entry.38, section ".printk_index", align 4
@set_target_v3_checkentry._rs.41 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@set_target_v3_checkentry._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.set_target_v3_checkentry, ptr @.str.2, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_target_v3_checkentry._entry_ptr.43 = internal global ptr @set_target_v3_checkentry._entry.42, section ".printk_index", align 4
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 91, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 96, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 142, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 147, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 240, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 249, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 258, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 315, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 324, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 333, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 444, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 454, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 462, i32 27 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 463, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 472, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 479, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private constant [26 x i8] c"../net/netfilter/xt_set.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 489, i32 3 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_alias493, ptr @__UNIQUE_ID_alias494, ptr @__UNIQUE_ID_alias495, ptr @__UNIQUE_ID_alias496, ptr @__UNIQUE_ID_alias497, ptr @__UNIQUE_ID_author491, ptr @__UNIQUE_ID_description492, ptr @__UNIQUE_ID_file489, ptr @__UNIQUE_ID_license490, ptr @__exitcall_xt_set_fini, ptr @__initcall__kmod_xt_set__498_711_xt_set_init6, ptr @set_match_v0_checkentry._entry, ptr @set_match_v0_checkentry._entry.4, ptr @set_match_v0_checkentry._entry_ptr, ptr @set_match_v0_checkentry._entry_ptr.6, ptr @set_match_v1_checkentry._entry, ptr @set_match_v1_checkentry._entry.8, ptr @set_match_v1_checkentry._entry_ptr, ptr @set_match_v1_checkentry._entry_ptr.9, ptr @set_target_v0_checkentry._entry, ptr @set_target_v0_checkentry._entry.12, ptr @set_target_v0_checkentry._entry.16, ptr @set_target_v0_checkentry._entry_ptr, ptr @set_target_v0_checkentry._entry_ptr.14, ptr @set_target_v0_checkentry._entry_ptr.18, ptr @set_target_v1_checkentry._entry, ptr @set_target_v1_checkentry._entry.20, ptr @set_target_v1_checkentry._entry.23, ptr @set_target_v1_checkentry._entry_ptr, ptr @set_target_v1_checkentry._entry_ptr.21, ptr @set_target_v1_checkentry._entry_ptr.24, ptr @set_target_v3_checkentry._entry, ptr @set_target_v3_checkentry._entry.26, ptr @set_target_v3_checkentry._entry.30, ptr @set_target_v3_checkentry._entry.34, ptr @set_target_v3_checkentry._entry.38, ptr @set_target_v3_checkentry._entry.42, ptr @set_target_v3_checkentry._entry_ptr, ptr @set_target_v3_checkentry._entry_ptr.27, ptr @set_target_v3_checkentry._entry_ptr.32, ptr @set_target_v3_checkentry._entry_ptr.36, ptr @set_target_v3_checkentry._entry_ptr.40, ptr @set_target_v3_checkentry._entry_ptr.43, ptr @xt_set_fini, ptr @set_match_v0_checkentry._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @set_match_v0_checkentry._rs.3, ptr @.str.5, ptr @set_match_v1_checkentry._rs, ptr @set_match_v1_checkentry._rs.7, ptr @set_target_v0_checkentry._rs, ptr @.str.10, ptr @set_target_v0_checkentry._rs.11, ptr @.str.13, ptr @set_target_v0_checkentry._rs.15, ptr @.str.17, ptr @set_target_v1_checkentry._rs, ptr @set_target_v1_checkentry._rs.19, ptr @set_target_v1_checkentry._rs.22, ptr @set_target_v3_checkentry._rs, ptr @set_target_v3_checkentry._rs.25, ptr @.str.28, ptr @set_target_v3_checkentry._rs.29, ptr @.str.31, ptr @set_target_v3_checkentry._rs.33, ptr @.str.35, ptr @set_target_v3_checkentry._rs.37, ptr @.str.39, ptr @set_target_v3_checkentry._rs.41], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_match_v0_checkentry._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_match_v0_checkentry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_match_v0_checkentry._rs.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_match_v0_checkentry._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_match_v1_checkentry._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_match_v1_checkentry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_match_v1_checkentry._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_match_v1_checkentry._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v0_checkentry._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v0_checkentry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v0_checkentry._rs.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v0_checkentry._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v0_checkentry._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v0_checkentry._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v1_checkentry._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v1_checkentry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v1_checkentry._rs.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v1_checkentry._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v1_checkentry._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v1_checkentry._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v3_checkentry._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v3_checkentry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v3_checkentry._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v3_checkentry._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v3_checkentry._rs.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v3_checkentry._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v3_checkentry._rs.33 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v3_checkentry._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v3_checkentry._rs.37 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v3_checkentry._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v3_checkentry._rs.41 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_target_v3_checkentry._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xt_set_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xt_unregister_matches(ptr noundef nonnull @set_matches, i32 noundef 9) #7
  tail call void @xt_unregister_targets(ptr noundef nonnull @set_targets, i32 noundef 7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_set_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_matches(ptr noundef nonnull @set_matches, i32 noundef 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @xt_register_targets(ptr noundef nonnull @set_targets, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then3

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xt_unregister_matches(ptr noundef nonnull @set_matches, i32 noundef 9) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end4_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.then.if.end4_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @set_match_v0(ptr noundef %skb, ptr noundef %par) #2 align 64 {
entry:
  %opt = alloca %struct.ip_set_adt_opt, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %opt) #7
  %3 = call ptr @memset(ptr %opt, i32 0, i32 56)
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pf.i, align 1
  %8 = ptrtoint ptr %opt to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %opt, align 8
  %dim = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 1
  %u = getelementptr inbounds %struct.xt_set_info_v0, ptr %2, i32 0, i32 1
  %dim1 = getelementptr inbounds %struct.xt_set_info_v0, ptr %2, i32 0, i32 1, i32 0, i32 6
  %9 = ptrtoint ptr %dim1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dim1, align 4
  %11 = ptrtoint ptr %dim to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %dim, align 1
  %flags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 2
  %flags4 = getelementptr inbounds %struct.anon.148, ptr %u, i32 0, i32 2
  %12 = ptrtoint ptr %flags4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags4, align 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %flags, align 2
  %timeout = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %timeout, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %2, align 4
  %18 = load i8, ptr %flags4, align 1
  %call.i = call i32 @ip_set_test(i16 noundef zeroext %17, ptr noundef %skb, ptr noundef %par, ptr noundef nonnull %opt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %20 = icmp ne i8 %19, 0
  %tobool = xor i1 %tobool.not.i, %20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %opt) #7
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_match_v0_checkentry(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 4
  %call = tail call zeroext i16 @ip_set_nfnl_get_byindex(ptr noundef %3, i16 noundef zeroext %5) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call)
  %cmp = icmp eq i16 %call, -1
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @set_match_v0_checkentry._rs, ptr noundef nonnull @__func__.set_match_v0_checkentry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 4
  %conv7 = zext i16 %7 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv7) #10
  br label %cleanup

if.end9:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.xt_set_info_v0, ptr %1, i32 0, i32 1, i32 0, i32 5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11.not = icmp eq i32 %9, 0
  br i1 %cmp11.not, label %if.end26, label %if.then13

if.then13:                                        ; preds = %if.end9
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @set_match_v0_checkentry._rs.3, ptr noundef nonnull @__func__.set_match_v0_checkentry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.end22_crit_edge, label %do.end19

if.then13.if.end22_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end19:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %if.then13.if.end22_crit_edge
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  tail call void @ip_set_nfnl_put(ptr noundef %11, i16 noundef zeroext %13) #7
  br label %cleanup

if.end26:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @compat_flags(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end22, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %if.end22 ], [ 0, %if.end26 ], [ -2, %do.end ], [ -2, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_match_v0_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 4
  tail call void @ip_set_nfnl_put(ptr noundef %3, i16 noundef zeroext %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @set_match_v1(ptr noundef %skb, ptr noundef %par) #2 align 64 {
entry:
  %opt = alloca %struct.ip_set_adt_opt, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %opt) #7
  %3 = call ptr @memset(ptr %opt, i32 0, i32 56)
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pf.i, align 1
  %8 = ptrtoint ptr %opt to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %opt, align 8
  %dim = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 1
  %dim1 = getelementptr inbounds %struct.xt_set_info, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %dim1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dim1, align 2
  %11 = ptrtoint ptr %dim to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %dim, align 1
  %flags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 2
  %flags3 = getelementptr inbounds %struct.xt_set_info, ptr %2, i32 0, i32 2
  %12 = ptrtoint ptr %flags3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags3, align 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %flags, align 2
  %timeout = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %tobool.not = icmp sgt i8 %13, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cmdflags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 3
  %16 = ptrtoint ptr %cmdflags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmdflags, align 4
  %or = or i32 %17, 128
  store i32 %or, ptr %cmdflags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %2, align 2
  %20 = ptrtoint ptr %flags3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags3, align 1
  %call.i = call i32 @ip_set_test(i16 noundef zeroext %19, ptr noundef %skb, ptr noundef %par, ptr noundef nonnull %opt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %23 = icmp ne i8 %22, 0
  %tobool11 = xor i1 %tobool.not.i, %23
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %opt) #7
  ret i1 %tobool11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_match_v1_checkentry(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  %call = tail call zeroext i16 @ip_set_nfnl_get_byindex(ptr noundef %3, i16 noundef zeroext %5) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call)
  %cmp = icmp eq i16 %call, -1
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @set_match_v1_checkentry._rs, ptr noundef nonnull @__func__.set_match_v1_checkentry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 2
  %conv7 = zext i16 %7 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv7) #10
  br label %cleanup

if.end9:                                          ; preds = %entry
  %dim = getelementptr inbounds %struct.xt_set_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dim to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dim, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %9)
  %cmp12 = icmp ugt i8 %9, 6
  br i1 %cmp12, label %if.then14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %if.end9
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @set_match_v1_checkentry._rs.7, ptr noundef nonnull @__func__.set_match_v1_checkentry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end23_crit_edge, label %do.end20

if.then14.if.end23_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

do.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %if.end23

if.end23:                                         ; preds = %do.end20, %if.then14.if.end23_crit_edge
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 2
  tail call void @ip_set_nfnl_put(ptr noundef %11, i16 noundef zeroext %13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end9.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %if.end23 ], [ -2, %do.end ], [ -2, %if.then.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_match_v1_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  tail call void @ip_set_nfnl_put(ptr noundef %3, i16 noundef zeroext %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @set_match_v3(ptr noundef %skb, ptr noundef %par) #2 align 64 {
entry:
  %opt = alloca %struct.ip_set_adt_opt, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %opt) #7
  %3 = call ptr @memset(ptr %opt, i32 255, i32 56)
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pf.i, align 1
  %8 = ptrtoint ptr %opt to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %opt, align 8
  %dim = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 1
  %dim1 = getelementptr inbounds %struct.xt_set_info, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %dim1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dim1, align 2
  %11 = ptrtoint ptr %dim to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %dim, align 1
  %flags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 2
  %flags3 = getelementptr inbounds %struct.xt_set_info, ptr %2, i32 0, i32 2
  %12 = ptrtoint ptr %flags3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags3, align 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %flags, align 2
  %cmdflags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 3
  %flags4 = getelementptr inbounds %struct.xt_set_info_match_v3, ptr %2, i32 0, i32 3
  %15 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags4, align 8
  %17 = ptrtoint ptr %cmdflags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %cmdflags, align 4
  %ext = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4
  %18 = call ptr @memset(ptr %ext, i32 0, i32 16)
  %packets = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 1
  %packets5 = getelementptr inbounds %struct.xt_set_info_match_v3, ptr %2, i32 0, i32 1
  %value = getelementptr inbounds %struct.xt_set_info_match_v3, ptr %2, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %value, align 8
  %21 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %packets, align 8
  %bytes = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 2
  %bytes6 = getelementptr inbounds %struct.xt_set_info_match_v3, ptr %2, i32 0, i32 2
  %value7 = getelementptr inbounds %struct.xt_set_info_match_v3, ptr %2, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %value7 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %value7, align 8
  %24 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %bytes, align 8
  %comment = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %comment to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %comment, align 8
  %packets_op = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 5
  %26 = ptrtoint ptr %packets5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %packets5, align 8
  %28 = ptrtoint ptr %packets_op to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %packets_op, align 8
  %bytes_op = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 6
  %29 = ptrtoint ptr %bytes6 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bytes6, align 8
  %31 = ptrtoint ptr %bytes_op to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %bytes_op, align 1
  %target = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 7
  %32 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %target, align 2
  %33 = load i8, ptr %packets5, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp.not = icmp eq i8 %33, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %34 = ptrtoint ptr %bytes6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bytes6, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp17.not = icmp eq i8 %35, 0
  br i1 %cmp17.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %or = or i32 %16, 32
  %36 = ptrtoint ptr %cmdflags to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or, ptr %cmdflags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %2, align 8
  %39 = ptrtoint ptr %flags3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flags3, align 1
  %call.i = call i32 @ip_set_test(i16 noundef zeroext %38, ptr noundef %skb, ptr noundef %par, ptr noundef nonnull %opt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %41 = and i8 %40, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %42 = icmp ne i8 %41, 0
  %tobool = xor i1 %tobool.not.i, %42
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %opt) #7
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @set_match_v4(ptr noundef %skb, ptr noundef %par) #2 align 64 {
entry:
  %opt = alloca %struct.ip_set_adt_opt, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %opt) #7
  %3 = call ptr @memset(ptr %opt, i32 255, i32 56)
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pf.i, align 1
  %8 = ptrtoint ptr %opt to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %opt, align 8
  %dim = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 1
  %dim1 = getelementptr inbounds %struct.xt_set_info, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %dim1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dim1, align 2
  %11 = ptrtoint ptr %dim to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %dim, align 1
  %flags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 2
  %flags3 = getelementptr inbounds %struct.xt_set_info, ptr %2, i32 0, i32 2
  %12 = ptrtoint ptr %flags3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags3, align 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %flags, align 2
  %cmdflags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 3
  %flags4 = getelementptr inbounds %struct.xt_set_info_match_v4, ptr %2, i32 0, i32 3
  %15 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags4, align 8
  %17 = ptrtoint ptr %cmdflags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %cmdflags, align 4
  %ext = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4
  %18 = call ptr @memset(ptr %ext, i32 0, i32 16)
  %packets = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 1
  %packets5 = getelementptr inbounds %struct.xt_set_info_match_v4, ptr %2, i32 0, i32 1
  %19 = ptrtoint ptr %packets5 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %packets5, align 8
  %21 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %packets, align 8
  %bytes = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 2
  %bytes6 = getelementptr inbounds %struct.xt_set_info_match_v4, ptr %2, i32 0, i32 2
  %22 = ptrtoint ptr %bytes6 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bytes6, align 8
  %24 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %bytes, align 8
  %comment = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %comment to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %comment, align 8
  %packets_op = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 5
  %op = getelementptr inbounds %struct.xt_set_info_match_v4, ptr %2, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %op, align 8
  %28 = ptrtoint ptr %packets_op to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %packets_op, align 8
  %bytes_op = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 6
  %op10 = getelementptr inbounds %struct.xt_set_info_match_v4, ptr %2, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %op10 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %op10, align 8
  %31 = ptrtoint ptr %bytes_op to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %bytes_op, align 1
  %target = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 7
  %32 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %target, align 2
  %33 = load i8, ptr %op, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp.not = icmp eq i8 %33, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %34 = ptrtoint ptr %op10 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %op10, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp17.not = icmp eq i8 %35, 0
  br i1 %cmp17.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %or = or i32 %16, 32
  %36 = ptrtoint ptr %cmdflags to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or, ptr %cmdflags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %2, align 8
  %39 = ptrtoint ptr %flags3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flags3, align 1
  %call.i = call i32 @ip_set_test(i16 noundef zeroext %38, ptr noundef %skb, ptr noundef %par, ptr noundef nonnull %opt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %41 = and i8 %40, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %42 = icmp ne i8 %41, 0
  %tobool = xor i1 %tobool.not.i, %42
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %opt) #7
  ret i1 %tobool
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_test(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ip_set_nfnl_get_byindex(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_set_nfnl_put(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @compat_flags(ptr nocapture noundef %info) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.xt_set_info_v0, ptr %info, i32 0, i32 1
  %dim = getelementptr inbounds %struct.xt_set_info_v0, ptr %info, i32 0, i32 1, i32 0, i32 6
  %0 = ptrtoint ptr %dim to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %dim, align 4
  %1 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %u, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.anon.148, ptr %u, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags, align 1
  %5 = or i8 %4, 1
  store i8 %5, ptr %flags, align 1
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %u, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = phi i32 [ %.pr, %if.then ], [ %2, %entry.if.end_crit_edge ]
  %flags21 = getelementptr inbounds %struct.anon.148, ptr %u, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end.for.end_crit_edge, label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end
  %8 = ptrtoint ptr %dim to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dim, align 4
  %inc = add i8 %9, 1
  store i8 %inc, ptr %dim, align 4
  %10 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %u, align 4
  %and14 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %for.body.for.inc_crit_edge, label %if.then16

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv19 = zext i8 %inc to i32
  %shl = shl nuw i32 1, %conv19
  %12 = ptrtoint ptr %flags21 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags21, align 1
  %14 = trunc i32 %shl to i8
  %conv24 = or i8 %13, %14
  store i8 %conv24, ptr %flags21, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %for.body.for.inc_crit_edge
  %arrayidx7.1 = getelementptr %struct.xt_set_info_v0, ptr %info, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool8.not.1 = icmp eq i32 %16, 0
  br i1 %tobool8.not.1, label %for.inc.for.end_crit_edge, label %for.body.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %17 = ptrtoint ptr %dim to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dim, align 4
  %inc.1 = add i8 %18, 1
  store i8 %inc.1, ptr %dim, align 4
  %19 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx7.1, align 4
  %and14.1 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.1)
  %tobool15.not.1 = icmp eq i32 %and14.1, 0
  br i1 %tobool15.not.1, label %for.body.1.for.inc.1_crit_edge, label %if.then16.1

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then16.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  %conv19.1 = zext i8 %inc.1 to i32
  %shl.1 = shl nuw i32 1, %conv19.1
  %21 = ptrtoint ptr %flags21 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags21, align 1
  %23 = trunc i32 %shl.1 to i8
  %conv24.1 = or i8 %22, %23
  store i8 %conv24.1, ptr %flags21, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then16.1, %for.body.1.for.inc.1_crit_edge
  %arrayidx7.2 = getelementptr %struct.xt_set_info_v0, ptr %info, i32 0, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx7.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool8.not.2 = icmp eq i32 %25, 0
  br i1 %tobool8.not.2, label %for.inc.1.for.end_crit_edge, label %for.body.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  %26 = ptrtoint ptr %dim to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dim, align 4
  %inc.2 = add i8 %27, 1
  store i8 %inc.2, ptr %dim, align 4
  %28 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx7.2, align 4
  %and14.2 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.2)
  %tobool15.not.2 = icmp eq i32 %and14.2, 0
  br i1 %tobool15.not.2, label %for.body.2.for.inc.2_crit_edge, label %if.then16.2

for.body.2.for.inc.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then16.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  %conv19.2 = zext i8 %inc.2 to i32
  %shl.2 = shl nuw i32 1, %conv19.2
  %30 = ptrtoint ptr %flags21 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %flags21, align 1
  %32 = trunc i32 %shl.2 to i8
  %conv24.2 = or i8 %31, %32
  store i8 %conv24.2, ptr %flags21, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then16.2, %for.body.2.for.inc.2_crit_edge
  %arrayidx7.3 = getelementptr %struct.xt_set_info_v0, ptr %info, i32 0, i32 1, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx7.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool8.not.3 = icmp eq i32 %34, 0
  br i1 %tobool8.not.3, label %for.inc.2.for.end_crit_edge, label %for.body.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.3:                                       ; preds = %for.inc.2
  %35 = ptrtoint ptr %dim to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dim, align 4
  %inc.3 = add i8 %36, 1
  store i8 %inc.3, ptr %dim, align 4
  %37 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx7.3, align 4
  %and14.3 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.3)
  %tobool15.not.3 = icmp eq i32 %and14.3, 0
  br i1 %tobool15.not.3, label %for.body.3.for.inc.3_crit_edge, label %if.then16.3

for.body.3.for.inc.3_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then16.3:                                      ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  %conv19.3 = zext i8 %inc.3 to i32
  %shl.3 = shl nuw i32 1, %conv19.3
  %39 = ptrtoint ptr %flags21 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flags21, align 1
  %41 = trunc i32 %shl.3 to i8
  %conv24.3 = or i8 %40, %41
  store i8 %conv24.3, ptr %flags21, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then16.3, %for.body.3.for.inc.3_crit_edge
  %arrayidx7.4 = getelementptr %struct.xt_set_info_v0, ptr %info, i32 0, i32 1, i32 0, i32 4
  %42 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx7.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool8.not.4 = icmp eq i32 %43, 0
  br i1 %tobool8.not.4, label %for.inc.3.for.end_crit_edge, label %for.body.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.4:                                       ; preds = %for.inc.3
  %44 = ptrtoint ptr %dim to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dim, align 4
  %inc.4 = add i8 %45, 1
  store i8 %inc.4, ptr %dim, align 4
  %46 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx7.4, align 4
  %and14.4 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.4)
  %tobool15.not.4 = icmp eq i32 %and14.4, 0
  br i1 %tobool15.not.4, label %for.body.4.for.end_crit_edge, label %if.then16.4

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then16.4:                                      ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #9
  %conv19.4 = zext i8 %inc.4 to i32
  %shl.4 = shl nuw i32 1, %conv19.4
  %48 = ptrtoint ptr %flags21 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flags21, align 1
  %50 = trunc i32 %shl.4 to i8
  %conv24.4 = or i8 %49, %50
  store i8 %conv24.4, ptr %flags21, align 1
  br label %for.end

for.end:                                          ; preds = %if.then16.4, %for.body.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_target_v0(ptr noundef %skb, ptr noundef %par) #2 align 64 {
entry:
  %add_opt = alloca %struct.ip_set_adt_opt, align 8
  %del_opt = alloca %struct.ip_set_adt_opt, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %add_opt) #7
  %3 = call ptr @memset(ptr %add_opt, i32 0, i32 56)
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pf.i, align 1
  %8 = ptrtoint ptr %add_opt to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %add_opt, align 8
  %dim = getelementptr inbounds %struct.ip_set_adt_opt, ptr %add_opt, i32 0, i32 1
  %u = getelementptr inbounds %struct.xt_set_info_v0, ptr %2, i32 0, i32 1
  %dim1 = getelementptr inbounds %struct.xt_set_info_v0, ptr %2, i32 0, i32 1, i32 0, i32 6
  %9 = ptrtoint ptr %dim1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dim1, align 4
  %11 = ptrtoint ptr %dim to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %dim, align 1
  %flags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %add_opt, i32 0, i32 2
  %flags4 = getelementptr inbounds %struct.anon.148, ptr %u, i32 0, i32 2
  %12 = ptrtoint ptr %flags4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags4, align 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %flags, align 2
  %timeout = getelementptr inbounds %struct.ip_set_adt_opt, ptr %add_opt, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %timeout, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %del_opt) #7
  %16 = call ptr @memset(ptr %del_opt, i32 0, i32 56)
  %17 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pf.i, align 1
  %19 = ptrtoint ptr %del_opt to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %del_opt, align 8
  %dim7 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %del_opt, i32 0, i32 1
  %del_set = getelementptr inbounds %struct.xt_set_info_target_v0, ptr %2, i32 0, i32 1
  %u8 = getelementptr inbounds %struct.xt_set_info_target_v0, ptr %2, i32 0, i32 1, i32 1
  %dim9 = getelementptr inbounds %struct.xt_set_info_target_v0, ptr %2, i32 0, i32 1, i32 1, i32 0, i32 6
  %20 = ptrtoint ptr %dim9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dim9, align 4
  %22 = ptrtoint ptr %dim7 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %dim7, align 1
  %flags10 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %del_opt, i32 0, i32 2
  %flags13 = getelementptr inbounds %struct.anon.148, ptr %u8, i32 0, i32 2
  %23 = ptrtoint ptr %flags13 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags13, align 1
  %25 = ptrtoint ptr %flags10 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %flags10, align 2
  %timeout15 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %del_opt, i32 0, i32 4, i32 4
  %26 = ptrtoint ptr %timeout15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %timeout15, align 4
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %28)
  %cmp.not = icmp eq i16 %28, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = call i32 @ip_set_add(i16 noundef zeroext %28, ptr noundef %skb, ptr noundef %par, ptr noundef nonnull %add_opt) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %29 = ptrtoint ptr %del_set to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %del_set, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %30)
  %cmp24.not = icmp eq i16 %30, -1
  br i1 %cmp24.not, label %if.end.if.end30_crit_edge, label %if.then26

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = call i32 @ip_set_del(i16 noundef zeroext %30, ptr noundef %skb, ptr noundef %par, ptr noundef nonnull %del_opt) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end.if.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %del_opt) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %add_opt) #7
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_target_v0_checkentry(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp.not = icmp eq i16 %3, -1
  br i1 %cmp.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  %call = tail call zeroext i16 @ip_set_nfnl_get_byindex(ptr noundef %5, i16 noundef zeroext %3) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call)
  %cmp6 = icmp eq i16 %call, -1
  br i1 %cmp6, label %if.then8, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then8:                                         ; preds = %if.then
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @set_target_v0_checkentry._rs, ptr noundef nonnull @__func__.set_target_v0_checkentry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then8.cleanup_crit_edge, label %do.end

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 4
  %conv13 = zext i16 %7 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv13) #10
  br label %cleanup

if.end16:                                         ; preds = %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  %del_set = getelementptr inbounds %struct.xt_set_info_target_v0, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %del_set to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %del_set, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp19.not = icmp eq i16 %9, -1
  br i1 %cmp19.not, label %if.end16.if.end53_crit_edge, label %if.then21

if.end16.if.end53_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then21:                                        ; preds = %if.end16
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 4
  %call25 = tail call zeroext i16 @ip_set_nfnl_get_byindex(ptr noundef %11, i16 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call25)
  %cmp27 = icmp eq i16 %call25, -1
  br i1 %cmp27, label %if.then29, label %if.then21.if.end53_crit_edge

if.then21.if.end53_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then29:                                        ; preds = %if.then21
  %call30 = tail call i32 @___ratelimit(ptr noundef nonnull @set_target_v0_checkentry._rs.11, ptr noundef nonnull @__func__.set_target_v0_checkentry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.if.end41_crit_edge, label %do.end35

if.then29.if.end41_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.end35:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %del_set to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %del_set, align 4
  %conv39 = zext i16 %13 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv39) #10
  br label %if.end41

if.end41:                                         ; preds = %do.end35, %if.then29.if.end41_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %cmp45.not = icmp eq i16 %15, -1
  br i1 %cmp45.not, label %if.end41.cleanup_crit_edge, label %if.then47

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %par, align 4
  tail call void @ip_set_nfnl_put(ptr noundef %17, i16 noundef zeroext %15) #7
  br label %cleanup

if.end53:                                         ; preds = %if.then21.if.end53_crit_edge, %if.end16.if.end53_crit_edge
  %arrayidx = getelementptr %struct.xt_set_info_v0, ptr %1, i32 0, i32 1, i32 0, i32 5
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp55.not = icmp eq i32 %19, 0
  br i1 %cmp55.not, label %lor.lhs.false, label %if.end53.if.then62_crit_edge

if.end53.if.then62_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

lor.lhs.false:                                    ; preds = %if.end53
  %arrayidx59 = getelementptr %struct.xt_set_info_target_v0, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp60.not = icmp eq i32 %21, 0
  br i1 %cmp60.not, label %if.end92, label %lor.lhs.false.if.then62_crit_edge

lor.lhs.false.if.then62_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false.if.then62_crit_edge, %if.end53.if.then62_crit_edge
  %call63 = tail call i32 @___ratelimit(ptr noundef nonnull @set_target_v0_checkentry._rs.15, ptr noundef nonnull @__func__.set_target_v0_checkentry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then62.if.end71_crit_edge, label %do.end68

if.then62.if.end71_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

do.end68:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  br label %if.end71

if.end71:                                         ; preds = %do.end68, %if.then62.if.end71_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %23)
  %cmp75.not = icmp eq i16 %23, -1
  br i1 %cmp75.not, label %if.end71.if.end81_crit_edge, label %if.then77

if.end71.if.end81_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then77:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %par, align 4
  tail call void @ip_set_nfnl_put(ptr noundef %25, i16 noundef zeroext %23) #7
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %if.end71.if.end81_crit_edge
  %26 = ptrtoint ptr %del_set to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %del_set, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %27)
  %cmp85.not = icmp eq i16 %27, -1
  br i1 %cmp85.not, label %if.end81.cleanup_crit_edge, label %if.then87

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then87:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %par, align 4
  tail call void @ip_set_nfnl_put(ptr noundef %29, i16 noundef zeroext %27) #7
  br label %cleanup

if.end92:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @compat_flags(ptr noundef %1)
  tail call fastcc void @compat_flags(ptr noundef %del_set)
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.then87, %if.end81.cleanup_crit_edge, %if.then47, %if.end41.cleanup_crit_edge, %do.end, %if.then8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end92 ], [ -2, %do.end ], [ -2, %if.then8.cleanup_crit_edge ], [ -2, %if.then47 ], [ -2, %if.end41.cleanup_crit_edge ], [ -34, %if.then87 ], [ -34, %if.end81.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_target_v0_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp.not = icmp eq i16 %3, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  tail call void @ip_set_nfnl_put(ptr noundef %5, i16 noundef zeroext %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %del_set = getelementptr inbounds %struct.xt_set_info_target_v0, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %del_set to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %del_set, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp6.not = icmp eq i16 %7, -1
  br i1 %cmp6.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 4
  tail call void @ip_set_nfnl_put(ptr noundef %9, i16 noundef zeroext %7) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_target_v1(ptr noundef %skb, ptr noundef %par) #2 align 64 {
entry:
  %add_opt = alloca %struct.ip_set_adt_opt, align 8
  %del_opt = alloca %struct.ip_set_adt_opt, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %add_opt) #7
  %3 = call ptr @memset(ptr %add_opt, i32 0, i32 56)
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pf.i, align 1
  %8 = ptrtoint ptr %add_opt to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %add_opt, align 8
  %dim = getelementptr inbounds %struct.ip_set_adt_opt, ptr %add_opt, i32 0, i32 1
  %dim1 = getelementptr inbounds %struct.xt_set_info, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %dim1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dim1, align 2
  %11 = ptrtoint ptr %dim to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %dim, align 1
  %flags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %add_opt, i32 0, i32 2
  %flags3 = getelementptr inbounds %struct.xt_set_info, ptr %2, i32 0, i32 2
  %12 = ptrtoint ptr %flags3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags3, align 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %flags, align 2
  %timeout = getelementptr inbounds %struct.ip_set_adt_opt, ptr %add_opt, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %timeout, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %del_opt) #7
  %16 = call ptr @memset(ptr %del_opt, i32 0, i32 56)
  %17 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pf.i, align 1
  %19 = ptrtoint ptr %del_opt to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %del_opt, align 8
  %dim6 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %del_opt, i32 0, i32 1
  %del_set = getelementptr inbounds %struct.xt_set_info_target_v1, ptr %2, i32 0, i32 1
  %dim7 = getelementptr inbounds %struct.xt_set_info_target_v1, ptr %2, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %dim7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dim7, align 2
  %22 = ptrtoint ptr %dim6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %dim6, align 1
  %flags8 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %del_opt, i32 0, i32 2
  %flags10 = getelementptr inbounds %struct.xt_set_info_target_v1, ptr %2, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %flags10 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags10, align 1
  %25 = ptrtoint ptr %flags8 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %flags8, align 2
  %timeout12 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %del_opt, i32 0, i32 4, i32 4
  %26 = ptrtoint ptr %timeout12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %timeout12, align 4
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %28)
  %cmp.not = icmp eq i16 %28, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = call i32 @ip_set_add(i16 noundef zeroext %28, ptr noundef %skb, ptr noundef %par, ptr noundef nonnull %add_opt) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %29 = ptrtoint ptr %del_set to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %del_set, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %30)
  %cmp21.not = icmp eq i16 %30, -1
  br i1 %cmp21.not, label %if.end.if.end27_crit_edge, label %if.then23

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = call i32 @ip_set_del(i16 noundef zeroext %30, ptr noundef %skb, ptr noundef %par, ptr noundef nonnull %del_opt) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %del_opt) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %add_opt) #7
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_target_v1_checkentry(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp.not = icmp eq i16 %3, -1
  br i1 %cmp.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  %call = tail call zeroext i16 @ip_set_nfnl_get_byindex(ptr noundef %5, i16 noundef zeroext %3) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call)
  %cmp6 = icmp eq i16 %call, -1
  br i1 %cmp6, label %if.then8, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then8:                                         ; preds = %if.then
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @set_target_v1_checkentry._rs, ptr noundef nonnull @__func__.set_target_v1_checkentry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then8.cleanup_crit_edge, label %do.end

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 2
  %conv13 = zext i16 %7 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv13) #10
  br label %cleanup

if.end16:                                         ; preds = %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  %del_set = getelementptr inbounds %struct.xt_set_info_target_v1, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %del_set to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %del_set, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp19.not = icmp eq i16 %9, -1
  br i1 %cmp19.not, label %if.end16.if.end53_crit_edge, label %if.then21

if.end16.if.end53_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then21:                                        ; preds = %if.end16
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 4
  %call25 = tail call zeroext i16 @ip_set_nfnl_get_byindex(ptr noundef %11, i16 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call25)
  %cmp27 = icmp eq i16 %call25, -1
  br i1 %cmp27, label %if.then29, label %if.then21.if.end53_crit_edge

if.then21.if.end53_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then29:                                        ; preds = %if.then21
  %call30 = tail call i32 @___ratelimit(ptr noundef nonnull @set_target_v1_checkentry._rs.19, ptr noundef nonnull @__func__.set_target_v1_checkentry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.if.end41_crit_edge, label %do.end35

if.then29.if.end41_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.end35:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %del_set to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %del_set, align 2
  %conv39 = zext i16 %13 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv39) #10
  br label %if.end41

if.end41:                                         ; preds = %do.end35, %if.then29.if.end41_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %cmp45.not = icmp eq i16 %15, -1
  br i1 %cmp45.not, label %if.end41.cleanup_crit_edge, label %if.then47

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %par, align 4
  tail call void @ip_set_nfnl_put(ptr noundef %17, i16 noundef zeroext %15) #7
  br label %cleanup

if.end53:                                         ; preds = %if.then21.if.end53_crit_edge, %if.end16.if.end53_crit_edge
  %dim = getelementptr inbounds %struct.xt_set_info, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %dim to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dim, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %19)
  %cmp56 = icmp ugt i8 %19, 6
  br i1 %cmp56, label %if.end53.if.then63_crit_edge, label %lor.lhs.false

if.end53.if.then63_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63

lor.lhs.false:                                    ; preds = %if.end53
  %dim59 = getelementptr inbounds %struct.xt_set_info_target_v1, ptr %1, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %dim59 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dim59, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %21)
  %cmp61 = icmp ugt i8 %21, 6
  br i1 %cmp61, label %lor.lhs.false.if.then63_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.if.then63_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63

if.then63:                                        ; preds = %lor.lhs.false.if.then63_crit_edge, %if.end53.if.then63_crit_edge
  %call64 = tail call i32 @___ratelimit(ptr noundef nonnull @set_target_v1_checkentry._rs.22, ptr noundef nonnull @__func__.set_target_v1_checkentry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then63.if.end72_crit_edge, label %do.end69

if.then63.if.end72_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

do.end69:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  br label %if.end72

if.end72:                                         ; preds = %do.end69, %if.then63.if.end72_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %23)
  %cmp76.not = icmp eq i16 %23, -1
  br i1 %cmp76.not, label %if.end72.if.end82_crit_edge, label %if.then78

if.end72.if.end82_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then78:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %par, align 4
  tail call void @ip_set_nfnl_put(ptr noundef %25, i16 noundef zeroext %23) #7
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %if.end72.if.end82_crit_edge
  %26 = ptrtoint ptr %del_set to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %del_set, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %27)
  %cmp86.not = icmp eq i16 %27, -1
  br i1 %cmp86.not, label %if.end82.cleanup_crit_edge, label %if.then88

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then88:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %par, align 4
  tail call void @ip_set_nfnl_put(ptr noundef %29, i16 noundef zeroext %27) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %if.end82.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then47, %if.end41.cleanup_crit_edge, %do.end, %if.then8.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end ], [ -2, %if.then8.cleanup_crit_edge ], [ -2, %if.then47 ], [ -2, %if.end41.cleanup_crit_edge ], [ -34, %if.then88 ], [ -34, %if.end82.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_target_v1_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp.not = icmp eq i16 %3, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  tail call void @ip_set_nfnl_put(ptr noundef %5, i16 noundef zeroext %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %del_set = getelementptr inbounds %struct.xt_set_info_target_v1, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %del_set to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %del_set, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp6.not = icmp eq i16 %7, -1
  br i1 %cmp6.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 4
  tail call void @ip_set_nfnl_put(ptr noundef %9, i16 noundef zeroext %7) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_target_v2(ptr noundef %skb, ptr noundef %par) #2 align 64 {
entry:
  %add_opt = alloca %struct.ip_set_adt_opt, align 8
  %del_opt = alloca %struct.ip_set_adt_opt, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %add_opt) #7
  %3 = call ptr @memset(ptr %add_opt, i32 0, i32 56)
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pf.i, align 1
  %8 = ptrtoint ptr %add_opt to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %add_opt, align 8
  %dim = getelementptr inbounds %struct.ip_set_adt_opt, ptr %add_opt, i32 0, i32 1
  %dim1 = getelementptr inbounds %struct.xt_set_info, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %dim1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dim1, align 2
  %11 = ptrtoint ptr %dim to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %dim, align 1
  %flags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %add_opt, i32 0, i32 2
  %flags3 = getelementptr inbounds %struct.xt_set_info, ptr %2, i32 0, i32 2
  %12 = ptrtoint ptr %flags3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags3, align 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %flags, align 2
  %cmdflags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %add_opt, i32 0, i32 3
  %flags4 = getelementptr inbounds %struct.xt_set_info_target_v2, ptr %2, i32 0, i32 2
  %15 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags4, align 4
  %17 = ptrtoint ptr %cmdflags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %cmdflags, align 4
  %timeout = getelementptr inbounds %struct.ip_set_adt_opt, ptr %add_opt, i32 0, i32 4, i32 4
  %timeout5 = getelementptr inbounds %struct.xt_set_info_target_v2, ptr %2, i32 0, i32 3
  %18 = ptrtoint ptr %timeout5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timeout5, align 4
  %20 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %timeout, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %del_opt) #7
  %21 = call ptr @memset(ptr %del_opt, i32 0, i32 56)
  %22 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pf.i, align 1
  %24 = ptrtoint ptr %del_opt to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %del_opt, align 8
  %dim8 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %del_opt, i32 0, i32 1
  %del_set = getelementptr inbounds %struct.xt_set_info_target_v2, ptr %2, i32 0, i32 1
  %dim9 = getelementptr inbounds %struct.xt_set_info_target_v2, ptr %2, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %dim9 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dim9, align 2
  %27 = ptrtoint ptr %dim8 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %dim8, align 1
  %flags10 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %del_opt, i32 0, i32 2
  %flags12 = getelementptr inbounds %struct.xt_set_info_target_v2, ptr %2, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %flags12 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flags12, align 1
  %30 = ptrtoint ptr %flags10 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %flags10, align 2
  %timeout15 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %del_opt, i32 0, i32 4, i32 4
  %31 = ptrtoint ptr %timeout15 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %timeout15, align 4
  %32 = add i32 %19, -2147484
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147485, i32 %32)
  %33 = icmp ult i32 %32, -2147485
  br i1 %33, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2147483, ptr %timeout, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %36)
  %cmp24.not = icmp eq i16 %36, -1
  br i1 %cmp24.not, label %if.end.if.end30_crit_edge, label %if.then26

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = call i32 @ip_set_add(i16 noundef zeroext %36, ptr noundef %skb, ptr noundef %par, ptr noundef nonnull %add_opt) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end.if.end30_crit_edge
  %37 = ptrtoint ptr %del_set to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %del_set, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %38)
  %cmp34.not = icmp eq i16 %38, -1
  br i1 %cmp34.not, label %if.end30.if.end40_crit_edge, label %if.then36

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = call i32 @ip_set_del(i16 noundef zeroext %38, ptr noundef %skb, ptr noundef %par, ptr noundef nonnull %del_opt) #7
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end30.if.end40_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %del_opt) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %add_opt) #7
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_target_v3(ptr noundef %skb, ptr noundef %par) #2 align 64 {
entry:
  %add_opt = alloca %struct.ip_set_adt_opt, align 8
  %del_opt = alloca %struct.ip_set_adt_opt, align 8
  %map_opt = alloca %struct.ip_set_adt_opt, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %add_opt) #7
  %3 = call ptr @memset(ptr %add_opt, i32 0, i32 56)
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pf.i, align 1
  %8 = ptrtoint ptr %add_opt to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %add_opt, align 8
  %dim = getelementptr inbounds %struct.ip_set_adt_opt, ptr %add_opt, i32 0, i32 1
  %dim1 = getelementptr inbounds %struct.xt_set_info, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %dim1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dim1, align 2
  %11 = ptrtoint ptr %dim to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %dim, align 1
  %flags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %add_opt, i32 0, i32 2
  %flags3 = getelementptr inbounds %struct.xt_set_info, ptr %2, i32 0, i32 2
  %12 = ptrtoint ptr %flags3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags3, align 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %flags, align 2
  %cmdflags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %add_opt, i32 0, i32 3
  %flags4 = getelementptr inbounds %struct.xt_set_info_target_v3, ptr %2, i32 0, i32 3
  %15 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags4, align 4
  %17 = ptrtoint ptr %cmdflags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %cmdflags, align 4
  %timeout = getelementptr inbounds %struct.ip_set_adt_opt, ptr %add_opt, i32 0, i32 4, i32 4
  %timeout5 = getelementptr inbounds %struct.xt_set_info_target_v3, ptr %2, i32 0, i32 4
  %18 = ptrtoint ptr %timeout5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timeout5, align 4
  %20 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %timeout, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %del_opt) #7
  %21 = call ptr @memset(ptr %del_opt, i32 0, i32 56)
  %22 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pf.i, align 1
  %24 = ptrtoint ptr %del_opt to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %del_opt, align 8
  %dim8 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %del_opt, i32 0, i32 1
  %del_set = getelementptr inbounds %struct.xt_set_info_target_v3, ptr %2, i32 0, i32 1
  %dim9 = getelementptr inbounds %struct.xt_set_info_target_v3, ptr %2, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %dim9 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dim9, align 2
  %27 = ptrtoint ptr %dim8 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %dim8, align 1
  %flags10 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %del_opt, i32 0, i32 2
  %flags12 = getelementptr inbounds %struct.xt_set_info_target_v3, ptr %2, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %flags12 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flags12, align 1
  %30 = ptrtoint ptr %flags10 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %flags10, align 2
  %timeout15 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %del_opt, i32 0, i32 4, i32 4
  %31 = ptrtoint ptr %timeout15 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %timeout15, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %map_opt) #7
  %32 = call ptr @memset(ptr %map_opt, i32 0, i32 56)
  %33 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pf.i, align 1
  %35 = ptrtoint ptr %map_opt to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %map_opt, align 8
  %dim18 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %map_opt, i32 0, i32 1
  %map_set = getelementptr inbounds %struct.xt_set_info_target_v3, ptr %2, i32 0, i32 2
  %dim19 = getelementptr inbounds %struct.xt_set_info_target_v3, ptr %2, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %dim19 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dim19, align 2
  %38 = ptrtoint ptr %dim18 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %dim18, align 1
  %flags20 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %map_opt, i32 0, i32 2
  %flags22 = getelementptr inbounds %struct.xt_set_info_target_v3, ptr %2, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %flags22 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flags22, align 1
  %41 = ptrtoint ptr %flags20 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %flags20, align 2
  %ext24 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %map_opt, i32 0, i32 4
  %timeout25 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %map_opt, i32 0, i32 4, i32 4
  %42 = ptrtoint ptr %timeout25 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %timeout25, align 4
  %43 = add i32 %19, -2147484
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147485, i32 %43)
  %44 = icmp ult i32 %43, -2147485
  br i1 %44, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2147483, ptr %timeout, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %47)
  %cmp34.not = icmp eq i16 %47, -1
  br i1 %cmp34.not, label %if.end.if.end40_crit_edge, label %if.then36

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = call i32 @ip_set_add(i16 noundef zeroext %47, ptr noundef %skb, ptr noundef %par, ptr noundef nonnull %add_opt) #7
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end.if.end40_crit_edge
  %48 = ptrtoint ptr %del_set to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %del_set, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %49)
  %cmp44.not = icmp eq i16 %49, -1
  br i1 %cmp44.not, label %if.end40.if.end50_crit_edge, label %if.then46

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %call49 = call i32 @ip_set_del(i16 noundef zeroext %49, ptr noundef %skb, ptr noundef %par, ptr noundef nonnull %del_opt) #7
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.end40.if.end50_crit_edge
  %50 = ptrtoint ptr %map_set to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %map_set, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %51)
  %cmp54.not = icmp eq i16 %51, -1
  br i1 %cmp54.not, label %if.end50.cleanup_crit_edge, label %if.then56

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then56:                                        ; preds = %if.end50
  %52 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags4, align 4
  %and = and i32 %53, 1792
  %cmdflags58 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %map_opt, i32 0, i32 3
  %54 = ptrtoint ptr %cmdflags58 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cmdflags58, align 4
  %or = or i32 %55, %and
  store i32 %or, ptr %cmdflags58, align 4
  %56 = ptrtoint ptr %flags22 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %flags22, align 1
  %call.i = call i32 @ip_set_test(i16 noundef zeroext %51, ptr noundef %skb, ptr noundef %par, ptr noundef nonnull %map_opt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %58 = and i8 %57, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %59 = icmp ne i8 %58, 0
  %tobool.not = xor i1 %tobool.not.i, %59
  br i1 %tobool.not, label %if.then56.cleanup_crit_edge, label %if.end67

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end67:                                         ; preds = %if.then56
  %60 = ptrtoint ptr %cmdflags58 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cmdflags58, align 4
  %and69 = and i32 %61, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end67.if.end76_crit_edge, label %if.then71

if.end67.if.end76_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %62 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %skbmarkmask = getelementptr inbounds %struct.ip_set_adt_opt, ptr %map_opt, i32 0, i32 4, i32 0, i32 1
  %65 = ptrtoint ptr %skbmarkmask to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %skbmarkmask, align 4
  %neg = xor i32 %66, -1
  %and73 = and i32 %64, %neg
  %67 = ptrtoint ptr %ext24 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ext24, align 8
  %xor = xor i32 %and73, %68
  store i32 %xor, ptr %62, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %if.end67.if.end76_crit_edge
  %and78 = and i32 %61, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end76.if.end83_crit_edge, label %if.then80

if.end76.if.end83_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %skbprio = getelementptr inbounds %struct.ip_set_adt_opt, ptr %map_opt, i32 0, i32 4, i32 0, i32 2
  %69 = ptrtoint ptr %skbprio to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %skbprio, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %71 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %priority, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.end76.if.end83_crit_edge
  %and85 = and i32 %61, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end83.cleanup_crit_edge, label %land.lhs.true87

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true87:                                  ; preds = %if.end83
  %72 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  %tobool88.not = icmp eq ptr %74, null
  br i1 %tobool88.not, label %land.lhs.true87.cleanup_crit_edge, label %land.lhs.true89

land.lhs.true87.cleanup_crit_edge:                ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true89:                                  ; preds = %land.lhs.true87
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 105
  %75 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %real_num_tx_queues, align 8
  %skbqueue = getelementptr inbounds %struct.ip_set_adt_opt, ptr %map_opt, i32 0, i32 4, i32 0, i32 3
  %77 = ptrtoint ptr %skbqueue to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %skbqueue, align 4
  %conv92 = zext i16 %78 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %conv92)
  %cmp93 = icmp ugt i32 %76, %conv92
  br i1 %cmp93, label %if.then95, label %land.lhs.true89.cleanup_crit_edge

land.lhs.true89.cleanup_crit_edge:                ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then95:                                        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #9
  %queue_mapping1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %79 = ptrtoint ptr %queue_mapping1.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %queue_mapping1.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %land.lhs.true89.cleanup_crit_edge, %land.lhs.true87.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %if.then56.cleanup_crit_edge, %if.end50.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %map_opt) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %del_opt) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %add_opt) #7
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_target_v3_checkentry(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp.not = icmp eq i16 %3, -1
  br i1 %cmp.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  %call = tail call zeroext i16 @ip_set_nfnl_get_byindex(ptr noundef %5, i16 noundef zeroext %3) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call)
  %cmp6 = icmp eq i16 %call, -1
  br i1 %cmp6, label %if.then8, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then8:                                         ; preds = %if.then
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @set_target_v3_checkentry._rs, ptr noundef nonnull @__func__.set_target_v3_checkentry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then8.cleanup_crit_edge, label %do.end

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 4
  %conv13 = zext i16 %7 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv13) #10
  br label %cleanup

if.end16:                                         ; preds = %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  %del_set = getelementptr inbounds %struct.xt_set_info_target_v3, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %del_set to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %del_set, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp19.not = icmp eq i16 %9, -1
  br i1 %cmp19.not, label %if.end16.if.end43_crit_edge, label %if.then21

if.end16.if.end43_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then21:                                        ; preds = %if.end16
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 4
  %call25 = tail call zeroext i16 @ip_set_nfnl_get_byindex(ptr noundef %11, i16 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call25)
  %cmp27 = icmp eq i16 %call25, -1
  br i1 %cmp27, label %if.then29, label %if.then21.if.end43_crit_edge

if.then21.if.end43_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then29:                                        ; preds = %if.then21
  %call30 = tail call i32 @___ratelimit(ptr noundef nonnull @set_target_v3_checkentry._rs.25, ptr noundef nonnull @__func__.set_target_v3_checkentry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.cleanup_add_crit_edge, label %do.end35

if.then29.cleanup_add_crit_edge:                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup_add

do.end35:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %del_set to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %del_set, align 4
  %conv39 = zext i16 %13 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv39) #10
  br label %cleanup_add

if.end43:                                         ; preds = %if.then21.if.end43_crit_edge, %if.end16.if.end43_crit_edge
  %map_set = getelementptr inbounds %struct.xt_set_info_target_v3, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %map_set to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %map_set, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %cmp46.not = icmp eq i16 %15, -1
  br i1 %cmp46.not, label %if.end43.if.end99_crit_edge, label %if.then48

if.end43.if.end99_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then48:                                        ; preds = %if.end43
  %table = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 1
  %16 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %table, align 4
  %call49 = tail call i32 @strncmp(ptr noundef %17, ptr noundef nonnull dereferenceable(7) @.str.28, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end61, label %if.then51

if.then51:                                        ; preds = %if.then48
  %call52 = tail call i32 @___ratelimit(ptr noundef nonnull @set_target_v3_checkentry._rs.29, ptr noundef nonnull @__func__.set_target_v3_checkentry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then51.cleanup_del_crit_edge, label %do.end57

if.then51.cleanup_del_crit_edge:                  ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup_del

do.end57:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #10
  br label %cleanup_del

if.end61:                                         ; preds = %if.then48
  %flags = getelementptr inbounds %struct.xt_set_info_target_v3, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %or = and i32 %19, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool64.not = icmp eq i32 %or, 0
  br i1 %tobool64.not, label %if.end61.if.end77_crit_edge, label %land.lhs.true

if.end61.if.end77_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

land.lhs.true:                                    ; preds = %if.end61
  %hook_mask = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 5
  %20 = ptrtoint ptr %hook_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hook_mask, align 4
  %and65 = and i32 %21, -29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %land.lhs.true.if.end77_crit_edge, label %if.then67

land.lhs.true.if.end77_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then67:                                        ; preds = %land.lhs.true
  %call68 = tail call i32 @___ratelimit(ptr noundef nonnull @set_target_v3_checkentry._rs.33, ptr noundef nonnull @__func__.set_target_v3_checkentry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then67.cleanup_del_crit_edge, label %do.end73

if.then67.cleanup_del_crit_edge:                  ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup_del

do.end73:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %cleanup_del

if.end77:                                         ; preds = %land.lhs.true.if.end77_crit_edge, %if.end61.if.end77_crit_edge
  %22 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %par, align 4
  %call81 = tail call zeroext i16 @ip_set_nfnl_get_byindex(ptr noundef %23, i16 noundef zeroext %15) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call81)
  %cmp83 = icmp eq i16 %call81, -1
  br i1 %cmp83, label %if.then85, label %if.end77.if.end99_crit_edge

if.end77.if.end99_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then85:                                        ; preds = %if.end77
  %call86 = tail call i32 @___ratelimit(ptr noundef nonnull @set_target_v3_checkentry._rs.37, ptr noundef nonnull @__func__.set_target_v3_checkentry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then85.cleanup_del_crit_edge, label %do.end91

if.then85.cleanup_del_crit_edge:                  ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup_del

do.end91:                                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %map_set to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %map_set, align 4
  %conv95 = zext i16 %25 to i32
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %conv95) #10
  br label %cleanup_del

if.end99:                                         ; preds = %if.end77.if.end99_crit_edge, %if.end43.if.end99_crit_edge
  %dim = getelementptr inbounds %struct.xt_set_info, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %dim to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dim, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %27)
  %cmp102 = icmp ugt i8 %27, 6
  br i1 %cmp102, label %if.end99.if.then115_crit_edge, label %lor.lhs.false

if.end99.if.then115_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then115

lor.lhs.false:                                    ; preds = %if.end99
  %dim105 = getelementptr inbounds %struct.xt_set_info_target_v3, ptr %1, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %dim105 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dim105, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %29)
  %cmp107 = icmp ugt i8 %29, 6
  br i1 %cmp107, label %lor.lhs.false.if.then115_crit_edge, label %lor.lhs.false109

lor.lhs.false.if.then115_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then115

lor.lhs.false109:                                 ; preds = %lor.lhs.false
  %dim111 = getelementptr inbounds %struct.xt_set_info_target_v3, ptr %1, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %dim111 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dim111, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %31)
  %cmp113 = icmp ugt i8 %31, 6
  br i1 %cmp113, label %lor.lhs.false109.if.then115_crit_edge, label %lor.lhs.false109.cleanup_crit_edge

lor.lhs.false109.cleanup_crit_edge:               ; preds = %lor.lhs.false109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false109.if.then115_crit_edge:            ; preds = %lor.lhs.false109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then115

if.then115:                                       ; preds = %lor.lhs.false109.if.then115_crit_edge, %lor.lhs.false.if.then115_crit_edge, %if.end99.if.then115_crit_edge
  %call116 = tail call i32 @___ratelimit(ptr noundef nonnull @set_target_v3_checkentry._rs.41, ptr noundef nonnull @__func__.set_target_v3_checkentry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then115.if.end124_crit_edge, label %do.end121

if.then115.if.end124_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

do.end121:                                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #9
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  br label %if.end124

if.end124:                                        ; preds = %do.end121, %if.then115.if.end124_crit_edge
  %32 = ptrtoint ptr %map_set to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %map_set, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %33)
  %cmp129.not = icmp eq i16 %33, -1
  br i1 %cmp129.not, label %if.end124.cleanup_del_crit_edge, label %if.then131

if.end124.cleanup_del_crit_edge:                  ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup_del

if.then131:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %par, align 4
  tail call void @ip_set_nfnl_put(ptr noundef %35, i16 noundef zeroext %33) #7
  br label %cleanup_del

cleanup_del:                                      ; preds = %if.then131, %if.end124.cleanup_del_crit_edge, %do.end91, %if.then85.cleanup_del_crit_edge, %do.end73, %if.then67.cleanup_del_crit_edge, %do.end57, %if.then51.cleanup_del_crit_edge
  %ret.0 = phi i32 [ -34, %if.then131 ], [ -34, %if.end124.cleanup_del_crit_edge ], [ -22, %do.end57 ], [ -22, %if.then51.cleanup_del_crit_edge ], [ -22, %do.end73 ], [ -22, %if.then67.cleanup_del_crit_edge ], [ -2, %do.end91 ], [ -2, %if.then85.cleanup_del_crit_edge ]
  %36 = ptrtoint ptr %del_set to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %del_set, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %37)
  %cmp139.not = icmp eq i16 %37, -1
  br i1 %cmp139.not, label %cleanup_del.cleanup_add_crit_edge, label %if.then141

cleanup_del.cleanup_add_crit_edge:                ; preds = %cleanup_del
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup_add

if.then141:                                       ; preds = %cleanup_del
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %par, align 4
  tail call void @ip_set_nfnl_put(ptr noundef %39, i16 noundef zeroext %37) #7
  br label %cleanup_add

cleanup_add:                                      ; preds = %if.then141, %cleanup_del.cleanup_add_crit_edge, %do.end35, %if.then29.cleanup_add_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.then141 ], [ %ret.0, %cleanup_del.cleanup_add_crit_edge ], [ -2, %do.end35 ], [ -2, %if.then29.cleanup_add_crit_edge ]
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %41)
  %cmp149.not = icmp eq i16 %41, -1
  br i1 %cmp149.not, label %cleanup_add.cleanup_crit_edge, label %if.then151

cleanup_add.cleanup_crit_edge:                    ; preds = %cleanup_add
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then151:                                       ; preds = %cleanup_add
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %par, align 4
  tail call void @ip_set_nfnl_put(ptr noundef %43, i16 noundef zeroext %41) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then151, %cleanup_add.cleanup_crit_edge, %lor.lhs.false109.cleanup_crit_edge, %do.end, %if.then8.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end ], [ -2, %if.then8.cleanup_crit_edge ], [ 0, %lor.lhs.false109.cleanup_crit_edge ], [ %ret.1, %if.then151 ], [ %ret.1, %cleanup_add.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_target_v3_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp.not = icmp eq i16 %3, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  tail call void @ip_set_nfnl_put(ptr noundef %5, i16 noundef zeroext %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %del_set = getelementptr inbounds %struct.xt_set_info_target_v3, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %del_set to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %del_set, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp6.not = icmp eq i16 %7, -1
  br i1 %cmp6.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 4
  tail call void @ip_set_nfnl_put(ptr noundef %9, i16 noundef zeroext %7) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  %map_set = getelementptr inbounds %struct.xt_set_info_target_v3, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %map_set to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %map_set, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp15.not = icmp eq i16 %11, -1
  br i1 %cmp15.not, label %if.end12.if.end21_crit_edge, label %if.then17

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %par, align 4
  tail call void @ip_set_nfnl_put(ptr noundef %13, i16 noundef zeroext %11) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end12.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_add(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_del(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__UNIQUE_ID_file489, !1, !"__UNIQUE_ID_file489", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_set.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_license490, !1, !"__UNIQUE_ID_license490", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author491, !4, !"__UNIQUE_ID_author491", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_set.c", i32 20, i32 1}
!5 = !{ptr @__UNIQUE_ID_description492, !6, !"__UNIQUE_ID_description492", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_set.c", i32 21, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias493, !8, !"__UNIQUE_ID_alias493", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_set.c", i32 22, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias494, !10, !"__UNIQUE_ID_alias494", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_set.c", i32 23, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias495, !12, !"__UNIQUE_ID_alias495", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_set.c", i32 24, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias496, !14, !"__UNIQUE_ID_alias496", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_set.c", i32 25, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias497, !16, !"__UNIQUE_ID_alias497", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_set.c", i32 26, i32 1}
!17 = !{ptr @__initcall__kmod_xt_set__498_711_xt_set_init6, !18, !"__initcall__kmod_xt_set__498_711_xt_set_init6", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_set.c", i32 711, i32 1}
!19 = !{ptr @__exitcall_xt_set_fini, !20, !"__exitcall_xt_set_fini", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_set.c", i32 712, i32 1}
!21 = !{ptr @set_matches, !22, !"set_matches", i1 false, i1 false}
!22 = !{!"../net/netfilter/xt_set.c", i32 520, i32 24}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/netfilter/xt_set.c", i32 91, i32 3}
!25 = !{ptr @set_match_v0_checkentry._rs, !24, !"_rs", i1 false, i1 false}
!26 = !{ptr @__func__.set_match_v0_checkentry, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @set_match_v0_checkentry._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @set_match_v0_checkentry._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @set_match_v0_checkentry._rs.3, !32, !"_rs", i1 false, i1 false}
!32 = !{!"../net/netfilter/xt_set.c", i32 96, i32 3}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @set_match_v0_checkentry._entry.4, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @set_match_v0_checkentry._entry_ptr.6, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @set_match_v1_checkentry._rs, !37, !"_rs", i1 false, i1 false}
!37 = !{!"../net/netfilter/xt_set.c", i32 142, i32 3}
!38 = !{ptr @__func__.set_match_v1_checkentry, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @set_match_v1_checkentry._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @set_match_v1_checkentry._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @set_match_v1_checkentry._rs.7, !42, !"_rs", i1 false, i1 false}
!42 = !{!"../net/netfilter/xt_set.c", i32 147, i32 3}
!43 = !{ptr @set_match_v1_checkentry._entry.8, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @set_match_v1_checkentry._entry_ptr.9, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @set_targets, !46, !"set_targets", i1 false, i1 false}
!46 = !{!"../net/netfilter/xt_set.c", i32 616, i32 25}
!47 = !{ptr @set_target_v0_checkentry._rs, !48, !"_rs", i1 false, i1 false}
!48 = !{!"../net/netfilter/xt_set.c", i32 240, i32 4}
!49 = !{ptr @__func__.set_target_v0_checkentry, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @set_target_v0_checkentry._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @set_target_v0_checkentry._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @set_target_v0_checkentry._rs.11, !54, !"_rs", i1 false, i1 false}
!54 = !{!"../net/netfilter/xt_set.c", i32 249, i32 4}
!55 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @set_target_v0_checkentry._entry.12, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @set_target_v0_checkentry._entry_ptr.14, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @set_target_v0_checkentry._rs.15, !59, !"_rs", i1 false, i1 false}
!59 = !{!"../net/netfilter/xt_set.c", i32 258, i32 3}
!60 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @set_target_v0_checkentry._entry.16, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @set_target_v0_checkentry._entry_ptr.18, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @set_target_v1_checkentry._rs, !64, !"_rs", i1 false, i1 false}
!64 = !{!"../net/netfilter/xt_set.c", i32 315, i32 4}
!65 = !{ptr @__func__.set_target_v1_checkentry, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @set_target_v1_checkentry._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @set_target_v1_checkentry._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @set_target_v1_checkentry._rs.19, !69, !"_rs", i1 false, i1 false}
!69 = !{!"../net/netfilter/xt_set.c", i32 324, i32 4}
!70 = !{ptr @set_target_v1_checkentry._entry.20, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @set_target_v1_checkentry._entry_ptr.21, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @set_target_v1_checkentry._rs.22, !73, !"_rs", i1 false, i1 false}
!73 = !{!"../net/netfilter/xt_set.c", i32 333, i32 3}
!74 = !{ptr @set_target_v1_checkentry._entry.23, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @set_target_v1_checkentry._entry_ptr.24, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @set_target_v3_checkentry._rs, !77, !"_rs", i1 false, i1 false}
!77 = !{!"../net/netfilter/xt_set.c", i32 444, i32 4}
!78 = !{ptr @__func__.set_target_v3_checkentry, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @set_target_v3_checkentry._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @set_target_v3_checkentry._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @set_target_v3_checkentry._rs.25, !82, !"_rs", i1 false, i1 false}
!82 = !{!"../net/netfilter/xt_set.c", i32 454, i32 4}
!83 = !{ptr @set_target_v3_checkentry._entry.26, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @set_target_v3_checkentry._entry_ptr.27, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/netfilter/xt_set.c", i32 462, i32 27}
!87 = !{ptr @set_target_v3_checkentry._rs.29, !88, !"_rs", i1 false, i1 false}
!88 = !{!"../net/netfilter/xt_set.c", i32 463, i32 4}
!89 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @set_target_v3_checkentry._entry.30, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @set_target_v3_checkentry._entry_ptr.32, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @set_target_v3_checkentry._rs.33, !93, !"_rs", i1 false, i1 false}
!93 = !{!"../net/netfilter/xt_set.c", i32 472, i32 4}
!94 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @set_target_v3_checkentry._entry.34, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @set_target_v3_checkentry._entry_ptr.36, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @set_target_v3_checkentry._rs.37, !98, !"_rs", i1 false, i1 false}
!98 = !{!"../net/netfilter/xt_set.c", i32 479, i32 4}
!99 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @set_target_v3_checkentry._entry.38, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @set_target_v3_checkentry._entry_ptr.40, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @set_target_v3_checkentry._rs.41, !103, !"_rs", i1 false, i1 false}
!103 = !{!"../net/netfilter/xt_set.c", i32 489, i32 3}
!104 = !{ptr @set_target_v3_checkentry._entry.42, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @set_target_v3_checkentry._entry_ptr.43, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}

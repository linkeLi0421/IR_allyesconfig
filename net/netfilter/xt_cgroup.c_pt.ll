; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_cgroup.c_pt.bc'
source_filename = "../net/netfilter/xt_cgroup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xt_action_param = type { %union.anon.141, %union.anon.142, ptr, i32, i16, i8 }
%union.anon.141 = type { ptr }
%union.anon.142 = type { ptr }
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
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.109, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.110, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.111, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.109 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.110 = type { ptr }
%union.anon.111 = type { ptr }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.xt_cgroup_info_v0 = type { i32, i32 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_cgroup_info_v1 = type { i8, i8, i8, i8, [4096 x i8], i32, ptr, [4 x i8] }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.76, ptr, i64, i16, i16, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.76 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.xt_mtdtor_param = type { ptr, ptr, ptr, i8 }
%struct.xt_cgroup_info_v2 = type { i8, i8, i8, i8, %union.anon.147, [4 x i8], ptr, [4 x i8] }
%union.anon.147 = type { i32, [508 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }

@__UNIQUE_ID_file474 = internal constant [39 x i8] c"xt_cgroup.file=net/netfilter/xt_cgroup\00", section ".modinfo", align 1
@__UNIQUE_ID_license475 = internal constant [22 x i8] c"xt_cgroup.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author476 = internal constant [55 x i8] c"xt_cgroup.author=Daniel Borkmann <dborkman@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description477 = internal constant [62 x i8] c"xt_cgroup.description=Xtables: process control group matching\00", section ".modinfo", align 1
@__UNIQUE_ID_alias478 = internal constant [27 x i8] c"xt_cgroup.alias=ipt_cgroup\00", section ".modinfo", align 1
@__UNIQUE_ID_alias479 = internal constant [28 x i8] c"xt_cgroup.alias=ip6t_cgroup\00", section ".modinfo", align 1
@cgroup_mt_reg = internal global [3 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"cgroup\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @cgroup_mt_v0, ptr @cgroup_mt_check_v0, ptr null, ptr null, ptr null, i32 8, i32 0, i32 26, i16 0, i16 0 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"cgroup\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @cgroup_mt_v1, ptr @cgroup_mt_check_v1, ptr @cgroup_mt_destroy_v1, ptr null, ptr null, i32 4112, i32 4104, i32 26, i16 0, i16 0 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"cgroup\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 2, ptr @cgroup_mt_v2, ptr @cgroup_mt_check_v2, ptr @cgroup_mt_destroy_v2, ptr null, ptr null, i32 528, i32 520, i32 26, i16 0, i16 0 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_cgroup__480_218_cgroup_mt_init6 = internal global ptr @cgroup_mt_init, section ".initcall6.init", align 4
@__exitcall_cgroup_mt_exit = internal global ptr @cgroup_mt_exit, section ".exitcall.exit", align 4
@cgroup_mt_check_v1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016xt_cgroup: xt_cgroup: no path or classid specified\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cgroup_mt_check_v1\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/netfilter/xt_cgroup.c\00", [38 x i8] zeroinitializer }, align 32
@cgroup_mt_check_v1._entry_ptr = internal global ptr @cgroup_mt_check_v1._entry, section ".printk_index", align 4
@cgroup_mt_check_v1._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@cgroup_mt_check_v1._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016xt_cgroup: path and classid specified\0A\00", [55 x i8] zeroinitializer }, align 32
@cgroup_mt_check_v1._entry_ptr.6 = internal global ptr @cgroup_mt_check_v1._entry.4, section ".printk_index", align 4
@cgroup_mt_check_v1._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cgroup_mt_check_v1._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016xt_cgroup: invalid path, errno=%ld\0A\00", [58 x i8] zeroinitializer }, align 32
@cgroup_mt_check_v1._entry_ptr.10 = internal global ptr @cgroup_mt_check_v1._entry.8, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@cgroup_mt_check_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.14, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cgroup_mt_check_v2\00", [45 x i8] zeroinitializer }, align 32
@cgroup_mt_check_v2._entry_ptr = internal global ptr @cgroup_mt_check_v2._entry, section ".printk_index", align 4
@cgroup_mt_check_v2._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cgroup_mt_check_v2._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.14, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cgroup_mt_check_v2._entry_ptr.16 = internal global ptr @cgroup_mt_check_v2._entry.15, section ".printk_index", align 4
@cgroup_mt_check_v2._rs.17 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cgroup_mt_check_v2._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.14, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cgroup_mt_check_v2._entry_ptr.19 = internal global ptr @cgroup_mt_check_v2._entry.18, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 45, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 50, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 58, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 695, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 723, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 77, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 82, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private constant [29 x i8] c"../net/netfilter/xt_cgroup.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 90, i32 4 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_alias478, ptr @__UNIQUE_ID_alias479, ptr @__UNIQUE_ID_author476, ptr @__UNIQUE_ID_description477, ptr @__UNIQUE_ID_file474, ptr @__UNIQUE_ID_license475, ptr @__exitcall_cgroup_mt_exit, ptr @__initcall__kmod_xt_cgroup__480_218_cgroup_mt_init6, ptr @cgroup_mt_check_v1._entry, ptr @cgroup_mt_check_v1._entry.4, ptr @cgroup_mt_check_v1._entry.8, ptr @cgroup_mt_check_v1._entry_ptr, ptr @cgroup_mt_check_v1._entry_ptr.10, ptr @cgroup_mt_check_v1._entry_ptr.6, ptr @cgroup_mt_check_v2._entry, ptr @cgroup_mt_check_v2._entry.15, ptr @cgroup_mt_check_v2._entry.18, ptr @cgroup_mt_check_v2._entry_ptr, ptr @cgroup_mt_check_v2._entry_ptr.16, ptr @cgroup_mt_check_v2._entry_ptr.19, ptr @cgroup_mt_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cgroup_mt_check_v1._rs, ptr @.str.3, ptr @.str.5, ptr @cgroup_mt_check_v1._rs.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @cgroup_mt_check_v2._rs, ptr @cgroup_mt_check_v2._rs.17], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_mt_check_v1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_mt_check_v1._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_mt_check_v1._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_mt_check_v1._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_mt_check_v1._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_mt_check_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_mt_check_v2._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_mt_check_v2._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_mt_check_v2._rs.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_mt_check_v2._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cgroup_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xt_unregister_matches(ptr noundef nonnull @cgroup_mt_reg, i32 noundef 3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_matches(ptr noundef nonnull @cgroup_mt_reg, i32 noundef 3) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cgroup_mt_v0(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false1

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net.i, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 9
  %12 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not = icmp eq ptr %11, %13
  br i1 %cmp.i.not, label %if.end, label %lor.lhs.false1.cleanup_crit_edge

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %2, align 4
  %classid.i = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 74, i32 1
  %16 = ptrtoint ptr %classid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %classid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp = icmp eq i32 %15, %17
  %conv = zext i1 %cmp to i32
  %invert = getelementptr inbounds %struct.xt_cgroup_info_v0, ptr %2, i32 0, i32 1
  %18 = ptrtoint ptr %invert to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %invert, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv)
  %tobool7 = icmp ne i32 %19, %conv
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool7, %if.end ], [ false, %lor.lhs.false1.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cgroup_mt_check_v0(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %invert = getelementptr inbounds %struct.xt_cgroup_info_v0, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %invert to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %invert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %tobool.not = icmp ult i32 %3, 2
  %. = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cgroup_mt_v1(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %sk_cgrp_data = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 74
  %priv = getelementptr inbounds %struct.xt_cgroup_info_v1, ptr %2, i32 0, i32 6
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %9 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false1

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net.i, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 9
  %14 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not = icmp eq ptr %13, %15
  br i1 %cmp.i.not, label %if.end, label %lor.lhs.false1.cleanup_crit_edge

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %16 = ptrtoint ptr %sk_cgrp_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk_cgrp_data, align 4
  %root.i = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %root.i, align 4
  %root1.i = getelementptr inbounds %struct.cgroup, ptr %7, i32 0, i32 19
  %20 = ptrtoint ptr %root1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %root1.i, align 4
  %cmp.not.i = icmp eq ptr %19, %21
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then7.cgroup_is_descendant.exit_crit_edge

if.then7.cgroup_is_descendant.exit_crit_edge:     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cgroup_is_descendant.exit

lor.lhs.false.i:                                  ; preds = %if.then7
  %level.i = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 2
  %22 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %level.i, align 4
  %level2.i = getelementptr inbounds %struct.cgroup, ptr %7, i32 0, i32 2
  %24 = ptrtoint ptr %level2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %level2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp3.i = icmp slt i32 %23, %25
  br i1 %cmp3.i, label %lor.lhs.false.i.cgroup_is_descendant.exit_crit_edge, label %if.end.i

lor.lhs.false.i.cgroup_is_descendant.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cgroup_is_descendant.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.cgroup, ptr %17, i32 0, i32 37, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.i, align 8
  %kn.i.i = getelementptr inbounds %struct.cgroup, ptr %7, i32 0, i32 11
  %28 = ptrtoint ptr %kn.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %kn.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.kernfs_node, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %31)
  %cmp5.i = icmp eq i64 %27, %31
  br label %cgroup_is_descendant.exit

cgroup_is_descendant.exit:                        ; preds = %if.end.i, %lor.lhs.false.i.cgroup_is_descendant.exit_crit_edge, %if.then7.cgroup_is_descendant.exit_crit_edge
  %retval.0.i = phi i1 [ %cmp5.i, %if.end.i ], [ false, %lor.lhs.false.i.cgroup_is_descendant.exit_crit_edge ], [ false, %if.then7.cgroup_is_descendant.exit_crit_edge ]
  %invert_path = getelementptr inbounds %struct.xt_cgroup_info_v1, ptr %2, i32 0, i32 2
  %32 = ptrtoint ptr %invert_path to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %invert_path, align 2
  %34 = zext i1 %retval.0.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %34)
  %tobool11 = icmp ne i8 %33, %34
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %classid = getelementptr inbounds %struct.xt_cgroup_info_v1, ptr %2, i32 0, i32 5
  %35 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %classid, align 4
  %classid.i = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 74, i32 1
  %37 = ptrtoint ptr %classid.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %classid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp = icmp eq i32 %36, %38
  %invert_classid = getelementptr inbounds %struct.xt_cgroup_info_v1, ptr %2, i32 0, i32 3
  %39 = ptrtoint ptr %invert_classid to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %invert_classid, align 1
  %41 = zext i1 %cmp to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %41)
  %tobool16 = icmp ne i8 %40, %41
  br label %cleanup

cleanup:                                          ; preds = %if.else, %cgroup_is_descendant.exit, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool11, %cgroup_is_descendant.exit ], [ %tobool16, %if.else ], [ false, %lor.lhs.false1.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup_mt_check_v1(ptr nocapture noundef readonly %par) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %invert_path = getelementptr inbounds %struct.xt_cgroup_info_v1, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %invert_path to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %invert_path, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %tobool.not = icmp ult i8 %3, 2
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %invert_classid = getelementptr inbounds %struct.xt_cgroup_info_v1, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %invert_classid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %invert_classid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %tobool3.not = icmp ult i8 %5, 2
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  %has_classid = getelementptr inbounds %struct.xt_cgroup_info_v1, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %has_classid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_classid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %land.lhs.true, label %land.lhs.true11

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool5.not, label %do.end, label %if.end25.thread

if.end25.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %priv57 = getelementptr inbounds %struct.xt_cgroup_info_v1, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %priv57 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %priv57, align 8
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup

land.lhs.true11:                                  ; preds = %if.end
  br i1 %tobool5.not, label %if.then28, label %if.then15

if.then15:                                        ; preds = %land.lhs.true11
  %call16 = tail call i32 @___ratelimit(ptr noundef nonnull @cgroup_mt_check_v1._rs, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then15.cleanup_crit_edge, label %do.end21

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end21:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.then28:                                        ; preds = %land.lhs.true11
  %priv = getelementptr inbounds %struct.xt_cgroup_info_v1, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %priv, align 8
  %path = getelementptr inbounds %struct.xt_cgroup_info_v1, ptr %1, i32 0, i32 4
  %call29 = tail call ptr @cgroup_get_from_path(ptr noundef %path) #9
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end42

if.then31:                                        ; preds = %if.then28
  %call32 = tail call i32 @___ratelimit(ptr noundef nonnull @cgroup_mt_check_v1._rs.7, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then31.cleanup_crit_edge, label %do.end37

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end37:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call29 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %12) #12
  br label %cleanup

if.end42:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call29, ptr %priv, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end37, %if.then31.cleanup_crit_edge, %do.end21, %if.then15.cleanup_crit_edge, %do.end, %if.end25.thread, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end21 ], [ -22, %if.then15.cleanup_crit_edge ], [ -22, %do.end37 ], [ -22, %if.then31.cleanup_crit_edge ], [ 0, %if.end42 ], [ 0, %if.end25.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cgroup_mt_destroy_v1(ptr nocapture noundef readonly %par) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %priv = getelementptr inbounds %struct.xt_cgroup_info_v1, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cgroup_put(ptr noundef nonnull %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cgroup_mt_v2(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %sk_cgrp_data = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 74
  %priv = getelementptr inbounds %struct.xt_cgroup_info_v2, ptr %2, i32 0, i32 6
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %9 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false1

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net.i, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 9
  %14 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not = icmp eq ptr %13, %15
  br i1 %cmp.i.not, label %if.end, label %lor.lhs.false1.cleanup_crit_edge

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %16 = ptrtoint ptr %sk_cgrp_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk_cgrp_data, align 4
  %root.i = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %root.i, align 4
  %root1.i = getelementptr inbounds %struct.cgroup, ptr %7, i32 0, i32 19
  %20 = ptrtoint ptr %root1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %root1.i, align 4
  %cmp.not.i = icmp eq ptr %19, %21
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then7.cgroup_is_descendant.exit_crit_edge

if.then7.cgroup_is_descendant.exit_crit_edge:     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cgroup_is_descendant.exit

lor.lhs.false.i:                                  ; preds = %if.then7
  %level.i = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 2
  %22 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %level.i, align 4
  %level2.i = getelementptr inbounds %struct.cgroup, ptr %7, i32 0, i32 2
  %24 = ptrtoint ptr %level2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %level2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp3.i = icmp slt i32 %23, %25
  br i1 %cmp3.i, label %lor.lhs.false.i.cgroup_is_descendant.exit_crit_edge, label %if.end.i

lor.lhs.false.i.cgroup_is_descendant.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cgroup_is_descendant.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.cgroup, ptr %17, i32 0, i32 37, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.i, align 8
  %kn.i.i = getelementptr inbounds %struct.cgroup, ptr %7, i32 0, i32 11
  %28 = ptrtoint ptr %kn.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %kn.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.kernfs_node, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %31)
  %cmp5.i = icmp eq i64 %27, %31
  br label %cgroup_is_descendant.exit

cgroup_is_descendant.exit:                        ; preds = %if.end.i, %lor.lhs.false.i.cgroup_is_descendant.exit_crit_edge, %if.then7.cgroup_is_descendant.exit_crit_edge
  %retval.0.i = phi i1 [ %cmp5.i, %if.end.i ], [ false, %lor.lhs.false.i.cgroup_is_descendant.exit_crit_edge ], [ false, %if.then7.cgroup_is_descendant.exit_crit_edge ]
  %invert_path = getelementptr inbounds %struct.xt_cgroup_info_v2, ptr %2, i32 0, i32 2
  %32 = ptrtoint ptr %invert_path to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %invert_path, align 2
  %34 = zext i1 %retval.0.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %34)
  %tobool11 = icmp ne i8 %33, %34
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %35 = getelementptr inbounds %struct.xt_cgroup_info_v2, ptr %2, i32 0, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %classid.i = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 74, i32 1
  %38 = ptrtoint ptr %classid.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %classid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp = icmp eq i32 %37, %39
  %invert_classid = getelementptr inbounds %struct.xt_cgroup_info_v2, ptr %2, i32 0, i32 3
  %40 = ptrtoint ptr %invert_classid to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %invert_classid, align 1
  %42 = zext i1 %cmp to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %42)
  %tobool16 = icmp ne i8 %41, %42
  br label %cleanup

cleanup:                                          ; preds = %if.else, %cgroup_is_descendant.exit, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool11, %cgroup_is_descendant.exit ], [ %tobool16, %if.else ], [ false, %lor.lhs.false1.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup_mt_check_v2(ptr nocapture noundef readonly %par) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %invert_path = getelementptr inbounds %struct.xt_cgroup_info_v2, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %invert_path to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %invert_path, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %tobool.not = icmp ult i8 %3, 2
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %invert_classid = getelementptr inbounds %struct.xt_cgroup_info_v2, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %invert_classid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %invert_classid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %tobool3.not = icmp ult i8 %5, 2
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  %has_classid = getelementptr inbounds %struct.xt_cgroup_info_v2, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %has_classid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_classid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %land.lhs.true, label %land.lhs.true11

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool5.not, label %do.end, label %if.end25.thread

if.end25.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %priv57 = getelementptr inbounds %struct.xt_cgroup_info_v2, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %priv57 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %priv57, align 8
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup

land.lhs.true11:                                  ; preds = %if.end
  br i1 %tobool5.not, label %if.then28, label %if.then15

if.then15:                                        ; preds = %land.lhs.true11
  %call16 = tail call i32 @___ratelimit(ptr noundef nonnull @cgroup_mt_check_v2._rs, ptr noundef nonnull @.str.14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then15.cleanup_crit_edge, label %do.end21

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end21:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.then28:                                        ; preds = %land.lhs.true11
  %priv = getelementptr inbounds %struct.xt_cgroup_info_v2, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %priv, align 8
  %12 = getelementptr inbounds %struct.xt_cgroup_info_v2, ptr %1, i32 0, i32 4
  %call29 = tail call ptr @cgroup_get_from_path(ptr noundef %12) #9
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end42

if.then31:                                        ; preds = %if.then28
  %call32 = tail call i32 @___ratelimit(ptr noundef nonnull @cgroup_mt_check_v2._rs.17, ptr noundef nonnull @.str.14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then31.cleanup_crit_edge, label %do.end37

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end37:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call29 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %13) #12
  br label %cleanup

if.end42:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call29, ptr %priv, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end37, %if.then31.cleanup_crit_edge, %do.end21, %if.then15.cleanup_crit_edge, %do.end, %if.end25.thread, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end21 ], [ -22, %if.then15.cleanup_crit_edge ], [ -22, %do.end37 ], [ -22, %if.then31.cleanup_crit_edge ], [ 0, %if.end42 ], [ 0, %if.end25.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cgroup_mt_destroy_v2(ptr nocapture noundef readonly %par) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %priv = getelementptr inbounds %struct.xt_cgroup_info_v2, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cgroup_put(ptr noundef nonnull %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_get_from_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cgroup_put(ptr noundef %cgrp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cgrp, i32 0, i32 7
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.css_put.exit_crit_edge

entry.css_put.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %css_put.exit

if.then.i:                                        ; preds = %entry
  %refcnt.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cgrp, i32 0, i32 2
  %2 = tail call i32 @llvm.read_register.i32(metadata !53) #9
  %and.i.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !63
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i.i.i, label %if.then.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.rcu_read_lock.exit.i.i.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #9
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.then.i.rcu_read_lock.exit.i.i.i_crit_edge
  %6 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcnt.i, align 4
  %and.i.i.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i1.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i.i, label %do.body1.i.i.i, label %if.else.i.i.i, !prof !64

do.body1.i.i.i:                                   ; preds = %rcu_read_lock.exit.i.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !65
  %9 = tail call i32 @llvm.read_register.i32(metadata !53) #9
  %and.i2.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i2.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %14, %7
  %15 = inttoptr i32 %add.i.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add15.i.i.i = add i32 %17, -1
  store i32 %add15.i.i.i, ptr %15, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !66
  %and.i.i.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then29.i.i.i, label %do.body1.i.i.i.do.end31.i.i.i_crit_edge, !prof !67

do.body1.i.i.i.do.end31.i.i.i_crit_edge:          ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31.i.i.i

if.then29.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end31.i.i.i

do.end31.i.i.i:                                   ; preds = %if.then29.i.i.i, %do.body1.i.i.i.do.end31.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #9, !srcloc !68
  br label %if.end48.i.i.i

if.else.i.i.i:                                    ; preds = %rcu_read_lock.exit.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cgrp, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %20, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %20, i32 1, i32 3, i32 1) #9
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #9, !srcloc !70
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i, label %if.then45.i.i.i, label %if.else.i.i.i.if.end48.i.i.i_crit_edge, !prof !67

if.else.i.i.i.if.end48.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i.i.i

if.then45.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i.i, align 4
  %release.i.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %release.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release.i.i.i, align 4
  tail call void %25(ptr noundef %refcnt.i) #9
  br label %if.end48.i.i.i

if.end48.i.i.i:                                   ; preds = %if.then45.i.i.i, %if.else.i.i.i.if.end48.i.i.i_crit_edge, %do.end31.i.i.i
  %call.i3.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i3.i.i.i, label %if.end48.i.i.i.percpu_ref_put.exit.i_crit_edge, label %land.lhs.true.i6.i.i.i

if.end48.i.i.i.percpu_ref_put.exit.i_crit_edge:   ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %percpu_ref_put.exit.i

land.lhs.true.i6.i.i.i:                           ; preds = %if.end48.i.i.i
  %call1.i4.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %call1.i4.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i, label %land.lhs.true.i6.i.i.i.percpu_ref_put.exit.i_crit_edge, label %land.lhs.true2.i8.i.i.i

land.lhs.true.i6.i.i.i.percpu_ref_put.exit.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %percpu_ref_put.exit.i

land.lhs.true2.i8.i.i.i:                          ; preds = %land.lhs.true.i6.i.i.i
  %.b4.i7.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i.i, label %land.lhs.true2.i8.i.i.i.percpu_ref_put.exit.i_crit_edge, label %if.then.i9.i.i.i

land.lhs.true2.i8.i.i.i.percpu_ref_put.exit.i_crit_edge: ; preds = %land.lhs.true2.i8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %percpu_ref_put.exit.i

if.then.i9.i.i.i:                                 ; preds = %land.lhs.true2.i8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #9
  br label %percpu_ref_put.exit.i

percpu_ref_put.exit.i:                            ; preds = %if.then.i9.i.i.i, %land.lhs.true2.i8.i.i.i.percpu_ref_put.exit.i_crit_edge, %land.lhs.true.i6.i.i.i.percpu_ref_put.exit.i_crit_edge, %if.end48.i.i.i.percpu_ref_put.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %26 = tail call i32 @llvm.read_register.i32(metadata !53) #9
  %and.i.i.i.i.i10.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i10.i.i.i to ptr
  %preempt_count.i.i.i.i11.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %css_put.exit

css_put.exit:                                     ; preds = %percpu_ref_put.exit.i, %entry.css_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__UNIQUE_ID_file474, !1, !"__UNIQUE_ID_file474", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_cgroup.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_license475, !1, !"__UNIQUE_ID_license475", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author476, !4, !"__UNIQUE_ID_author476", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_cgroup.c", i32 21, i32 1}
!5 = !{ptr @__UNIQUE_ID_description477, !6, !"__UNIQUE_ID_description477", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_cgroup.c", i32 22, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias478, !8, !"__UNIQUE_ID_alias478", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_cgroup.c", i32 23, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias479, !10, !"__UNIQUE_ID_alias479", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_cgroup.c", i32 24, i32 1}
!11 = !{ptr @__initcall__kmod_xt_cgroup__480_218_cgroup_mt_init6, !12, !"__initcall__kmod_xt_cgroup__480_218_cgroup_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_cgroup.c", i32 218, i32 1}
!13 = !{ptr @__exitcall_cgroup_mt_exit, !14, !"__exitcall_cgroup_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_cgroup.c", i32 219, i32 1}
!15 = !{ptr @cgroup_mt_reg, !16, !"cgroup_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_cgroup.c", i32 165, i32 24}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_cgroup.c", i32 45, i32 3}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cgroup_mt_check_v1._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @cgroup_mt_check_v1._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/netfilter/xt_cgroup.c", i32 50, i32 3}
!25 = !{ptr @cgroup_mt_check_v1._rs, !24, !"_rs", i1 false, i1 false}
!26 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cgroup_mt_check_v1._entry.4, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @cgroup_mt_check_v1._entry_ptr.6, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @cgroup_mt_check_v1._rs.7, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../net/netfilter/xt_cgroup.c", i32 58, i32 4}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @cgroup_mt_check_v1._entry.8, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @cgroup_mt_check_v1._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/netfilter/xt_cgroup.c", i32 77, i32 3}
!43 = !{ptr @cgroup_mt_check_v2._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @cgroup_mt_check_v2._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @cgroup_mt_check_v2._rs, !46, !"_rs", i1 false, i1 false}
!46 = !{!"../net/netfilter/xt_cgroup.c", i32 82, i32 3}
!47 = !{ptr @cgroup_mt_check_v2._entry.15, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @cgroup_mt_check_v2._entry_ptr.16, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @cgroup_mt_check_v2._rs.17, !50, !"_rs", i1 false, i1 false}
!50 = !{!"../net/netfilter/xt_cgroup.c", i32 90, i32 4}
!51 = !{ptr @cgroup_mt_check_v2._entry.18, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @cgroup_mt_check_v2._entry_ptr.19, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 2149648973}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{i64 744817, i64 744878}
!66 = !{i64 747549}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{i64 747834}
!69 = !{i64 2148440788}
!70 = !{i64 2148355521, i64 2148355553, i64 2148355582, i64 2148355616, i64 2148355647, i64 2148355670}
!71 = !{i64 2148441017}
!72 = !{i64 2149649239}

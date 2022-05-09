; ModuleID = '/llk/IR_all_yes/net/netfilter/ipset/ip_set_list_set.c_pt.bc'
source_filename = "../net/netfilter/ipset/ip_set_list_set.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ip_set_type = type { %struct.list_head, [32 x i8], i8, i8, i8, i8, i8, [10 x i8], i16, ptr, [27 x %struct.nla_policy], [31 x %struct.nla_policy], ptr }
%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.ip_set_type_variant = type { ptr, ptr, [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ip_set_ext_type = type { ptr, i32, i32, i8, i8 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nlattr = type { i16, i16 }
%struct.ip_set = type { [32 x i8], %struct.spinlock, i32, i32, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, [4 x i32], ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_set = type { i32, %struct.timer_list, ptr, ptr, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ip_set_ext = type { %struct.ip_set_skbinfo, i64, i64, ptr, i32, i8, i8, i8 }
%struct.ip_set_skbinfo = type { i32, i32, i32, i16, i16 }
%struct.sk_buff = type { %union.anon.82, %union.anon.109, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.109 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ip_set_adt_opt = type { i8, i8, i8, i32, %struct.ip_set_ext }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.set_adt_elem = type { i16, i16, i32 }
%struct.set_elem = type { %struct.callback_head, %struct.list_head, ptr, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }
%struct.ip_set_counter = type { %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }

@__UNIQUE_ID_file489 = internal constant [57 x i8] c"ip_set_list_set.file=net/netfilter/ipset/ip_set_list_set\00", section ".modinfo", align 1
@__UNIQUE_ID_license490 = internal constant [28 x i8] c"ip_set_list_set.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author491 = internal constant [63 x i8] c"ip_set_list_set.author=Jozsef Kadlecsik <kadlec@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description492 = internal constant [68 x i8] c"ip_set_list_set.description=list:set type of IP sets, revisions 0-3\00", section ".modinfo", align 1
@__UNIQUE_ID_alias493 = internal constant [38 x i8] c"ip_set_list_set.alias=ip_set_list:set\00", section ".modinfo", align 1
@list_set_type = internal global %struct.ip_set_type { %struct.list_head zeroinitializer, [32 x i8] c"list:set\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 7, i8 1, i8 0, i8 0, i8 3, [10 x i8] zeroinitializer, i16 272, ptr @list_set_create, [27 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [31 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 32, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 32, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 255, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer], ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_ip_set_list_set__504_680_list_set_init6 = internal global ptr @list_set_init, section ".initcall6.init", align 4
@__exitcall_list_set_fini = internal global ptr @list_set_fini, section ".exitcall.exit", align 4
@set_variant = internal constant { %struct.ip_set_type_variant, [40 x i8] } { %struct.ip_set_type_variant { ptr @list_set_kadt, ptr @list_set_uadt, [3 x ptr] [ptr @list_set_uadd, ptr @list_set_udel, ptr @list_set_utest], ptr null, ptr @list_set_destroy, ptr @list_set_flush, ptr null, ptr @list_set_head, ptr @list_set_list, ptr null, ptr @list_set_same_set, i8 0 }, [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@list_set_ktest.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"net/netfilter/ipset/ip_set_list_set.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ip_set_extensions = external dso_local local_unnamed_addr constant [0 x %struct.ip_set_ext_type], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@list_set_memsize.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@list_set_list.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@list_set_gc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"(&map->gc)\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"set_variant\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 548, i32 41 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 695, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 63, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 723, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 991, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [41 x i8] c"../net/netfilter/ipset/ip_set_list_set.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 582, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias493, ptr @__UNIQUE_ID_author491, ptr @__UNIQUE_ID_description492, ptr @__UNIQUE_ID_file489, ptr @__UNIQUE_ID_license490, ptr @__exitcall_list_set_fini, ptr @__initcall__kmod_ip_set_list_set__504_680_list_set_init6, ptr @list_set_fini, ptr @set_variant, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @list_set_gc_init.__key, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_variant to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_set_gc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @list_set_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rcu_barrier() #12
  tail call void @ip_set_type_unregister(ptr noundef nonnull @list_set_type) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_set_type_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @list_set_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_set_type_register(ptr noundef nonnull @list_set_type) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @list_set_create(ptr noundef %net, ptr noundef %set, ptr noundef %tb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 23
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.lor.lhs.false_crit_edge, label %ip_set_optattr_netorder.exit

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

ip_set_optattr_netorder.exit:                     ; preds = %entry
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nla_type.i, align 2
  %4 = and i16 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool2.i.not = icmp eq i16 %4, 0
  br i1 %tobool2.i.not, label %ip_set_optattr_netorder.exit.cleanup_crit_edge, label %ip_set_optattr_netorder.exit.lor.lhs.false_crit_edge, !prof !47

ip_set_optattr_netorder.exit.lor.lhs.false_crit_edge: ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

ip_set_optattr_netorder.exit.cleanup_crit_edge:   ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %ip_set_optattr_netorder.exit.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %arrayidx.i37 = getelementptr ptr, ptr %tb, i32 6
  %5 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i37, align 4
  %tobool.not.i38 = icmp eq ptr %6, null
  br i1 %tobool.not.i38, label %lor.lhs.false.lor.rhs_crit_edge, label %ip_set_optattr_netorder.exit42

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs

ip_set_optattr_netorder.exit42:                   ; preds = %lor.lhs.false
  %nla_type.i39 = getelementptr inbounds %struct.nlattr, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %nla_type.i39 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nla_type.i39, align 2
  %9 = and i16 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool2.i40.not = icmp eq i16 %9, 0
  br i1 %tobool2.i40.not, label %ip_set_optattr_netorder.exit42.cleanup_crit_edge, label %ip_set_optattr_netorder.exit42.lor.rhs_crit_edge, !prof !47

ip_set_optattr_netorder.exit42.lor.rhs_crit_edge: ; preds = %ip_set_optattr_netorder.exit42
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs

ip_set_optattr_netorder.exit42.cleanup_crit_edge: ; preds = %ip_set_optattr_netorder.exit42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.rhs:                                          ; preds = %ip_set_optattr_netorder.exit42.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %arrayidx.i43 = getelementptr ptr, ptr %tb, i32 8
  %10 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i43, align 4
  %tobool.not.i44 = icmp eq ptr %11, null
  br i1 %tobool.not.i44, label %lor.rhs.if.end_crit_edge, label %ip_set_optattr_netorder.exit48

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

ip_set_optattr_netorder.exit48:                   ; preds = %lor.rhs
  %nla_type.i45 = getelementptr inbounds %struct.nlattr, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %nla_type.i45 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %nla_type.i45, align 2
  %14 = and i16 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool2.i46.not = icmp eq i16 %14, 0
  br i1 %tobool2.i46.not, label %ip_set_optattr_netorder.exit48.cleanup_crit_edge, label %ip_set_optattr_netorder.exit48.if.end_crit_edge, !prof !47

ip_set_optattr_netorder.exit48.if.end_crit_edge:  ; preds = %ip_set_optattr_netorder.exit48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

ip_set_optattr_netorder.exit48.cleanup_crit_edge: ; preds = %ip_set_optattr_netorder.exit48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %ip_set_optattr_netorder.exit48.if.end_crit_edge, %lor.rhs.if.end_crit_edge
  br i1 %tobool.not.i, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %size.0 = phi i32 [ %16, %if.then6 ], [ 8, %if.end.if.end9_crit_edge ]
  %variant = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 5
  %17 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @set_variant, ptr %variant, align 4
  %call12 = tail call i32 @ip_set_elem_len(ptr noundef %set, ptr noundef %tb, i32 noundef 24, i32 noundef 8) #12
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %18 = ptrtoint ptr %dsize to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call12, ptr %dsize, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 68) #15
  %tobool.not.i49 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i49, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %20 = tail call i32 @llvm.umax.i32(i32 %size.0, i32 4)
  %21 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %call7.i.i.i, align 8
  %net2.i = getelementptr inbounds %struct.list_set, ptr %call7.i.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %net2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %net, ptr %net2.i, align 8
  %set3.i = getelementptr inbounds %struct.list_set, ptr %call7.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %set3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %set, ptr %set3.i, align 4
  %members.i = getelementptr inbounds %struct.list_set, ptr %call7.i.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %members.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %members.i, ptr %members.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_set, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %members.i, ptr %prev.i.i, align 8
  %data.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i.i, ptr %data.i, align 4
  %27 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i37, align 4
  %tobool17.not = icmp eq ptr %28, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.then18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i.i = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 2147483) #12
  %timeout = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 10
  %32 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %timeout, align 4
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %gc1.i = getelementptr inbounds %struct.list_set, ptr %34, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %gc1.i, ptr noundef nonnull @list_set_gc, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @list_set_gc_init.__key) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %36 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %timeout, align 4
  %div.i = udiv i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %38 = icmp ult i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 540, i32 %37)
  %cmp.i = icmp ult i32 %37, 540
  %div.op.i = mul i32 %div.i, 100
  %div..op.i = select i1 %cmp.i, i32 %div.op.i, i32 18000
  %mul.i = select i1 %38, i32 100, i32 %div..op.i
  %add.i = add i32 %mul.i, %35
  %call.i = tail call i32 @mod_timer(ptr noundef %gc1.i, i32 noundef %add.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %ip_set_optattr_netorder.exit48.cleanup_crit_edge, %ip_set_optattr_netorder.exit42.cleanup_crit_edge, %ip_set_optattr_netorder.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -4097, %ip_set_optattr_netorder.exit48.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %if.end15.cleanup_crit_edge ], [ -4097, %ip_set_optattr_netorder.exit42.cleanup_crit_edge ], [ -4097, %ip_set_optattr_netorder.exit.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_elem_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_set_gc(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %set1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %set1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set1, align 4
  %lock = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %data.i = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %members.i = getelementptr inbounds %struct.list_set, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %members.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %members.i, align 4
  %cmp.not23.i = icmp eq ptr %5, %members.i
  br i1 %cmp.not23.i, label %entry.set_cleanup_entries.exit_crit_edge, label %for.body.lr.ph.i

entry.set_cleanup_entries.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_cleanup_entries.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %arrayidx.i = getelementptr %struct.ip_set, ptr %1, i32 0, i32 14, i32 1
  %elements.i.i = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in24.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %.pn27.i, %for.inc.i.for.body.i_crit_edge ]
  %e.026.i = getelementptr i8, ptr %.pn.in24.i, i32 -8
  %6 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn27.i = load ptr, ptr %.pn.in24.i, align 8
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %e.026.i, i32 %8
  %9 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i.i, label %for.body.i.for.inc.i_crit_edge, label %ip_set_timeout_expired.exit.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

ip_set_timeout_expired.exit.i:                    ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp1.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp1.i.i, label %if.then.i, label %ip_set_timeout_expired.exit.i.for.inc.i_crit_edge

ip_set_timeout_expired.exit.i.for.inc.i_crit_edge: ; preds = %ip_set_timeout_expired.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %ip_set_timeout_expired.exit.i
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %14 = ptrtoint ptr %elements.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %elements.i.i, align 4
  %dec.i.i = add i32 %15, -1
  store i32 %dec.i.i, ptr %elements.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in24.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.list_set_del.exit.i_crit_edge

if.then.i.list_set_del.exit.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_set_del.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in24.i, i32 4
  %16 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i.i, align 4
  %18 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn.in24.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_set_del.exit.i

list_set_del.exit.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.list_set_del.exit.i_crit_edge
  %prev.i.i.i = getelementptr i8, ptr %.pn.in24.i, i32 4
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %net.i.i = getelementptr inbounds %struct.list_set, ptr %13, i32 0, i32 3
  %23 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net.i.i, align 4
  %id.i.i = getelementptr i8, ptr %.pn.in24.i, i32 12
  %25 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %id.i.i, align 4
  tail call void @ip_set_put_byindex(ptr noundef %24, i16 noundef zeroext %26) #12
  tail call void @call_rcu(ptr noundef %e.026.i, ptr noundef nonnull @__list_set_del_rcu) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_set_del.exit.i, %ip_set_timeout_expired.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn27.i, %members.i
  br i1 %cmp.not.i, label %for.inc.i.set_cleanup_entries.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.set_cleanup_entries.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_cleanup_entries.exit

set_cleanup_entries.exit:                         ; preds = %for.inc.i.set_cleanup_entries.exit_crit_edge, %entry.set_cleanup_entries.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %timeout = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 10
  %28 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %timeout, align 4
  %div = udiv i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %30 = icmp ult i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 540, i32 %29)
  %cmp = icmp ult i32 %29, 540
  %div.op = mul i32 %div, 100
  %div..op = select i1 %cmp, i32 %div.op, i32 18000
  %mul = select i1 %30, i32 100, i32 %div..op
  %add = add i32 %mul, %27
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %31 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @list_set_kadt(ptr noundef %set, ptr noundef %skb, ptr noundef %par, i32 noundef %adt, ptr noundef %opt) #2 align 64 {
entry:
  %ext = alloca %struct.ip_set_ext, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ext) #12
  %0 = getelementptr inbounds i8, ptr %ext, i32 40
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8, !annotation !48
  %2 = call ptr @memset(ptr %ext, i32 0, i32 16)
  %packets = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %3 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1, ptr %packets, align 8
  %bytes = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %conv = zext i32 %5 to i64
  %6 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %bytes, align 8
  %comment = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 3
  %7 = ptrtoint ptr %comment to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %comment, align 8
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %timeout2 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %timeout2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timeout2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.not = icmp eq i32 %9, -1
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %timeout6 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 10
  %10 = ptrtoint ptr %timeout6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timeout6, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %11, %cond.false ], [ %9, %entry.cond.end_crit_edge ]
  %12 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond, ptr %timeout, align 4
  %packets_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 5
  %13 = ptrtoint ptr %packets_op to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %packets_op, align 8
  %bytes_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 6
  %14 = ptrtoint ptr %bytes_op to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bytes_op, align 1
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %15 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %target, align 2
  %16 = tail call i32 @llvm.read_register.i32(metadata !37) #12
  %and.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !49
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %cond.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

cond.end.rcu_read_lock.exit_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %cond.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %cond.end.rcu_read_lock.exit_crit_edge
  %20 = zext i32 %adt to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %adt, label %rcu_read_lock.exit.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb7
    i32 1, label %sw.bb9
  ]

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %rcu_read_lock.exit
  %data.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %ext1.i = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4
  %cmdflags.i = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 3
  %23 = ptrtoint ptr %cmdflags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cmdflags.i, align 4
  %and.i = and i32 %24, -33
  %and4.i = lshr i32 %24, 1
  %25 = and i32 %and4.i, 8
  %26 = or i32 %25, %and.i
  store i32 %26, ptr %cmdflags.i, align 4
  %call.i23 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool6.not.i = icmp eq i32 %call.i23, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i24, label %sw.bb.do.end.i_crit_edge

sw.bb.do.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i24:                                ; preds = %sw.bb
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i24.do.end.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i24.do.end.i_crit_edge:             ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i24
  %.b48.i = load i1, ptr @list_set_ktest.__warned, align 1
  br i1 %.b48.i, label %land.lhs.true9.i.do.end.i_crit_edge, label %if.then11.i

land.lhs.true9.i.do.end.i_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then11.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @list_set_ktest.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 63, ptr noundef nonnull @.str.3) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then11.i, %land.lhs.true9.i.do.end.i_crit_edge, %land.lhs.true.i24.do.end.i_crit_edge, %sw.bb.do.end.i_crit_edge
  %members.i = getelementptr inbounds %struct.list_set, ptr %22, i32 0, i32 4
  %27 = ptrtoint ptr %members.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn49.i = load volatile ptr, ptr %members.i, align 4
  %cmp.not51.i = icmp eq ptr %.pn49.i, %members.i
  br i1 %cmp.not51.i, label %do.end.i.sw.epilog_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.sw.epilog_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn52.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn49.i, %do.end.i.for.body.i_crit_edge ]
  %id.i = getelementptr i8, ptr %.pn52.i, i32 12
  %28 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %id.i, align 4
  %call18.i = call i32 @ip_set_test(i16 noundef zeroext %29, ptr noundef %skb, ptr noundef %par, ptr noundef %opt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 1
  br i1 %cmp19.i, label %for.body.i.for.inc.i_crit_edge, label %if.end21.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end21.i:                                       ; preds = %for.body.i
  %e.053.i = getelementptr i8, ptr %.pn52.i, i32 -8
  %call22.i = call zeroext i1 @ip_set_match_extensions(ptr noundef %set, ptr noundef nonnull %ext, ptr noundef %ext1.i, i32 noundef %24, ptr noundef %e.053.i) #12
  br i1 %call22.i, label %if.end21.i.sw.epilog_crit_edge, label %if.end21.i.for.inc.i_crit_edge

if.end21.i.for.inc.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end21.i.sw.epilog_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.inc.i:                                        ; preds = %if.end21.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %30 = ptrtoint ptr %.pn52.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn.i = load volatile ptr, ptr %.pn52.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %members.i
  br i1 %cmp.not.i, label %for.inc.i.sw.epilog_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.sw.epilog_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb7:                                           ; preds = %rcu_read_lock.exit
  %data.i25 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %31 = ptrtoint ptr %data.i25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i25, align 4
  %members.i26 = getelementptr inbounds %struct.list_set, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %members.i26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn1.i = load ptr, ptr %members.i26, align 4
  %cmp.not3.i = icmp eq ptr %.pn1.i, %members.i26
  br i1 %cmp.not3.i, label %sw.bb7.sw.epilog_crit_edge, label %for.body.lr.ph.i

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %sw.bb7
  %extensions.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx.i = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  br label %for.body.i28

for.body.i28:                                     ; preds = %for.inc.i33.for.body.i28_crit_edge, %for.body.lr.ph.i
  %.pn4.i = phi ptr [ %.pn1.i, %for.body.lr.ph.i ], [ %.pn.i31, %for.inc.i33.for.body.i28_crit_edge ]
  %34 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %extensions.i, align 2
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i27 = icmp eq i8 %36, 0
  br i1 %tobool.not.i27, label %for.body.i28.if.end.i_crit_edge, label %land.lhs.true.i29

for.body.i28.if.end.i_crit_edge:                  ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i29:                                ; preds = %for.body.i28
  %e.05.i = getelementptr i8, ptr %.pn4.i, i32 -8
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %e.05.i, i32 %38
  %39 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.not.i.i = icmp eq i32 %40, 0
  br i1 %cmp.not.i.i, label %land.lhs.true.i29.if.end.i_crit_edge, label %ip_set_timeout_expired.exit.i

land.lhs.true.i29.if.end.i_crit_edge:             ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

ip_set_timeout_expired.exit.i:                    ; preds = %land.lhs.true.i29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %40, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp1.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp1.i.i, label %ip_set_timeout_expired.exit.i.for.inc.i33_crit_edge, label %ip_set_timeout_expired.exit.i.if.end.i_crit_edge

ip_set_timeout_expired.exit.i.if.end.i_crit_edge: ; preds = %ip_set_timeout_expired.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

ip_set_timeout_expired.exit.i.for.inc.i33_crit_edge: ; preds = %ip_set_timeout_expired.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i33

if.end.i:                                         ; preds = %ip_set_timeout_expired.exit.i.if.end.i_crit_edge, %land.lhs.true.i29.if.end.i_crit_edge, %for.body.i28.if.end.i_crit_edge
  %id.i30 = getelementptr i8, ptr %.pn4.i, i32 12
  %42 = ptrtoint ptr %id.i30 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %id.i30, align 4
  %call4.i = tail call i32 @ip_set_add(i16 noundef zeroext %43, ptr noundef %skb, ptr noundef %par, ptr noundef %opt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.sw.epilog_crit_edge, label %if.end.i.for.inc.i33_crit_edge

if.end.i.for.inc.i33_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i33

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.inc.i33:                                      ; preds = %if.end.i.for.inc.i33_crit_edge, %ip_set_timeout_expired.exit.i.for.inc.i33_crit_edge
  %44 = ptrtoint ptr %.pn4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn.i31 = load ptr, ptr %.pn4.i, align 4
  %cmp.not.i32 = icmp eq ptr %.pn.i31, %members.i26
  br i1 %cmp.not.i32, label %for.inc.i33.sw.epilog_crit_edge, label %for.inc.i33.for.body.i28_crit_edge

for.inc.i33.for.body.i28_crit_edge:               ; preds = %for.inc.i33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i28

for.inc.i33.sw.epilog_crit_edge:                  ; preds = %for.inc.i33
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb9:                                           ; preds = %rcu_read_lock.exit
  %data.i34 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %45 = ptrtoint ptr %data.i34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i34, align 4
  %members.i35 = getelementptr inbounds %struct.list_set, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %members.i35 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn1.i36 = load ptr, ptr %members.i35, align 4
  %cmp.not3.i37 = icmp eq ptr %.pn1.i36, %members.i35
  br i1 %cmp.not3.i37, label %sw.bb9.sw.epilog_crit_edge, label %for.body.lr.ph.i40

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.lr.ph.i40:                               ; preds = %sw.bb9
  %extensions.i38 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx.i39 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  br label %for.body.i43

for.body.i43:                                     ; preds = %for.inc.i57.for.body.i43_crit_edge, %for.body.lr.ph.i40
  %.pn4.i41 = phi ptr [ %.pn1.i36, %for.body.lr.ph.i40 ], [ %.pn.i55, %for.inc.i57.for.body.i43_crit_edge ]
  %48 = ptrtoint ptr %extensions.i38 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %extensions.i38, align 2
  %50 = and i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i42 = icmp eq i8 %50, 0
  br i1 %tobool.not.i42, label %for.body.i43.if.end.i54_crit_edge, label %land.lhs.true.i47

for.body.i43.if.end.i54_crit_edge:                ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i54

land.lhs.true.i47:                                ; preds = %for.body.i43
  %e.05.i44 = getelementptr i8, ptr %.pn4.i41, i32 -8
  %51 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i39, align 4
  %add.ptr2.i45 = getelementptr i8, ptr %e.05.i44, i32 %52
  %53 = ptrtoint ptr %add.ptr2.i45 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr2.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.not.i.i46 = icmp eq i32 %54, 0
  br i1 %cmp.not.i.i46, label %land.lhs.true.i47.if.end.i54_crit_edge, label %ip_set_timeout_expired.exit.i50

land.lhs.true.i47.if.end.i54_crit_edge:           ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i54

ip_set_timeout_expired.exit.i50:                  ; preds = %land.lhs.true.i47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i48 = sub i32 %54, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i48)
  %cmp1.i.i49 = icmp slt i32 %sub.i.i48, 0
  br i1 %cmp1.i.i49, label %ip_set_timeout_expired.exit.i50.for.inc.i57_crit_edge, label %ip_set_timeout_expired.exit.i50.if.end.i54_crit_edge

ip_set_timeout_expired.exit.i50.if.end.i54_crit_edge: ; preds = %ip_set_timeout_expired.exit.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i54

ip_set_timeout_expired.exit.i50.for.inc.i57_crit_edge: ; preds = %ip_set_timeout_expired.exit.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i57

if.end.i54:                                       ; preds = %ip_set_timeout_expired.exit.i50.if.end.i54_crit_edge, %land.lhs.true.i47.if.end.i54_crit_edge, %for.body.i43.if.end.i54_crit_edge
  %id.i51 = getelementptr i8, ptr %.pn4.i41, i32 12
  %56 = ptrtoint ptr %id.i51 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %id.i51, align 4
  %call4.i52 = tail call i32 @ip_set_del(i16 noundef zeroext %57, ptr noundef %skb, ptr noundef %par, ptr noundef %opt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i52)
  %cmp5.i53 = icmp eq i32 %call4.i52, 0
  br i1 %cmp5.i53, label %if.end.i54.sw.epilog_crit_edge, label %if.end.i54.for.inc.i57_crit_edge

if.end.i54.for.inc.i57_crit_edge:                 ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i57

if.end.i54.sw.epilog_crit_edge:                   ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.inc.i57:                                      ; preds = %if.end.i54.for.inc.i57_crit_edge, %ip_set_timeout_expired.exit.i50.for.inc.i57_crit_edge
  %58 = ptrtoint ptr %.pn4.i41 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn.i55 = load ptr, ptr %.pn4.i41, align 4
  %cmp.not.i56 = icmp eq ptr %.pn.i55, %members.i35
  br i1 %cmp.not.i56, label %for.inc.i57.sw.epilog_crit_edge, label %for.inc.i57.for.body.i43_crit_edge

for.inc.i57.for.body.i43_crit_edge:               ; preds = %for.inc.i57
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i43

for.inc.i57.sw.epilog_crit_edge:                  ; preds = %for.inc.i57
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.inc.i57.sw.epilog_crit_edge, %if.end.i54.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge, %for.inc.i33.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %for.inc.i.sw.epilog_crit_edge, %if.end21.i.sw.epilog_crit_edge, %do.end.i.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %rcu_read_lock.exit.sw.epilog_crit_edge ], [ 0, %do.end.i.sw.epilog_crit_edge ], [ 0, %sw.bb7.sw.epilog_crit_edge ], [ 0, %sw.bb9.sw.epilog_crit_edge ], [ 1, %if.end21.i.sw.epilog_crit_edge ], [ 0, %for.inc.i.sw.epilog_crit_edge ], [ 0, %if.end.i.sw.epilog_crit_edge ], [ 0, %for.inc.i33.sw.epilog_crit_edge ], [ 0, %if.end.i54.sw.epilog_crit_edge ], [ 0, %for.inc.i57.sw.epilog_crit_edge ]
  %call.i58 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i58, label %sw.epilog.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i61

sw.epilog.rcu_read_unlock.exit_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i61:                                ; preds = %sw.epilog
  %call1.i59 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59)
  %tobool.not.i60 = icmp eq i32 %call1.i59, 0
  br i1 %tobool.not.i60, label %land.lhs.true.i61.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i63

land.lhs.true.i61.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i63:                               ; preds = %land.lhs.true.i61
  %.b4.i62 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i62, label %land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge, label %if.then.i64

land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i64:                                      ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i64, %land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i61.rcu_read_unlock.exit_crit_edge, %sw.epilog.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !50
  %59 = call i32 @llvm.read_register.i32(metadata !37) #12
  %and.i.i.i.i.i65 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i65 to ptr
  %preempt_count.i.i.i.i66 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i66, align 4
  %sub.i.i.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i66, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ext) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @list_set_uadt(ptr noundef %set, ptr noundef %tb, i32 noundef %adt, ptr nocapture noundef writeonly %lineno, i32 noundef %flags, i1 noundef zeroext %retried) #2 align 64 {
entry:
  %e = alloca %struct.set_adt_elem, align 8
  %ext = alloca %struct.ip_set_ext, align 8
  %s = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %variant = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 5
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %arrayidx = getelementptr %struct.ip_set_type_variant, ptr %3, i32 0, i32 2, i32 %adt
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %e) #12
  %6 = ptrtoint ptr %e to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 281470681743360, ptr %e, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ext) #12
  %7 = getelementptr inbounds i8, ptr %ext, i32 40
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %7, align 8, !annotation !48
  %9 = call ptr @memset(ptr %ext, i32 0, i32 16)
  %packets = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %comment = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 3
  %10 = call ptr @memset(ptr %packets, i32 255, i32 16)
  %11 = ptrtoint ptr %comment to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %comment, align 8
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %timeout2 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 10
  %12 = ptrtoint ptr %timeout2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timeout2, align 4
  %14 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %timeout, align 4
  %packets_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 5
  %15 = ptrtoint ptr %packets_op to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %packets_op, align 8
  %bytes_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 6
  %16 = ptrtoint ptr %bytes_op to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %bytes_op, align 1
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %17 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %target, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s) #12
  %18 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %s, align 4, !annotation !48
  %arrayidx3 = getelementptr ptr, ptr %tb, i32 9
  %19 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i, align 4
  %23 = ptrtoint ptr %lineno to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %lineno, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx5 = getelementptr ptr, ptr %tb, i32 18
  %24 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %25, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %lor.rhs, !prof !47

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.rhs:                                          ; preds = %if.end
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 8
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %lor.rhs.if.end12_crit_edge, label %ip_set_optattr_netorder.exit

lor.rhs.if.end12_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

ip_set_optattr_netorder.exit:                     ; preds = %lor.rhs
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %nla_type.i, align 2
  %30 = and i16 %29, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool2.i.not = icmp eq i16 %30, 0
  br i1 %tobool2.i.not, label %ip_set_optattr_netorder.exit.cleanup_crit_edge, label %ip_set_optattr_netorder.exit.if.end12_crit_edge, !prof !47

ip_set_optattr_netorder.exit.if.end12_crit_edge:  ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

ip_set_optattr_netorder.exit.cleanup_crit_edge:   ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %ip_set_optattr_netorder.exit.if.end12_crit_edge, %lor.rhs.if.end12_crit_edge
  %call13 = call i32 @ip_set_get_extensions(ptr noundef %set, ptr noundef %tb, ptr noundef nonnull %ext) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %net = getelementptr inbounds %struct.list_set, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net, align 4
  %33 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx5, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 4
  %call19 = call zeroext i16 @ip_set_get_byname(ptr noundef %32, ptr noundef %add.ptr.i, ptr noundef nonnull %s) #12
  %35 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %call19, ptr %e, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call19)
  %cmp = icmp eq i16 %call19, -1
  br i1 %cmp, label %if.end16.cleanup_crit_edge, label %if.end23

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %36 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s, align 4
  %type = getelementptr inbounds %struct.ip_set, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %type, align 4
  %features = getelementptr inbounds %struct.ip_set_type, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %features to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %features, align 4
  %42 = and i16 %41, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool25.not = icmp eq i16 %42, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.finish_crit_edge

if.end23.finish_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %finish

if.end27:                                         ; preds = %if.end23
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %tobool29.not = icmp eq ptr %44, null
  br i1 %tobool29.not, label %if.end27.if.end34_crit_edge, label %if.then30

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i = getelementptr i8, ptr %44, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i.i.i, align 4
  %and33 = and i32 %46, 1
  %before = getelementptr inbounds %struct.set_adt_elem, ptr %e, i32 0, i32 2
  %47 = ptrtoint ptr %before to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and33, ptr %before, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end27.if.end34_crit_edge
  %before35 = getelementptr inbounds %struct.set_adt_elem, ptr %e, i32 0, i32 2
  %48 = ptrtoint ptr %before35 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %before35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool36.not = icmp eq i32 %49, 0
  br i1 %tobool36.not, label %if.end34.if.end40_crit_edge, label %land.lhs.true

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end34
  %arrayidx37 = getelementptr ptr, ptr %tb, i32 19
  %50 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx37, align 4
  %tobool38.not = icmp eq ptr %51, null
  br i1 %tobool38.not, label %land.lhs.true.finish_crit_edge, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

land.lhs.true.finish_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %finish

if.end40:                                         ; preds = %land.lhs.true.if.end40_crit_edge, %if.end34.if.end40_crit_edge
  %arrayidx41 = getelementptr ptr, ptr %tb, i32 19
  %52 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx41, align 4
  %tobool42.not = icmp eq ptr %53, null
  br i1 %tobool42.not, label %if.end40.if.end59_crit_edge, label %if.then43

if.end40.if.end59_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then43:                                        ; preds = %if.end40
  %54 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %net, align 4
  %add.ptr.i119 = getelementptr i8, ptr %53, i32 4
  %call47 = call zeroext i16 @ip_set_get_byname(ptr noundef %55, ptr noundef %add.ptr.i119, ptr noundef nonnull %s) #12
  %refid = getelementptr inbounds %struct.set_adt_elem, ptr %e, i32 0, i32 1
  %56 = ptrtoint ptr %refid to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %call47, ptr %refid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call47)
  %cmp50 = icmp eq i16 %call47, -1
  br i1 %cmp50, label %if.then43.finish_crit_edge, label %if.end53

if.then43.finish_crit_edge:                       ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %finish

if.end53:                                         ; preds = %if.then43
  %57 = ptrtoint ptr %before35 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %before35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool55.not = icmp eq i32 %58, 0
  br i1 %tobool55.not, label %if.then56, label %if.end53.if.end59_crit_edge

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %before35 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %before35, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end53.if.end59_crit_edge, %if.end40.if.end59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %adt)
  %cmp60.not = icmp eq i32 %adt, 2
  br i1 %cmp60.not, label %if.end59.if.end67_crit_edge, label %land.lhs.true62

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

land.lhs.true62:                                  ; preds = %if.end59
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %60 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %extensions, align 2
  %62 = and i8 %61, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool65.not = icmp eq i8 %62, 0
  br i1 %tobool65.not, label %land.lhs.true62.if.end67_crit_edge, label %if.then66

land.lhs.true62.if.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then66:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @set_cleanup_entries(ptr noundef %set)
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %land.lhs.true62.if.end67_crit_edge, %if.end59.if.end67_crit_edge
  %call68 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef nonnull %ext, i32 noundef %flags) #12
  br label %finish

finish:                                           ; preds = %if.end67, %if.then43.finish_crit_edge, %land.lhs.true.finish_crit_edge, %if.end23.finish_crit_edge
  %ret.0 = phi i32 [ %call68, %if.end67 ], [ -4353, %if.end23.finish_crit_edge ], [ -4354, %land.lhs.true.finish_crit_edge ], [ -4355, %if.then43.finish_crit_edge ]
  %refid69 = getelementptr inbounds %struct.set_adt_elem, ptr %e, i32 0, i32 1
  %63 = ptrtoint ptr %refid69 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %refid69, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %64)
  %cmp71.not = icmp eq i16 %64, -1
  br i1 %cmp71.not, label %finish.if.end76_crit_edge, label %if.then73

finish.if.end76_crit_edge:                        ; preds = %finish
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then73:                                        ; preds = %finish
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %net, align 4
  call void @ip_set_put_byindex(ptr noundef %66, i16 noundef zeroext %64) #12
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %finish.if.end76_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %adt)
  %cmp77.not = icmp eq i32 %adt, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool79.not = icmp eq i32 %ret.0, 0
  %or.cond = select i1 %cmp77.not, i1 %tobool79.not, i1 false
  br i1 %or.cond, label %if.end76.if.end83_crit_edge, label %if.then80

if.end76.if.end83_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %net, align 4
  %69 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %e, align 8
  call void @ip_set_put_byindex(ptr noundef %68, i16 noundef zeroext %70) #12
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.end76.if.end83_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4103, i32 %ret.0)
  %cmp.i = icmp eq i32 %ret.0, -4103
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %71 = and i1 %tobool.i, %cmp.i
  %spec.select = select i1 %71, i32 0, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %ip_set_optattr_netorder.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end83 ], [ -4097, %ip_set_optattr_netorder.exit.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ -4352, %if.end16.cleanup_crit_edge ], [ -4097, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ext) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %e) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @list_set_uadd(ptr noundef %set, ptr nocapture noundef readonly %value, ptr noundef %ext, ptr nocapture noundef readnone %mext, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %members = getelementptr inbounds %struct.list_set, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %members to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn218 = load ptr, ptr %members, align 4
  %cmp.not220 = icmp eq ptr %.pn218, %members
  br i1 %cmp.not220, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %3 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %extensions, align 2
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  %arrayidx = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %before = getelementptr inbounds %struct.set_adt_elem, ptr %value, i32 0, i32 2
  %refid = getelementptr inbounds %struct.set_adt_elem, ptr %value, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn224 = phi ptr [ %.pn218, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %n.0223 = phi ptr [ null, %for.body.lr.ph ], [ %n.1, %for.inc.for.body_crit_edge ]
  %prev.0222 = phi ptr [ null, %for.body.lr.ph ], [ %prev.1, %for.inc.for.body_crit_edge ]
  %next.0221 = phi ptr [ null, %for.body.lr.ph ], [ %next.1, %for.inc.for.body_crit_edge ]
  %e.0225 = getelementptr i8, ptr %.pn224, i32 -8
  br i1 %tobool4.not, label %for.body.if.else_crit_edge, label %land.lhs.true

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr5 = getelementptr i8, ptr %e.0225, i32 %7
  %8 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %land.lhs.true.if.else_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.for.inc_crit_edge, label %ip_set_timeout_expired.exit.if.else_crit_edge

ip_set_timeout_expired.exit.if.else_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

ip_set_timeout_expired.exit.for.inc_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else:                                          ; preds = %ip_set_timeout_expired.exit.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %value, align 4
  %id8 = getelementptr i8, ptr %.pn224, i32 12
  %13 = ptrtoint ptr %id8 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %id8, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp10 = icmp eq i16 %12, %14
  br i1 %cmp10, label %if.else.for.inc_crit_edge, label %if.else13

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else13:                                        ; preds = %if.else
  %15 = ptrtoint ptr %before to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %before, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp14 = icmp eq i32 %16, 0
  br i1 %cmp14, label %if.else13.for.inc_crit_edge, label %lor.lhs.false

if.else13.for.inc_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.else13
  %17 = ptrtoint ptr %refid to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %refid, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %18)
  %cmp19.not = icmp eq i16 %14, %18
  br i1 %cmp19.not, label %if.else22, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else22:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp24 = icmp sgt i32 %16, 0
  %e.0.next.0 = select i1 %cmp24, ptr %e.0225, ptr %next.0221
  %prev.0.e.0 = select i1 %cmp24, ptr %prev.0222, ptr %e.0225
  br label %for.inc

for.inc:                                          ; preds = %if.else22, %lor.lhs.false.for.inc_crit_edge, %if.else13.for.inc_crit_edge, %if.else.for.inc_crit_edge, %ip_set_timeout_expired.exit.for.inc_crit_edge
  %next.1 = phi ptr [ %next.0221, %ip_set_timeout_expired.exit.for.inc_crit_edge ], [ %next.0221, %if.else13.for.inc_crit_edge ], [ %next.0221, %lor.lhs.false.for.inc_crit_edge ], [ %next.0221, %if.else.for.inc_crit_edge ], [ %e.0.next.0, %if.else22 ]
  %prev.1 = phi ptr [ %prev.0222, %ip_set_timeout_expired.exit.for.inc_crit_edge ], [ %prev.0222, %if.else13.for.inc_crit_edge ], [ %prev.0222, %lor.lhs.false.for.inc_crit_edge ], [ %prev.0222, %if.else.for.inc_crit_edge ], [ %prev.0.e.0, %if.else22 ]
  %n.1 = phi ptr [ %n.0223, %ip_set_timeout_expired.exit.for.inc_crit_edge ], [ %n.0223, %if.else13.for.inc_crit_edge ], [ %n.0223, %lor.lhs.false.for.inc_crit_edge ], [ %e.0225, %if.else.for.inc_crit_edge ], [ %n.0223, %if.else22 ]
  %19 = ptrtoint ptr %.pn224 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn224, align 4
  %cmp.not = icmp eq ptr %.pn, %members
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %next.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %next.1, %for.inc.for.end_crit_edge ]
  %prev.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %prev.1, %for.inc.for.end_crit_edge ]
  %n.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %n.1, %for.inc.for.end_crit_edge ]
  %before36 = getelementptr inbounds %struct.set_adt_elem, ptr %value, i32 0, i32 2
  %20 = ptrtoint ptr %before36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %before36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp37 = icmp sgt i32 %21, 0
  %tobool40.not = icmp eq ptr %next.0.lcssa, null
  %or.cond = select i1 %cmp37, i1 %tobool40.not, i1 false
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %lor.lhs.false41

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false41:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp43 = icmp slt i32 %21, 0
  %tobool46.not = icmp eq ptr %prev.0.lcssa, null
  %or.cond205 = select i1 %cmp43, i1 %tobool46.not, i1 false
  br i1 %or.cond205, label %lor.lhs.false41.cleanup_crit_edge, label %if.end48

lor.lhs.false41.cleanup_crit_edge:                ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end48:                                         ; preds = %lor.lhs.false41
  %tobool49.not = icmp eq ptr %n.0.lcssa, null
  br i1 %tobool49.not, label %if.end55, label %if.then50

if.then50:                                        ; preds = %if.end48
  br i1 %tobool.not, label %if.then50.cleanup_crit_edge, label %if.end53

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end53:                                         ; preds = %if.then50
  %extensions.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %22 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %extensions.i, align 2
  %24 = and i8 %23, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.end53.ip_set_ext_destroy.exit_crit_edge, label %if.then.i

if.end53.ip_set_ext_destroy.exit_crit_edge:       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_ext_destroy.exit

if.then.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %n.0.lcssa, i32 %26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %27(ptr noundef %set, ptr noundef %add.ptr.i) #12
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i, %if.end53.ip_set_ext_destroy.exit_crit_edge
  tail call fastcc void @list_set_init_extensions(ptr noundef %set, ptr noundef %ext, ptr noundef nonnull %n.0.lcssa)
  %net = getelementptr inbounds %struct.list_set, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net, align 4
  %30 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %value, align 4
  tail call void @ip_set_put_byindex(ptr noundef %29, i16 noundef zeroext %31) #12
  br label %cleanup

if.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp57 = icmp eq i32 %21, 0
  br i1 %cmp57, label %if.then59, label %if.else68

if.then59:                                        ; preds = %if.end55
  %32 = ptrtoint ptr %members to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %members, align 4
  %cmp.i.not = icmp eq ptr %33, %members
  br i1 %cmp.i.not, label %if.then59.if.end8.i.i_crit_edge, label %cond.false

if.then59.if.end8.i.i_crit_edge:                  ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

cond.false:                                       ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  %prev65 = getelementptr inbounds %struct.list_set, ptr %1, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %prev65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev65, align 4
  %add.ptr67 = getelementptr i8, ptr %35, i32 -8
  br label %if.end98

if.else68:                                        ; preds = %if.end55
  br i1 %cmp37, label %if.then72, label %if.else84

if.then72:                                        ; preds = %if.else68
  %list73 = getelementptr inbounds %struct.set_elem, ptr %next.0.lcssa, i32 0, i32 1
  %36 = ptrtoint ptr %list73 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %list73, align 4
  %cmp.i206.not = icmp eq ptr %37, %members
  br i1 %cmp.i206.not, label %if.then72.if.end8.i.i_crit_edge, label %if.then77

if.then72.if.end8.i.i_crit_edge:                  ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then77:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr82 = getelementptr i8, ptr %37, i32 -8
  br label %if.end98

if.else84:                                        ; preds = %if.else68
  %prev86 = getelementptr inbounds %struct.set_elem, ptr %prev.0.lcssa, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev86 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev86, align 4
  %cmp88.not = icmp eq ptr %39, %members
  %add.ptr95 = getelementptr i8, ptr %39, i32 -8
  br i1 %cmp88.not, label %if.else84.if.end8.i.i_crit_edge, label %if.else84.if.end98_crit_edge

if.else84.if.end98_crit_edge:                     ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

if.else84.if.end8.i.i_crit_edge:                  ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.end98:                                         ; preds = %if.else84.if.end98_crit_edge, %if.then77, %cond.false
  %n.2 = phi ptr [ %add.ptr82, %if.then77 ], [ %add.ptr67, %cond.false ], [ %add.ptr95, %if.else84.if.end98_crit_edge ]
  %tobool99.not = icmp eq ptr %n.2, null
  br i1 %tobool99.not, label %if.end98.if.end8.i.i_crit_edge, label %land.lhs.true100

if.end98.if.end8.i.i_crit_edge:                   ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

land.lhs.true100:                                 ; preds = %if.end98
  %extensions101 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %40 = ptrtoint ptr %extensions101 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %extensions101, align 2
  %42 = and i8 %41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool104.not = icmp eq i8 %42, 0
  br i1 %tobool104.not, label %land.lhs.true100.if.then111_crit_edge, label %land.lhs.true105

land.lhs.true100.if.then111_crit_edge:            ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then111

land.lhs.true105:                                 ; preds = %land.lhs.true100
  %arrayidx107 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %43 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx107, align 4
  %add.ptr108 = getelementptr i8, ptr %n.2, i32 %44
  %45 = ptrtoint ptr %add.ptr108 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.not.i208 = icmp eq i32 %46, 0
  br i1 %cmp.not.i208, label %land.lhs.true105.if.then111_crit_edge, label %ip_set_timeout_expired.exit212

land.lhs.true105.if.then111_crit_edge:            ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then111

ip_set_timeout_expired.exit212:                   ; preds = %land.lhs.true105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub.i209 = sub i32 %46, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i209)
  %cmp1.i210 = icmp slt i32 %sub.i209, 0
  br i1 %cmp1.i210, label %ip_set_timeout_expired.exit212.if.end8.i.i_crit_edge, label %ip_set_timeout_expired.exit212.if.then111_crit_edge

ip_set_timeout_expired.exit212.if.then111_crit_edge: ; preds = %ip_set_timeout_expired.exit212
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then111

ip_set_timeout_expired.exit212.if.end8.i.i_crit_edge: ; preds = %ip_set_timeout_expired.exit212
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then111:                                       ; preds = %ip_set_timeout_expired.exit212.if.then111_crit_edge, %land.lhs.true105.if.then111_crit_edge, %land.lhs.true100.if.then111_crit_edge
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then111, %ip_set_timeout_expired.exit212.if.end8.i.i_crit_edge, %if.end98.if.end8.i.i_crit_edge, %if.else84.if.end8.i.i_crit_edge, %if.then72.if.end8.i.i_crit_edge, %if.then59.if.end8.i.i_crit_edge
  %n.3 = phi ptr [ %n.2, %ip_set_timeout_expired.exit212.if.end8.i.i_crit_edge ], [ null, %if.then111 ], [ null, %if.end98.if.end8.i.i_crit_edge ], [ null, %if.then72.if.end8.i.i_crit_edge ], [ null, %if.then59.if.end8.i.i_crit_edge ], [ null, %if.else84.if.end8.i.i_crit_edge ]
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %48 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dsize, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %49, i32 noundef 2848) #16
  %tobool114.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool114.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end116

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end116:                                        ; preds = %if.end8.i.i
  %50 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %value, align 4
  %id118 = getelementptr inbounds %struct.set_elem, ptr %call9.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %id118 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %id118, align 4
  %set119 = getelementptr inbounds %struct.set_elem, ptr %call9.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %set119 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %set, ptr %set119, align 16
  %list120 = getelementptr inbounds %struct.set_elem, ptr %call9.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %list120 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %list120, ptr %list120, align 8
  %prev.i = getelementptr inbounds %struct.set_elem, ptr %call9.i.i, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %list120, ptr %prev.i, align 4
  tail call fastcc void @list_set_init_extensions(ptr noundef %set, ptr noundef %ext, ptr noundef nonnull %call9.i.i)
  %tobool121.not = icmp eq ptr %n.3, null
  br i1 %tobool121.not, label %if.else123, label %if.then122

if.then122:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data, align 4
  %list.i = getelementptr inbounds %struct.set_elem, ptr %n.3, i32 0, i32 1
  %58 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %list.i, align 4
  %60 = ptrtoint ptr %list120 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %list120, align 8
  %prev.i.i = getelementptr inbounds %struct.set_elem, ptr %n.3, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i, align 4
  %63 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %prev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !51
  %64 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %list120, ptr %65, align 4
  %67 = ptrtoint ptr %list120 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %list120, align 8
  %prev38.i.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev38.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %list120, ptr %prev38.i.i, align 4
  %70 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %net.i = getelementptr inbounds %struct.list_set, ptr %57, i32 0, i32 3
  %71 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %net.i, align 4
  %id.i = getelementptr inbounds %struct.set_elem, ptr %n.3, i32 0, i32 3
  %73 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %id.i, align 4
  tail call void @ip_set_put_byindex(ptr noundef %72, i16 noundef zeroext %74) #12
  tail call void @call_rcu(ptr noundef nonnull %n.3, ptr noundef nonnull @__list_set_del_rcu) #12
  br label %if.end138

if.else123:                                       ; preds = %if.end116
  br i1 %tobool40.not, label %if.else128, label %if.then125

if.then125:                                       ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #14
  %list127 = getelementptr inbounds %struct.set_elem, ptr %next.0.lcssa, i32 0, i32 1
  tail call fastcc void @list_add_tail_rcu(ptr noundef %list120, ptr noundef %list127)
  br label %if.end138

if.else128:                                       ; preds = %if.else123
  br i1 %tobool46.not, label %if.else133, label %if.then130

if.then130:                                       ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #14
  %list132 = getelementptr inbounds %struct.set_elem, ptr %prev.0.lcssa, i32 0, i32 1
  tail call fastcc void @list_add_rcu(ptr noundef %list120, ptr noundef %list132)
  br label %if.end138

if.else133:                                       ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @list_add_tail_rcu(ptr noundef %list120, ptr noundef %members)
  br label %if.end138

if.end138:                                        ; preds = %if.else133, %if.then130, %if.then125, %if.then122
  %elements = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 11
  %75 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %elements, align 4
  %inc = add i32 %76, 1
  store i32 %inc, ptr %elements, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end138, %if.end8.i.i.cleanup_crit_edge, %ip_set_ext_destroy.exit, %if.then50.cleanup_crit_edge, %lor.lhs.false41.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ip_set_ext_destroy.exit ], [ 0, %if.end138 ], [ -4357, %lor.lhs.false41.cleanup_crit_edge ], [ -4357, %for.end.cleanup_crit_edge ], [ -4103, %if.then50.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @list_set_udel(ptr nocapture noundef %set, ptr nocapture noundef readonly %value, ptr nocapture noundef readnone %ext, ptr nocapture noundef readnone %mext, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %members = getelementptr inbounds %struct.list_set, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %members to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn82 = load ptr, ptr %members, align 4
  %cmp.not84 = icmp eq ptr %.pn82, %members
  br i1 %cmp.not84, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %3 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %extensions, align 2
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %arrayidx = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn86 = phi ptr [ %.pn82, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %prev.085 = phi ptr [ null, %for.body.lr.ph ], [ %prev.1, %for.inc.for.body_crit_edge ]
  %e.087 = getelementptr i8, ptr %.pn86, i32 -8
  br i1 %tobool.not, label %for.body.if.else_crit_edge, label %land.lhs.true

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr3 = getelementptr i8, ptr %e.087, i32 %7
  %8 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %land.lhs.true.if.else_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.for.inc_crit_edge, label %ip_set_timeout_expired.exit.if.else_crit_edge

ip_set_timeout_expired.exit.if.else_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

ip_set_timeout_expired.exit.for.inc_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else:                                          ; preds = %ip_set_timeout_expired.exit.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %id = getelementptr i8, ptr %.pn86, i32 12
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %id, align 4
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp8.not = icmp eq i16 %12, %14
  br i1 %cmp8.not, label %if.end11, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end11:                                         ; preds = %if.else
  %id.le = getelementptr i8, ptr %.pn86, i32 12
  %before = getelementptr inbounds %struct.set_adt_elem, ptr %value, i32 0, i32 2
  %15 = ptrtoint ptr %before to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %before, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp12 = icmp sgt i32 %16, 0
  br i1 %cmp12, label %if.then14, label %if.else31

if.then14:                                        ; preds = %if.end11
  %17 = ptrtoint ptr %.pn86 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn86, align 8
  %cmp.i.not = icmp eq ptr %18, %members
  br i1 %cmp.i.not, label %if.then14.cleanup_crit_edge, label %lor.lhs.false

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then14
  %id24 = getelementptr i8, ptr %18, i32 12
  %19 = ptrtoint ptr %id24 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %id24, align 4
  %refid = getelementptr inbounds %struct.set_adt_elem, ptr %value, i32 0, i32 1
  %21 = ptrtoint ptr %refid to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %refid, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp27.not = icmp eq i16 %20, %22
  br i1 %cmp27.not, label %lor.lhs.false.if.end47_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.if.end47_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.else31:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp33 = icmp slt i32 %16, 0
  br i1 %cmp33, label %if.then35, label %if.else31.if.end47_crit_edge

if.else31.if.end47_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then35:                                        ; preds = %if.else31
  %tobool36.not = icmp eq ptr %prev.085, null
  br i1 %tobool36.not, label %if.then35.cleanup_crit_edge, label %lor.lhs.false37

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false37:                                  ; preds = %if.then35
  %id38 = getelementptr inbounds %struct.set_elem, ptr %prev.085, i32 0, i32 3
  %23 = ptrtoint ptr %id38 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %id38, align 4
  %refid40 = getelementptr inbounds %struct.set_adt_elem, ptr %value, i32 0, i32 1
  %25 = ptrtoint ptr %refid40 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %refid40, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp42.not = icmp eq i16 %24, %26
  br i1 %cmp42.not, label %lor.lhs.false37.if.end47_crit_edge, label %lor.lhs.false37.cleanup_crit_edge

lor.lhs.false37.cleanup_crit_edge:                ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false37.if.end47_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.end47:                                         ; preds = %lor.lhs.false37.if.end47_crit_edge, %if.else31.if.end47_crit_edge, %lor.lhs.false.if.end47_crit_edge
  %elements.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 11
  %27 = ptrtoint ptr %elements.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %elements.i, align 4
  %dec.i = add i32 %28, -1
  store i32 %dec.i, ptr %elements.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn86) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end47.list_set_del.exit_crit_edge

if.end47.list_set_del.exit_crit_edge:             ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_set_del.exit

if.end.i.i.i:                                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr i8, ptr %.pn86, i32 4
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i, align 4
  %31 = ptrtoint ptr %.pn86 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %.pn86, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_set_del.exit

list_set_del.exit:                                ; preds = %if.end.i.i.i, %if.end47.list_set_del.exit_crit_edge
  %prev.i.i = getelementptr i8, ptr %.pn86, i32 4
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %net.i = getelementptr inbounds %struct.list_set, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net.i, align 4
  %38 = ptrtoint ptr %id.le to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %id.le, align 4
  tail call void @ip_set_put_byindex(ptr noundef %37, i16 noundef zeroext %39) #12
  tail call void @call_rcu(ptr noundef %e.087, ptr noundef nonnull @__list_set_del_rcu) #12
  br label %cleanup

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %ip_set_timeout_expired.exit.for.inc_crit_edge
  %prev.1 = phi ptr [ %prev.085, %ip_set_timeout_expired.exit.for.inc_crit_edge ], [ %e.087, %if.else.for.inc_crit_edge ]
  %40 = ptrtoint ptr %.pn86 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn = load ptr, ptr %.pn86, align 4
  %cmp.not = icmp eq ptr %.pn, %members
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %before53 = getelementptr inbounds %struct.set_adt_elem, ptr %value, i32 0, i32 2
  %41 = ptrtoint ptr %before53 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %before53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp54.not = icmp eq i32 %42, 0
  %cond = select i1 %cmp54.not, i32 -4103, i32 -4357
  br label %cleanup

cleanup:                                          ; preds = %for.end, %list_set_del.exit, %lor.lhs.false37.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then14.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_set_del.exit ], [ %cond, %for.end ], [ -4357, %lor.lhs.false.cleanup_crit_edge ], [ -4357, %if.then14.cleanup_crit_edge ], [ -4357, %lor.lhs.false37.cleanup_crit_edge ], [ -4357, %if.then35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @list_set_utest(ptr nocapture noundef readonly %set, ptr nocapture noundef readonly %value, ptr nocapture noundef readnone %ext, ptr nocapture noundef readnone %mext, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %members = getelementptr inbounds %struct.list_set, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %members to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn75 = load ptr, ptr %members, align 4
  %cmp.not77 = icmp eq ptr %.pn75, %members
  br i1 %cmp.not77, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %3 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %extensions, align 2
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %arrayidx = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn79 = phi ptr [ %.pn75, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %prev.078 = phi ptr [ null, %for.body.lr.ph ], [ %prev.1, %for.inc.for.body_crit_edge ]
  %e.080 = getelementptr i8, ptr %.pn79, i32 -8
  br i1 %tobool.not, label %for.body.if.else_crit_edge, label %land.lhs.true

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr3 = getelementptr i8, ptr %e.080, i32 %7
  %8 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %land.lhs.true.if.else_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.for.inc_crit_edge, label %ip_set_timeout_expired.exit.if.else_crit_edge

ip_set_timeout_expired.exit.if.else_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

ip_set_timeout_expired.exit.for.inc_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else:                                          ; preds = %ip_set_timeout_expired.exit.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %id = getelementptr i8, ptr %.pn79, i32 12
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %id, align 4
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp8.not = icmp eq i16 %12, %14
  br i1 %cmp8.not, label %if.end11, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end11:                                         ; preds = %if.else
  %before = getelementptr inbounds %struct.set_adt_elem, ptr %value, i32 0, i32 2
  %15 = ptrtoint ptr %before to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %before, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp12 = icmp eq i32 %16, 0
  br i1 %cmp12, label %if.end11.cleanup_crit_edge, label %if.else15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp17 = icmp sgt i32 %16, 0
  br i1 %cmp17, label %if.then19, label %if.else34

if.then19:                                        ; preds = %if.else15
  %17 = ptrtoint ptr %.pn79 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn79, align 8
  %cmp.i.not = icmp eq ptr %18, %members
  br i1 %cmp.i.not, label %if.then19.cleanup_crit_edge, label %land.rhs

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.rhs:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %id29 = getelementptr i8, ptr %18, i32 12
  br label %cleanup.sink.split

if.else34:                                        ; preds = %if.else15
  %tobool35.not = icmp eq ptr %prev.078, null
  br i1 %tobool35.not, label %if.else34.cleanup_crit_edge, label %land.rhs36

if.else34.cleanup_crit_edge:                      ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.rhs36:                                       ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #14
  %id37 = getelementptr inbounds %struct.set_elem, ptr %prev.078, i32 0, i32 3
  br label %cleanup.sink.split

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %ip_set_timeout_expired.exit.for.inc_crit_edge
  %prev.1 = phi ptr [ %prev.078, %ip_set_timeout_expired.exit.for.inc_crit_edge ], [ %e.080, %if.else.for.inc_crit_edge ]
  %19 = ptrtoint ptr %.pn79 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn79, align 4
  %cmp.not = icmp eq ptr %.pn, %members
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.rhs36, %land.rhs
  %id29.sink = phi ptr [ %id29, %land.rhs ], [ %id37, %land.rhs36 ]
  %20 = ptrtoint ptr %id29.sink to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %id29.sink, align 4
  %refid = getelementptr inbounds %struct.set_adt_elem, ptr %value, i32 0, i32 1
  %22 = ptrtoint ptr %refid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %refid, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp32 = icmp eq i16 %21, %23
  %phi.cast = zext i1 %cmp32 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %if.else34.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.shrunk = phi i32 [ 1, %if.end11.cleanup_crit_edge ], [ 0, %if.then19.cleanup_crit_edge ], [ 0, %if.else34.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %phi.cast, %cleanup.sink.split ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0.shrunk
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_set_destroy(ptr noundef %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %2 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %extensions, align 2
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %gc = getelementptr inbounds %struct.list_set, ptr %1, i32 0, i32 1
  %call = tail call i32 @del_timer_sync(ptr noundef %gc) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %members = getelementptr inbounds %struct.list_set, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %members to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %members, align 4
  %cmp.not29 = icmp eq ptr %6, %members
  br i1 %cmp.not29, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %net = getelementptr inbounds %struct.list_set, ptr %1, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  br label %for.body

for.body:                                         ; preds = %ip_set_ext_destroy.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in30 = phi ptr [ %6, %for.body.lr.ph ], [ %.pn, %ip_set_ext_destroy.exit.for.body_crit_edge ]
  %e.0 = getelementptr i8, ptr %.pn.in30, i32 -8
  %7 = ptrtoint ptr %.pn.in30 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn.in30, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in30) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in30, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %.pn.in30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn.in30, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %14 = ptrtoint ptr %.pn.in30 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in30, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in30, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %16 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net, align 4
  %id = getelementptr i8, ptr %.pn.in30, i32 12
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %id, align 4
  tail call void @ip_set_put_byindex(ptr noundef %17, i16 noundef zeroext %19) #12
  %20 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %extensions, align 2
  %22 = and i8 %21, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %list_del.exit.ip_set_ext_destroy.exit_crit_edge, label %if.then.i

list_del.exit.ip_set_ext_destroy.exit_crit_edge:  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_ext_destroy.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %e.0, i32 %24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %25(ptr noundef %set, ptr noundef %add.ptr.i) #12
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i, %list_del.exit.ip_set_ext_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef %e.0) #12
  %cmp.not = icmp eq ptr %.pn, %members
  br i1 %cmp.not, label %ip_set_ext_destroy.exit.for.end_crit_edge, label %ip_set_ext_destroy.exit.for.body_crit_edge

ip_set_ext_destroy.exit.for.body_crit_edge:       ; preds = %ip_set_ext_destroy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

ip_set_ext_destroy.exit.for.end_crit_edge:        ; preds = %ip_set_ext_destroy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %ip_set_ext_destroy.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @kfree(ptr noundef %1) #12
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %data, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_set_flush(ptr nocapture noundef %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %members = getelementptr inbounds %struct.list_set, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %members to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %members, align 4
  %cmp.not20 = icmp eq ptr %3, %members
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %elements.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %list_set_del.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in21 = phi ptr [ %3, %for.body.lr.ph ], [ %.pn, %list_set_del.exit.for.body_crit_edge ]
  %e.0 = getelementptr i8, ptr %.pn.in21, i32 -8
  %4 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in21, align 8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %elements.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %elements.i, align 4
  %dec.i = add i32 %8, -1
  store i32 %dec.i, ptr %elements.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in21) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.list_set_del.exit_crit_edge

for.body.list_set_del.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_set_del.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr i8, ptr %.pn.in21, i32 4
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in21, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_set_del.exit

list_set_del.exit:                                ; preds = %if.end.i.i.i, %for.body.list_set_del.exit_crit_edge
  %prev.i.i = getelementptr i8, ptr %.pn.in21, i32 4
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %net.i = getelementptr inbounds %struct.list_set, ptr %6, i32 0, i32 3
  %16 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net.i, align 4
  %id.i = getelementptr i8, ptr %.pn.in21, i32 12
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %id.i, align 4
  tail call void @ip_set_put_byindex(ptr noundef %17, i16 noundef zeroext %19) #12
  tail call void @call_rcu(ptr noundef %e.0, ptr noundef nonnull @__list_set_del_rcu) #12
  %cmp.not = icmp eq ptr %.pn, %members
  br i1 %cmp.not, label %list_set_del.exit.for.end_crit_edge, label %list_set_del.exit.for.body_crit_edge

list_set_del.exit.for.body_crit_edge:             ; preds = %list_set_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_set_del.exit.for.end_crit_edge:              ; preds = %list_set_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_set_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %elements = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 11
  %20 = ptrtoint ptr %elements to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %elements, align 4
  %ext_size = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 12
  %21 = ptrtoint ptr %ext_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %ext_size, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @list_set_head(ptr noundef %set, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i.i42 = alloca i32, align 4
  %tmp.i.i40 = alloca i32, align 4
  %tmp.i.i38 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %2 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsize, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !37) #12
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !49
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b22.i = load i1, ptr @list_set_memsize.__warned, align 1
  br i1 %.b22.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @list_set_memsize.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 451, ptr noundef nonnull @.str.3) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %members.i = getelementptr inbounds %struct.list_set, ptr %1, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %do.end.i
  %n.0.i = phi i32 [ 0, %do.end.i ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %.pn.in.i = phi ptr [ %members.i, %do.end.i ], [ %.pn.i, %for.cond.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %members.i
  %inc.i = add i32 %n.0.i, 1
  br i1 %cmp.not.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %call.i23.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i23.i, label %for.end.i.list_set_memsize.exit_crit_edge, label %land.lhs.true.i26.i

for.end.i.list_set_memsize.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_set_memsize.exit

land.lhs.true.i26.i:                              ; preds = %for.end.i
  %call1.i24.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24.i)
  %tobool.not.i25.i = icmp eq i32 %call1.i24.i, 0
  br i1 %tobool.not.i25.i, label %land.lhs.true.i26.i.list_set_memsize.exit_crit_edge, label %land.lhs.true2.i28.i

land.lhs.true.i26.i.list_set_memsize.exit_crit_edge: ; preds = %land.lhs.true.i26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_set_memsize.exit

land.lhs.true2.i28.i:                             ; preds = %land.lhs.true.i26.i
  %.b4.i27.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27.i, label %land.lhs.true2.i28.i.list_set_memsize.exit_crit_edge, label %if.then.i29.i

land.lhs.true2.i28.i.list_set_memsize.exit_crit_edge: ; preds = %land.lhs.true2.i28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_set_memsize.exit

if.then.i29.i:                                    ; preds = %land.lhs.true2.i28.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #12
  br label %list_set_memsize.exit

list_set_memsize.exit:                            ; preds = %if.then.i29.i, %land.lhs.true2.i28.i.list_set_memsize.exit_crit_edge, %land.lhs.true.i26.i.list_set_memsize.exit_crit_edge, %for.end.i.list_set_memsize.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !50
  %9 = tail call i32 @llvm.read_register.i32(metadata !37) #12
  %and.i.i.i.i.i30.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i30.i to ptr
  %preempt_count.i.i.i.i31.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i31.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i31.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %mul.i = mul i32 %n.0.i, %3
  %add.i = add i32 %mul.i, 68
  %ext_size = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 12
  %13 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ext_size, align 4
  %add = add i32 %add.i, %14
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i36 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32775, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i36)
  %cmp.i.i = icmp slt i32 %call1.i.i36, 0
  %tobool.not44 = icmp eq ptr %16, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not44
  br i1 %tobool.not, label %list_set_memsize.exit.cleanup_crit_edge, label %if.end

list_set_memsize.exit.cleanup_crit_edge:          ; preds = %list_set_memsize.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %list_set_memsize.exit
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #12
  %19 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tmp.i.i, align 4
  %call.i.i37 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16407, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37)
  %tobool3.not = icmp eq i32 %call.i.i37, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %ref = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 2
  %20 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ref, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i38) #12
  %22 = ptrtoint ptr %tmp.i.i38 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tmp.i.i38, align 4
  %call.i.i39 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16409, i32 noundef 4, ptr noundef nonnull %tmp.i.i38) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i38) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39)
  %tobool5.not = icmp eq i32 %call.i.i39, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i40) #12
  %23 = ptrtoint ptr %tmp.i.i40 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %tmp.i.i40, align 4
  %call.i.i41 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16410, i32 noundef 4, ptr noundef nonnull %tmp.i.i40) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41)
  %tobool8.not = icmp eq i32 %call.i.i41, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %elements = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 11
  %24 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %elements, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i42) #12
  %26 = ptrtoint ptr %tmp.i.i42 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %tmp.i.i42, align 4
  %call.i.i43 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16408, i32 noundef 4, ptr noundef nonnull %tmp.i.i42) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i42) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i43)
  %tobool11.not = icmp eq i32 %call.i.i43, 0
  br i1 %tobool11.not, label %if.end13, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false9
  %call14 = call i32 @ip_set_put_flags(ptr noundef %skb, ptr noundef %set) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end19, label %if.end13.cleanup_crit_edge, !prof !52

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %29 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i, ptr %16, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end13.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %list_set_memsize.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -90, %if.end13.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %lor.lhs.false.cleanup_crit_edge ], [ -90, %lor.lhs.false6.cleanup_crit_edge ], [ -90, %lor.lhs.false9.cleanup_crit_edge ], [ -90, %list_set_memsize.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @list_set_list(ptr noundef %set, ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #12
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = call ptr @memset(ptr %name, i32 255, i32 32)
  %5 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32776, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not122 = icmp eq ptr %6, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not122
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = tail call i32 @llvm.read_register.i32(metadata !37) #12
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !49
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b95 = load i1, ptr @list_set_list.__warned, align 1
  br i1 %.b95, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @list_set_list.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 498, ptr noundef nonnull @.str.3) #12
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %members = getelementptr inbounds %struct.list_set, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %members to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn128 = load volatile ptr, ptr %members, align 4
  %cmp.not130 = icmp eq ptr %.pn128, %members
  br i1 %cmp.not130, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx17 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %net = getelementptr inbounds %struct.list_set, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn133 = phi ptr [ %.pn128, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %i.0131 = phi i32 [ 0, %for.body.lr.ph ], [ %i.1, %for.inc.for.body_crit_edge ]
  %e.0134 = getelementptr i8, ptr %.pn133, i32 -8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0131, i32 %3)
  %cmp14 = icmp ult i32 %i.0131, %3
  br i1 %cmp14, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %12 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %extensions, align 2
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  br i1 %tobool15.not, label %lor.lhs.false.if.end22_crit_edge, label %land.lhs.true16

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true16:                                  ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx17, align 4
  %add.ptr18 = getelementptr i8, ptr %e.0134, i32 %16
  %17 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i = icmp eq i32 %18, 0
  br i1 %cmp.not.i, label %land.lhs.true16.if.end22_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true16.if.end22_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.for.inc_crit_edge, label %ip_set_timeout_expired.exit.if.end22_crit_edge

ip_set_timeout_expired.exit.if.end22_crit_edge:   ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

ip_set_timeout_expired.exit.for.inc_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end22:                                         ; preds = %ip_set_timeout_expired.exit.if.end22_crit_edge, %land.lhs.true16.if.end22_crit_edge, %lor.lhs.false.if.end22_crit_edge
  %20 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i97 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32775, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i97)
  %cmp.i.i98 = icmp slt i32 %call1.i.i97, 0
  %tobool24.not123 = icmp eq ptr %21, null
  %tobool24.not = select i1 %cmp.i.i98, i1 true, i1 %tobool24.not123
  br i1 %tobool24.not, label %if.end22.nla_nest_cancel.exit_crit_edge, label %if.end26

if.end22.nla_nest_cancel.exit_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_nest_cancel.exit

if.end26:                                         ; preds = %if.end22
  %22 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net, align 4
  %id = getelementptr i8, ptr %.pn133, i32 12
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %id, align 4
  call void @ip_set_name_byindex(ptr noundef %23, i16 noundef zeroext %25, ptr noundef nonnull %name) #12
  %call.i100 = call i32 @strlen(ptr noundef nonnull %name) #17
  %add.i = add i32 %call.i100, 1
  %call1.i101 = call i32 @nla_put(ptr noundef %skb, i32 noundef 18, i32 noundef %add.i, ptr noundef nonnull %name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101)
  %tobool29.not = icmp eq i32 %call1.i101, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.if.then.i.i_crit_edge

if.end26.if.then.i.i_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end31:                                         ; preds = %if.end26
  %call32 = call i32 @ip_set_put_extensions(ptr noundef %skb, ptr noundef %set, ptr noundef %e.0134, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.if.then.i.i_crit_edge

if.end31.if.then.i.i_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i, ptr %21, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end35, %ip_set_timeout_expired.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i.1 = add i32 %i.0131, 1
  %29 = ptrtoint ptr %.pn133 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn = load volatile ptr, ptr %.pn133, align 4
  %cmp.not = icmp eq ptr %.pn, %members
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %30 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i103 = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i104 = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i105 = sub i32 %sub.ptr.lhs.cast.i103, %sub.ptr.rhs.cast.i104
  %conv.i106 = trunc i32 %sub.ptr.sub.i105 to i16
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i106, ptr %6, align 2
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx, align 4
  br label %out

if.then.i.i:                                      ; preds = %if.end31.if.then.i.i_crit_edge, %if.end26.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i107 = icmp ugt ptr %35, %21
  br i1 %cmp.i.i107, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !47

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %36 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #12
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %if.end.i.i, %if.end22.nla_nest_cancel.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0131, i32 %3)
  %cmp49 = icmp eq i32 %i.0131, %3
  br i1 %cmp49, label %if.then53, label %if.else, !prof !47

if.then53:                                        ; preds = %nla_nest_cancel.exit
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @nla_nest_cancel(ptr noundef %skb, ptr noundef nonnull %6)
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx, align 4
  br label %out

if.else:                                          ; preds = %nla_nest_cancel.exit
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %i.0131, ptr %arrayidx, align 4
  %40 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i109 = ptrtoint ptr %41 to i32
  %sub.ptr.rhs.cast.i110 = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i111 = sub i32 %sub.ptr.lhs.cast.i109, %sub.ptr.rhs.cast.i110
  %conv.i112 = trunc i32 %sub.ptr.sub.i111 to i16
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i112, ptr %6, align 2
  br label %out

out:                                              ; preds = %if.else, %if.then53, %for.end
  %ret.0 = phi i32 [ -90, %if.then53 ], [ 0, %if.else ], [ 0, %for.end ]
  %call.i113 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i113, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i116

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i116:                               ; preds = %out
  %call1.i114 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i114)
  %tobool.not.i115 = icmp eq i32 %call1.i114, 0
  br i1 %tobool.not.i115, label %land.lhs.true.i116.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i118

land.lhs.true.i116.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i118:                              ; preds = %land.lhs.true.i116
  %.b4.i117 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i117, label %land.lhs.true2.i118.rcu_read_unlock.exit_crit_edge, label %if.then.i119

land.lhs.true2.i118.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i118
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i119:                                     ; preds = %land.lhs.true2.i118
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i119, %land.lhs.true2.i118.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i116.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !50
  %43 = call i32 @llvm.read_register.i32(metadata !37) #12
  %and.i.i.i.i.i120 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i120 to ptr
  %preempt_count.i.i.i.i121 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i121, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i121, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ -90, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @list_set_same_set(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %a, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %data1 = getelementptr inbounds %struct.ip_set, ptr %b, i32 0, i32 15
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %timeout = getelementptr inbounds %struct.ip_set, ptr %a, i32 0, i32 10
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timeout, align 4
  %timeout3 = getelementptr inbounds %struct.ip_set, ptr %b, i32 0, i32 10
  %10 = ptrtoint ptr %timeout3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timeout3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp4 = icmp eq i32 %9, %11
  br i1 %cmp4, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %extensions = getelementptr inbounds %struct.ip_set, ptr %a, i32 0, i32 8
  %12 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %extensions, align 2
  %extensions5 = getelementptr inbounds %struct.ip_set, ptr %b, i32 0, i32 8
  %14 = ptrtoint ptr %extensions5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %extensions5, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp7 = icmp eq i8 %13, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %16 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %cmp7, %land.rhs ]
  ret i1 %16
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_test(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ip_set_match_extensions(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_add(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_del(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_get_extensions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ip_set_get_byname(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_cleanup_entries(ptr nocapture noundef %set) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %members = getelementptr inbounds %struct.list_set, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %members to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %members, align 4
  %cmp.not23 = icmp eq ptr %3, %members
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %elements.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in24 = phi ptr [ %3, %for.body.lr.ph ], [ %.pn27, %for.inc.for.body_crit_edge ]
  %e.026 = getelementptr i8, ptr %.pn.in24, i32 -8
  %4 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn27 = load ptr, ptr %.pn.in24, align 8
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add.ptr7 = getelementptr i8, ptr %e.026, i32 %6
  %7 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %for.body.for.inc_crit_edge, label %ip_set_timeout_expired.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

ip_set_timeout_expired.exit:                      ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %if.then, label %ip_set_timeout_expired.exit.for.inc_crit_edge

ip_set_timeout_expired.exit.for.inc_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %ip_set_timeout_expired.exit
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %elements.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %elements.i, align 4
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %elements.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in24) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_set_del.exit_crit_edge

if.then.list_set_del.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_set_del.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr i8, ptr %.pn.in24, i32 4
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn.in24, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_set_del.exit

list_set_del.exit:                                ; preds = %if.end.i.i.i, %if.then.list_set_del.exit_crit_edge
  %prev.i.i = getelementptr i8, ptr %.pn.in24, i32 4
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %net.i = getelementptr inbounds %struct.list_set, ptr %11, i32 0, i32 3
  %21 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net.i, align 4
  %id.i = getelementptr i8, ptr %.pn.in24, i32 12
  %23 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %id.i, align 4
  tail call void @ip_set_put_byindex(ptr noundef %22, i16 noundef zeroext %24) #12
  tail call void @call_rcu(ptr noundef %e.026, ptr noundef nonnull @__list_set_del_rcu) #12
  br label %for.inc

for.inc:                                          ; preds = %list_set_del.exit, %ip_set_timeout_expired.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn27, %members
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_set_put_byindex(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__list_set_del_rcu(ptr noundef %rcu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %set1 = getelementptr inbounds %struct.set_elem, ptr %rcu, i32 0, i32 2
  %0 = ptrtoint ptr %set1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set1, align 8
  %extensions.i = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %extensions.i, align 2
  %4 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %entry.ip_set_ext_destroy.exit_crit_edge, label %if.then.i

entry.ip_set_ext_destroy.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_ext_destroy.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.ip_set, ptr %1, i32 0, i32 14, i32 3
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %rcu, i32 %6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %7(ptr noundef %1, ptr noundef %add.ptr.i) #12
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i, %entry.ip_set_ext_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef %rcu) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_set_init_extensions(ptr noundef %set, ptr noundef %ext, ptr noundef %e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %0 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %extensions, align 2
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %offset = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 14
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %e, i32 %4
  %bytes.i = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 2
  %5 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %6)
  %cmp.not.i = icmp eq i64 %6, -1
  br i1 %cmp.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %add.ptr, i64 noundef %6) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %packets.i = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %7 = ptrtoint ptr %packets.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %packets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %8)
  %cmp3.not.i = icmp eq i64 %8, -1
  br i1 %cmp3.not.i, label %if.end.i.if.end_crit_edge, label %if.then4.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %packets5.i = getelementptr inbounds %struct.ip_set_counter, ptr %add.ptr, i32 0, i32 1
  %call.i.i13.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %packets5.i, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %packets5.i, i64 noundef %8) #12
  br label %if.end

if.end:                                           ; preds = %if.then4.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %extensions, align 2
  %11 = and i8 %10, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx7 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7, align 4
  %add.ptr8 = getelementptr i8, ptr %e, i32 %13
  tail call void @ip_set_init_comment(ptr noundef %set, ptr noundef %add.ptr8, ptr noundef %ext) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %14 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %extensions, align 2
  %16 = and i8 %15, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool13.not = icmp eq i8 %16, 0
  br i1 %tobool13.not, label %if.end9.if.end18_crit_edge, label %if.then14

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx16 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 2
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx16, align 4
  %add.ptr17 = getelementptr i8, ptr %e, i32 %18
  %19 = call ptr @memcpy(ptr %add.ptr17, ptr %ext, i32 16)
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end9.if.end18_crit_edge
  %20 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %extensions, align 2
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool22.not = icmp eq i8 %22, 0
  br i1 %tobool22.not, label %if.end18.if.end27_crit_edge, label %if.then23

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then23:                                        ; preds = %if.end18
  %arrayidx25 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %23 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx25, align 4
  %add.ptr26 = getelementptr i8, ptr %e, i32 %24
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %25 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %if.then23.ip_set_timeout_set.exit_crit_edge, label %if.else.i.i

if.then23.ip_set_timeout_set.exit_crit_edge:      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_timeout_set.exit

if.else.i.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i = mul i32 %26, 1000
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %27, %call2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp.i = icmp eq i32 %add.i, 0
  %spec.select.i = select i1 %cmp.i, i32 -1, i32 %add.i
  br label %ip_set_timeout_set.exit

ip_set_timeout_set.exit:                          ; preds = %if.else.i.i, %if.then23.ip_set_timeout_set.exit_crit_edge
  %storemerge.i = phi i32 [ %spec.select.i, %if.else.i.i ], [ 0, %if.then23.ip_set_timeout_set.exit_crit_edge ]
  %28 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %storemerge.i, ptr %add.ptr26, align 4
  br label %if.end27

if.end27:                                         ; preds = %ip_set_timeout_set.exit, %if.end18.if.end27_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_tail_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %1, ptr noundef %head) #12
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !53
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %1, align 4
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new, ptr %prev, align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %head, ptr noundef %1) #12
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !53
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %head, align 4
  %prev37.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %prev37.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new, ptr %prev37.i, align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_set_init_comment(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_put_flags(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_set_name_byindex(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_put_extensions(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nla_nest_cancel(ptr noundef %skb, ptr noundef %start) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not.i = icmp eq ptr %start, null
  br i1 %tobool.not.i, label %entry.nlmsg_trim.exit_crit_edge, label %if.then.i

entry.nlmsg_trim.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nlmsg_trim.exit

if.then.i:                                        ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %1, %start
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !47

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %start to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #12
  br label %nlmsg_trim.exit

nlmsg_trim.exit:                                  ; preds = %if.end.i, %entry.nlmsg_trim.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_type_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !23, !24, !25, !27, !28, !30, !32, !34, !36}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__UNIQUE_ID_file489, !1, !"__UNIQUE_ID_file489", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipset/ip_set_list_set.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_license490, !1, !"__UNIQUE_ID_license490", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author491, !4, !"__UNIQUE_ID_author491", i1 false, i1 false}
!4 = !{!"../net/netfilter/ipset/ip_set_list_set.c", i32 21, i32 1}
!5 = !{ptr @__UNIQUE_ID_description492, !6, !"__UNIQUE_ID_description492", i1 false, i1 false}
!6 = !{!"../net/netfilter/ipset/ip_set_list_set.c", i32 22, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias493, !8, !"__UNIQUE_ID_alias493", i1 false, i1 false}
!8 = !{!"../net/netfilter/ipset/ip_set_list_set.c", i32 23, i32 1}
!9 = !{ptr @__initcall__kmod_ip_set_list_set__504_680_list_set_init6, !10, !"__initcall__kmod_ip_set_list_set__504_680_list_set_init6", i1 false, i1 false}
!10 = !{!"../net/netfilter/ipset/ip_set_list_set.c", i32 680, i32 1}
!11 = !{ptr @__exitcall_list_set_fini, !12, !"__exitcall_list_set_fini", i1 false, i1 false}
!12 = !{!"../net/netfilter/ipset/ip_set_list_set.c", i32 681, i32 1}
!13 = !{ptr @list_set_type, !14, !"list_set_type", i1 false, i1 false}
!14 = !{!"../net/netfilter/ipset/ip_set_list_set.c", i32 634, i32 27}
!15 = !{ptr @set_variant, !16, !"set_variant", i1 false, i1 false}
!16 = !{!"../net/netfilter/ipset/ip_set_list_set.c", i32 548, i32 41}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!19 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/netfilter/ipset/ip_set_list_set.c", i32 63, i32 2}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../net/netfilter/ipset/ip_set_list_set.c", i32 451, i32 2}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../net/netfilter/ipset/ip_set_list_set.c", i32 498, i32 2}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/net/netlink.h", i32 991, i32 3}
!34 = !{ptr @list_set_gc_init.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../net/netfilter/ipset/ip_set_list_set.c", i32 582, i32 2}
!36 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{!"auto-init"}
!49 = !{i64 2149371108}
!50 = !{i64 2149371374}
!51 = !{i64 2151897437}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2151883485}

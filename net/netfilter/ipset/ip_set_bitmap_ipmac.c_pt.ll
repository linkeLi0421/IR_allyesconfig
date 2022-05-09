; ModuleID = '/llk/IR_all_yes/net/netfilter/ipset/ip_set_bitmap_ipmac.c_pt.bc'
source_filename = "../net/netfilter/ipset/ip_set_bitmap_ipmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.ip_set_type_variant = type { ptr, ptr, [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%union.nf_inet_addr = type { [4 x i32] }
%struct.bitmap_ipmac_adt_elem = type { [6 x i8], i16, i16 }
%struct.ip_set_ext_type = type { ptr, i32, i32, i8, i8 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.bitmap_ipmac = type { ptr, i32, i32, i32, i32, %struct.timer_list, ptr, [0 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.bitmap_ipmac_elem = type { [6 x i8], i8, i8 }
%struct.ip_set_ext = type { %struct.ip_set_skbinfo, i64, i64, ptr, i32, i8, i8, i8 }
%struct.ip_set_skbinfo = type { i32, i32, i32, i16, i16 }
%struct.sk_buff = type { %union.anon.82, %union.anon.151, %union.anon.152, [48 x i8], %union.anon.153, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.155, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.151 = type { ptr }
%union.anon.152 = type { i64 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i32, ptr }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.157, i32, i32, i32, i16, i16, %union.anon.159, i32, %union.anon.160, %union.anon.161, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.157 = type { i32 }
%union.anon.159 = type { i32 }
%union.anon.160 = type { i32 }
%union.anon.161 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ip_set_adt_opt = type { i8, i8, i8, i32, %struct.ip_set_ext }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ip_set_counter = type { %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_file610 = internal constant [65 x i8] c"ip_set_bitmap_ipmac.file=net/netfilter/ipset/ip_set_bitmap_ipmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license611 = internal constant [32 x i8] c"ip_set_bitmap_ipmac.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author612 = internal constant [67 x i8] c"ip_set_bitmap_ipmac.author=Jozsef Kadlecsik <kadlec@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description613 = internal constant [77 x i8] c"ip_set_bitmap_ipmac.description=bitmap:ip,mac type of IP sets, revisions 0-3\00", section ".modinfo", align 1
@__UNIQUE_ID_alias614 = internal constant [47 x i8] c"ip_set_bitmap_ipmac.alias=ip_set_bitmap:ip,mac\00", section ".modinfo", align 1
@__initcall__kmod_ip_set_bitmap_ipmac__619_422_bitmap_ipmac_init6 = internal global ptr @bitmap_ipmac_init, section ".initcall6.init", align 4
@__exitcall_bitmap_ipmac_fini = internal global ptr @bitmap_ipmac_fini, section ".exitcall.exit", align 4
@bitmap_ipmac_type = internal global { { %struct.list_head, [32 x i8], i8, i8, i8, i8, i8, [10 x i8], i16, ptr, <{ [9 x %struct.nla_policy], [18 x %struct.nla_policy] }>, [31 x %struct.nla_policy], ptr }, [140 x i8] } { { %struct.list_head, [32 x i8], i8, i8, i8, i8, i8, [10 x i8], i16, ptr, <{ [9 x %struct.nla_policy], [18 x %struct.nla_policy] }>, [31 x %struct.nla_policy], ptr } { %struct.list_head zeroinitializer, [32 x i8] c"bitmap:ip,mac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 7, i8 2, i8 2, i8 0, i8 3, [10 x i8] zeroinitializer, i16 5, ptr @bitmap_ipmac_create, <{ [9 x %struct.nla_policy], [18 x %struct.nla_policy] }> <{ [9 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }], [18 x %struct.nla_policy] zeroinitializer }>, [31 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 11, i8 0, i16 6, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 255, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer], ptr null }, [140 x i8] zeroinitializer }, align 32
@bitmap_ipmac = internal constant { %struct.ip_set_type_variant, [40 x i8] } { %struct.ip_set_type_variant { ptr @bitmap_ipmac_kadt, ptr @bitmap_ipmac_uadt, [3 x ptr] [ptr @bitmap_ipmac_add, ptr @bitmap_ipmac_del, ptr @bitmap_ipmac_test], ptr null, ptr @bitmap_ipmac_destroy, ptr @bitmap_ipmac_flush, ptr null, ptr @bitmap_ipmac_head, ptr @bitmap_ipmac_list, ptr null, ptr @bitmap_ipmac_same_set, i8 0 }, [40 x i8] zeroinitializer }, align 32
@ip_set_hostmask_map = external dso_local local_unnamed_addr constant [0 x %union.nf_inet_addr], align 4
@__const.bitmap_ipmac_kadt.e = private unnamed_addr constant %struct.bitmap_ipmac_adt_elem { [6 x i8] zeroinitializer, i16 0, i16 1 }, align 2
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ip_set_extensions = external dso_local local_unnamed_addr constant [0 x %struct.ip_set_ext_type], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/linux/sched.h\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@bitmap_ipmac_gc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"(&map->gc)\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"bitmap_ipmac_type\00", align 1
@___asan_gen_.8 = private constant [45 x i8] c"../net/netfilter/ipset/ip_set_bitmap_ipmac.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 376, i32 27 }
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"bitmap_ipmac\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 291, i32 41 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 695, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [25 x i8] c"../include/linux/sched.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 2089, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 991, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 723, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [43 x i8] c"../net/netfilter/ipset/ip_set_bitmap_gen.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 40, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias614, ptr @__UNIQUE_ID_author612, ptr @__UNIQUE_ID_description613, ptr @__UNIQUE_ID_file610, ptr @__UNIQUE_ID_license611, ptr @__exitcall_bitmap_ipmac_fini, ptr @__initcall__kmod_ip_set_bitmap_ipmac__619_422_bitmap_ipmac_init6, ptr @bitmap_ipmac_fini, ptr @bitmap_ipmac_type, ptr @bitmap_ipmac, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @bitmap_ipmac_gc_init.__key, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitmap_ipmac_type to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitmap_ipmac to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitmap_ipmac_gc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bitmap_ipmac_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rcu_barrier() #8
  tail call void @ip_set_type_unregister(ptr noundef nonnull @bitmap_ipmac_type) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_set_type_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_ipmac_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_set_type_register(ptr noundef nonnull @bitmap_ipmac_type) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_ipmac_create(ptr nocapture noundef readnone %net, ptr noundef %set, ptr noundef %tb, i32 noundef %flags) #2 align 64 {
entry:
  %ip.i111 = alloca i32, align 4
  %ip.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup66_crit_edge, label %lor.lhs.false, !prof !41

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

lor.lhs.false:                                    ; preds = %entry
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 6
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %lor.lhs.false.lor.rhs_crit_edge, label %ip_set_optattr_netorder.exit

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

ip_set_optattr_netorder.exit:                     ; preds = %lor.lhs.false
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nla_type.i, align 2
  %6 = and i16 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool2.i.not = icmp eq i16 %6, 0
  br i1 %tobool2.i.not, label %ip_set_optattr_netorder.exit.cleanup66_crit_edge, label %ip_set_optattr_netorder.exit.lor.rhs_crit_edge, !prof !41

ip_set_optattr_netorder.exit.lor.rhs_crit_edge:   ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

ip_set_optattr_netorder.exit.cleanup66_crit_edge: ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

lor.rhs:                                          ; preds = %ip_set_optattr_netorder.exit.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %arrayidx.i104 = getelementptr ptr, ptr %tb, i32 8
  %7 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i104, align 4
  %tobool.not.i105 = icmp eq ptr %8, null
  br i1 %tobool.not.i105, label %lor.rhs.if.end_crit_edge, label %ip_set_optattr_netorder.exit109

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

ip_set_optattr_netorder.exit109:                  ; preds = %lor.rhs
  %nla_type.i106 = getelementptr inbounds %struct.nlattr, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %nla_type.i106 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nla_type.i106, align 2
  %11 = and i16 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool2.i107.not = icmp eq i16 %11, 0
  br i1 %tobool2.i107.not, label %ip_set_optattr_netorder.exit109.cleanup66_crit_edge, label %ip_set_optattr_netorder.exit109.if.end_crit_edge, !prof !41

ip_set_optattr_netorder.exit109.if.end_crit_edge: ; preds = %ip_set_optattr_netorder.exit109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

ip_set_optattr_netorder.exit109.cleanup66_crit_edge: ; preds = %ip_set_optattr_netorder.exit109
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

if.end:                                           ; preds = %ip_set_optattr_netorder.exit109.if.end_crit_edge, %lor.rhs.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip.i) #8
  %12 = ptrtoint ptr %ip.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %ip.i, align 4, !annotation !42
  %call.i = call i32 @ip_set_get_ipaddr4(ptr noundef nonnull %1, ptr noundef nonnull %ip.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i110 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i110, label %if.end9, label %ip_set_get_hostipaddr4.exit

ip_set_get_hostipaddr4.exit:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i) #8
  br label %cleanup66

if.end9:                                          ; preds = %if.end
  %13 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ip.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i) #8
  %arrayidx10 = getelementptr ptr, ptr %tb, i32 2
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip.i111) #8
  %17 = ptrtoint ptr %ip.i111 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %ip.i111, align 4, !annotation !42
  %call.i112 = call i32 @ip_set_get_ipaddr4(ptr noundef nonnull %16, ptr noundef nonnull %ip.i111) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool.not.i113 = icmp eq i32 %call.i112, 0
  br i1 %tobool.not.i113, label %if.end17, label %ip_set_get_hostipaddr4.exit115

ip_set_get_hostipaddr4.exit115:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i111) #8
  br label %cleanup66

if.end17:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %ip.i111 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ip.i111, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i111) #8
  %20 = call i32 @llvm.umin.i32(i32 %14, i32 %19)
  %21 = call i32 @llvm.umax.i32(i32 %14, i32 %19)
  br label %if.end36

if.else:                                          ; preds = %if.end9
  %arrayidx20 = getelementptr ptr, ptr %tb, i32 3
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx20, align 4
  %tobool21.not = icmp eq ptr %23, null
  br i1 %tobool21.not, label %if.else.cleanup66_crit_edge, label %if.then22

if.else.cleanup66_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

if.then22:                                        ; preds = %if.else
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %25)
  %cmp25 = icmp ugt i8 %25, 31
  br i1 %cmp25, label %if.then22.cleanup66_crit_edge, label %do.body29

if.then22.cleanup66_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

do.body29:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom.i = zext i8 %25 to i32
  %arrayidx.i116 = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_hostmask_map, i32 0, i32 %idxprom.i
  %26 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i116, align 4
  %and = and i32 %27, %14
  %neg = xor i32 %27, -1
  %or = or i32 %14, %neg
  br label %if.end36

if.end36:                                         ; preds = %do.body29, %if.end17
  %first_ip.1 = phi i32 [ %and, %do.body29 ], [ %20, %if.end17 ]
  %last_ip.1 = phi i32 [ %or, %do.body29 ], [ %21, %if.end17 ]
  %conv37 = zext i32 %last_ip.1 to i64
  %conv38 = zext i32 %first_ip.1 to i64
  %sub = sub nsw i64 %conv37, %conv38
  %add = add nsw i64 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %add)
  %cmp39 = icmp ugt i64 %add, 65536
  br i1 %cmp39, label %if.end36.cleanup66_crit_edge, label %if.end42

if.end36.cleanup66_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

if.end42:                                         ; preds = %if.end36
  %call43 = call i32 @ip_set_elem_len(ptr noundef %set, ptr noundef %tb, i32 noundef 8, i32 noundef 8) #8
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %28 = ptrtoint ptr %dsize to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call43, ptr %dsize, align 4
  %29 = trunc i64 %add to i32
  %30 = mul i32 %call43, %29
  %conv47 = add i32 %30, 72
  %call48 = call ptr @ip_set_alloc(i32 noundef %conv47) #8
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end42.cleanup66_crit_edge, label %if.end51

if.end42.cleanup66_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

if.end51:                                         ; preds = %if.end42
  %sub53 = add nsw i64 %sub, 32
  %31 = lshr i64 %sub53, 3
  %32 = trunc i64 %31 to i32
  %conv55 = and i32 %32, -4
  %memsize = getelementptr inbounds %struct.bitmap_ipmac, ptr %call48, i32 0, i32 4
  %33 = ptrtoint ptr %memsize to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv55, ptr %memsize, align 8
  %variant = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 5
  %34 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @bitmap_ipmac, ptr %variant, align 4
  %call.i119 = call ptr @bitmap_zalloc(i32 noundef %29, i32 noundef 11456) #8
  %35 = ptrtoint ptr %call48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i119, ptr %call48, align 8
  %tobool.not.i120 = icmp eq ptr %call.i119, null
  br i1 %tobool.not.i120, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  call void @ip_set_free(ptr noundef nonnull %call48) #8
  br label %cleanup66

if.end59:                                         ; preds = %if.end51
  %first_ip2.i = getelementptr inbounds %struct.bitmap_ipmac, ptr %call48, i32 0, i32 1
  %36 = ptrtoint ptr %first_ip2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %first_ip.1, ptr %first_ip2.i, align 4
  %last_ip3.i = getelementptr inbounds %struct.bitmap_ipmac, ptr %call48, i32 0, i32 2
  %37 = ptrtoint ptr %last_ip3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %last_ip.1, ptr %last_ip3.i, align 8
  %elements4.i = getelementptr inbounds %struct.bitmap_ipmac, ptr %call48, i32 0, i32 3
  %38 = ptrtoint ptr %elements4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %29, ptr %elements4.i, align 4
  %timeout.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 10
  %39 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %timeout.i, align 4
  %set5.i = getelementptr inbounds %struct.bitmap_ipmac, ptr %call48, i32 0, i32 6
  %40 = ptrtoint ptr %set5.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %set, ptr %set5.i, align 4
  %data.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call48, ptr %data.i, align 4
  %family.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 6
  %42 = ptrtoint ptr %family.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %family.i, align 4
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %tobool61.not = icmp eq ptr %44, null
  br i1 %tobool61.not, label %if.end59.cleanup66_crit_edge, label %if.then62

if.end59.cleanup66_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i = getelementptr i8, ptr %44, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %47 = call i32 @llvm.umin.i32(i32 %46, i32 2147483) #8
  %48 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %timeout.i, align 4
  call fastcc void @bitmap_ipmac_gc_init(ptr noundef %set)
  br label %cleanup66

cleanup66:                                        ; preds = %if.then62, %if.end59.cleanup66_crit_edge, %if.then58, %if.end42.cleanup66_crit_edge, %if.end36.cleanup66_crit_edge, %if.then22.cleanup66_crit_edge, %if.else.cleanup66_crit_edge, %ip_set_get_hostipaddr4.exit115, %ip_set_get_hostipaddr4.exit, %ip_set_optattr_netorder.exit109.cleanup66_crit_edge, %ip_set_optattr_netorder.exit.cleanup66_crit_edge, %entry.cleanup66_crit_edge
  %retval.1 = phi i32 [ -12, %if.then58 ], [ -4097, %ip_set_optattr_netorder.exit109.cleanup66_crit_edge ], [ %call.i, %ip_set_get_hostipaddr4.exit ], [ %call.i112, %ip_set_get_hostipaddr4.exit115 ], [ -4097, %if.else.cleanup66_crit_edge ], [ -4353, %if.end36.cleanup66_crit_edge ], [ -12, %if.end42.cleanup66_crit_edge ], [ 0, %if.then62 ], [ 0, %if.end59.cleanup66_crit_edge ], [ -4104, %if.then22.cleanup66_crit_edge ], [ -4097, %ip_set_optattr_netorder.exit.cleanup66_crit_edge ], [ -4097, %entry.cleanup66_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_elem_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_set_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_set_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bitmap_ipmac_gc_init(ptr nocapture noundef readonly %set) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %gc1 = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 5
  tail call void @init_timer_key(ptr noundef %gc1, ptr noundef nonnull @bitmap_ipmac_gc, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @bitmap_ipmac_gc_init.__key) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %timeout = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 10
  %3 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeout, align 4
  %div = udiv i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %5 = icmp ult i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 540, i32 %4)
  %cmp = icmp ult i32 %4, 540
  %div.op = mul i32 %div, 100
  %div..op = select i1 %cmp, i32 %div.op, i32 18000
  %mul = select i1 %5, i32 100, i32 %div..op
  %add = add i32 %mul, %2
  %call = tail call i32 @mod_timer(ptr noundef %gc1, i32 noundef %add) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bitmap_ipmac_gc(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -20
  %set1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %set1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set1, align 4
  %lock = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %elements = getelementptr i8, ptr %t, i32 -8
  %2 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %elements, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp49.not = icmp eq i32 %3, 0
  br i1 %cmp49.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dsize = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 13
  %extensions.i = getelementptr i8, ptr %t, i32 52
  %arrayidx = getelementptr %struct.ip_set, ptr %1, i32 0, i32 14, i32 1
  %extensions.i43 = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 8
  %arrayidx.i = getelementptr %struct.ip_set, ptr %1, i32 0, i32 14, i32 3
  %elements7 = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %id.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsize, align 4
  %conv.i = and i32 %id.050, 65535
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %div3.i.i = lshr i32 %conv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %7, i32 %div3.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %id.050, 31
  %10 = shl nuw i32 1, %and.i.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %bitmap_ipmac_gc_test.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

bitmap_ipmac_gc_test.exit:                        ; preds = %for.body
  %mul.i = mul i32 %5, %conv.i
  %add.ptr.i = getelementptr i8, ptr %extensions.i, i32 %mul.i
  %filled.i = getelementptr inbounds %struct.bitmap_ipmac_elem, ptr %add.ptr.i, i32 0, i32 1
  %12 = ptrtoint ptr %filled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %filled.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp.i.not = icmp eq i8 %13, 1
  br i1 %cmp.i.not, label %if.then, label %bitmap_ipmac_gc_test.exit.for.inc_crit_edge

bitmap_ipmac_gc_test.exit.for.inc_crit_edge:      ; preds = %bitmap_ipmac_gc_test.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %bitmap_ipmac_gc_test.exit
  %mul = mul i32 %5, %id.050
  %add.ptr3 = getelementptr i8, ptr %extensions.i, i32 %mul
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add.ptr4 = getelementptr i8, ptr %add.ptr3, i32 %15
  %16 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %if.then.for.inc_crit_edge, label %ip_set_timeout_expired.exit

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

ip_set_timeout_expired.exit:                      ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %if.then6, label %ip_set_timeout_expired.exit.for.inc_crit_edge

ip_set_timeout_expired.exit.for.inc_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then6:                                         ; preds = %ip_set_timeout_expired.exit
  tail call void @_clear_bit(i32 noundef %id.050, ptr noundef %7) #8
  %19 = ptrtoint ptr %extensions.i43 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %extensions.i43, align 2
  %21 = and i8 %20, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i44 = icmp eq i8 %21, 0
  br i1 %tobool.not.i44, label %if.then6.ip_set_ext_destroy.exit_crit_edge, label %if.then.i

if.then6.ip_set_ext_destroy.exit_crit_edge:       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_set_ext_destroy.exit

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %add.ptr3, i32 %23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %24(ptr noundef %1, ptr noundef %add.ptr.i45) #8
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i, %if.then6.ip_set_ext_destroy.exit_crit_edge
  %25 = ptrtoint ptr %elements7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %elements7, align 4
  %dec = add i32 %26, -1
  store i32 %dec, ptr %elements7, align 4
  br label %for.inc

for.inc:                                          ; preds = %ip_set_ext_destroy.exit, %ip_set_timeout_expired.exit.for.inc_crit_edge, %if.then.for.inc_crit_edge, %bitmap_ipmac_gc_test.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %id.050, 1
  %27 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %elements, align 4
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %timeout = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 10
  %30 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %timeout, align 4
  %div = udiv i32 %31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %32 = icmp ult i32 %31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 540, i32 %31)
  %cmp14 = icmp ult i32 %31, 540
  %div.op = mul i32 %div, 100
  %div..op = select i1 %cmp14, i32 %div.op, i32 18000
  %mul20 = select i1 %32, i32 100, i32 %div..op
  %add = add i32 %mul20, %29
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %33 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_get_ipaddr4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_ipmac_kadt(ptr noundef %set, ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %par, i32 noundef %adt, ptr noundef %opt) #2 align 64 {
entry:
  %e = alloca %struct.bitmap_ipmac_adt_elem, align 4
  %ext = alloca %struct.ip_set_ext, align 8
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %e) #8
  %6 = call ptr @memcpy(ptr %e, ptr @__const.bitmap_ipmac_kadt.e, i32 10)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ext) #8
  %7 = getelementptr inbounds i8, ptr %ext, i32 40
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %7, align 8, !annotation !42
  %9 = call ptr @memset(ptr %ext, i32 0, i32 16)
  %packets = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %10 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1, ptr %packets, align 8
  %bytes = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %conv = zext i32 %12 to i64
  %13 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %bytes, align 8
  %comment = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 3
  %14 = ptrtoint ptr %comment to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %comment, align 8
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %ext2 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4
  %timeout3 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %timeout3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %timeout3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.not = icmp eq i32 %16, -1
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %timeout7 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 10
  %17 = ptrtoint ptr %timeout7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %timeout7, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %18, %cond.false ], [ %16, %entry.cond.end_crit_edge ]
  %19 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond, ptr %timeout, align 4
  %packets_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 5
  %20 = ptrtoint ptr %packets_op to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %packets_op, align 8
  %bytes_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 6
  %21 = ptrtoint ptr %bytes_op to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %bytes_op, align 1
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %22 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %target, align 2
  %flags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 2
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags, align 2
  %25 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %26 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %28 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %29 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 %conv.i.i.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %cond.in.i = select i1 %tobool.not, ptr %daddr.i, ptr %saddr.i
  %30 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %first_ip = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %first_ip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %first_ip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %32)
  %cmp9 = icmp ult i32 %cond.i, %32
  br i1 %cmp9, label %cond.end.cleanup_crit_edge, label %lor.lhs.false

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %cond.end
  %last_ip = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %last_ip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %last_ip, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %34)
  %cmp11 = icmp ugt i32 %cond.i, %34
  br i1 %cmp11, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %35 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %36 to i32
  %add.ptr.i = getelementptr i8, ptr %27, i32 %conv.i
  %cmp14 = icmp ult ptr %add.ptr.i, %27
  br i1 %cmp14, label %if.end.cleanup_crit_edge, label %lor.lhs.false16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false16:                                  ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 14
  %data18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %37 = ptrtoint ptr %data18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data18, align 4
  %cmp19 = icmp ugt ptr %add.ptr, %38
  br i1 %cmp19, label %lor.lhs.false16.cleanup_crit_edge, label %if.end22

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false16
  %sub.i = sub i32 %cond.i, %32
  %conv24 = trunc i32 %sub.i to i16
  %id = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, ptr %e, i32 0, i32 1
  %39 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv24, ptr %id, align 2
  %40 = and i8 %24, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool28.not = icmp eq i8 %40, 0
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i, i32 0, i32 1
  %spec.select = select i1 %tobool28.not, ptr %add.ptr.i, ptr %h_source
  %41 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %41)
  %storemerge = load i32, ptr %spec.select, align 4
  %42 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %storemerge, ptr %e, align 4
  %.sink.in = getelementptr i8, ptr %spec.select, i32 4
  %43 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %43)
  %.sink = load i16, ptr %.sink.in, align 2
  %44 = getelementptr inbounds i8, ptr %e, i32 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %.sink, ptr %44, align 4
  %conv.i79 = zext i16 %.sink to i32
  %or.i = or i32 %storemerge, %conv.i79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end22.cleanup_crit_edge, label %if.end41

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %cmdflags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 3
  %46 = ptrtoint ptr %cmdflags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cmdflags, align 4
  %call43 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef %ext2, i32 noundef %47) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end22.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.end41 ], [ -4352, %lor.lhs.false.cleanup_crit_edge ], [ -4352, %cond.end.cleanup_crit_edge ], [ -22, %lor.lhs.false16.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ext) #8
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %e) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_ipmac_uadt(ptr noundef %set, ptr noundef %tb, i32 noundef %adt, ptr nocapture noundef writeonly %lineno, i32 noundef %flags, i1 noundef zeroext %retried) #2 align 64 {
entry:
  %ip.i = alloca i32, align 4
  %e = alloca %struct.bitmap_ipmac_adt_elem, align 2
  %ext = alloca %struct.ip_set_ext, align 8
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %e) #8
  %6 = call ptr @memset(ptr %e, i32 0, i32 10)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ext) #8
  %7 = getelementptr inbounds i8, ptr %ext, i32 40
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %7, align 8, !annotation !42
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
  %arrayidx3 = getelementptr ptr, ptr %tb, i32 9
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i, align 4
  %22 = ptrtoint ptr %lineno to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %lineno, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx5 = getelementptr ptr, ptr %tb, i32 1
  %23 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %24, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end11, !prof !41

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip.i) #8
  %25 = ptrtoint ptr %ip.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %ip.i, align 4, !annotation !42
  %call.i = call i32 @ip_set_get_ipaddr4(ptr noundef nonnull %24, ptr noundef nonnull %ip.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end16, label %ip_set_get_hostipaddr4.exit

ip_set_get_hostipaddr4.exit:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %26 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ip.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i) #8
  %call17 = call i32 @ip_set_get_extensions(ptr noundef %set, ptr noundef %tb, ptr noundef nonnull %ext) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %first_ip = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %first_ip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %first_ip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp = icmp ult i32 %27, %29
  br i1 %cmp, label %if.end20.cleanup_crit_edge, label %lor.lhs.false

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end20
  %last_ip = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %last_ip to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %last_ip, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %31)
  %cmp21 = icmp ugt i32 %27, %31
  br i1 %cmp21, label %lor.lhs.false.cleanup_crit_edge, label %if.end23

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false
  %sub.i = sub i32 %27, %29
  %conv = trunc i32 %sub.i to i16
  %id = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, ptr %e, i32 0, i32 1
  %32 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv, ptr %id, align 2
  %arrayidx25 = getelementptr ptr, ptr %tb, i32 17
  %33 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %34, null
  br i1 %tobool26.not, label %if.end23.if.end36_crit_edge, label %if.then27

if.end23.if.end36_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then27:                                        ; preds = %if.end23
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %34, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %36)
  %cmp30.not = icmp eq i16 %36, 10
  br i1 %cmp30.not, label %if.end33, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %34, i32 4
  %37 = call ptr @memcpy(ptr %e, ptr %add.ptr.i, i32 6)
  %add_mac = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, ptr %e, i32 0, i32 2
  %38 = ptrtoint ptr %add_mac to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %add_mac, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %if.end23.if.end36_crit_edge
  %call37 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef nonnull %ext, i32 noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4103, i32 %call37)
  %cmp.i = icmp eq i32 %call37, -4103
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %39 = and i1 %tobool.i, %cmp.i
  %spec.select = select i1 %39, i32 0, i32 %call37
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then27.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %ip_set_get_hostipaddr4.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end36 ], [ -4097, %if.end.cleanup_crit_edge ], [ %call.i, %ip_set_get_hostipaddr4.exit ], [ %call17, %if.end16.cleanup_crit_edge ], [ -4352, %lor.lhs.false.cleanup_crit_edge ], [ -4352, %if.end20.cleanup_crit_edge ], [ -4097, %if.then27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ext) #8
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %e) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_ipmac_add(ptr noundef %set, ptr nocapture noundef readonly %value, ptr noundef %ext, ptr nocapture noundef readnone %mext, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %extensions = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 7
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %2 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsize, align 4
  %id = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, ptr %value, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id, align 2
  %conv = zext i16 %5 to i32
  %mul = mul i32 %3, %conv
  %add.ptr = getelementptr i8, ptr %extensions, i32 %mul
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %div3.i.i = lshr i32 %conv, 5
  %arrayidx.i.i = getelementptr i32, ptr %7, i32 %div3.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv, 31
  %10 = shl nuw i32 1, %and.i.i
  %11 = and i32 %10, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.else44.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %filled.i = getelementptr inbounds %struct.bitmap_ipmac_elem, ptr %add.ptr, i32 0, i32 1
  %12 = ptrtoint ptr %filled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %filled.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp.i = icmp eq i8 %13, 1
  %add_mac.i = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, ptr %value, i32 0, i32 2
  %14 = ptrtoint ptr %add_mac.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add_mac.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool7.not.i = icmp eq i16 %15, 0
  br i1 %cmp.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then.i
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = or i1 %tobool8.not.i, %tobool7.not.i
  br i1 %or.cond.i, label %if.then5.i.if.then_crit_edge, label %land.lhs.true9.i

if.then5.i.if.then_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true9.i:                                 ; preds = %if.then5.i
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value, align 4
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 4
  %xor.i.i = xor i32 %19, %17
  %add.ptr.i.i = getelementptr i8, ptr %value, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr, i32 4
  %22 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %23, %21
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true9.i.if.then_crit_edge, label %if.then14.i

land.lhs.true9.i.if.then_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then14.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  %24 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value, align 4
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %add.ptr, align 4
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i, align 2
  %29 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %add.ptr1.i.i, align 2
  br label %if.then

if.else.i:                                        ; preds = %if.then.i
  br i1 %tobool7.not.i, label %if.else.i.if.then_crit_edge, label %if.end15.thread123

if.else.i.if.then_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end15.thread123:                               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !44
  %30 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %value, align 4
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %add.ptr, align 4
  %add.ptr.i78.i = getelementptr i8, ptr %value, i32 4
  %33 = ptrtoint ptr %add.ptr.i78.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i78.i, align 2
  %add.ptr1.i79.i = getelementptr i8, ptr %add.ptr, i32 4
  %35 = ptrtoint ptr %add.ptr1.i79.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %add.ptr1.i79.i, align 2
  %36 = ptrtoint ptr %filled.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %filled.i, align 2
  br label %if.then18

if.else44.i:                                      ; preds = %entry
  %add_mac45.i = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, ptr %value, i32 0, i32 2
  %37 = ptrtoint ptr %add_mac45.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add_mac45.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool46.not.i = icmp eq i16 %38, 0
  br i1 %tobool46.not.i, label %if.end54.i, label %if.then47.i

if.then47.i:                                      ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %value, align 4
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %add.ptr, align 4
  %add.ptr.i80.i = getelementptr i8, ptr %value, i32 4
  %42 = ptrtoint ptr %add.ptr.i80.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i80.i, align 2
  %add.ptr1.i81.i = getelementptr i8, ptr %add.ptr, i32 4
  %44 = ptrtoint ptr %add.ptr1.i81.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %add.ptr1.i81.i, align 2
  %filled52.i = getelementptr inbounds %struct.bitmap_ipmac_elem, ptr %add.ptr, i32 0, i32 1
  %45 = ptrtoint ptr %filled52.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %filled52.i, align 2
  br label %if.end21

if.end54.i:                                       ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #10
  %filled55.i = getelementptr inbounds %struct.bitmap_ipmac_elem, ptr %add.ptr, i32 0, i32 1
  %46 = ptrtoint ptr %filled55.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %filled55.i, align 2
  br label %if.end21

if.then:                                          ; preds = %if.else.i.if.then_crit_edge, %if.then14.i, %land.lhs.true9.i.if.then_crit_edge, %if.then5.i.if.then_crit_edge
  %extensions3 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %47 = ptrtoint ptr %extensions3 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %extensions3, align 2
  %49 = and i8 %48, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not = icmp eq i8 %49, 0
  br i1 %tobool.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %arrayidx = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx, align 4
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %51
  %52 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.not.i = icmp eq i32 %53, 0
  br i1 %cmp.not.i, label %land.lhs.true.if.else_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %53, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %if.then8, label %ip_set_timeout_expired.exit.if.else_crit_edge

ip_set_timeout_expired.exit.if.else_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then8:                                         ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #10
  %elements = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 11
  %55 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %elements, align 4
  %dec = add i32 %56, -1
  store i32 %dec, ptr %elements, align 4
  br label %if.end14

if.else:                                          ; preds = %ip_set_timeout_expired.exit.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %and9 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then11, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %id, align 2
  %conv13 = zext i16 %58 to i32
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 8
  tail call void @_set_bit(i32 noundef %conv13, ptr noundef %60) #8
  br label %cleanup

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.then8
  %cmp16 = phi i1 [ true, %if.else.if.end14_crit_edge ], [ false, %if.then8 ]
  %61 = and i8 %48, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i104 = icmp eq i8 %61, 0
  br i1 %tobool.not.i104, label %if.end14.if.end15_crit_edge, label %if.then.i106

if.end14.if.end15_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then.i106:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %add.ptr, i32 %63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %64(ptr noundef %set, ptr noundef %add.ptr.i105) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then.i106, %if.end14.if.end15_crit_edge
  br i1 %cmp16, label %if.end15.if.then18_crit_edge, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end15.if.then18_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.then18:                                        ; preds = %if.end15.if.then18_crit_edge, %if.end15.thread123
  %ret.1126 = phi i32 [ 2, %if.end15.thread123 ], [ 1, %if.end15.if.then18_crit_edge ]
  %elements19 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 11
  %65 = ptrtoint ptr %elements19 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %elements19, align 4
  %dec20 = add i32 %66, -1
  store i32 %dec20, ptr %elements19, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge, %if.end54.i, %if.then47.i
  %ret.1122 = phi i32 [ %ret.1126, %if.then18 ], [ 0, %if.end15.if.end21_crit_edge ], [ -1, %if.end54.i ], [ 0, %if.then47.i ]
  %extensions22 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %67 = ptrtoint ptr %extensions22 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %extensions22, align 2
  %69 = and i8 %68, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool25.not = icmp eq i8 %69, 0
  br i1 %tobool25.not, label %if.end21.if.end31_crit_edge, label %if.then26

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then26:                                        ; preds = %if.end21
  %arrayidx28 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %70 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx28, align 4
  %add.ptr29 = getelementptr i8, ptr %add.ptr, i32 %71
  %timeout1.i = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %72 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %timeout1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.1122)
  %cmp.i107 = icmp eq i32 %ret.1122, 2
  br i1 %cmp.i107, label %if.then.i108, label %if.else.i112

if.then.i108:                                     ; preds = %if.then26
  %timeout2.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 10
  %74 = ptrtoint ptr %timeout2.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %timeout2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp3.i = icmp eq i32 %73, %75
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i108.if.end.i_crit_edge

if.then.i108.if.end.i_crit_edge:                  ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr29, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i108.if.end.i_crit_edge
  %t.0.i = phi i32 [ %77, %if.then4.i ], [ %73, %if.then.i108.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i)
  %tobool.not.i.i = icmp eq i32 %t.0.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.bitmap_ipmac_add_timeout.exit_crit_edge, label %if.else.i.i.i

if.end.i.bitmap_ipmac_add_timeout.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bitmap_ipmac_add_timeout.exit

if.else.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i.i = mul i32 %t.0.i, 1000
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %78 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %78, %call2.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp.i.i109 = icmp eq i32 %add.i.i, 0
  %spec.select.i.i = select i1 %cmp.i.i109, i32 -1, i32 %add.i.i
  br label %bitmap_ipmac_add_timeout.exit

if.else.i112:                                     ; preds = %if.then26
  %add_mac.i110 = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, ptr %value, i32 0, i32 2
  %79 = ptrtoint ptr %add_mac.i110 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %add_mac.i110, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool.not.i111 = icmp eq i16 %80, 0
  br i1 %tobool.not.i111, label %if.else.i112.bitmap_ipmac_add_timeout.exit_crit_edge, label %if.then5.i113

if.else.i112.bitmap_ipmac_add_timeout.exit_crit_edge: ; preds = %if.else.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %bitmap_ipmac_add_timeout.exit

if.then5.i113:                                    ; preds = %if.else.i112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i1.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i1.i, label %if.then5.i113.bitmap_ipmac_add_timeout.exit_crit_edge, label %if.else.i.i10.i

if.then5.i113.bitmap_ipmac_add_timeout.exit_crit_edge: ; preds = %if.then5.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %bitmap_ipmac_add_timeout.exit

if.else.i.i10.i:                                  ; preds = %if.then5.i113
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i2.i = mul i32 %73, 1000
  %call2.i.i9.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul.i2.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %add.i12.i = add i32 %81, %call2.i.i9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i12.i)
  %cmp.i13.i = icmp eq i32 %add.i12.i, 0
  %spec.select.i14.i = select i1 %cmp.i13.i, i32 -1, i32 %add.i12.i
  br label %bitmap_ipmac_add_timeout.exit

bitmap_ipmac_add_timeout.exit:                    ; preds = %if.else.i.i10.i, %if.then5.i113.bitmap_ipmac_add_timeout.exit_crit_edge, %if.else.i112.bitmap_ipmac_add_timeout.exit_crit_edge, %if.else.i.i.i, %if.end.i.bitmap_ipmac_add_timeout.exit_crit_edge
  %storemerge.i16.sink.i = phi i32 [ %spec.select.i.i, %if.else.i.i.i ], [ 0, %if.end.i.bitmap_ipmac_add_timeout.exit_crit_edge ], [ %spec.select.i14.i, %if.else.i.i10.i ], [ 0, %if.then5.i113.bitmap_ipmac_add_timeout.exit_crit_edge ], [ %73, %if.else.i112.bitmap_ipmac_add_timeout.exit_crit_edge ]
  %82 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %storemerge.i16.sink.i, ptr %add.ptr29, align 4
  br label %if.end31

if.end31:                                         ; preds = %bitmap_ipmac_add_timeout.exit, %if.end21.if.end31_crit_edge
  %83 = ptrtoint ptr %extensions22 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %extensions22, align 2
  %85 = and i8 %84, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool35.not = icmp eq i8 %85, 0
  br i1 %tobool35.not, label %if.end31.if.end40_crit_edge, label %if.then36

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then36:                                        ; preds = %if.end31
  %offset37 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 14
  %86 = ptrtoint ptr %offset37 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %offset37, align 4
  %add.ptr39 = getelementptr i8, ptr %add.ptr, i32 %87
  %bytes.i = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 2
  %88 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %89)
  %cmp.not.i114 = icmp eq i64 %89, -1
  br i1 %cmp.not.i114, label %if.then36.if.end.i116_crit_edge, label %if.then.i115

if.then36.if.end.i116_crit_edge:                  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i116

if.then.i115:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr39, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %add.ptr39, i64 noundef %89) #8
  br label %if.end.i116

if.end.i116:                                      ; preds = %if.then.i115, %if.then36.if.end.i116_crit_edge
  %packets.i = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %90 = ptrtoint ptr %packets.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %packets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %91)
  %cmp3.not.i = icmp eq i64 %91, -1
  br i1 %cmp3.not.i, label %if.end.i116.if.end40_crit_edge, label %if.then4.i117

if.end.i116.if.end40_crit_edge:                   ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then4.i117:                                    ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #10
  %packets5.i = getelementptr inbounds %struct.ip_set_counter, ptr %add.ptr39, i32 0, i32 1
  %call.i.i13.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %packets5.i, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %packets5.i, i64 noundef %91) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then4.i117, %if.end.i116.if.end40_crit_edge, %if.end31.if.end40_crit_edge
  %92 = ptrtoint ptr %extensions22 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %extensions22, align 2
  %94 = and i8 %93, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool44.not = icmp eq i8 %94, 0
  br i1 %tobool44.not, label %if.end40.if.end49_crit_edge, label %if.then45

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx47 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %95 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx47, align 4
  %add.ptr48 = getelementptr i8, ptr %add.ptr, i32 %96
  tail call void @ip_set_init_comment(ptr noundef %set, ptr noundef %add.ptr48, ptr noundef %ext) #8
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.end40.if.end49_crit_edge
  %97 = ptrtoint ptr %extensions22 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %extensions22, align 2
  %99 = and i8 %98, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool53.not = icmp eq i8 %99, 0
  br i1 %tobool53.not, label %if.end49.if.end58_crit_edge, label %if.then54

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx56 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 2
  %100 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx56, align 4
  %add.ptr57 = getelementptr i8, ptr %add.ptr, i32 %101
  %102 = call ptr @memcpy(ptr %add.ptr57, ptr %ext, i32 16)
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.end49.if.end58_crit_edge
  %103 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %id, align 2
  %conv60 = zext i16 %104 to i32
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 8
  tail call void @_set_bit(i32 noundef %conv60, ptr noundef %106) #8
  %elements62 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 11
  %107 = ptrtoint ptr %elements62 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %elements62, align 4
  %inc = add i32 %108, 1
  store i32 %inc, ptr %elements62, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then11
  %retval.0 = phi i32 [ 0, %if.end58 ], [ -4103, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_ipmac_del(ptr noundef %set, ptr nocapture noundef readonly %value, ptr nocapture noundef readnone %ext, ptr nocapture noundef readnone %mext, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %extensions = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 7
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %2 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsize, align 4
  %id = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, ptr %value, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id, align 2
  %conv = zext i16 %5 to i32
  %mul = mul i32 %3, %conv
  %add.ptr = getelementptr i8, ptr %extensions, i32 %mul
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef %conv, ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %extensions.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %8 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %extensions.i, align 2
  %10 = and i8 %9, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i19 = icmp eq i8 %10, 0
  br i1 %tobool.not.i19, label %if.end.ip_set_ext_destroy.exit_crit_edge, label %if.then.i

if.end.ip_set_ext_destroy.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_set_ext_destroy.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %13(ptr noundef %set, ptr noundef %add.ptr.i) #8
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i, %if.end.ip_set_ext_destroy.exit_crit_edge
  %elements = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 11
  %14 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %elements, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %elements, align 4
  %16 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %extensions.i, align 2
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool3.not = icmp eq i8 %18, 0
  br i1 %tobool3.not, label %ip_set_ext_destroy.exit.if.end8_crit_edge, label %land.lhs.true

ip_set_ext_destroy.exit.if.end8_crit_edge:        ; preds = %ip_set_ext_destroy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

land.lhs.true:                                    ; preds = %ip_set_ext_destroy.exit
  %arrayidx = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %20
  %21 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 0
  br i1 %cmp.not.i, label %land.lhs.true.if.end8_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %22, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.cleanup_crit_edge, label %ip_set_timeout_expired.exit.if.end8_crit_edge

ip_set_timeout_expired.exit.if.end8_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

ip_set_timeout_expired.exit.cleanup_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %ip_set_timeout_expired.exit.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %ip_set_ext_destroy.exit.if.end8_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %ip_set_timeout_expired.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -4103, %entry.cleanup_crit_edge ], [ -4103, %ip_set_timeout_expired.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_ipmac_test(ptr noundef %set, ptr nocapture noundef readonly %value, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %2 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsize, align 4
  %id = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, ptr %value, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id, align 2
  %conv.i = zext i16 %5 to i32
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %div3.i.i = lshr i32 %conv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %7, i32 %div3.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv.i, 31
  %10 = shl nuw i32 1, %and.i.i
  %11 = and i32 %10, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %extensions.i = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 7
  %mul.i = mul i32 %3, %conv.i
  %add.ptr.i = getelementptr i8, ptr %extensions.i, i32 %mul.i
  %add_mac.i = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, ptr %value, i32 0, i32 2
  %12 = ptrtoint ptr %add_mac.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add_mac.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool4.not.i = icmp eq i16 %13, 0
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %land.lhs.true.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %filled.i = getelementptr inbounds %struct.bitmap_ipmac_elem, ptr %add.ptr.i, i32 0, i32 1
  %14 = ptrtoint ptr %filled.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %filled.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp.i = icmp eq i8 %15, 1
  br i1 %cmp.i, label %bitmap_ipmac_do_test.exit, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

bitmap_ipmac_do_test.exit:                        ; preds = %land.lhs.true.i
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value, align 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  %xor.i.i = xor i32 %19, %17
  %add.ptr.i.i = getelementptr i8, ptr %value, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %22 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %23, %21
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %bitmap_ipmac_do_test.exit.cleanup_crit_edge

bitmap_ipmac_do_test.exit.cleanup_crit_edge:      ; preds = %bitmap_ipmac_do_test.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %bitmap_ipmac_do_test.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call zeroext i1 @ip_set_match_extensions(ptr noundef %set, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags, ptr noundef %add.ptr.i) #8
  %conv4 = zext i1 %call3 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %bitmap_ipmac_do_test.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv4, %if.end ], [ 0, %bitmap_ipmac_do_test.exit.cleanup_crit_edge ], [ -11, %if.end.i.cleanup_crit_edge ], [ -11, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bitmap_ipmac_destroy(ptr noundef %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %gc = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 5
  %call = tail call i32 @del_timer_sync(ptr noundef %gc) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %5 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %7 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %extensions, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool5.not = icmp sgt i8 %8, -1
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %if.then6

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %elements.i = getelementptr inbounds %struct.bitmap_ipmac, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %elements.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %elements.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp9.not.i = icmp eq i32 %12, 0
  br i1 %cmp9.not.i, label %if.then6.if.end7_crit_edge, label %for.body.lr.ph.i

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.body.lr.ph.i:                                 ; preds = %if.then6
  %extensions.i = getelementptr inbounds %struct.bitmap_ipmac, ptr %10, i32 0, i32 7
  %arrayidx.i8.i = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %id.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 8
  %div3.i.i = lshr i32 %id.010.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %14, i32 %div3.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %id.010.i, 31
  %17 = shl nuw i32 1, %and.i.i
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %19 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %extensions, align 2
  %21 = and i8 %20, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dsize, align 4
  %mul.i = mul i32 %23, %id.010.i
  %add.ptr.i = getelementptr i8, ptr %extensions.i, i32 %mul.i
  %24 = ptrtoint ptr %arrayidx.i8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i8.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %26(ptr noundef %set, ptr noundef %add.ptr.i.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %id.010.i, 1
  %27 = ptrtoint ptr %elements.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %elements.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %28
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end7_crit_edge

for.inc.i.if.end7_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end7:                                          ; preds = %for.inc.i.if.end7_crit_edge, %if.then6.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  tail call void @ip_set_free(ptr noundef %30) #8
  tail call void @ip_set_free(ptr noundef %1) #8
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %data, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bitmap_ipmac_flush(ptr noundef %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %2 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %extensions, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not = icmp sgt i8 %3, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %elements.i = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %elements.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %elements.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9.not.i = icmp eq i32 %5, 0
  br i1 %cmp9.not.i, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %extensions.i = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 7
  %dsize.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %arrayidx.i8.i = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %id.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %div3.i.i = lshr i32 %id.010.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %7, i32 %div3.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %id.010.i, 31
  %10 = shl nuw i32 1, %and.i.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %12 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %extensions, align 2
  %14 = and i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %dsize.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dsize.i, align 4
  %mul.i = mul i32 %16, %id.010.i
  %add.ptr.i = getelementptr i8, ptr %extensions.i, i32 %mul.i
  %17 = ptrtoint ptr %arrayidx.i8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i8.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %19(ptr noundef %set, ptr noundef %add.ptr.i.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %id.010.i, 1
  %20 = ptrtoint ptr %elements.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %elements.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %21
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %elements = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %elements, align 4
  %sub.i = add i32 %25, 31
  %26 = lshr i32 %sub.i, 3
  %mul.i7 = and i32 %26, 536870908
  %27 = call ptr @memset(ptr %23, i32 0, i32 %mul.i7)
  %elements1 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 11
  %28 = ptrtoint ptr %elements1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %elements1, align 4
  %ext_size = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 12
  %29 = ptrtoint ptr %ext_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %ext_size, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_ipmac_head(ptr noundef %set, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i.i38 = alloca i32, align 4
  %tmp.i.i36 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp.i.i.i5.i = alloca i32, align 4
  %tmp.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %2 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsize, align 4
  %memsize.i = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %memsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %memsize.i, align 8
  %add.i = add i32 %5, 72
  %elements.i = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %elements.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %elements.i, align 4
  %mul.i = mul i32 %7, %3
  %add1.i = add i32 %add.i, %mul.i
  %ext_size = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 12
  %8 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ext_size, align 4
  %add = add i32 %add1.i, %9
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32775, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not47 = icmp eq ptr %11, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not47
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %first_ip.i = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %first_ip.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %first_ip.i, align 4
  %14 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool.not11.i.i = icmp eq ptr %15, null
  %tobool.not.i.i = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool.not11.i.i
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #8
  %16 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %tmp.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.rhs.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs.i:                                        ; preds = %if.end.i.i
  %17 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i.i.i, ptr %15, align 2
  %last_ip.i = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %last_ip.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_ip.i, align 8
  %22 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i7.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32770, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i7.i)
  %cmp.i.i.i8.i = icmp slt i32 %call1.i.i.i7.i, 0
  %tobool.not11.i9.i = icmp eq ptr %22, null
  %tobool.not.i10.i = select i1 %cmp.i.i.i8.i, i1 true, i1 %tobool.not11.i9.i
  br i1 %tobool.not.i10.i, label %lor.rhs.i.cleanup_crit_edge, label %if.end.i13.i

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i13.i:                                     ; preds = %lor.rhs.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i5.i) #8
  %23 = ptrtoint ptr %tmp.i.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %tmp.i.i.i5.i, align 4
  %call.i.i.i11.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i5.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i5.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i11.i)
  %tobool2.not.i12.i = icmp eq i32 %call.i.i.i11.i, 0
  br i1 %tobool2.not.i12.i, label %lor.lhs.false, label %if.end.i13.i.cleanup_crit_edge

if.end.i13.i.cleanup_crit_edge:                   ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end.i13.i
  %24 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i14.i = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i.i15.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i.i16.i = sub i32 %sub.ptr.lhs.cast.i.i14.i, %sub.ptr.rhs.cast.i.i15.i
  %conv.i.i17.i = trunc i32 %sub.ptr.sub.i.i16.i to i16
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i.i17.i, ptr %22, align 2
  %ref = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 2
  %27 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ref, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %29 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 16409, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i36) #8
  %30 = ptrtoint ptr %tmp.i.i36 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %tmp.i.i36, align 4
  %call.i.i37 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16410, i32 noundef 4, ptr noundef nonnull %tmp.i.i36) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37)
  %tobool8.not = icmp eq i32 %call.i.i37, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %elements = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 11
  %31 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %elements, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i38) #8
  %33 = ptrtoint ptr %tmp.i.i38 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %tmp.i.i38, align 4
  %call.i.i39 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16408, i32 noundef 4, ptr noundef nonnull %tmp.i.i38) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39)
  %tobool11.not = icmp eq i32 %call.i.i39, 0
  br i1 %tobool11.not, label %if.end13, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false9
  %call14 = call i32 @ip_set_put_flags(ptr noundef %skb, ptr noundef %set) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end19, label %if.end13.cleanup_crit_edge, !prof !45

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %35 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %36 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i, ptr %11, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end13.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.i13.i.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -90, %if.end13.cleanup_crit_edge ], [ -90, %lor.lhs.false.cleanup_crit_edge ], [ -90, %lor.lhs.false6.cleanup_crit_edge ], [ -90, %lor.lhs.false9.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.end.i.i.cleanup_crit_edge ], [ -90, %lor.rhs.i.cleanup_crit_edge ], [ -90, %if.end.i13.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_ipmac_list(ptr noundef %set, ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %tmp.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32776, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not135 = icmp eq ptr %5, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not135
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.2) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %elements = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %elements, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp140 = icmp ult i32 %11, %13
  br i1 %cmp140, label %for.body.lr.ph, label %rcu_read_lock.exit.for.end_crit_edge

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %extensions = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 7
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %extensions5 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx10 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %first_ip.i = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %call.i1.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i1.i, label %for.body.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i4.i

for.body.rcu_read_unlock.exit.i_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true.i4.i:                               ; preds = %for.body
  %call1.i2.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call1.i2.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true.i4.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i6.i

land.lhs.true.i4.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i6.i:                              ; preds = %land.lhs.true.i4.i
  %.b4.i5.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5.i, label %land.lhs.true2.i6.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i7.i

land.lhs.true2.i6.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

if.then.i7.i:                                     ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i7.i, %land.lhs.true2.i6.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i4.i.rcu_read_unlock.exit.i_crit_edge, %for.body.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %14 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i8.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i8.i to ptr
  %preempt_count.i.i.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i9.i, align 4
  %sub.i.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i9.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 2089, i32 noundef 0) #8
  %call.i10.i = call i32 @__cond_resched() #8
  %18 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %rcu_read_unlock.exit.i.cond_resched_rcu.exit_crit_edge, label %land.lhs.true.i.i

rcu_read_unlock.exit.i.cond_resched_rcu.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond_resched_rcu.exit

land.lhs.true.i.i:                                ; preds = %rcu_read_unlock.exit.i
  %call1.i.i87 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i87)
  %tobool.not.i.i = icmp eq i32 %call1.i.i87, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.cond_resched_rcu.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.cond_resched_rcu.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond_resched_rcu.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.cond_resched_rcu.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.cond_resched_rcu.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond_resched_rcu.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.2) #8
  br label %cond_resched_rcu.exit

cond_resched_rcu.exit:                            ; preds = %if.then.i.i, %land.lhs.true2.i.i.cond_resched_rcu.exit_crit_edge, %land.lhs.true.i.i.cond_resched_rcu.exit_crit_edge, %rcu_read_unlock.exit.i.cond_resched_rcu.exit_crit_edge
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %24 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dsize, align 4
  %mul = mul i32 %25, %23
  %add.ptr = getelementptr i8, ptr %extensions, i32 %mul
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %div3.i = lshr i32 %23, 5
  %arrayidx.i = getelementptr i32, ptr %27, i32 %div3.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %23, 31
  %30 = shl nuw i32 1, %and.i
  %31 = and i32 %29, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool4.not = icmp eq i32 %31, 0
  br i1 %tobool4.not, label %cond_resched_rcu.exit.for.inc_crit_edge, label %lor.lhs.false

cond_resched_rcu.exit.for.inc_crit_edge:          ; preds = %cond_resched_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false:                                    ; preds = %cond_resched_rcu.exit
  %32 = ptrtoint ptr %extensions5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %extensions5, align 2
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool6.not = icmp eq i8 %34, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.end15_crit_edge, label %land.lhs.true

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true:                                    ; preds = %lor.lhs.false
  %filled.i = getelementptr inbounds %struct.bitmap_ipmac_elem, ptr %add.ptr, i32 0, i32 1
  %35 = ptrtoint ptr %filled.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %filled.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp.i.not = icmp eq i8 %36, 1
  br i1 %cmp.i.not, label %land.lhs.true9, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true9:                                   ; preds = %land.lhs.true
  %37 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx10, align 4
  %add.ptr11 = getelementptr i8, ptr %add.ptr, i32 %38
  %39 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.not.i = icmp eq i32 %40, 0
  br i1 %cmp.not.i, label %land.lhs.true9.if.end15_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true9.if.end15_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %40, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.for.inc_crit_edge, label %ip_set_timeout_expired.exit.if.end15_crit_edge

ip_set_timeout_expired.exit.if.end15_crit_edge:   ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

ip_set_timeout_expired.exit.for.inc_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end15:                                         ; preds = %ip_set_timeout_expired.exit.if.end15_crit_edge, %land.lhs.true9.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge
  %42 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i89 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32775, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i89)
  %cmp.i.i90 = icmp slt i32 %call1.i.i89, 0
  %tobool17.not136 = icmp eq ptr %43, null
  %tobool17.not = select i1 %cmp.i.i90, i1 true, i1 %tobool17.not136
  br i1 %tobool17.not, label %if.then18, label %if.end23

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %3)
  %cmp19 = icmp eq i32 %23, %3
  br i1 %cmp19, label %if.then.i.i94, label %if.then18.nla_nest_cancel.exit117_crit_edge

if.then18.nla_nest_cancel.exit117_crit_edge:      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_nest_cancel.exit117

if.then.i.i94:                                    ; preds = %if.then18
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %44 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i93 = icmp ugt ptr %45, %5
  br i1 %cmp.i.i93, label %do.end.i.i, label %if.then.i.i94.nla_nest_cancel.exit_crit_edge, !prof !41

if.then.i.i94.nla_nest_cancel.exit_crit_edge:     ; preds = %if.then.i.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i94
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i94.nla_nest_cancel.exit_crit_edge
  %46 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #8
  br label %out

if.end23:                                         ; preds = %if.end15
  %48 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dsize, align 4
  %mul.i = mul i32 %49, %23
  %add.ptr.i = getelementptr i8, ptr %extensions, i32 %mul.i
  %50 = ptrtoint ptr %first_ip.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %first_ip.i, align 4
  %52 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool.not11.i.i = icmp eq ptr %53, null
  %tobool.not.i.i95 = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool.not11.i.i
  br i1 %tobool.not.i.i95, label %if.end23.if.then.i.i111_crit_edge, label %if.end.i.i96

if.end23.if.then.i.i111_crit_edge:                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i111

if.end.i.i96:                                     ; preds = %if.end23
  %add.i = add i32 %51, %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #8
  %54 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.i, ptr %tmp.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.rhs.i, label %if.end.i.i96.if.then.i.i111_crit_edge

if.end.i.i96.if.then.i.i111_crit_edge:            ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i111

lor.rhs.i:                                        ; preds = %if.end.i.i96
  %55 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i.i.i, ptr %53, align 2
  %filled.i97 = getelementptr inbounds %struct.bitmap_ipmac_elem, ptr %add.ptr.i, i32 0, i32 1
  %58 = ptrtoint ptr %filled.i97 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %filled.i97, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp.i98 = icmp eq i8 %59, 1
  br i1 %cmp.i98, label %bitmap_ipmac_do_list.exit, label %lor.rhs.i.if.end28_crit_edge

lor.rhs.i.if.end28_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

bitmap_ipmac_do_list.exit:                        ; preds = %lor.rhs.i
  %call3.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 17, i32 noundef 6, ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.i.not = icmp eq i32 %call3.i, 0
  br i1 %tobool4.i.not, label %bitmap_ipmac_do_list.exit.if.end28_crit_edge, label %bitmap_ipmac_do_list.exit.if.then.i.i111_crit_edge

bitmap_ipmac_do_list.exit.if.then.i.i111_crit_edge: ; preds = %bitmap_ipmac_do_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i111

bitmap_ipmac_do_list.exit.if.end28_crit_edge:     ; preds = %bitmap_ipmac_do_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.end28:                                         ; preds = %bitmap_ipmac_do_list.exit.if.end28_crit_edge, %lor.rhs.i.if.end28_crit_edge
  %filled.i100 = getelementptr inbounds %struct.bitmap_ipmac_elem, ptr %add.ptr, i32 0, i32 1
  %60 = ptrtoint ptr %filled.i100 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %filled.i100, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %61)
  %cmp.i101 = icmp eq i8 %61, 1
  %call31 = call i32 @ip_set_put_extensions(ptr noundef %skb, ptr noundef %set, ptr noundef %add.ptr, i1 noundef zeroext %cmp.i101) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end28.if.then.i.i111_crit_edge

if.end28.if.then.i.i111_crit_edge:                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i111

if.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %63 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %64 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i, ptr %43, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %ip_set_timeout_expired.exit.for.inc_crit_edge, %cond_resched_rcu.exit.for.inc_crit_edge
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %66, 1
  store i32 %inc, ptr %arrayidx, align 4
  %67 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %elements, align 4
  %cmp = icmp ult i32 %inc, %68
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %69 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i104 = ptrtoint ptr %70 to i32
  %sub.ptr.rhs.cast.i105 = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i106 = sub i32 %sub.ptr.lhs.cast.i104, %sub.ptr.rhs.cast.i105
  %conv.i107 = trunc i32 %sub.ptr.sub.i106 to i16
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i107, ptr %5, align 2
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %arrayidx, align 4
  br label %out

if.then.i.i111:                                   ; preds = %if.end28.if.then.i.i111_crit_edge, %bitmap_ipmac_do_list.exit.if.then.i.i111_crit_edge, %if.end.i.i96.if.then.i.i111_crit_edge, %if.end23.if.then.i.i111_crit_edge
  %data.i.i109 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %73 = ptrtoint ptr %data.i.i109 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i.i109, align 4
  %cmp.i.i110 = icmp ugt ptr %74, %43
  br i1 %cmp.i.i110, label %do.end.i.i112, label %if.then.i.i111.if.end.i.i116_crit_edge, !prof !41

if.then.i.i111.if.end.i.i116_crit_edge:           ; preds = %if.then.i.i111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i116

do.end.i.i112:                                    ; preds = %if.then.i.i111
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i116

if.end.i.i116:                                    ; preds = %do.end.i.i112, %if.then.i.i111.if.end.i.i116_crit_edge
  %75 = ptrtoint ptr %data.i.i109 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data.i.i109, align 4
  %sub.ptr.lhs.cast.i.i113 = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i.i114 = ptrtoint ptr %76 to i32
  %sub.ptr.sub.i.i115 = sub i32 %sub.ptr.lhs.cast.i.i113, %sub.ptr.rhs.cast.i.i114
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i115) #8
  br label %nla_nest_cancel.exit117

nla_nest_cancel.exit117:                          ; preds = %if.end.i.i116, %if.then18.nla_nest_cancel.exit117_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %3)
  %cmp39 = icmp eq i32 %23, %3
  br i1 %cmp39, label %if.then43, label %nla_nest_cancel.exit117.if.end45_crit_edge, !prof !41

nla_nest_cancel.exit117.if.end45_crit_edge:       ; preds = %nla_nest_cancel.exit117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then43:                                        ; preds = %nla_nest_cancel.exit117
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %arrayidx, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %nla_nest_cancel.exit117.if.end45_crit_edge
  %ret.0 = phi i32 [ -90, %if.then43 ], [ 0, %nla_nest_cancel.exit117.if.end45_crit_edge ]
  %78 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i119 = ptrtoint ptr %79 to i32
  %sub.ptr.rhs.cast.i120 = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i121 = sub i32 %sub.ptr.lhs.cast.i119, %sub.ptr.rhs.cast.i120
  %conv.i122 = trunc i32 %sub.ptr.sub.i121 to i16
  %80 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i122, ptr %5, align 2
  br label %out

out:                                              ; preds = %if.end45, %for.end, %nla_nest_cancel.exit
  %ret.1 = phi i32 [ %ret.0, %if.end45 ], [ -90, %nla_nest_cancel.exit ], [ 0, %for.end ]
  %call.i123 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i123, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i126

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i126:                               ; preds = %out
  %call1.i124 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i124)
  %tobool.not.i125 = icmp eq i32 %call1.i124, 0
  br i1 %tobool.not.i125, label %land.lhs.true.i126.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i128

land.lhs.true.i126.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i126
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i128:                              ; preds = %land.lhs.true.i126
  %.b4.i127 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i127, label %land.lhs.true2.i128.rcu_read_unlock.exit_crit_edge, label %if.then.i129

land.lhs.true2.i128.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i128
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i129:                                     ; preds = %land.lhs.true2.i128
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i129, %land.lhs.true2.i128.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i126.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %81 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i130 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i.i130 to ptr
  %preempt_count.i.i.i.i131 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i.i.i131, align 4
  %sub.i.i.i = add i32 %84, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i131, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %rcu_read_unlock.exit ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bitmap_ipmac_same_set(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %a, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %data1 = getelementptr inbounds %struct.ip_set, ptr %b, i32 0, i32 15
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %first_ip = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %first_ip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %first_ip, align 4
  %first_ip2 = getelementptr inbounds %struct.bitmap_ipmac, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %first_ip2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %first_ip2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %last_ip = getelementptr inbounds %struct.bitmap_ipmac, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %last_ip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_ip, align 8
  %last_ip3 = getelementptr inbounds %struct.bitmap_ipmac, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %last_ip3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_ip3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp4 = icmp eq i32 %9, %11
  br i1 %cmp4, label %land.lhs.true5, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %timeout = getelementptr inbounds %struct.ip_set, ptr %a, i32 0, i32 10
  %12 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timeout, align 4
  %timeout6 = getelementptr inbounds %struct.ip_set, ptr %b, i32 0, i32 10
  %14 = ptrtoint ptr %timeout6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timeout6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp7 = icmp eq i32 %13, %15
  br i1 %cmp7, label %land.rhs, label %land.lhs.true5.land.end_crit_edge

land.lhs.true5.land.end_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  %extensions = getelementptr inbounds %struct.ip_set, ptr %a, i32 0, i32 8
  %16 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %extensions, align 2
  %extensions8 = getelementptr inbounds %struct.ip_set, ptr %b, i32 0, i32 8
  %18 = ptrtoint ptr %extensions8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %extensions8, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp10 = icmp eq i8 %17, %19
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true5.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %20 = phi i1 [ false, %land.lhs.true5.land.end_crit_edge ], [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %cmp10, %land.rhs ]
  ret i1 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_get_extensions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_set_init_comment(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ip_set_match_extensions(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_put_flags(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_put_extensions(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !23, !25, !27, !28, !30}
!llvm.named.register.sp = !{!31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__UNIQUE_ID_file610, !1, !"__UNIQUE_ID_file610", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipset/ip_set_bitmap_ipmac.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_license611, !1, !"__UNIQUE_ID_license611", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author612, !4, !"__UNIQUE_ID_author612", i1 false, i1 false}
!4 = !{!"../net/netfilter/ipset/ip_set_bitmap_ipmac.c", i32 30, i32 1}
!5 = !{ptr @__UNIQUE_ID_description613, !6, !"__UNIQUE_ID_description613", i1 false, i1 false}
!6 = !{!"../net/netfilter/ipset/ip_set_bitmap_ipmac.c", i32 31, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias614, !8, !"__UNIQUE_ID_alias614", i1 false, i1 false}
!8 = !{!"../net/netfilter/ipset/ip_set_bitmap_ipmac.c", i32 32, i32 1}
!9 = !{ptr @__initcall__kmod_ip_set_bitmap_ipmac__619_422_bitmap_ipmac_init6, !10, !"__initcall__kmod_ip_set_bitmap_ipmac__619_422_bitmap_ipmac_init6", i1 false, i1 false}
!10 = !{!"../net/netfilter/ipset/ip_set_bitmap_ipmac.c", i32 422, i32 1}
!11 = !{ptr @__exitcall_bitmap_ipmac_fini, !12, !"__exitcall_bitmap_ipmac_fini", i1 false, i1 false}
!12 = !{!"../net/netfilter/ipset/ip_set_bitmap_ipmac.c", i32 423, i32 1}
!13 = !{ptr @bitmap_ipmac_type, !14, !"bitmap_ipmac_type", i1 false, i1 false}
!14 = !{!"../net/netfilter/ipset/ip_set_bitmap_ipmac.c", i32 376, i32 27}
!15 = !{ptr @bitmap_ipmac, !16, !"bitmap_ipmac", i1 false, i1 false}
!16 = !{!"../net/netfilter/ipset/ip_set_bitmap_gen.h", i32 291, i32 41}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!19 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/sched.h", i32 2089, i32 2}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/net/netlink.h", i32 991, i32 3}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @bitmap_ipmac_gc_init.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../net/netfilter/ipset/ip_set_bitmap_gen.h", i32 40, i32 2}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{!"sp"}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{!"auto-init"}
!43 = !{i64 2158725179}
!44 = !{i64 2158725458}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2149365926}
!47 = !{i64 2149366192}

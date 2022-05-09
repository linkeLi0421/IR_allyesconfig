; ModuleID = '/llk/IR_all_yes/net/netfilter/ipset/ip_set_bitmap_port.c_pt.bc'
source_filename = "../net/netfilter/ipset/ip_set_bitmap_port.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.ip_set_type_variant = type { ptr, ptr, [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
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
%struct.bitmap_port = type { ptr, i16, i16, i32, i32, %struct.timer_list, ptr, [4 x i8], [0 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.bitmap_port_adt_elem = type { i16 }
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

@__UNIQUE_ID_file489 = internal constant [63 x i8] c"ip_set_bitmap_port.file=net/netfilter/ipset/ip_set_bitmap_port\00", section ".modinfo", align 1
@__UNIQUE_ID_license490 = internal constant [31 x i8] c"ip_set_bitmap_port.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author491 = internal constant [66 x i8] c"ip_set_bitmap_port.author=Jozsef Kadlecsik <kadlec@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description492 = internal constant [74 x i8] c"ip_set_bitmap_port.description=bitmap:port type of IP sets, revisions 0-3\00", section ".modinfo", align 1
@__UNIQUE_ID_alias493 = internal constant [44 x i8] c"ip_set_bitmap_port.alias=ip_set_bitmap:port\00", section ".modinfo", align 1
@__initcall__kmod_ip_set_bitmap_port__498_331_bitmap_port_init6 = internal global ptr @bitmap_port_init, section ".initcall6.init", align 4
@__exitcall_bitmap_port_fini = internal global ptr @bitmap_port_fini, section ".exitcall.exit", align 4
@bitmap_port_type = internal global { { %struct.list_head, [32 x i8], i8, i8, i8, i8, i8, [10 x i8], i16, ptr, <{ [9 x %struct.nla_policy], [18 x %struct.nla_policy] }>, [31 x %struct.nla_policy], ptr }, [140 x i8] } { { %struct.list_head, [32 x i8], i8, i8, i8, i8, i8, [10 x i8], i16, ptr, <{ [9 x %struct.nla_policy], [18 x %struct.nla_policy] }>, [31 x %struct.nla_policy], ptr } { %struct.list_head zeroinitializer, [32 x i8] c"bitmap:port\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 7, i8 1, i8 0, i8 0, i8 3, [10 x i8] zeroinitializer, i16 2, ptr @bitmap_port_create, <{ [9 x %struct.nla_policy], [18 x %struct.nla_policy] }> <{ [9 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }], [18 x %struct.nla_policy] zeroinitializer }>, [31 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 255, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer], ptr null }, [140 x i8] zeroinitializer }, align 32
@bitmap_port = internal constant { %struct.ip_set_type_variant, [40 x i8] } { %struct.ip_set_type_variant { ptr @bitmap_port_kadt, ptr @bitmap_port_uadt, [3 x ptr] [ptr @bitmap_port_add, ptr @bitmap_port_del, ptr @bitmap_port_test], ptr null, ptr @bitmap_port_destroy, ptr @bitmap_port_flush, ptr null, ptr @bitmap_port_head, ptr @bitmap_port_list, ptr null, ptr @bitmap_port_same_set, i8 0 }, [40 x i8] zeroinitializer }, align 32
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
@bitmap_port_gc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"(&map->gc)\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"bitmap_port_type\00", align 1
@___asan_gen_.9 = private constant [44 x i8] c"../net/netfilter/ipset/ip_set_bitmap_port.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 287, i32 27 }
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"bitmap_port\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 291, i32 41 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 695, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [25 x i8] c"../include/linux/sched.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 2089, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 991, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 723, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [43 x i8] c"../net/netfilter/ipset/ip_set_bitmap_gen.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 40, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias493, ptr @__UNIQUE_ID_author491, ptr @__UNIQUE_ID_description492, ptr @__UNIQUE_ID_file489, ptr @__UNIQUE_ID_license490, ptr @__exitcall_bitmap_port_fini, ptr @__initcall__kmod_ip_set_bitmap_port__498_331_bitmap_port_init6, ptr @bitmap_port_fini, ptr @bitmap_port_type, ptr @bitmap_port, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @bitmap_port_gc_init.__key, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitmap_port_type to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitmap_port to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitmap_port_gc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bitmap_port_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rcu_barrier() #8
  tail call void @ip_set_type_unregister(ptr noundef nonnull @bitmap_port_type) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_set_type_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_port_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_set_type_register(ptr noundef nonnull @bitmap_port_type) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_port_create(ptr nocapture noundef readnone %net, ptr noundef %set, ptr noundef %tb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 4
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %ip_set_attr_netorder.exit, !prof !41

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ip_set_attr_netorder.exit:                        ; preds = %entry
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nla_type.i, align 2
  %4 = and i16 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool2.i.not = icmp eq i16 %4, 0
  br i1 %tobool2.i.not, label %ip_set_attr_netorder.exit.cleanup_crit_edge, label %lor.lhs.false, !prof !42

ip_set_attr_netorder.exit.cleanup_crit_edge:      ; preds = %ip_set_attr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %ip_set_attr_netorder.exit
  %arrayidx.i69 = getelementptr ptr, ptr %tb, i32 5
  %5 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i69, align 4
  %tobool.not.i70 = icmp eq ptr %6, null
  br i1 %tobool.not.i70, label %lor.lhs.false.cleanup_crit_edge, label %ip_set_attr_netorder.exit74, !prof !41

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ip_set_attr_netorder.exit74:                      ; preds = %lor.lhs.false
  %nla_type.i71 = getelementptr inbounds %struct.nlattr, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %nla_type.i71 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nla_type.i71, align 2
  %9 = and i16 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool2.i72.not = icmp eq i16 %9, 0
  br i1 %tobool2.i72.not, label %ip_set_attr_netorder.exit74.cleanup_crit_edge, label %lor.lhs.false2, !prof !42

ip_set_attr_netorder.exit74.cleanup_crit_edge:    ; preds = %ip_set_attr_netorder.exit74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2:                                   ; preds = %ip_set_attr_netorder.exit74
  %arrayidx.i75 = getelementptr ptr, ptr %tb, i32 6
  %10 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i75, align 4
  %tobool.not.i76 = icmp eq ptr %11, null
  br i1 %tobool.not.i76, label %lor.lhs.false2.lor.rhs_crit_edge, label %ip_set_optattr_netorder.exit

lor.lhs.false2.lor.rhs_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

ip_set_optattr_netorder.exit:                     ; preds = %lor.lhs.false2
  %nla_type.i77 = getelementptr inbounds %struct.nlattr, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %nla_type.i77 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %nla_type.i77, align 2
  %14 = and i16 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool2.i78.not = icmp eq i16 %14, 0
  br i1 %tobool2.i78.not, label %ip_set_optattr_netorder.exit.cleanup_crit_edge, label %ip_set_optattr_netorder.exit.lor.rhs_crit_edge, !prof !42

ip_set_optattr_netorder.exit.lor.rhs_crit_edge:   ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

ip_set_optattr_netorder.exit.cleanup_crit_edge:   ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs:                                          ; preds = %ip_set_optattr_netorder.exit.lor.rhs_crit_edge, %lor.lhs.false2.lor.rhs_crit_edge
  %arrayidx.i79 = getelementptr ptr, ptr %tb, i32 8
  %15 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i79, align 4
  %tobool.not.i80 = icmp eq ptr %16, null
  br i1 %tobool.not.i80, label %lor.rhs.if.end_crit_edge, label %ip_set_optattr_netorder.exit84

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

ip_set_optattr_netorder.exit84:                   ; preds = %lor.rhs
  %nla_type.i81 = getelementptr inbounds %struct.nlattr, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %nla_type.i81 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %nla_type.i81, align 2
  %19 = and i16 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool2.i82.not = icmp eq i16 %19, 0
  br i1 %tobool2.i82.not, label %ip_set_optattr_netorder.exit84.cleanup_crit_edge, label %ip_set_optattr_netorder.exit84.if.end_crit_edge, !prof !42

ip_set_optattr_netorder.exit84.if.end_crit_edge:  ; preds = %ip_set_optattr_netorder.exit84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

ip_set_optattr_netorder.exit84.cleanup_crit_edge: ; preds = %ip_set_optattr_netorder.exit84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ip_set_optattr_netorder.exit84.if.end_crit_edge, %lor.rhs.if.end_crit_edge
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr.i.i.i85 = getelementptr i8, ptr %6, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i.i85 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i.i.i85, align 2
  %24 = tail call i16 @llvm.umin.i16(i16 %21, i16 %23)
  %25 = tail call i16 @llvm.umax.i16(i16 %21, i16 %23)
  %conv14 = zext i16 %25 to i32
  %conv15 = zext i16 %24 to i32
  %sub = sub nsw i32 %conv14, %conv15
  %add = add nsw i32 %sub, 1
  %call16 = tail call i32 @ip_set_elem_len(ptr noundef %set, ptr noundef %tb, i32 noundef 0, i32 noundef 0) #8
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %26 = ptrtoint ptr %dsize to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call16, ptr %dsize, align 4
  %mul = mul i32 %add, %call16
  %add18 = add i32 %mul, 72
  %call19 = tail call ptr @ip_set_alloc(i32 noundef %add18) #8
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end.cleanup_crit_edge, label %if.end22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %elements23 = getelementptr inbounds %struct.bitmap_port, ptr %call19, i32 0, i32 3
  %27 = ptrtoint ptr %elements23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add, ptr %elements23, align 8
  %sub25 = add nsw i32 %sub, 32
  %28 = lshr i32 %sub25, 3
  %mul26 = and i32 %28, 536870908
  %memsize = getelementptr inbounds %struct.bitmap_port, ptr %call19, i32 0, i32 4
  %29 = ptrtoint ptr %memsize to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul26, ptr %memsize, align 4
  %variant = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 5
  %30 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @bitmap_port, ptr %variant, align 4
  %31 = load i32, ptr %elements23, align 8
  %call.i = tail call ptr @bitmap_zalloc(i32 noundef %31, i32 noundef 11456) #8
  %32 = ptrtoint ptr %call19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %call19, align 8
  %tobool.not.i86 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i86, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ip_set_free(ptr noundef nonnull %call19) #8
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %first_port2.i = getelementptr inbounds %struct.bitmap_port, ptr %call19, i32 0, i32 1
  %33 = ptrtoint ptr %first_port2.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %24, ptr %first_port2.i, align 4
  %last_port3.i = getelementptr inbounds %struct.bitmap_port, ptr %call19, i32 0, i32 2
  %34 = ptrtoint ptr %last_port3.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %25, ptr %last_port3.i, align 2
  %timeout.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 10
  %35 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %timeout.i, align 4
  %set4.i = getelementptr inbounds %struct.bitmap_port, ptr %call19, i32 0, i32 6
  %36 = ptrtoint ptr %set4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %set, ptr %set4.i, align 8
  %data.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call19, ptr %data.i, align 4
  %family.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 6
  %38 = ptrtoint ptr %family.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %family.i, align 4
  %39 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i75, align 4
  %tobool31.not = icmp eq ptr %40, null
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %if.then32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i = getelementptr i8, ptr %40, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 2147483) #8
  %44 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %timeout.i, align 4
  %45 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i, align 4
  %gc1.i = getelementptr inbounds %struct.bitmap_port, ptr %46, i32 0, i32 5
  tail call void @init_timer_key(ptr noundef %gc1.i, ptr noundef nonnull @bitmap_port_gc, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @bitmap_port_gc_init.__key) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %48 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %timeout.i, align 4
  %div.i = udiv i32 %49, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %50 = icmp ult i32 %49, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 540, i32 %49)
  %cmp.i = icmp ult i32 %49, 540
  %div.op.i = mul i32 %div.i, 100
  %div..op.i = select i1 %cmp.i, i32 %div.op.i, i32 18000
  %mul.i = select i1 %50, i32 100, i32 %div..op.i
  %add.i = add i32 %mul.i, %47
  %call.i89 = tail call i32 @mod_timer(ptr noundef %gc1.i, i32 noundef %add.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end29.cleanup_crit_edge, %if.then28, %if.end.cleanup_crit_edge, %ip_set_optattr_netorder.exit84.cleanup_crit_edge, %ip_set_optattr_netorder.exit.cleanup_crit_edge, %ip_set_attr_netorder.exit74.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %ip_set_attr_netorder.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then28 ], [ -4097, %ip_set_optattr_netorder.exit84.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %if.end29.cleanup_crit_edge ], [ -4097, %ip_set_optattr_netorder.exit.cleanup_crit_edge ], [ -4097, %ip_set_attr_netorder.exit74.cleanup_crit_edge ], [ -4097, %ip_set_attr_netorder.exit.cleanup_crit_edge ], [ -4097, %entry.cleanup_crit_edge ], [ -4097, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
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
define internal void @bitmap_port_gc(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -16
  %set1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %set1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set1, align 8
  %lock = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %elements = getelementptr i8, ptr %t, i32 -8
  %2 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %elements, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp43.not = icmp eq i32 %3, 0
  br i1 %cmp43.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dsize = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 13
  %extensions = getelementptr i8, ptr %t, i32 56
  %arrayidx = getelementptr %struct.ip_set, ptr %1, i32 0, i32 14, i32 1
  %extensions.i = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 8
  %arrayidx.i = getelementptr %struct.ip_set, ptr %1, i32 0, i32 14, i32 3
  %elements7 = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %id.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %conv.i = lshr i32 %id.044, 5
  %div3.i.i = and i32 %conv.i, 2047
  %arrayidx.i.i = getelementptr i32, ptr %5, i32 %div3.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %id.044, 31
  %8 = shl nuw i32 1, %and.i.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %10 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dsize, align 4
  %mul = mul i32 %11, %id.044
  %add.ptr3 = getelementptr i8, ptr %extensions, i32 %mul
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add.ptr4 = getelementptr i8, ptr %add.ptr3, i32 %13
  %14 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %if.then.for.inc_crit_edge, label %ip_set_timeout_expired.exit

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

ip_set_timeout_expired.exit:                      ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %15, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %if.then6, label %ip_set_timeout_expired.exit.for.inc_crit_edge

ip_set_timeout_expired.exit.for.inc_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then6:                                         ; preds = %ip_set_timeout_expired.exit
  tail call void @_clear_bit(i32 noundef %id.044, ptr noundef %5) #8
  %17 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %extensions.i, align 2
  %19 = and i8 %18, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.then6.ip_set_ext_destroy.exit_crit_edge, label %if.then.i

if.then6.ip_set_ext_destroy.exit_crit_edge:       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_set_ext_destroy.exit

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr3, i32 %21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %22(ptr noundef %1, ptr noundef %add.ptr.i) #8
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i, %if.then6.ip_set_ext_destroy.exit_crit_edge
  %23 = ptrtoint ptr %elements7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %elements7, align 4
  %dec = add i32 %24, -1
  store i32 %dec, ptr %elements7, align 4
  br label %for.inc

for.inc:                                          ; preds = %ip_set_ext_destroy.exit, %ip_set_timeout_expired.exit.for.inc_crit_edge, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %id.044, 1
  %25 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %elements, align 8
  %cmp = icmp ult i32 %inc, %26
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
  %27 = load volatile i32, ptr @jiffies, align 128
  %timeout = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 10
  %28 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %timeout, align 4
  %div = udiv i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %30 = icmp ult i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 540, i32 %29)
  %cmp14 = icmp ult i32 %29, 540
  %div.op = mul i32 %div, 100
  %div..op = select i1 %cmp14, i32 %div.op, i32 18000
  %mul20 = select i1 %30, i32 100, i32 %div..op
  %add = add i32 %mul20, %27
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %31 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add, ptr %expires, align 8
  tail call void @add_timer(ptr noundef %t) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_port_kadt(ptr noundef %set, ptr noundef %skb, ptr nocapture noundef readnone %par, i32 noundef %adt, ptr noundef %opt) #2 align 64 {
entry:
  %proto.i = alloca i8, align 1
  %e = alloca %struct.bitmap_port_adt_elem, align 2
  %ext = alloca %struct.ip_set_ext, align 8
  %__port = alloca i16, align 2
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %e) #8
  %6 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %e, align 2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ext) #8
  %7 = getelementptr inbounds i8, ptr %ext, i32 40
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %7, align 8, !annotation !43
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %__port) #8
  %23 = ptrtoint ptr %__port to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %__port, align 2, !annotation !43
  %24 = ptrtoint ptr %opt to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %opt, align 8
  %flags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 2
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags, align 2
  %28 = and i8 %27, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool = icmp ne i8 %28, 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %proto.i) #8
  %29 = ptrtoint ptr %proto.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %proto.i, align 1, !annotation !43
  %30 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i8 %25, label %cond.end.ip_set_get_ip_port.exit.thread_crit_edge [
    i8 2, label %sw.epilog.i
    i8 10, label %sw.bb2.i
  ]

cond.end.ip_set_get_ip_port.exit.thread_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_set_get_ip_port.exit.thread

sw.bb2.i:                                         ; preds = %cond.end
  %call4.i = call zeroext i1 @ip_set_get_ip6_port(ptr noundef %skb, i1 noundef zeroext %tobool, ptr noundef nonnull %__port, ptr noundef nonnull %proto.i) #8
  br i1 %call4.i, label %sw.bb2.i.ip_set_get_ip_port.exit_crit_edge, label %sw.bb2.i.ip_set_get_ip_port.exit.thread_crit_edge

sw.bb2.i.ip_set_get_ip_port.exit.thread_crit_edge: ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_set_get_ip_port.exit.thread

sw.bb2.i.ip_set_get_ip_port.exit_crit_edge:       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_set_get_ip_port.exit

sw.epilog.i:                                      ; preds = %cond.end
  %call.i = call zeroext i1 @ip_set_get_ip4_port(ptr noundef %skb, i1 noundef zeroext %tobool, ptr noundef nonnull %__port, ptr noundef nonnull %proto.i) #8
  br i1 %call.i, label %sw.epilog.i.ip_set_get_ip_port.exit_crit_edge, label %sw.epilog.i.ip_set_get_ip_port.exit.thread_crit_edge

sw.epilog.i.ip_set_get_ip_port.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_set_get_ip_port.exit.thread

sw.epilog.i.ip_set_get_ip_port.exit_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_set_get_ip_port.exit

ip_set_get_ip_port.exit.thread:                   ; preds = %sw.epilog.i.ip_set_get_ip_port.exit.thread_crit_edge, %sw.bb2.i.ip_set_get_ip_port.exit.thread_crit_edge, %cond.end.ip_set_get_ip_port.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %proto.i) #8
  br label %cleanup

ip_set_get_ip_port.exit:                          ; preds = %sw.epilog.i.ip_set_get_ip_port.exit_crit_edge, %sw.bb2.i.ip_set_get_ip_port.exit_crit_edge
  %31 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %proto.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %proto.i) #8
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %32, label %ip_set_get_ip_port.exit.cleanup_crit_edge [
    i8 17, label %ip_set_get_ip_port.exit.if.end_crit_edge
    i8 6, label %ip_set_get_ip_port.exit.if.end_crit_edge41
  ]

ip_set_get_ip_port.exit.if.end_crit_edge41:       ; preds = %ip_set_get_ip_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

ip_set_get_ip_port.exit.if.end_crit_edge:         ; preds = %ip_set_get_ip_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

ip_set_get_ip_port.exit.cleanup_crit_edge:        ; preds = %ip_set_get_ip_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ip_set_get_ip_port.exit.if.end_crit_edge, %ip_set_get_ip_port.exit.if.end_crit_edge41
  %34 = ptrtoint ptr %__port to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %__port, align 2
  %first_port = getelementptr inbounds %struct.bitmap_port, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %first_port to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %first_port, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %37)
  %cmp11 = icmp ult i16 %35, %37
  br i1 %cmp11, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %last_port = getelementptr inbounds %struct.bitmap_port, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %last_port to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %last_port, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %39)
  %cmp15 = icmp ugt i16 %35, %39
  br i1 %cmp15, label %lor.lhs.false.cleanup_crit_edge, label %if.end18

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i16 %35, %37
  %40 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %sub.i, ptr %e, align 2
  %cmdflags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 3
  %41 = ptrtoint ptr %cmdflags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cmdflags, align 4
  %call21 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef %ext2, i32 noundef %42) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ip_set_get_ip_port.exit.cleanup_crit_edge, %ip_set_get_ip_port.exit.thread
  %retval.0 = phi i32 [ %call21, %if.end18 ], [ -22, %ip_set_get_ip_port.exit.cleanup_crit_edge ], [ -4352, %lor.lhs.false.cleanup_crit_edge ], [ -4352, %if.end.cleanup_crit_edge ], [ -22, %ip_set_get_ip_port.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %__port) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ext) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %e) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_port_uadt(ptr noundef %set, ptr noundef %tb, i32 noundef %adt, ptr nocapture noundef writeonly %lineno, i32 noundef %flags, i1 noundef zeroext %retried) #2 align 64 {
entry:
  %e = alloca %struct.bitmap_port_adt_elem, align 2
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %e) #8
  %6 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %e, align 2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ext) #8
  %7 = getelementptr inbounds i8, ptr %ext, i32 40
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %7, align 8, !annotation !43
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
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 4
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %ip_set_attr_netorder.exit, !prof !41

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ip_set_attr_netorder.exit:                        ; preds = %if.end
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %nla_type.i, align 2
  %27 = and i16 %26, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool2.i.not = icmp eq i16 %27, 0
  br i1 %tobool2.i.not, label %ip_set_attr_netorder.exit.cleanup_crit_edge, label %lor.rhs, !prof !42

ip_set_attr_netorder.exit.cleanup_crit_edge:      ; preds = %ip_set_attr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs:                                          ; preds = %ip_set_attr_netorder.exit
  %arrayidx.i115 = getelementptr ptr, ptr %tb, i32 5
  %28 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i115, align 4
  %tobool.not.i116 = icmp eq ptr %29, null
  br i1 %tobool.not.i116, label %lor.rhs.if.end11_crit_edge, label %ip_set_optattr_netorder.exit

lor.rhs.if.end11_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

ip_set_optattr_netorder.exit:                     ; preds = %lor.rhs
  %nla_type.i117 = getelementptr inbounds %struct.nlattr, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %nla_type.i117 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %nla_type.i117, align 2
  %32 = and i16 %31, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool2.i118.not = icmp eq i16 %32, 0
  br i1 %tobool2.i118.not, label %ip_set_optattr_netorder.exit.cleanup_crit_edge, label %ip_set_optattr_netorder.exit.if.end11_crit_edge, !prof !42

ip_set_optattr_netorder.exit.if.end11_crit_edge:  ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

ip_set_optattr_netorder.exit.cleanup_crit_edge:   ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %ip_set_optattr_netorder.exit.if.end11_crit_edge, %lor.rhs.if.end11_crit_edge
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i.i.i, align 2
  %first_port = getelementptr inbounds %struct.bitmap_port, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %first_port to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %first_port, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %36)
  %cmp = icmp ult i16 %34, %36
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %lor.lhs.false

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end11
  %last_port = getelementptr inbounds %struct.bitmap_port, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %last_port to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %last_port, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %38)
  %cmp17 = icmp ugt i16 %34, %38
  br i1 %cmp17, label %lor.lhs.false.cleanup_crit_edge, label %if.end20

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false
  %call21 = call i32 @ip_set_get_extensions(ptr noundef %set, ptr noundef %tb, ptr noundef nonnull %ext) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %adt)
  %cmp25 = icmp eq i32 %adt, 2
  br i1 %cmp25, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %first_port to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %first_port, align 4
  %sub.i = sub i16 %34, %40
  %41 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %sub.i, ptr %e, align 2
  %call30 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef nonnull %ext, i32 noundef %flags) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %42 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i115, align 4
  %tobool33.not = icmp eq ptr %43, null
  br i1 %tobool33.not, label %if.end31.if.end51_crit_edge, label %if.then34

if.end31.if.end51_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then34:                                        ; preds = %if.end31
  %add.ptr.i.i.i119 = getelementptr i8, ptr %43, i32 4
  %44 = ptrtoint ptr %add.ptr.i.i.i119 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr.i.i.i119, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %45)
  %cmp38 = icmp ugt i16 %34, %45
  br i1 %cmp38, label %do.body, label %if.then34.if.end51_crit_edge

if.then34.if.end51_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.body:                                          ; preds = %if.then34
  %46 = ptrtoint ptr %first_port to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %first_port, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %47)
  %cmp45 = icmp ult i16 %45, %47
  br i1 %cmp45, label %do.body.cleanup_crit_edge, label %do.body.if.end51_crit_edge

do.body.if.end51_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %do.body.if.end51_crit_edge, %if.then34.if.end51_crit_edge, %if.end31.if.end51_crit_edge
  %port.0.in = phi i16 [ %45, %do.body.if.end51_crit_edge ], [ %34, %if.then34.if.end51_crit_edge ], [ %34, %if.end31.if.end51_crit_edge ]
  %port_to.0 = phi i16 [ %34, %do.body.if.end51_crit_edge ], [ %45, %if.then34.if.end51_crit_edge ], [ %34, %if.end31.if.end51_crit_edge ]
  %port.0 = zext i16 %port.0.in to i32
  %conv52 = zext i16 %port_to.0 to i32
  %48 = ptrtoint ptr %last_port to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %last_port, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %port_to.0, i16 %49)
  %cmp55 = icmp ugt i16 %port_to.0, %49
  br i1 %cmp55, label %if.end51.cleanup_crit_edge, label %for.cond.preheader

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end51
  call void @__sanitizer_cov_trace_cmp2(i16 %port.0.in, i16 %port_to.0)
  %cmp60.not123 = icmp ugt i16 %port.0.in, %port_to.0
  br i1 %cmp60.not123, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  br label %for.body

for.body:                                         ; preds = %if.end69.for.body_crit_edge, %for.body.lr.ph
  %port.1124 = phi i32 [ %port.0, %for.body.lr.ph ], [ %inc, %if.end69.for.body_crit_edge ]
  %conv62 = trunc i32 %port.1124 to i16
  %50 = ptrtoint ptr %first_port to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %first_port, align 4
  %sub.i121 = sub i16 %conv62, %51
  %52 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %sub.i121, ptr %e, align 2
  %call65 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef nonnull %ext, i32 noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4103, i32 %call65)
  %cmp.i = icmp eq i32 %call65, -4103
  %53 = and i1 %tobool.i, %cmp.i
  %or.cond = or i1 %tobool66.not, %53
  br i1 %or.cond, label %if.end69, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end69:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %port.1124, 1
  %exitcond = icmp eq i32 %port.1124, %conv52
  br i1 %exitcond, label %if.end69.cleanup_crit_edge, label %if.end69.for.body_crit_edge

if.end69.for.body_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end69.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.then27, %if.end20.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %ip_set_optattr_netorder.exit.cleanup_crit_edge, %ip_set_attr_netorder.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.then27 ], [ -4097, %ip_set_optattr_netorder.exit.cleanup_crit_edge ], [ -4352, %lor.lhs.false.cleanup_crit_edge ], [ -4352, %if.end11.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ -4352, %do.body.cleanup_crit_edge ], [ -4352, %if.end51.cleanup_crit_edge ], [ -4097, %ip_set_attr_netorder.exit.cleanup_crit_edge ], [ -4097, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call65, %for.body.cleanup_crit_edge ], [ 0, %if.end69.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ext) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %e) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_port_add(ptr noundef %set, ptr nocapture noundef readonly %value, ptr noundef %ext, ptr nocapture noundef readnone %mext, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %extensions = getelementptr inbounds %struct.bitmap_port, ptr %1, i32 0, i32 8
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %2 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsize, align 4
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %value, align 2
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
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then:                                          ; preds = %entry
  %extensions3 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %12 = ptrtoint ptr %extensions3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %extensions3, align 2
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %arrayidx = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %16
  %17 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i = icmp eq i32 %18, 0
  br i1 %cmp.not.i, label %land.lhs.true.if.else_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %if.then8, label %ip_set_timeout_expired.exit.if.else_crit_edge

ip_set_timeout_expired.exit.if.else_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then8:                                         ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #10
  %elements = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 11
  %20 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %elements, align 4
  %dec = add i32 %21, -1
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
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %7) #8
  br label %cleanup

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.then8
  %cmp16 = phi i1 [ true, %if.else.if.end14_crit_edge ], [ false, %if.then8 ]
  %22 = and i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end14.if.end15_crit_edge, label %if.then.i

if.end14.if.end15_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %25(ptr noundef %set, ptr noundef %add.ptr.i) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then.i, %if.end14.if.end15_crit_edge
  br i1 %cmp16, label %if.then18, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %elements19 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 11
  %26 = ptrtoint ptr %elements19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %elements19, align 4
  %dec20 = add i32 %27, -1
  store i32 %dec20, ptr %elements19, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge, %entry.if.end21_crit_edge
  %extensions22 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %28 = ptrtoint ptr %extensions22 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %extensions22, align 2
  %30 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool25.not = icmp eq i8 %30, 0
  br i1 %tobool25.not, label %if.end21.if.end30_crit_edge, label %if.then26

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then26:                                        ; preds = %if.end21
  %arrayidx28 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %31 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx28, align 4
  %add.ptr29 = getelementptr i8, ptr %add.ptr, i32 %32
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %33 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i98 = icmp eq i32 %34, 0
  br i1 %tobool.not.i98, label %if.then26.ip_set_timeout_set.exit_crit_edge, label %if.else.i.i

if.then26.ip_set_timeout_set.exit_crit_edge:      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_set_timeout_set.exit

if.else.i.i:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul i32 %34, 1000
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %35, %call2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp.i = icmp eq i32 %add.i, 0
  %spec.select.i = select i1 %cmp.i, i32 -1, i32 %add.i
  br label %ip_set_timeout_set.exit

ip_set_timeout_set.exit:                          ; preds = %if.else.i.i, %if.then26.ip_set_timeout_set.exit_crit_edge
  %storemerge.i = phi i32 [ %spec.select.i, %if.else.i.i ], [ 0, %if.then26.ip_set_timeout_set.exit_crit_edge ]
  %36 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %storemerge.i, ptr %add.ptr29, align 4
  br label %if.end30

if.end30:                                         ; preds = %ip_set_timeout_set.exit, %if.end21.if.end30_crit_edge
  %37 = ptrtoint ptr %extensions22 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %extensions22, align 2
  %39 = and i8 %38, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool34.not = icmp eq i8 %39, 0
  br i1 %tobool34.not, label %if.end30.if.end39_crit_edge, label %if.then35

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then35:                                        ; preds = %if.end30
  %offset36 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 14
  %40 = ptrtoint ptr %offset36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset36, align 4
  %add.ptr38 = getelementptr i8, ptr %add.ptr, i32 %41
  %bytes.i = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 2
  %42 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %43)
  %cmp.not.i99 = icmp eq i64 %43, -1
  br i1 %cmp.not.i99, label %if.then35.if.end.i101_crit_edge, label %if.then.i100

if.then35.if.end.i101_crit_edge:                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i101

if.then.i100:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr38, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %add.ptr38, i64 noundef %43) #8
  br label %if.end.i101

if.end.i101:                                      ; preds = %if.then.i100, %if.then35.if.end.i101_crit_edge
  %packets.i = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %44 = ptrtoint ptr %packets.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %packets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %45)
  %cmp3.not.i = icmp eq i64 %45, -1
  br i1 %cmp3.not.i, label %if.end.i101.if.end39_crit_edge, label %if.then4.i

if.end.i101.if.end39_crit_edge:                   ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then4.i:                                       ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #10
  %packets5.i = getelementptr inbounds %struct.ip_set_counter, ptr %add.ptr38, i32 0, i32 1
  %call.i.i13.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %packets5.i, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %packets5.i, i64 noundef %45) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then4.i, %if.end.i101.if.end39_crit_edge, %if.end30.if.end39_crit_edge
  %46 = ptrtoint ptr %extensions22 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %extensions22, align 2
  %48 = and i8 %47, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool43.not = icmp eq i8 %48, 0
  br i1 %tobool43.not, label %if.end39.if.end48_crit_edge, label %if.then44

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx46 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %49 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx46, align 4
  %add.ptr47 = getelementptr i8, ptr %add.ptr, i32 %50
  tail call void @ip_set_init_comment(ptr noundef %set, ptr noundef %add.ptr47, ptr noundef %ext) #8
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.end39.if.end48_crit_edge
  %51 = ptrtoint ptr %extensions22 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %extensions22, align 2
  %53 = and i8 %52, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool52.not = icmp eq i8 %53, 0
  br i1 %tobool52.not, label %if.end48.if.end57_crit_edge, label %if.then53

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx55 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 2
  %54 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx55, align 4
  %add.ptr56 = getelementptr i8, ptr %add.ptr, i32 %55
  %56 = call ptr @memcpy(ptr %add.ptr56, ptr %ext, i32 16)
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.end48.if.end57_crit_edge
  %57 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %value, align 2
  %conv59 = zext i16 %58 to i32
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 8
  tail call void @_set_bit(i32 noundef %conv59, ptr noundef %60) #8
  %elements61 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 11
  %61 = ptrtoint ptr %elements61 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %elements61, align 4
  %inc = add i32 %62, 1
  store i32 %inc, ptr %elements61, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then11
  %retval.0 = phi i32 [ 0, %if.end57 ], [ -4103, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_port_del(ptr noundef %set, ptr nocapture noundef readonly %value, ptr nocapture noundef readnone %ext, ptr nocapture noundef readnone %mext, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %extensions = getelementptr inbounds %struct.bitmap_port, ptr %1, i32 0, i32 8
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %2 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsize, align 4
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %value, align 2
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
define internal i32 @bitmap_port_test(ptr noundef %set, ptr nocapture noundef readonly %value, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags) #2 align 64 {
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
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %value, align 2
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
  %cmp.not.not = icmp eq i32 %11, 0
  br i1 %cmp.not.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %extensions = getelementptr inbounds %struct.bitmap_port, ptr %1, i32 0, i32 8
  %mul = mul i32 %3, %conv.i
  %add.ptr = getelementptr i8, ptr %extensions, i32 %mul
  %call3 = tail call zeroext i1 @ip_set_match_extensions(ptr noundef %set, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags, ptr noundef %add.ptr) #8
  %conv4 = zext i1 %call3 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bitmap_port_destroy(ptr noundef %set) #2 align 64 {
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
  %gc = getelementptr inbounds %struct.bitmap_port, ptr %1, i32 0, i32 5
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
  %elements.i = getelementptr inbounds %struct.bitmap_port, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %elements.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %elements.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp9.not.i = icmp eq i32 %12, 0
  br i1 %cmp9.not.i, label %if.then6.if.end7_crit_edge, label %for.body.lr.ph.i

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.body.lr.ph.i:                                 ; preds = %if.then6
  %extensions.i = getelementptr inbounds %struct.bitmap_port, ptr %10, i32 0, i32 8
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
  %28 = load i32, ptr %elements.i, align 8
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
define internal void @bitmap_port_flush(ptr noundef %set) #2 align 64 {
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
  %elements.i = getelementptr inbounds %struct.bitmap_port, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %elements.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %elements.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9.not.i = icmp eq i32 %5, 0
  br i1 %cmp9.not.i, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %extensions.i = getelementptr inbounds %struct.bitmap_port, ptr %1, i32 0, i32 8
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
  %21 = load i32, ptr %elements.i, align 8
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
  %elements = getelementptr inbounds %struct.bitmap_port, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %elements, align 8
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
define internal i32 @bitmap_port_head(ptr noundef %set, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i.i38 = alloca i32, align 4
  %tmp.i.i36 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp.i.i5.i = alloca i16, align 2
  %tmp.i.i.i = alloca i16, align 2
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
  %memsize.i = getelementptr inbounds %struct.bitmap_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %memsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %memsize.i, align 4
  %add.i = add i32 %5, 72
  %elements.i = getelementptr inbounds %struct.bitmap_port, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %elements.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %elements.i, align 8
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
  %tobool.not41 = icmp eq ptr %11, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not41
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %first_port.i = getelementptr inbounds %struct.bitmap_port, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %first_port.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %first_port.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i.i) #8
  %14 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %tmp.i.i.i, align 2
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 16388, i32 noundef 2, ptr noundef nonnull %tmp.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %bitmap_port_do_head.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

bitmap_port_do_head.exit:                         ; preds = %if.end
  %last_port.i = getelementptr inbounds %struct.bitmap_port, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %last_port.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %last_port.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i5.i) #8
  %17 = ptrtoint ptr %tmp.i.i5.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %tmp.i.i5.i, align 2
  %call.i.i6.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 16389, i32 noundef 2, ptr noundef nonnull %tmp.i.i5.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i5.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6.i)
  %tobool2.i.not = icmp eq i32 %call.i.i6.i, 0
  br i1 %tobool2.i.not, label %lor.lhs.false, label %bitmap_port_do_head.exit.cleanup_crit_edge

bitmap_port_do_head.exit.cleanup_crit_edge:       ; preds = %bitmap_port_do_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %bitmap_port_do_head.exit
  %ref = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 2
  %18 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ref, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %20 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tmp.i.i, align 4
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
  %21 = ptrtoint ptr %tmp.i.i36 to i32
  call void @__asan_store4_noabort(i32 %21)
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
  %22 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %elements, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i38) #8
  %24 = ptrtoint ptr %tmp.i.i38 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tmp.i.i38, align 4
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
  br i1 %tobool15.not, label %if.end19, label %if.end13.cleanup_crit_edge, !prof !44

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i, ptr %11, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end13.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %bitmap_port_do_head.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -90, %if.end13.cleanup_crit_edge ], [ -90, %bitmap_port_do_head.exit.cleanup_crit_edge ], [ -90, %lor.lhs.false.cleanup_crit_edge ], [ -90, %lor.lhs.false6.cleanup_crit_edge ], [ -90, %lor.lhs.false9.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_port_list(ptr noundef %set, ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %tmp.i.i.i = alloca i16, align 2
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
  %tobool.not119 = icmp eq ptr %5, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not119
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
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
  %elements = getelementptr inbounds %struct.bitmap_port, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %elements, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp124 = icmp ult i32 %11, %13
  br i1 %cmp124, label %for.body.lr.ph, label %rcu_read_lock.exit.for.end_crit_edge

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %extensions = getelementptr inbounds %struct.bitmap_port, ptr %1, i32 0, i32 8
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %extensions5 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx7 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %first_port.i = getelementptr inbounds %struct.bitmap_port, ptr %1, i32 0, i32 1
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
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
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
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %rcu_read_unlock.exit.i.cond_resched_rcu.exit_crit_edge, label %land.lhs.true.i.i

rcu_read_unlock.exit.i.cond_resched_rcu.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond_resched_rcu.exit

land.lhs.true.i.i:                                ; preds = %rcu_read_unlock.exit.i
  %call1.i.i82 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i82)
  %tobool.not.i.i = icmp eq i32 %call1.i.i82, 0
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
  br i1 %tobool6.not, label %lor.lhs.false.if.end12_crit_edge, label %land.lhs.true

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %35 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx7, align 4
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 %36
  %37 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.not.i = icmp eq i32 %38, 0
  br i1 %cmp.not.i, label %land.lhs.true.if.end12_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %38, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.for.inc_crit_edge, label %ip_set_timeout_expired.exit.if.end12_crit_edge

ip_set_timeout_expired.exit.if.end12_crit_edge:   ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

ip_set_timeout_expired.exit.for.inc_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end12:                                         ; preds = %ip_set_timeout_expired.exit.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %lor.lhs.false.if.end12_crit_edge
  %40 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i84 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32775, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i84)
  %cmp.i.i85 = icmp slt i32 %call1.i.i84, 0
  %tobool14.not120 = icmp eq ptr %41, null
  %tobool14.not = select i1 %cmp.i.i85, i1 true, i1 %tobool14.not120
  br i1 %tobool14.not, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %3)
  %cmp16 = icmp eq i32 %23, %3
  br i1 %cmp16, label %if.then.i.i89, label %if.then15.nla_nest_cancel.exit104_crit_edge

if.then15.nla_nest_cancel.exit104_crit_edge:      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_nest_cancel.exit104

if.then.i.i89:                                    ; preds = %if.then15
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %42 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i88 = icmp ugt ptr %43, %5
  br i1 %cmp.i.i88, label %do.end.i.i, label %if.then.i.i89.nla_nest_cancel.exit_crit_edge, !prof !42

if.then.i.i89.nla_nest_cancel.exit_crit_edge:     ; preds = %if.then.i.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i89
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i89.nla_nest_cancel.exit_crit_edge
  %44 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #8
  br label %out

if.end20:                                         ; preds = %if.end12
  %46 = ptrtoint ptr %first_port.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %first_port.i, align 4
  %48 = trunc i32 %23 to i16
  %conv1.i = add i16 %47, %48
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i.i) #8
  %49 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv1.i, ptr %tmp.i.i.i, align 2
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 16388, i32 noundef 2, ptr noundef nonnull %tmp.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool23.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.if.then.i.i98_crit_edge

if.end20.if.then.i.i98_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i98

if.end25:                                         ; preds = %if.end20
  %call27 = call i32 @ip_set_put_extensions(ptr noundef %skb, ptr noundef %set, ptr noundef %add.ptr, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.if.then.i.i98_crit_edge

if.end25.if.then.i.i98_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i98

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %51 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %52 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i, ptr %41, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end30, %ip_set_timeout_expired.exit.for.inc_crit_edge, %cond_resched_rcu.exit.for.inc_crit_edge
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %54, 1
  store i32 %inc, ptr %arrayidx, align 4
  %55 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %elements, align 8
  %cmp = icmp ult i32 %inc, %56
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %57 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i91 = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast.i92 = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i93 = sub i32 %sub.ptr.lhs.cast.i91, %sub.ptr.rhs.cast.i92
  %conv.i94 = trunc i32 %sub.ptr.sub.i93 to i16
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.i94, ptr %5, align 2
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %arrayidx, align 4
  br label %out

if.then.i.i98:                                    ; preds = %if.end25.if.then.i.i98_crit_edge, %if.end20.if.then.i.i98_crit_edge
  %data.i.i96 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %61 = ptrtoint ptr %data.i.i96 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i.i96, align 4
  %cmp.i.i97 = icmp ugt ptr %62, %41
  br i1 %cmp.i.i97, label %do.end.i.i99, label %if.then.i.i98.if.end.i.i103_crit_edge, !prof !42

if.then.i.i98.if.end.i.i103_crit_edge:            ; preds = %if.then.i.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i103

do.end.i.i99:                                     ; preds = %if.then.i.i98
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i103

if.end.i.i103:                                    ; preds = %do.end.i.i99, %if.then.i.i98.if.end.i.i103_crit_edge
  %63 = ptrtoint ptr %data.i.i96 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i.i96, align 4
  %sub.ptr.lhs.cast.i.i100 = ptrtoint ptr %41 to i32
  %sub.ptr.rhs.cast.i.i101 = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i.i102 = sub i32 %sub.ptr.lhs.cast.i.i100, %sub.ptr.rhs.cast.i.i101
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i102) #8
  br label %nla_nest_cancel.exit104

nla_nest_cancel.exit104:                          ; preds = %if.end.i.i103, %if.then15.nla_nest_cancel.exit104_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %3)
  %cmp35 = icmp eq i32 %23, %3
  br i1 %cmp35, label %if.then39, label %nla_nest_cancel.exit104.if.end41_crit_edge, !prof !42

nla_nest_cancel.exit104.if.end41_crit_edge:       ; preds = %nla_nest_cancel.exit104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then39:                                        ; preds = %nla_nest_cancel.exit104
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %arrayidx, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %nla_nest_cancel.exit104.if.end41_crit_edge
  %ret.0 = phi i32 [ -90, %if.then39 ], [ 0, %nla_nest_cancel.exit104.if.end41_crit_edge ]
  %66 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i106 = ptrtoint ptr %67 to i32
  %sub.ptr.rhs.cast.i107 = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i108 = sub i32 %sub.ptr.lhs.cast.i106, %sub.ptr.rhs.cast.i107
  %conv.i109 = trunc i32 %sub.ptr.sub.i108 to i16
  %68 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i109, ptr %5, align 2
  br label %out

out:                                              ; preds = %if.end41, %for.end, %nla_nest_cancel.exit
  %ret.1 = phi i32 [ %ret.0, %if.end41 ], [ -90, %nla_nest_cancel.exit ], [ 0, %for.end ]
  %call.i110 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i110, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i113

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i113:                               ; preds = %out
  %call1.i111 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i111)
  %tobool.not.i112 = icmp eq i32 %call1.i111, 0
  br i1 %tobool.not.i112, label %land.lhs.true.i113.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i115

land.lhs.true.i113.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i115:                              ; preds = %land.lhs.true.i113
  %.b4.i114 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i114, label %land.lhs.true2.i115.rcu_read_unlock.exit_crit_edge, label %if.then.i116

land.lhs.true2.i115.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i116:                                     ; preds = %land.lhs.true2.i115
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i116, %land.lhs.true2.i115.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i113.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %69 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i117 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i.i117 to ptr
  %preempt_count.i.i.i.i118 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i.i.i118, align 4
  %sub.i.i.i = add i32 %72, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i118, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %rcu_read_unlock.exit ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bitmap_port_same_set(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
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
  %first_port = getelementptr inbounds %struct.bitmap_port, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %first_port to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %first_port, align 4
  %first_port2 = getelementptr inbounds %struct.bitmap_port, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %first_port2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %first_port2, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp = icmp eq i16 %5, %7
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %last_port = getelementptr inbounds %struct.bitmap_port, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %last_port to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %last_port, align 2
  %last_port6 = getelementptr inbounds %struct.bitmap_port, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %last_port6 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %last_port6, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp8 = icmp eq i16 %9, %11
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %timeout = getelementptr inbounds %struct.ip_set, ptr %a, i32 0, i32 10
  %12 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timeout, align 4
  %timeout11 = getelementptr inbounds %struct.ip_set, ptr %b, i32 0, i32 10
  %14 = ptrtoint ptr %timeout11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timeout11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp12 = icmp eq i32 %13, %15
  br i1 %cmp12, label %land.rhs, label %land.lhs.true10.land.end_crit_edge

land.lhs.true10.land.end_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  %extensions = getelementptr inbounds %struct.ip_set, ptr %a, i32 0, i32 8
  %16 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %extensions, align 2
  %extensions15 = getelementptr inbounds %struct.ip_set, ptr %b, i32 0, i32 8
  %18 = ptrtoint ptr %extensions15 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %extensions15, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp17 = icmp eq i8 %17, %19
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true10.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %20 = phi i1 [ false, %land.lhs.true10.land.end_crit_edge ], [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %cmp17, %land.rhs ]
  ret i1 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ip_set_get_ip4_port(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ip_set_get_ip6_port(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_get_extensions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_set_init_comment(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

!0 = !{ptr @__UNIQUE_ID_file489, !1, !"__UNIQUE_ID_file489", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipset/ip_set_bitmap_port.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_license490, !1, !"__UNIQUE_ID_license490", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author491, !4, !"__UNIQUE_ID_author491", i1 false, i1 false}
!4 = !{!"../net/netfilter/ipset/ip_set_bitmap_port.c", i32 25, i32 1}
!5 = !{ptr @__UNIQUE_ID_description492, !6, !"__UNIQUE_ID_description492", i1 false, i1 false}
!6 = !{!"../net/netfilter/ipset/ip_set_bitmap_port.c", i32 26, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias493, !8, !"__UNIQUE_ID_alias493", i1 false, i1 false}
!8 = !{!"../net/netfilter/ipset/ip_set_bitmap_port.c", i32 27, i32 1}
!9 = !{ptr @__initcall__kmod_ip_set_bitmap_port__498_331_bitmap_port_init6, !10, !"__initcall__kmod_ip_set_bitmap_port__498_331_bitmap_port_init6", i1 false, i1 false}
!10 = !{!"../net/netfilter/ipset/ip_set_bitmap_port.c", i32 331, i32 1}
!11 = !{ptr @__exitcall_bitmap_port_fini, !12, !"__exitcall_bitmap_port_fini", i1 false, i1 false}
!12 = !{!"../net/netfilter/ipset/ip_set_bitmap_port.c", i32 332, i32 1}
!13 = !{ptr @bitmap_port_type, !14, !"bitmap_port_type", i1 false, i1 false}
!14 = !{!"../net/netfilter/ipset/ip_set_bitmap_port.c", i32 287, i32 27}
!15 = !{ptr @bitmap_port, !16, !"bitmap_port", i1 false, i1 false}
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
!28 = !{ptr @bitmap_port_gc_init.__key, !29, !"__key", i1 false, i1 false}
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
!41 = !{!"branch_weights", i32 1073205, i32 2146410443}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{!"auto-init"}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{i64 2149362795}
!46 = !{i64 2149363061}

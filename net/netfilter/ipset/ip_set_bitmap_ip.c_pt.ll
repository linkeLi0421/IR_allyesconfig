; ModuleID = '/llk/IR_all_yes/net/netfilter/ipset/ip_set_bitmap_ip.c_pt.bc'
source_filename = "../net/netfilter/ipset/ip_set_bitmap_ip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ip_set_type = type { %struct.list_head, [32 x i8], i8, i8, i8, i8, i8, [10 x i8], i16, ptr, [27 x %struct.nla_policy], [31 x %struct.nla_policy], ptr }
%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.ip_set_type_variant = type { ptr, ptr, [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%union.nf_inet_addr = type { [4 x i32] }
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
%struct.bitmap_ip = type { ptr, i32, i32, i32, i32, i32, i8, %struct.timer_list, ptr, [0 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.bitmap_ip_adt_elem = type { i16 }
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
%struct.ip_set_adt_opt = type { i8, i8, i8, i32, %struct.ip_set_ext }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
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

@__UNIQUE_ID_file610 = internal constant [59 x i8] c"ip_set_bitmap_ip.file=net/netfilter/ipset/ip_set_bitmap_ip\00", section ".modinfo", align 1
@__UNIQUE_ID_license611 = internal constant [29 x i8] c"ip_set_bitmap_ip.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author612 = internal constant [64 x i8] c"ip_set_bitmap_ip.author=Jozsef Kadlecsik <kadlec@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description613 = internal constant [70 x i8] c"ip_set_bitmap_ip.description=bitmap:ip type of IP sets, revisions 0-3\00", section ".modinfo", align 1
@__UNIQUE_ID_alias614 = internal constant [40 x i8] c"ip_set_bitmap_ip.alias=ip_set_bitmap:ip\00", section ".modinfo", align 1
@bitmap_ip_type = internal global %struct.ip_set_type { %struct.list_head zeroinitializer, [32 x i8] c"bitmap:ip\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 7, i8 1, i8 2, i8 0, i8 3, [10 x i8] zeroinitializer, i16 1, ptr @bitmap_ip_create, [27 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [31 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 255, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer], ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_ip_set_bitmap_ip__621_386_bitmap_ip_init6 = internal global ptr @bitmap_ip_init, section ".initcall6.init", align 4
@__exitcall_bitmap_ip_fini = internal global ptr @bitmap_ip_fini, section ".exitcall.exit", align 4
@bitmap_ip_create.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ip_set_bitmap_ip\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bitmap_ip_create\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"net/netfilter/ipset/ip_set_bitmap_ip.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mask_bits %u, netmask %u\0A\00", [38 x i8] zeroinitializer }, align 32
@bitmap_ip_create.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hosts %u, elements %llu\0A\00", [39 x i8] zeroinitializer }, align 32
@bitmap_ip = internal constant { %struct.ip_set_type_variant, [40 x i8] } { %struct.ip_set_type_variant { ptr @bitmap_ip_kadt, ptr @bitmap_ip_uadt, [3 x ptr] [ptr @bitmap_ip_add, ptr @bitmap_ip_del, ptr @bitmap_ip_test], ptr null, ptr @bitmap_ip_destroy, ptr @bitmap_ip_flush, ptr null, ptr @bitmap_ip_head, ptr @bitmap_ip_list, ptr null, ptr @bitmap_ip_same_set, i8 0 }, [40 x i8] zeroinitializer }, align 32
@ip_set_hostmask_map = external dso_local local_unnamed_addr constant [0 x %union.nf_inet_addr], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ip_set_extensions = external dso_local local_unnamed_addr constant [0 x %struct.ip_set_ext_type], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/linux/sched.h\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@bitmap_ip_gc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"(&map->gc)\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 310, i32 3 }
@___asan_gen_.24 = private constant [42 x i8] c"../net/netfilter/ipset/ip_set_bitmap_ip.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 317, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [10 x i8] c"bitmap_ip\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 291, i32 41 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 695, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [25 x i8] c"../include/linux/sched.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 2089, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 991, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 723, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [43 x i8] c"../net/netfilter/ipset/ip_set_bitmap_gen.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 40, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_alias614, ptr @__UNIQUE_ID_author612, ptr @__UNIQUE_ID_description613, ptr @__UNIQUE_ID_file610, ptr @__UNIQUE_ID_license611, ptr @__exitcall_bitmap_ip_fini, ptr @__initcall__kmod_ip_set_bitmap_ip__621_386_bitmap_ip_init6, ptr @bitmap_ip_fini, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @bitmap_ip, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @bitmap_ip_gc_init.__key, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitmap_ip to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitmap_ip_gc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bitmap_ip_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rcu_barrier() #8
  tail call void @ip_set_type_unregister(ptr noundef nonnull @bitmap_ip_type) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_set_type_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_ip_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_set_type_register(ptr noundef nonnull @bitmap_ip_type) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_ip_create(ptr nocapture noundef readnone %net, ptr noundef %set, ptr noundef %tb, i32 noundef %flags) #2 align 64 {
entry:
  %ip.i210 = alloca i32, align 4
  %ip.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup145_crit_edge, label %lor.lhs.false, !prof !50

entry.cleanup145_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

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
  br i1 %tobool2.i.not, label %ip_set_optattr_netorder.exit.cleanup145_crit_edge, label %ip_set_optattr_netorder.exit.lor.rhs_crit_edge, !prof !50

ip_set_optattr_netorder.exit.lor.rhs_crit_edge:   ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

ip_set_optattr_netorder.exit.cleanup145_crit_edge: ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

lor.rhs:                                          ; preds = %ip_set_optattr_netorder.exit.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %arrayidx.i203 = getelementptr ptr, ptr %tb, i32 8
  %7 = ptrtoint ptr %arrayidx.i203 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i203, align 4
  %tobool.not.i204 = icmp eq ptr %8, null
  br i1 %tobool.not.i204, label %lor.rhs.if.end_crit_edge, label %ip_set_optattr_netorder.exit208

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

ip_set_optattr_netorder.exit208:                  ; preds = %lor.rhs
  %nla_type.i205 = getelementptr inbounds %struct.nlattr, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %nla_type.i205 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nla_type.i205, align 2
  %11 = and i16 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool2.i206.not = icmp eq i16 %11, 0
  br i1 %tobool2.i206.not, label %ip_set_optattr_netorder.exit208.cleanup145_crit_edge, label %ip_set_optattr_netorder.exit208.if.end_crit_edge, !prof !50

ip_set_optattr_netorder.exit208.if.end_crit_edge: ; preds = %ip_set_optattr_netorder.exit208
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

ip_set_optattr_netorder.exit208.cleanup145_crit_edge: ; preds = %ip_set_optattr_netorder.exit208
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

if.end:                                           ; preds = %ip_set_optattr_netorder.exit208.if.end_crit_edge, %lor.rhs.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip.i) #8
  %12 = ptrtoint ptr %ip.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %ip.i, align 4, !annotation !51
  %call.i = call i32 @ip_set_get_ipaddr4(ptr noundef nonnull %1, ptr noundef nonnull %ip.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i209 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i209, label %if.end9, label %ip_set_get_hostipaddr4.exit

ip_set_get_hostipaddr4.exit:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i) #8
  br label %cleanup145

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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip.i210) #8
  %17 = ptrtoint ptr %ip.i210 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %ip.i210, align 4, !annotation !51
  %call.i211 = call i32 @ip_set_get_ipaddr4(ptr noundef nonnull %16, ptr noundef nonnull %ip.i210) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211)
  %tobool.not.i212 = icmp eq i32 %call.i211, 0
  br i1 %tobool.not.i212, label %if.end17, label %ip_set_get_hostipaddr4.exit214

ip_set_get_hostipaddr4.exit214:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i210) #8
  br label %cleanup145

if.end17:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %ip.i210 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ip.i210, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i210) #8
  %20 = call i32 @llvm.umin.i32(i32 %14, i32 %19)
  %21 = call i32 @llvm.umax.i32(i32 %14, i32 %19)
  br label %if.end36

if.else:                                          ; preds = %if.end9
  %arrayidx20 = getelementptr ptr, ptr %tb, i32 3
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx20, align 4
  %tobool21.not = icmp eq ptr %23, null
  br i1 %tobool21.not, label %if.else.cleanup145_crit_edge, label %if.then22

if.else.cleanup145_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

if.then22:                                        ; preds = %if.else
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %25)
  %cmp25 = icmp ugt i8 %25, 31
  br i1 %cmp25, label %if.then22.cleanup145_crit_edge, label %do.body29

if.then22.cleanup145_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

do.body29:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom.i = zext i8 %25 to i32
  %arrayidx.i215 = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_hostmask_map, i32 0, i32 %idxprom.i
  %26 = ptrtoint ptr %arrayidx.i215 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i215, align 4
  %and = and i32 %27, %14
  %neg = xor i32 %27, -1
  %or = or i32 %14, %neg
  br label %if.end36

if.end36:                                         ; preds = %do.body29, %if.end17
  %first_ip.1 = phi i32 [ %and, %do.body29 ], [ %20, %if.end17 ]
  %last_ip.1 = phi i32 [ %or, %do.body29 ], [ %21, %if.end17 ]
  %arrayidx37 = getelementptr ptr, ptr %tb, i32 20
  %28 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx37, align 4
  %tobool38.not = icmp eq ptr %29, null
  br i1 %tobool38.not, label %if.end36.if.then56_crit_edge, label %if.then39

if.end36.if.then56_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

if.then39:                                        ; preds = %if.end36
  %add.ptr.i.i218 = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i218 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr.i.i218, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %31)
  %cmp43 = icmp ugt i8 %31, 32
  br i1 %cmp43, label %if.then39.cleanup145_crit_edge, label %if.end52

if.then39.cleanup145_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

if.end52:                                         ; preds = %if.then39
  %idxprom.i219 = zext i8 %31 to i32
  %arrayidx.i220 = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_hostmask_map, i32 0, i32 %idxprom.i219
  %32 = ptrtoint ptr %arrayidx.i220 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i220, align 4
  %and48 = and i32 %33, %first_ip.1
  %neg50 = xor i32 %33, -1
  %or51 = or i32 %last_ip.1, %neg50
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %31)
  %cmp54 = icmp eq i8 %31, 32
  br i1 %cmp54, label %if.end52.if.then56_crit_edge, label %if.end52.while.cond.i_crit_edge

if.end52.while.cond.i_crit_edge:                  ; preds = %if.end52
  br label %while.cond.i

if.end52.if.then56_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

if.then56:                                        ; preds = %if.end52.if.then56_crit_edge, %if.end36.if.then56_crit_edge
  %last_ip.2252 = phi i32 [ %or51, %if.end52.if.then56_crit_edge ], [ %last_ip.1, %if.end36.if.then56_crit_edge ]
  %first_ip.2250 = phi i32 [ %and48, %if.end52.if.then56_crit_edge ], [ %first_ip.1, %if.end36.if.then56_crit_edge ]
  %conv57 = zext i32 %last_ip.2252 to i64
  %conv58 = zext i32 %first_ip.2250 to i64
  %sub = add nuw nsw i64 %conv57, 1
  %add = sub nsw i64 %sub, %conv58
  br label %if.end101

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end52.while.cond.i_crit_edge
  %dec10.i = phi i8 [ %dec.i, %while.cond.i.while.cond.i_crit_edge ], [ 32, %if.end52.while.cond.i_crit_edge ]
  %mask.0.i = phi i32 [ %shl.i, %while.cond.i.while.cond.i_crit_edge ], [ -2, %if.end52.while.cond.i_crit_edge ]
  %dec.i = add nsw i8 %dec10.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %cmp.not.i = icmp eq i8 %dec.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.0.i)
  %tobool.not.i223 = icmp eq i32 %mask.0.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %tobool.not.i223
  %and.i = and i32 %mask.0.i, %or51
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and48)
  %cmp2.not.i = icmp eq i32 %and.i, %and48
  %or.cond9.i = select i1 %or.cond.i, i1 true, i1 %cmp2.not.i
  %shl.i = shl i32 %mask.0.i, 1
  br i1 %or.cond9.i, label %range_to_mask.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

range_to_mask.exit:                               ; preds = %while.cond.i
  br i1 %tobool.not.i223, label %land.lhs.true, label %lor.lhs.false66

land.lhs.true:                                    ; preds = %range_to_mask.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool62.not = icmp eq i32 %and48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or51)
  %cmp64.not = icmp eq i32 %or51, -1
  %or.cond = select i1 %tobool62.not, i1 %cmp64.not, i1 false
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %dec.i)
  %cmp69.not = icmp ugt i8 %31, %dec.i
  %or.cond266 = select i1 %or.cond, i1 %cmp69.not, i1 false
  br i1 %or.cond266, label %land.lhs.true.do.body73_crit_edge, label %land.lhs.true.cleanup145_crit_edge

land.lhs.true.cleanup145_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

land.lhs.true.do.body73_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body73

lor.lhs.false66:                                  ; preds = %range_to_mask.exit
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %dec.i)
  %cmp69.not.old = icmp ugt i8 %31, %dec.i
  br i1 %cmp69.not.old, label %lor.lhs.false66.do.body73_crit_edge, label %lor.lhs.false66.cleanup145_crit_edge

lor.lhs.false66.cleanup145_crit_edge:             ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

lor.lhs.false66.do.body73_crit_edge:              ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body73

do.body73:                                        ; preds = %lor.lhs.false66.do.body73_crit_edge, %land.lhs.true.do.body73_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bitmap_ip_create.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bitmap_ip_create, %if.then82)) #8
          to label %cleanup97 [label %if.then82], !srcloc !52

if.then82:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  %conv83 = zext i8 %dec.i to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bitmap_ip_create.__UNIQUE_ID_ddebug619, ptr noundef nonnull @.str.3, i32 noundef %conv83, i32 noundef %idxprom.i219) #8
  br label %cleanup97

cleanup97:                                        ; preds = %if.then82, %do.body73
  %sub90 = sub nsw i32 31, %idxprom.i219
  %shl = shl i32 2, %sub90
  %conv92 = zext i8 %dec.i to i32
  %34 = xor i32 %conv92, -1
  %sub94 = add nsw i32 %34, %idxprom.i219
  %shl95 = shl i32 2, %sub94
  %conv96 = sext i32 %shl95 to i64
  br label %if.end101

if.end101:                                        ; preds = %cleanup97, %if.then56
  %netmask.0254 = phi i8 [ 32, %if.then56 ], [ %31, %cleanup97 ]
  %last_ip.2253 = phi i32 [ %last_ip.2252, %if.then56 ], [ %or51, %cleanup97 ]
  %first_ip.2251 = phi i32 [ %first_ip.2250, %if.then56 ], [ %and48, %cleanup97 ]
  %elements.1 = phi i64 [ %add, %if.then56 ], [ %conv96, %cleanup97 ]
  %hosts.1 = phi i32 [ 1, %if.then56 ], [ %shl, %cleanup97 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %elements.1)
  %cmp102 = icmp ugt i64 %elements.1, 65536
  br i1 %cmp102, label %if.end101.cleanup145_crit_edge, label %do.body106

if.end101.cleanup145_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

do.body106:                                       ; preds = %if.end101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bitmap_ip_create.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bitmap_ip_create, %if.then118)) #8
          to label %do.end121 [label %if.then118], !srcloc !52

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bitmap_ip_create.__UNIQUE_ID_ddebug620, ptr noundef nonnull @.str.4, i32 noundef %hosts.1, i64 noundef %elements.1) #8
  br label %do.end121

do.end121:                                        ; preds = %if.then118, %do.body106
  %call122 = call i32 @ip_set_elem_len(ptr noundef %set, ptr noundef %tb, i32 noundef 0, i32 noundef 0) #8
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %35 = ptrtoint ptr %dsize to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call122, ptr %dsize, align 4
  %36 = trunc i64 %elements.1 to i32
  %37 = mul i32 %call122, %36
  %conv126 = add i32 %37, 80
  %call127 = call ptr @ip_set_alloc(i32 noundef %conv126) #8
  %tobool128.not = icmp eq ptr %call127, null
  br i1 %tobool128.not, label %do.end121.cleanup145_crit_edge, label %if.end130

do.end121.cleanup145_crit_edge:                   ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

if.end130:                                        ; preds = %do.end121
  %sub132 = add nuw nsw i64 %elements.1, 31
  %38 = lshr i64 %sub132, 3
  %39 = trunc i64 %38 to i32
  %conv134 = and i32 %39, -4
  %memsize = getelementptr inbounds %struct.bitmap_ip, ptr %call127, i32 0, i32 5
  %40 = ptrtoint ptr %memsize to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv134, ptr %memsize, align 4
  %variant = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 5
  %41 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @bitmap_ip, ptr %variant, align 4
  %call.i224 = call ptr @bitmap_zalloc(i32 noundef %36, i32 noundef 11456) #8
  %42 = ptrtoint ptr %call127 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i224, ptr %call127, align 8
  %tobool.not.i225 = icmp eq ptr %call.i224, null
  br i1 %tobool.not.i225, label %if.then137, label %if.end138

if.then137:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  call void @ip_set_free(ptr noundef nonnull %call127) #8
  br label %cleanup145

if.end138:                                        ; preds = %if.end130
  %first_ip2.i = getelementptr inbounds %struct.bitmap_ip, ptr %call127, i32 0, i32 1
  %43 = ptrtoint ptr %first_ip2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %first_ip.2251, ptr %first_ip2.i, align 4
  %last_ip3.i = getelementptr inbounds %struct.bitmap_ip, ptr %call127, i32 0, i32 2
  %44 = ptrtoint ptr %last_ip3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %last_ip.2253, ptr %last_ip3.i, align 8
  %elements4.i = getelementptr inbounds %struct.bitmap_ip, ptr %call127, i32 0, i32 3
  %45 = ptrtoint ptr %elements4.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %36, ptr %elements4.i, align 4
  %hosts5.i = getelementptr inbounds %struct.bitmap_ip, ptr %call127, i32 0, i32 4
  %46 = ptrtoint ptr %hosts5.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %hosts.1, ptr %hosts5.i, align 8
  %netmask6.i = getelementptr inbounds %struct.bitmap_ip, ptr %call127, i32 0, i32 6
  %47 = ptrtoint ptr %netmask6.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %netmask.0254, ptr %netmask6.i, align 8
  %timeout.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 10
  %48 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %timeout.i, align 4
  %set7.i = getelementptr inbounds %struct.bitmap_ip, ptr %call127, i32 0, i32 8
  %49 = ptrtoint ptr %set7.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %set, ptr %set7.i, align 4
  %data.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %50 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call127, ptr %data.i, align 4
  %family.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 6
  %51 = ptrtoint ptr %family.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %family.i, align 4
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i, align 4
  %tobool140.not = icmp eq ptr %53, null
  br i1 %tobool140.not, label %if.end138.cleanup145_crit_edge, label %if.then141

if.end138.cleanup145_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

if.then141:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i = getelementptr i8, ptr %53, i32 4
  %54 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %56 = call i32 @llvm.umin.i32(i32 %55, i32 2147483) #8
  %57 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %timeout.i, align 4
  call fastcc void @bitmap_ip_gc_init(ptr noundef %set)
  br label %cleanup145

cleanup145:                                       ; preds = %if.then141, %if.end138.cleanup145_crit_edge, %if.then137, %do.end121.cleanup145_crit_edge, %if.end101.cleanup145_crit_edge, %lor.lhs.false66.cleanup145_crit_edge, %land.lhs.true.cleanup145_crit_edge, %if.then39.cleanup145_crit_edge, %if.then22.cleanup145_crit_edge, %if.else.cleanup145_crit_edge, %ip_set_get_hostipaddr4.exit214, %ip_set_get_hostipaddr4.exit, %ip_set_optattr_netorder.exit208.cleanup145_crit_edge, %ip_set_optattr_netorder.exit.cleanup145_crit_edge, %entry.cleanup145_crit_edge
  %retval.3 = phi i32 [ -12, %if.then137 ], [ -4097, %ip_set_optattr_netorder.exit208.cleanup145_crit_edge ], [ %call.i, %ip_set_get_hostipaddr4.exit ], [ %call.i211, %ip_set_get_hostipaddr4.exit214 ], [ -4097, %if.else.cleanup145_crit_edge ], [ -4105, %if.then39.cleanup145_crit_edge ], [ -4353, %if.end101.cleanup145_crit_edge ], [ -12, %do.end121.cleanup145_crit_edge ], [ 0, %if.then141 ], [ 0, %if.end138.cleanup145_crit_edge ], [ -4104, %if.then22.cleanup145_crit_edge ], [ -4097, %ip_set_optattr_netorder.exit.cleanup145_crit_edge ], [ -4097, %entry.cleanup145_crit_edge ], [ -4352, %lor.lhs.false66.cleanup145_crit_edge ], [ -4352, %land.lhs.true.cleanup145_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_elem_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_set_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_set_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bitmap_ip_gc_init(ptr nocapture noundef readonly %set) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %gc1 = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 7
  tail call void @init_timer_key(ptr noundef %gc1, ptr noundef nonnull @bitmap_ip_gc, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @bitmap_ip_gc_init.__key) #8
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
define internal void @bitmap_ip_gc(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -28
  %set1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %set1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set1, align 4
  %lock = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %elements = getelementptr i8, ptr %t, i32 -16
  %2 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %elements, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp43.not = icmp eq i32 %3, 0
  br i1 %cmp43.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dsize = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 13
  %extensions = getelementptr i8, ptr %t, i32 52
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
  %26 = load i32, ptr %elements, align 4
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
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_get_ipaddr4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_ip_kadt(ptr noundef %set, ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %par, i32 noundef %adt, ptr noundef %opt) #2 align 64 {
entry:
  %e = alloca %struct.bitmap_ip_adt_elem, align 2
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
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ext) #8
  %6 = getelementptr inbounds i8, ptr %ext, i32 40
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %6, align 8, !annotation !51
  %8 = call ptr @memset(ptr %ext, i32 0, i32 16)
  %packets = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %9 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1, ptr %packets, align 8
  %bytes = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %conv = zext i32 %11 to i64
  %12 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %bytes, align 8
  %comment = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 3
  %13 = ptrtoint ptr %comment to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %comment, align 8
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %ext2 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4
  %timeout3 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %timeout3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timeout3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.not = icmp eq i32 %15, -1
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %timeout7 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 10
  %16 = ptrtoint ptr %timeout7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %timeout7, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %17, %cond.false ], [ %15, %entry.cond.end_crit_edge ]
  %18 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond, ptr %timeout, align 4
  %packets_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 5
  %19 = ptrtoint ptr %packets_op to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %packets_op, align 8
  %bytes_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 6
  %20 = ptrtoint ptr %bytes_op to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %bytes_op, align 1
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %21 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %target, align 2
  %flags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 2
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flags, align 2
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %25 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %27 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %28 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 %conv.i.i.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %cond.in.i = select i1 %tobool.not, ptr %daddr.i, ptr %saddr.i
  %29 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %first_ip = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %first_ip to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %first_ip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %31)
  %cmp9 = icmp ult i32 %cond.i, %31
  br i1 %cmp9, label %cond.end.cleanup_crit_edge, label %lor.lhs.false

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %cond.end
  %last_ip = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %last_ip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %last_ip, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %33)
  %cmp11 = icmp ugt i32 %cond.i, %33
  br i1 %cmp11, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %netmask.i = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %netmask.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %netmask.i, align 8
  %idxprom.i.i = zext i8 %35 to i32
  %arrayidx.i.i = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_hostmask_map, i32 0, i32 %idxprom.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i, align 4
  %and.i = and i32 %37, %cond.i
  %sub.i = sub i32 %and.i, %31
  %hosts.i = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %hosts.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hosts.i, align 8
  %div.i = udiv i32 %sub.i, %39
  %conv14 = trunc i32 %div.i to i16
  %40 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv14, ptr %e, align 2
  %cmdflags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 3
  %41 = ptrtoint ptr %cmdflags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cmdflags, align 4
  %call16 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef %ext2, i32 noundef %42) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end ], [ -4352, %lor.lhs.false.cleanup_crit_edge ], [ -4352, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ext) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %e) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_ip_uadt(ptr noundef %set, ptr noundef %tb, i32 noundef %adt, ptr nocapture noundef writeonly %lineno, i32 noundef %flags, i1 noundef zeroext %retried) #2 align 64 {
entry:
  %ip.i129 = alloca i32, align 4
  %ip.i = alloca i32, align 4
  %e = alloca %struct.bitmap_ip_adt_elem, align 2
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
  store i64 -1, ptr %7, align 8, !annotation !51
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
  br i1 %tobool6.not, label %if.end.cleanup82_crit_edge, label %if.end11, !prof !50

if.end.cleanup82_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

if.end11:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip.i) #8
  %25 = ptrtoint ptr %ip.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %ip.i, align 4, !annotation !51
  %call.i = call i32 @ip_set_get_ipaddr4(ptr noundef nonnull %24, ptr noundef nonnull %ip.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end16, label %ip_set_get_hostipaddr4.exit

ip_set_get_hostipaddr4.exit:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i) #8
  br label %cleanup82

if.end16:                                         ; preds = %if.end11
  %26 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ip.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i) #8
  %call17 = call i32 @ip_set_get_extensions(ptr noundef %set, ptr noundef %tb, ptr noundef nonnull %ext) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup82_crit_edge

if.end16.cleanup82_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

if.end20:                                         ; preds = %if.end16
  %first_ip = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %first_ip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %first_ip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp = icmp ult i32 %27, %29
  br i1 %cmp, label %if.end20.cleanup82_crit_edge, label %lor.lhs.false

if.end20.cleanup82_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

lor.lhs.false:                                    ; preds = %if.end20
  %last_ip = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %last_ip to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %last_ip, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %31)
  %cmp21 = icmp ugt i32 %27, %31
  br i1 %cmp21, label %lor.lhs.false.cleanup82_crit_edge, label %if.end23

lor.lhs.false.cleanup82_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

if.end23:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %adt)
  %cmp24 = icmp eq i32 %adt, 2
  br i1 %cmp24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %netmask.i = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %netmask.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %netmask.i, align 8
  %idxprom.i.i = zext i8 %33 to i32
  %arrayidx.i.i = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_hostmask_map, i32 0, i32 %idxprom.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i, align 4
  %and.i = and i32 %35, %27
  %sub.i = sub i32 %and.i, %29
  %hosts.i = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %hosts.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hosts.i, align 8
  %div.i = udiv i32 %sub.i, %37
  %conv = trunc i32 %div.i to i16
  %38 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv, ptr %e, align 2
  %call27 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef nonnull %ext, i32 noundef %flags) #8
  br label %cleanup82

if.end28:                                         ; preds = %if.end23
  %arrayidx29 = getelementptr ptr, ptr %tb, i32 2
  %39 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx29, align 4
  %tobool30.not = icmp eq ptr %40, null
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip.i129) #8
  %41 = ptrtoint ptr %ip.i129 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %ip.i129, align 4, !annotation !51
  %call.i130 = call i32 @ip_set_get_ipaddr4(ptr noundef nonnull %40, ptr noundef nonnull %ip.i129) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool.not.i131 = icmp eq i32 %call.i130, 0
  br i1 %tobool.not.i131, label %if.end36, label %ip_set_get_hostipaddr4.exit133

ip_set_get_hostipaddr4.exit133:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i129) #8
  br label %cleanup82

if.end36:                                         ; preds = %if.then31
  %42 = ptrtoint ptr %ip.i129 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ip.i129, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i129) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %43)
  %cmp37 = icmp ugt i32 %27, %43
  br i1 %cmp37, label %do.body, label %if.end36.if.end65_crit_edge

if.end36.if.end65_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

do.body:                                          ; preds = %if.end36
  %44 = ptrtoint ptr %first_ip to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %first_ip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp41 = icmp ult i32 %43, %45
  br i1 %cmp41, label %do.body.cleanup82_crit_edge, label %do.body.if.end65_crit_edge

do.body.if.end65_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

do.body.cleanup82_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

if.else:                                          ; preds = %if.end28
  %arrayidx46 = getelementptr ptr, ptr %tb, i32 3
  %46 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx46, align 4
  %tobool47.not = icmp eq ptr %47, null
  br i1 %tobool47.not, label %if.else.if.end65_crit_edge, label %if.then48

if.else.if.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then48:                                        ; preds = %if.else
  %add.ptr.i.i134 = getelementptr i8, ptr %47, i32 4
  %48 = ptrtoint ptr %add.ptr.i.i134 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %add.ptr.i.i134, align 1
  %50 = add i8 %49, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %50)
  %51 = icmp ult i8 %50, -32
  br i1 %51, label %if.then48.cleanup82_crit_edge, label %do.body58

if.then48.cleanup82_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

do.body58:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom.i = zext i8 %49 to i32
  %arrayidx.i = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_hostmask_map, i32 0, i32 %idxprom.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i, align 4
  %and = and i32 %53, %27
  %neg = xor i32 %53, -1
  %or = or i32 %27, %neg
  br label %if.end65

if.end65:                                         ; preds = %do.body58, %if.else.if.end65_crit_edge, %do.body.if.end65_crit_edge, %if.end36.if.end65_crit_edge
  %ip.1 = phi i32 [ %and, %do.body58 ], [ %43, %do.body.if.end65_crit_edge ], [ %27, %if.end36.if.end65_crit_edge ], [ %27, %if.else.if.end65_crit_edge ]
  %ip_to.1 = phi i32 [ %or, %do.body58 ], [ %27, %do.body.if.end65_crit_edge ], [ %43, %if.end36.if.end65_crit_edge ], [ %27, %if.else.if.end65_crit_edge ]
  %54 = ptrtoint ptr %last_ip to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %last_ip, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %ip_to.1, i32 %55)
  %cmp67 = icmp ugt i32 %ip_to.1, %55
  br i1 %cmp67, label %if.end65.cleanup82_crit_edge, label %for.cond.preheader

if.end65.cleanup82_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

for.cond.preheader:                               ; preds = %if.end65
  %sub.i137159 = sub i32 %ip_to.1, %ip.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i137159)
  %cmp.i160 = icmp slt i32 %sub.i137159, 0
  br i1 %cmp.i160, label %for.cond.preheader.cleanup82_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup82_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %netmask.i138 = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 6
  %hosts.i144 = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 4
  %and.i147 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i147)
  %tobool.i = icmp ne i32 %and.i147, 0
  br label %for.body

for.body:                                         ; preds = %if.end81.for.body_crit_edge, %for.body.lr.ph
  %ip.2161 = phi i32 [ %ip.1, %for.body.lr.ph ], [ %add, %if.end81.for.body_crit_edge ]
  %56 = ptrtoint ptr %netmask.i138 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %netmask.i138, align 8
  %idxprom.i.i139 = zext i8 %57 to i32
  %arrayidx.i.i140 = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_hostmask_map, i32 0, i32 %idxprom.i.i139
  %58 = ptrtoint ptr %arrayidx.i.i140 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i140, align 4
  %and.i141 = and i32 %59, %ip.2161
  %60 = ptrtoint ptr %first_ip to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %first_ip, align 4
  %sub.i143 = sub i32 %and.i141, %61
  %62 = ptrtoint ptr %hosts.i144 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hosts.i144, align 8
  %div.i145 = udiv i32 %sub.i143, %63
  %conv75 = trunc i32 %div.i145 to i16
  %64 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv75, ptr %e, align 2
  %call77 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef nonnull %ext, i32 noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4103, i32 %call77)
  %cmp.i146 = icmp eq i32 %call77, -4103
  %65 = and i1 %tobool.i, %cmp.i146
  %or.cond = or i1 %tobool78.not, %65
  br i1 %or.cond, label %if.end81, label %for.body.cleanup82_crit_edge

for.body.cleanup82_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

if.end81:                                         ; preds = %for.body
  %66 = ptrtoint ptr %hosts.i144 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %hosts.i144, align 8
  %add = add i32 %67, %ip.2161
  %sub.i137 = sub i32 %ip_to.1, %add
  %cmp.i = icmp slt i32 %sub.i137, 0
  br i1 %cmp.i, label %if.end81.cleanup82_crit_edge, label %if.end81.for.body_crit_edge

if.end81.for.body_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end81.cleanup82_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

cleanup82:                                        ; preds = %if.end81.cleanup82_crit_edge, %for.body.cleanup82_crit_edge, %for.cond.preheader.cleanup82_crit_edge, %if.end65.cleanup82_crit_edge, %if.then48.cleanup82_crit_edge, %do.body.cleanup82_crit_edge, %ip_set_get_hostipaddr4.exit133, %if.then25, %lor.lhs.false.cleanup82_crit_edge, %if.end20.cleanup82_crit_edge, %if.end16.cleanup82_crit_edge, %ip_set_get_hostipaddr4.exit, %if.end.cleanup82_crit_edge
  %retval.1 = phi i32 [ %call27, %if.then25 ], [ -4097, %if.end.cleanup82_crit_edge ], [ %call.i, %ip_set_get_hostipaddr4.exit ], [ %call17, %if.end16.cleanup82_crit_edge ], [ -4352, %lor.lhs.false.cleanup82_crit_edge ], [ -4352, %if.end20.cleanup82_crit_edge ], [ %call.i130, %ip_set_get_hostipaddr4.exit133 ], [ -4352, %do.body.cleanup82_crit_edge ], [ -4104, %if.then48.cleanup82_crit_edge ], [ -4352, %if.end65.cleanup82_crit_edge ], [ 0, %for.cond.preheader.cleanup82_crit_edge ], [ %call77, %for.body.cleanup82_crit_edge ], [ 0, %if.end81.cleanup82_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ext) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %e) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_ip_add(ptr noundef %set, ptr nocapture noundef readonly %value, ptr noundef %ext, ptr nocapture noundef readnone %mext, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %extensions = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 9
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
define internal i32 @bitmap_ip_del(ptr noundef %set, ptr nocapture noundef readonly %value, ptr nocapture noundef readnone %ext, ptr nocapture noundef readnone %mext, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %extensions = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 9
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
define internal i32 @bitmap_ip_test(ptr noundef %set, ptr nocapture noundef readonly %value, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags) #2 align 64 {
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
  %extensions = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 9
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
define internal void @bitmap_ip_destroy(ptr noundef %set) #2 align 64 {
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
  %gc = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 7
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
  %elements.i = getelementptr inbounds %struct.bitmap_ip, ptr %10, i32 0, i32 3
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
  %extensions.i = getelementptr inbounds %struct.bitmap_ip, ptr %10, i32 0, i32 9
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
define internal void @bitmap_ip_flush(ptr noundef %set) #2 align 64 {
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
  %elements.i = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 3
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
  %extensions.i = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 9
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
  %elements = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 3
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
define internal i32 @bitmap_ip_head(ptr noundef %set, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i.i40 = alloca i32, align 4
  %tmp.i.i38 = alloca i32, align 4
  %tmp.i.i36 = alloca i32, align 4
  %tmp.i.i = alloca i8, align 1
  %tmp.i.i.i12.i = alloca i32, align 4
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
  %memsize.i = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %memsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %memsize.i, align 4
  %add.i = add i32 %5, 80
  %elements.i = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 3
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
  %tobool.not45 = icmp eq ptr %11, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not45
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %first_ip.i = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 1
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
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i.i
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
  %last_ip.i = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %last_ip.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_ip.i, align 8
  %22 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i14.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32770, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i14.i)
  %cmp.i.i.i15.i = icmp slt i32 %call1.i.i.i14.i, 0
  %tobool.not11.i16.i = icmp eq ptr %22, null
  %tobool.not.i17.i = select i1 %cmp.i.i.i15.i, i1 true, i1 %tobool.not11.i16.i
  br i1 %tobool.not.i17.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i20.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i20.i:                                     ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i12.i) #8
  %23 = ptrtoint ptr %tmp.i.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %tmp.i.i.i12.i, align 4
  %call.i.i.i18.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i12.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i12.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i18.i)
  %tobool2.not.i19.i = icmp eq i32 %call.i.i.i18.i, 0
  br i1 %tobool2.not.i19.i, label %lor.rhs.i, label %if.end.i20.i.cleanup_crit_edge

if.end.i20.i.cleanup_crit_edge:                   ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs.i:                                        ; preds = %if.end.i20.i
  %24 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i21.i = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i.i22.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i.i23.i = sub i32 %sub.ptr.lhs.cast.i.i21.i, %sub.ptr.rhs.cast.i.i22.i
  %conv.i.i24.i = trunc i32 %sub.ptr.sub.i.i23.i to i16
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i.i24.i, ptr %22, align 2
  %netmask.i = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %netmask.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %netmask.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %28)
  %cmp.not.i = icmp eq i8 %28, 32
  br i1 %cmp.not.i, label %lor.rhs.i.lor.lhs.false_crit_edge, label %bitmap_ip_do_head.exit

lor.rhs.i.lor.lhs.false_crit_edge:                ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

bitmap_ip_do_head.exit:                           ; preds = %lor.rhs.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #8
  %29 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %tmp.i.i, align 1
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 20, i32 noundef 1, ptr noundef nonnull %tmp.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.i.not, label %bitmap_ip_do_head.exit.lor.lhs.false_crit_edge, label %bitmap_ip_do_head.exit.cleanup_crit_edge

bitmap_ip_do_head.exit.cleanup_crit_edge:         ; preds = %bitmap_ip_do_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

bitmap_ip_do_head.exit.lor.lhs.false_crit_edge:   ; preds = %bitmap_ip_do_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %bitmap_ip_do_head.exit.lor.lhs.false_crit_edge, %lor.rhs.i.lor.lhs.false_crit_edge
  %ref = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 2
  %30 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ref, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i36) #8
  %32 = ptrtoint ptr %tmp.i.i36 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %tmp.i.i36, align 4
  %call.i.i37 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16409, i32 noundef 4, ptr noundef nonnull %tmp.i.i36) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37)
  %tobool5.not = icmp eq i32 %call.i.i37, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i38) #8
  %33 = ptrtoint ptr %tmp.i.i38 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add, ptr %tmp.i.i38, align 4
  %call.i.i39 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16410, i32 noundef 4, ptr noundef nonnull %tmp.i.i38) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39)
  %tobool8.not = icmp eq i32 %call.i.i39, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %elements = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 11
  %34 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %elements, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i40) #8
  %36 = ptrtoint ptr %tmp.i.i40 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %tmp.i.i40, align 4
  %call.i.i41 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16408, i32 noundef 4, ptr noundef nonnull %tmp.i.i40) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41)
  %tobool11.not = icmp eq i32 %call.i.i41, 0
  br i1 %tobool11.not, label %if.end13, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false9
  %call14 = call i32 @ip_set_put_flags(ptr noundef %skb, ptr noundef %set) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end19, label %if.end13.cleanup_crit_edge, !prof !53

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %39 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i, ptr %11, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end13.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %bitmap_ip_do_head.exit.cleanup_crit_edge, %if.end.i20.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -90, %if.end13.cleanup_crit_edge ], [ -90, %bitmap_ip_do_head.exit.cleanup_crit_edge ], [ -90, %lor.lhs.false.cleanup_crit_edge ], [ -90, %lor.lhs.false6.cleanup_crit_edge ], [ -90, %lor.lhs.false9.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.end.i.i.cleanup_crit_edge ], [ -90, %lor.lhs.false.i.cleanup_crit_edge ], [ -90, %if.end.i20.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitmap_ip_list(ptr noundef %set, ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
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
  %tobool.not123 = icmp eq ptr %5, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not123
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = tail call i32 @llvm.read_register.i32(metadata !40) #8
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !54
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %elements = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %elements, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp128 = icmp ult i32 %11, %13
  br i1 %cmp128, label %for.body.lr.ph, label %rcu_read_lock.exit.for.end_crit_edge

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %extensions = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 9
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %extensions5 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx7 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %first_ip.i = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 1
  %hosts.i = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 4
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i7.i, %land.lhs.true2.i6.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i4.i.rcu_read_unlock.exit.i_crit_edge, %for.body.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !55
  %14 = call i32 @llvm.read_register.i32(metadata !40) #8
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
  call void @__might_resched(ptr noundef nonnull @.str.7, i32 noundef 2089, i32 noundef 0) #8
  %call.i10.i = call i32 @__cond_resched() #8
  %18 = call i32 @llvm.read_register.i32(metadata !40) #8
  %and.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !54
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #8
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
  %tobool14.not124 = icmp eq ptr %41, null
  %tobool14.not = select i1 %cmp.i.i85, i1 true, i1 %tobool14.not124
  br i1 %tobool14.not, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %3)
  %cmp16 = icmp eq i32 %23, %3
  br i1 %cmp16, label %if.then.i.i89, label %if.then15.nla_nest_cancel.exit106_crit_edge

if.then15.nla_nest_cancel.exit106_crit_edge:      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_nest_cancel.exit106

if.then.i.i89:                                    ; preds = %if.then15
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %42 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i88 = icmp ugt ptr %43, %5
  br i1 %cmp.i.i88, label %do.end.i.i, label %if.then.i.i89.nla_nest_cancel.exit_crit_edge, !prof !50

if.then.i.i89.nla_nest_cancel.exit_crit_edge:     ; preds = %if.then.i.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i89
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
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
  %46 = ptrtoint ptr %first_ip.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %first_ip.i, align 4
  %48 = ptrtoint ptr %hosts.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hosts.i, align 8
  %50 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool.not11.i.i = icmp eq ptr %51, null
  %tobool.not.i.i90 = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool.not11.i.i
  br i1 %tobool.not.i.i90, label %if.end20.if.then.i.i100_crit_edge, label %if.end.i.i91

if.end20.if.then.i.i100_crit_edge:                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i100

if.end.i.i91:                                     ; preds = %if.end20
  %mul.i = mul i32 %49, %23
  %add.i = add i32 %mul.i, %47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #8
  %52 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add.i, ptr %tmp.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end25, label %if.end.i.i91.if.then.i.i100_crit_edge

if.end.i.i91.if.then.i.i100_crit_edge:            ; preds = %if.end.i.i91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i100

if.end25:                                         ; preds = %if.end.i.i91
  %53 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %54 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i.i.i, ptr %51, align 2
  %call27 = call i32 @ip_set_put_extensions(ptr noundef %skb, ptr noundef %set, ptr noundef %add.ptr, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.if.then.i.i100_crit_edge

if.end25.if.then.i.i100_crit_edge:                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i100

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %57 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %58 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.i, ptr %41, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end30, %ip_set_timeout_expired.exit.for.inc_crit_edge, %cond_resched_rcu.exit.for.inc_crit_edge
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %60, 1
  store i32 %inc, ptr %arrayidx, align 4
  %61 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %elements, align 4
  %cmp = icmp ult i32 %inc, %62
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %63 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i93 = ptrtoint ptr %64 to i32
  %sub.ptr.rhs.cast.i94 = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i95 = sub i32 %sub.ptr.lhs.cast.i93, %sub.ptr.rhs.cast.i94
  %conv.i96 = trunc i32 %sub.ptr.sub.i95 to i16
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i96, ptr %5, align 2
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %arrayidx, align 4
  br label %out

if.then.i.i100:                                   ; preds = %if.end25.if.then.i.i100_crit_edge, %if.end.i.i91.if.then.i.i100_crit_edge, %if.end20.if.then.i.i100_crit_edge
  %data.i.i98 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %67 = ptrtoint ptr %data.i.i98 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i.i98, align 4
  %cmp.i.i99 = icmp ugt ptr %68, %41
  br i1 %cmp.i.i99, label %do.end.i.i101, label %if.then.i.i100.if.end.i.i105_crit_edge, !prof !50

if.then.i.i100.if.end.i.i105_crit_edge:           ; preds = %if.then.i.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i105

do.end.i.i101:                                    ; preds = %if.then.i.i100
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i105

if.end.i.i105:                                    ; preds = %do.end.i.i101, %if.then.i.i100.if.end.i.i105_crit_edge
  %69 = ptrtoint ptr %data.i.i98 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i.i98, align 4
  %sub.ptr.lhs.cast.i.i102 = ptrtoint ptr %41 to i32
  %sub.ptr.rhs.cast.i.i103 = ptrtoint ptr %70 to i32
  %sub.ptr.sub.i.i104 = sub i32 %sub.ptr.lhs.cast.i.i102, %sub.ptr.rhs.cast.i.i103
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i104) #8
  br label %nla_nest_cancel.exit106

nla_nest_cancel.exit106:                          ; preds = %if.end.i.i105, %if.then15.nla_nest_cancel.exit106_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %3)
  %cmp35 = icmp eq i32 %23, %3
  br i1 %cmp35, label %if.then39, label %nla_nest_cancel.exit106.if.end41_crit_edge, !prof !50

nla_nest_cancel.exit106.if.end41_crit_edge:       ; preds = %nla_nest_cancel.exit106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then39:                                        ; preds = %nla_nest_cancel.exit106
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %arrayidx, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %nla_nest_cancel.exit106.if.end41_crit_edge
  %ret.0 = phi i32 [ -90, %if.then39 ], [ 0, %nla_nest_cancel.exit106.if.end41_crit_edge ]
  %72 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i108 = ptrtoint ptr %73 to i32
  %sub.ptr.rhs.cast.i109 = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i110 = sub i32 %sub.ptr.lhs.cast.i108, %sub.ptr.rhs.cast.i109
  %conv.i111 = trunc i32 %sub.ptr.sub.i110 to i16
  %74 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i111, ptr %5, align 2
  br label %out

out:                                              ; preds = %if.end41, %for.end, %nla_nest_cancel.exit
  %ret.1 = phi i32 [ %ret.0, %if.end41 ], [ -90, %nla_nest_cancel.exit ], [ 0, %for.end ]
  %call.i112 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i112, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i115

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i115:                               ; preds = %out
  %call1.i113 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i113)
  %tobool.not.i114 = icmp eq i32 %call1.i113, 0
  br i1 %tobool.not.i114, label %land.lhs.true.i115.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i117

land.lhs.true.i115.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i117:                              ; preds = %land.lhs.true.i115
  %.b4.i116 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i116, label %land.lhs.true2.i117.rcu_read_unlock.exit_crit_edge, label %if.then.i118

land.lhs.true2.i117.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i117
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i118:                                     ; preds = %land.lhs.true2.i117
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i118, %land.lhs.true2.i117.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i115.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !55
  %75 = call i32 @llvm.read_register.i32(metadata !40) #8
  %and.i.i.i.i.i119 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i.i119 to ptr
  %preempt_count.i.i.i.i120 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i.i.i120, align 4
  %sub.i.i.i = add i32 %78, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i120, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %rcu_read_unlock.exit ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bitmap_ip_same_set(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
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
  %first_ip = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %first_ip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %first_ip, align 4
  %first_ip2 = getelementptr inbounds %struct.bitmap_ip, ptr %3, i32 0, i32 1
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
  %last_ip = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %last_ip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_ip, align 8
  %last_ip3 = getelementptr inbounds %struct.bitmap_ip, ptr %3, i32 0, i32 2
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
  %netmask = getelementptr inbounds %struct.bitmap_ip, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %netmask to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %netmask, align 8
  %netmask6 = getelementptr inbounds %struct.bitmap_ip, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %netmask6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %netmask6, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp8 = icmp eq i8 %13, %15
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true5.land.end_crit_edge

land.lhs.true5.land.end_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true10:                                  ; preds = %land.lhs.true5
  %timeout = getelementptr inbounds %struct.ip_set, ptr %a, i32 0, i32 10
  %16 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %timeout, align 4
  %timeout11 = getelementptr inbounds %struct.ip_set, ptr %b, i32 0, i32 10
  %18 = ptrtoint ptr %timeout11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timeout11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp12 = icmp eq i32 %17, %19
  br i1 %cmp12, label %land.rhs, label %land.lhs.true10.land.end_crit_edge

land.lhs.true10.land.end_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  %extensions = getelementptr inbounds %struct.ip_set, ptr %a, i32 0, i32 8
  %20 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %extensions, align 2
  %extensions15 = getelementptr inbounds %struct.ip_set, ptr %b, i32 0, i32 8
  %22 = ptrtoint ptr %extensions15 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %extensions15, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp17 = icmp eq i8 %21, %23
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true10.land.end_crit_edge, %land.lhs.true5.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %24 = phi i1 [ false, %land.lhs.true10.land.end_crit_edge ], [ false, %land.lhs.true5.land.end_crit_edge ], [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %cmp17, %land.rhs ]
  ret i1 %24
}

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !26, !28, !29, !30, !32, !34, !36, !37, !39}
!llvm.named.register.sp = !{!40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__UNIQUE_ID_file610, !1, !"__UNIQUE_ID_file610", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipset/ip_set_bitmap_ip.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_license611, !1, !"__UNIQUE_ID_license611", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author612, !4, !"__UNIQUE_ID_author612", i1 false, i1 false}
!4 = !{!"../net/netfilter/ipset/ip_set_bitmap_ip.c", i32 31, i32 1}
!5 = !{ptr @__UNIQUE_ID_description613, !6, !"__UNIQUE_ID_description613", i1 false, i1 false}
!6 = !{!"../net/netfilter/ipset/ip_set_bitmap_ip.c", i32 32, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias614, !8, !"__UNIQUE_ID_alias614", i1 false, i1 false}
!8 = !{!"../net/netfilter/ipset/ip_set_bitmap_ip.c", i32 33, i32 1}
!9 = !{ptr @__initcall__kmod_ip_set_bitmap_ip__621_386_bitmap_ip_init6, !10, !"__initcall__kmod_ip_set_bitmap_ip__621_386_bitmap_ip_init6", i1 false, i1 false}
!10 = !{!"../net/netfilter/ipset/ip_set_bitmap_ip.c", i32 386, i32 1}
!11 = !{ptr @__exitcall_bitmap_ip_fini, !12, !"__exitcall_bitmap_ip_fini", i1 false, i1 false}
!12 = !{!"../net/netfilter/ipset/ip_set_bitmap_ip.c", i32 387, i32 1}
!13 = !{ptr @bitmap_ip_type, !14, !"bitmap_ip_type", i1 false, i1 false}
!14 = !{!"../net/netfilter/ipset/ip_set_bitmap_ip.c", i32 339, i32 27}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/ipset/ip_set_bitmap_ip.c", i32 310, i32 3}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bitmap_ip_create.__UNIQUE_ID_ddebug619, !16, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netfilter/ipset/ip_set_bitmap_ip.c", i32 317, i32 2}
!23 = !{ptr @bitmap_ip_create.__UNIQUE_ID_ddebug620, !22, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!24 = !{ptr @bitmap_ip, !25, !"bitmap_ip", i1 false, i1 false}
!25 = !{!"../net/netfilter/ipset/ip_set_bitmap_gen.h", i32 291, i32 41}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/sched.h", i32 2089, i32 2}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/net/netlink.h", i32 991, i32 3}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @bitmap_ip_gc_init.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../net/netfilter/ipset/ip_set_bitmap_gen.h", i32 40, i32 2}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{!"sp"}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{!"auto-init"}
!52 = !{i64 2148961413, i64 2148961418, i64 2148961431, i64 2148961475, i64 2148961509, i64 2148961530}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{i64 2149364195}
!55 = !{i64 2149364461}

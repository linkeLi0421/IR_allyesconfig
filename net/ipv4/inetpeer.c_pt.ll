; ModuleID = '/llk/IR_all_yes/net/ipv4/inetpeer.c_pt.bc'
source_filename = "../net/ipv4/inetpeer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+inet_peer_base_init\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_peer_base_init\09\09\09\09"
module asm "\09.long\09__crc_inet_peer_base_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_peer_base_init:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_peer_base_init\22\09\09\09\09\09"
module asm "__kstrtabns_inet_peer_base_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+inet_getpeer\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_getpeer\09\09\09\09"
module asm "\09.long\09__crc_inet_getpeer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_getpeer:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_getpeer\22\09\09\09\09\09"
module asm "__kstrtabns_inet_getpeer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+inet_putpeer\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_putpeer\09\09\09\09"
module asm "\09.long\09__crc_inet_putpeer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_putpeer:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_putpeer\22\09\09\09\09\09"
module asm "__kstrtabns_inet_putpeer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inet_peer_xrlim_allow\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_peer_xrlim_allow\09\09\09\09"
module asm "\09.long\09__crc_inet_peer_xrlim_allow\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_peer_xrlim_allow:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_peer_xrlim_allow\22\09\09\09\09\09"
module asm "__kstrtabns_inet_peer_xrlim_allow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inetpeer_invalidate_tree\22, \22a\22\09"
module asm "\09.weak\09__crc_inetpeer_invalidate_tree\09\09\09\09"
module asm "\09.long\09__crc_inetpeer_invalidate_tree\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inetpeer_invalidate_tree:\09\09\09\09\09"
module asm "\09.asciz \09\22inetpeer_invalidate_tree\22\09\09\09\09\09"
module asm "__kstrtabns_inetpeer_invalidate_tree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.inet_peer_base = type { %struct.rb_root, %struct.seqlock_t, i32 }
%struct.rb_root = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inet_peer = type { %struct.rb_node, %struct.inetpeer_addr, [17 x i32], i32, i32, i32, %union.anon.4, i32, %struct.refcount_struct }
%struct.rb_node = type { i32, ptr, ptr }
%struct.inetpeer_addr = type { %union.anon.2, i16 }
%union.anon.2 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.3 }
%union.anon.3 = type { [4 x i32] }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }

@inet_peer_base_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&(&bp->lock)->lock\00", [45 x i8] zeroinitializer }, align 32
@inet_peer_base_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&____s->seqcount\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_inet_peer_base_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_peer_base_init = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_peer_base_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_peer_base_init to i32), ptr @__kstrtab_inet_peer_base_init, ptr @__kstrtabns_inet_peer_base_init }, section "___ksymtab_gpl+inet_peer_base_init", align 4
@inet_peer_minttl = dso_local local_unnamed_addr global i32 12000, section ".data..read_mostly", align 4
@inet_peer_maxttl = dso_local local_unnamed_addr global i32 60000, section ".data..read_mostly", align 4
@inet_peer_threshold = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"inet_peer_cache\00", [16 x i8] zeroinitializer }, align 32
@peer_cachep = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_inet_getpeer = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_getpeer = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_getpeer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_getpeer to i32), ptr @__kstrtab_inet_getpeer, ptr @__kstrtabns_inet_getpeer }, section "___ksymtab_gpl+inet_getpeer", align 4
@__kstrtab_inet_putpeer = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_putpeer = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_putpeer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_putpeer to i32), ptr @__kstrtab_inet_putpeer, ptr @__kstrtabns_inet_putpeer }, section "___ksymtab_gpl+inet_putpeer", align 4
@__kstrtab_inet_peer_xrlim_allow = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_peer_xrlim_allow = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_peer_xrlim_allow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_peer_xrlim_allow to i32), ptr @__kstrtab_inet_peer_xrlim_allow, ptr @__kstrtabns_inet_peer_xrlim_allow }, section "___ksymtab+inet_peer_xrlim_allow", align 4
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/ipv4/inetpeer.c\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_inetpeer_invalidate_tree = external dso_local constant [0 x i8], align 1
@__kstrtabns_inetpeer_invalidate_tree = external dso_local constant [0 x i8], align 1
@__ksymtab_inetpeer_invalidate_tree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inetpeer_invalidate_tree to i32), ptr @__kstrtab_inetpeer_invalidate_tree, ptr @__kstrtabns_inetpeer_invalidate_tree }, section "___ksymtab+inetpeer_invalidate_tree", align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 60, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 84, i32 34 }
@___asan_gen_.24 = private constant [23 x i8] c"../net/ipv4/inetpeer.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 299, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 695, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 723, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_inet_getpeer, ptr @__ksymtab_inet_peer_base_init, ptr @__ksymtab_inet_peer_xrlim_allow, ptr @__ksymtab_inet_putpeer, ptr @__ksymtab_inetpeer_invalidate_tree, ptr @inet_peer_base_init.__key, ptr @.str, ptr @inet_peer_base_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inet_peer_base_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inet_peer_base_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inet_peer_base_init(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bp, align 4
  %lock = getelementptr inbounds %struct.inet_peer_base, ptr %bp, i32 0, i32 1
  %lock2 = getelementptr inbounds %struct.inet_peer_base, ptr %bp, i32 0, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock2, ptr noundef nonnull @.str, ptr noundef nonnull @inet_peer_base_init.__key, i16 noundef signext 3) #10
  %dep_map.i = getelementptr inbounds %struct.inet_peer_base, ptr %bp, i32 0, i32 1, i32 0, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @inet_peer_base_init.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %1 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %lock, align 4
  %lock10 = getelementptr inbounds %struct.inet_peer_base, ptr %bp, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %lock10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %lock2, ptr %lock10, align 4
  %total = getelementptr inbounds %struct.inet_peer_base, ptr %bp, i32 0, i32 2
  %3 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %total, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @inet_initpeers() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %0 = load volatile i32, ptr @_totalram_pages, align 4
  %conv = zext i32 %0 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %1 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %shl, i32 0) #13, !srcloc !44
  %asmresult.i.i.i = extractvalue { i64, i32 } %1, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %1, 1
  %2 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %shl, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #13, !srcloc !45
  %asmresult10.i.i.i = extractvalue { i64, i32 } %2, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 13
  %3 = tail call i64 @llvm.umax.i64(i64 %div1581.i.i, i64 4096)
  %4 = tail call i64 @llvm.umin.i64(i64 %3, i64 65664)
  %5 = trunc i64 %4 to i32
  store i32 %5, ptr @inet_peer_threshold, align 4
  %call11 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.3, i32 noundef 128, i32 noundef 0, i32 noundef 270336, ptr noundef null) #10
  store ptr %call11, ptr @peer_cachep, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @inet_getpeer(ptr noundef %base, ptr nocapture noundef readonly %daddr, i32 noundef %create) #0 align 64 {
entry:
  %gc_stack = alloca [32 x ptr], align 4
  %pp = alloca ptr, align 4
  %parent = alloca ptr, align 4
  %gc_cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %gc_stack) #10
  %0 = call ptr @memset(ptr %gc_stack, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pp) #10
  %1 = ptrtoint ptr %pp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %pp, align 4, !annotation !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent) #10
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent, align 4, !annotation !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gc_cnt) #10
  %3 = ptrtoint ptr %gc_cnt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %gc_cnt, align 4, !annotation !46
  %4 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !47
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lock = getelementptr inbounds %struct.inet_peer_base, ptr %base, i32 0, i32 1
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !48
  %and.i.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %dep_map.c.i.i = getelementptr inbounds %struct.inet_peer_base, ptr %base, i32 0, i32 1, i32 0, i32 0, i32 1
  %9 = tail call ptr @llvm.returnaddress(i32 0) #10
  %10 = ptrtoint ptr %9 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %10) #10
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %10) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dep_map.c48.i.i = getelementptr inbounds %struct.inet_peer_base, ptr %base, i32 0, i32 1, i32 0, i32 0, i32 1
  %11 = tail call ptr @llvm.returnaddress(i32 0) #10
  %12 = ptrtoint ptr %11 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %12) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %12) #10
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !49
  %and.i.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !50

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #10, !srcloc !51
  %14 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %lock, align 4
  %and18.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_seqbegin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !52
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !53
  %16 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %lock, align 4
  %and.i = and i32 %17, 1
  %tobool.not.i59 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i59, label %do.end.i.read_seqbegin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i.read_seqbegin.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_seqbegin.exit

read_seqbegin.exit:                               ; preds = %do.end.i.read_seqbegin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge
  %.lcssa.i = phi i32 [ %15, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge ], [ %17, %do.end.i.read_seqbegin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  %call1 = call fastcc ptr @lookup(ptr noundef %daddr, ptr noundef %base, i32 noundef %.lcssa.i, ptr noundef null, ptr noundef nonnull %gc_cnt, ptr noundef nonnull %parent, ptr noundef nonnull %pp)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  %18 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %lock, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %.lcssa.i)
  %cmp.i.i.i.not = icmp eq i32 %19, %.lcssa.i
  %call.i60 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i60, label %read_seqbegin.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i63

read_seqbegin.exit.rcu_read_unlock.exit_crit_edge: ; preds = %read_seqbegin.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i63:                                ; preds = %read_seqbegin.exit
  %call1.i61 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i61)
  %tobool.not.i62 = icmp eq i32 %call1.i61, 0
  br i1 %tobool.not.i62, label %land.lhs.true.i63.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i65

land.lhs.true.i63.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i65:                               ; preds = %land.lhs.true.i63
  %.b4.i64 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i64, label %land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge, label %if.then.i66

land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i66:                                      ; preds = %land.lhs.true2.i65
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i66, %land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i63.rcu_read_unlock.exit_crit_edge, %read_seqbegin.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !56
  %20 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i.i.i.i.i67 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i67 to ptr
  %preempt_count.i.i.i.i68 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i68, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i68, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end, label %rcu_read_unlock.exit.cleanup_crit_edge

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool4.not = icmp eq i32 %create, 0
  %or.cond = select i1 %tobool4.not, i1 %cmp.i.i.i.not, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %parent, align 4
  %lock.i = getelementptr inbounds %struct.inet_peer_base, ptr %base, i32 0, i32 1, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %25 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lock, align 4
  %inc.i.i.i.i = add i32 %26, 1
  store i32 %inc.i.i.i.i, ptr %lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %dep_map.i.i.i = getelementptr inbounds %struct.inet_peer_base, ptr %base, i32 0, i32 1, i32 0, i32 0, i32 1
  %27 = tail call ptr @llvm.returnaddress(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %28) #10
  %29 = ptrtoint ptr %gc_cnt to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %gc_cnt, align 4
  %call9 = call fastcc ptr @lookup(ptr noundef %daddr, ptr noundef %base, i32 noundef %.lcssa.i, ptr noundef nonnull %gc_stack, ptr noundef nonnull %gc_cnt, ptr noundef nonnull %parent, ptr noundef nonnull %pp)
  %tobool10.not = icmp ne ptr %call9, null
  %brmerge = or i1 %tobool4.not, %tobool10.not
  br i1 %brmerge, label %if.end7.if.end20_crit_edge, label %if.then13

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then13:                                        ; preds = %if.end7
  %30 = load ptr, ptr @peer_cachep, align 4
  %call14 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %30, i32 noundef 2592) #10
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then13.if.end20_crit_edge, label %if.then16

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %daddr17 = getelementptr inbounds %struct.inet_peer, ptr %call14, i32 0, i32 1
  %31 = call ptr @memcpy(ptr %daddr17, ptr %daddr, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %dtime = getelementptr inbounds %struct.inet_peer, ptr %call14, i32 0, i32 7
  %33 = ptrtoint ptr %dtime to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %dtime, align 8
  %refcnt = getelementptr inbounds %struct.inet_peer, ptr %call14, i32 0, i32 8
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  %34 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 2, ptr %refcnt, align 4
  %35 = getelementptr inbounds %struct.inet_peer, ptr %call14, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %35, i32 noundef 4) #10
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 0, ptr %35, align 8
  %metrics = getelementptr inbounds %struct.inet_peer, ptr %call14, i32 0, i32 2
  %37 = ptrtoint ptr %metrics to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %metrics, align 8
  %rate_tokens = getelementptr inbounds %struct.inet_peer, ptr %call14, i32 0, i32 3
  %38 = ptrtoint ptr %rate_tokens to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %rate_tokens, align 4
  %n_redirects = getelementptr inbounds %struct.inet_peer, ptr %call14, i32 0, i32 4
  %39 = ptrtoint ptr %n_redirects to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %n_redirects, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %40, -6000
  %rate_last = getelementptr inbounds %struct.inet_peer, ptr %call14, i32 0, i32 5
  %41 = ptrtoint ptr %rate_last to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub, ptr %rate_last, align 4
  %42 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parent, align 4
  %44 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pp, align 4
  %46 = ptrtoint ptr %43 to i32
  %47 = ptrtoint ptr %call14 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %call14, align 8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %call14, i32 0, i32 1
  %48 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %call14, i32 0, i32 2
  %49 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %rb_left.i, align 8
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call14, ptr %45, align 4
  call void @rb_insert_color(ptr noundef nonnull %call14, ptr noundef %base) #10
  %total = getelementptr inbounds %struct.inet_peer_base, ptr %base, i32 0, i32 2
  %51 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %total, align 4
  %inc = add i32 %52, 1
  store i32 %inc, ptr %total, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.then13.if.end20_crit_edge, %if.end7.if.end20_crit_edge
  %p.0 = phi ptr [ %call9, %if.end7.if.end20_crit_edge ], [ %call14, %if.then16 ], [ null, %if.then13.if.end20_crit_edge ]
  %53 = ptrtoint ptr %gc_cnt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %gc_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool21.not = icmp eq i32 %54, 0
  br i1 %tobool21.not, label %if.end20.if.end24_crit_edge, label %if.then22

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  %total.i = getelementptr inbounds %struct.inet_peer_base, ptr %base, i32 0, i32 2
  %55 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %total.i, align 4
  %57 = load i32, ptr @inet_peer_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %57)
  %cmp.not.i = icmp slt i32 %56, %57
  br i1 %cmp.not.i, label %if.else.i, label %if.then22.if.end.i_crit_edge

if.then22.if.end.i_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.else.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %58 = load i32, ptr @inet_peer_maxttl, align 4
  %59 = load i32, ptr @inet_peer_minttl, align 4
  %sub.i = sub i32 %58, %59
  %div.i = sdiv i32 %sub.i, 100
  %mul.i = mul i32 %div.i, %56
  %div2.i = sdiv i32 %mul.i, %57
  %mul3.neg.i = mul i32 %div2.i, -100
  %sub4.i = add i32 %mul3.neg.i, %58
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then22.if.end.i_crit_edge
  %ttl.0.i = phi i32 [ %sub4.i, %if.else.i ], [ 0, %if.then22.if.end.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %i.040.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i ]
  %arrayidx.i = getelementptr ptr, ptr %gc_stack, i32 %i.040.i
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %dtime.i = getelementptr inbounds %struct.inet_peer, ptr %61, i32 0, i32 7
  %63 = ptrtoint ptr %dtime.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %dtime.i, align 4
  %sub6.i = sub i32 %62, %64
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6.i, i32 %ttl.0.i)
  %cmp7.i = icmp ult i32 %sub6.i, %ttl.0.i
  br i1 %cmp7.i, label %for.body.i.if.then8.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then8.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %refcnt.i = getelementptr inbounds %struct.inet_peer, ptr %61, i32 0, i32 8
  %call.i70 = call zeroext i1 @refcount_dec_if_one(ptr noundef %refcnt.i) #10
  br i1 %call.i70, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false.i.if.then8.i_crit_edge

lor.lhs.false.i.if.then8.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then8.i:                                       ; preds = %lor.lhs.false.i.if.then8.i_crit_edge, %for.body.i.if.then8.i_crit_edge
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %54
  br i1 %exitcond.not.i, label %for.inc.i.for.body13.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.body13.i_crit_edge:                 ; preds = %for.inc.i
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.inc18.i.for.body13.i_crit_edge, %for.inc.i.for.body13.i_crit_edge
  %i.142.i = phi i32 [ %inc19.i, %for.inc18.i.for.body13.i_crit_edge ], [ 0, %for.inc.i.for.body13.i_crit_edge ]
  %arrayidx14.i = getelementptr ptr, ptr %gc_stack, i32 %i.142.i
  %66 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx14.i, align 4
  %tobool.not.i71 = icmp eq ptr %67, null
  br i1 %tobool.not.i71, label %for.body13.i.for.inc18.i_crit_edge, label %if.then15.i

for.body13.i.for.inc18.i_crit_edge:               ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc18.i

if.then15.i:                                      ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @rb_erase(ptr noundef nonnull %67, ptr noundef %base) #10
  %68 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %total.i, align 4
  %dec.i = add i32 %69, -1
  store i32 %dec.i, ptr %total.i, align 4
  %70 = getelementptr inbounds %struct.inet_peer, ptr %67, i32 0, i32 6
  call void @call_rcu(ptr noundef %70, ptr noundef nonnull @inetpeer_free_rcu) #10
  br label %for.inc18.i

for.inc18.i:                                      ; preds = %if.then15.i, %for.body13.i.for.inc18.i_crit_edge
  %inc19.i = add nuw i32 %i.142.i, 1
  %exitcond43.not.i = icmp eq i32 %inc19.i, %54
  br i1 %exitcond43.not.i, label %for.inc18.i.if.end24_crit_edge, label %for.inc18.i.for.body13.i_crit_edge

for.inc18.i.for.body13.i_crit_edge:               ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13.i

for.inc18.i.if.end24_crit_edge:                   ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end24:                                         ; preds = %for.inc18.i.if.end24_crit_edge, %if.end20.if.end24_crit_edge
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %28) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !58
  %71 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %lock, align 4
  %inc.i.i.i = add i32 %72, 1
  store i32 %inc.i.i.i, ptr %lock, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge, %rcu_read_unlock.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %p.0, %if.end24 ], [ %call1, %rcu_read_unlock.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gc_cnt) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pp) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %gc_stack) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lookup(ptr nocapture noundef readonly %daddr, ptr noundef %base, i32 noundef %seq, ptr noundef writeonly %gc_stack, ptr nocapture noundef %gc_cnt, ptr nocapture noundef writeonly %parent_p, ptr nocapture noundef writeonly %pp_p) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %base, align 4
  %tobool.not64 = icmp eq ptr %1, null
  br i1 %tobool.not64, label %entry.while.end_crit_edge, label %if.end.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.lr.ph:                                     ; preds = %entry
  %family.i = getelementptr inbounds %struct.inetpeer_addr, ptr %daddr, i32 0, i32 1
  %tobool10.not = icmp eq ptr %gc_stack, null
  %lock = getelementptr inbounds %struct.inet_peer_base, ptr %base, i32 0, i32 1
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.end.lr.ph
  %2 = phi ptr [ %1, %if.end.lr.ph ], [ %28, %cleanup.if.end_crit_edge ]
  %pp.065 = phi ptr [ %base, %if.end.lr.ph ], [ %pp.1, %cleanup.if.end_crit_edge ]
  %daddr3 = getelementptr inbounds %struct.inet_peer, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %4)
  %cmp.i = icmp eq i16 %4, 2
  %..i = select i1 %cmp.i, i32 2, i32 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %..i
  br i1 %exitcond.not.i, label %if.then5, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end
  %i.027.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 %i.027.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %arrayidx4.i = getelementptr [4 x i32], ptr %daddr3, i32 0, i32 %i.027.i
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp5.i = icmp eq i32 %6, %8
  br i1 %cmp5.i, label %for.cond.i, label %inetpeer_addr_cmp.exit

inetpeer_addr_cmp.exit:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp11.i = icmp ult i32 %6, %8
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then5:                                         ; preds = %for.cond.i
  %refcnt = getelementptr inbounds %struct.inet_peer, ptr %2, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #10
  %9 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.then5
  %11 = phi i32 [ %10, %if.then5 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %12 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %11, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #10
  %13 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %15 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %14, i32 %add.i.i.i, ptr elementtype(i32) %refcnt) #10, !srcloc !59
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %14
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !60

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %17, 1
  %18 = or i32 %add5.i.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !60

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #10
  %19 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %20 = phi i32 [ %17, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.i.i.i.not = icmp eq i32 %20, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #10
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.while.end_crit_edge, label %refcount_inc_not_zero.exit.cleanup26_crit_edge

refcount_inc_not_zero.exit.cleanup26_crit_edge:   ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup26

refcount_inc_not_zero.exit.while.end_crit_edge:   ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then11:                                        ; preds = %inetpeer_addr_cmp.exit
  %21 = ptrtoint ptr %gc_cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gc_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %22)
  %cmp12 = icmp ult i32 %22, 32
  br i1 %cmp12, label %if.then13, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add nuw nsw i32 %22, 1
  %23 = ptrtoint ptr %gc_cnt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %inc, ptr %gc_cnt, align 4
  %arrayidx = getelementptr ptr, ptr %gc_stack, i32 %22
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %2, ptr %arrayidx, align 4
  br label %cleanup

if.else:                                          ; preds = %inetpeer_addr_cmp.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  %25 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %lock, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %seq)
  %cmp.i.i.i.not = icmp eq i32 %26, %seq
  br i1 %cmp.i.i.i.not, label %if.else.cleanup_crit_edge, label %if.else.while.end_crit_edge, !prof !60

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.else.cleanup_crit_edge, %if.then13, %if.then11.cleanup_crit_edge
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 1
  %pp.1 = select i1 %cmp11.i, ptr %rb_left, ptr %rb_right
  %27 = ptrtoint ptr %pp.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %pp.1, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.else.while.end_crit_edge, %refcount_inc_not_zero.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %pp.063 = phi ptr [ %pp.065, %refcount_inc_not_zero.exit.while.end_crit_edge ], [ %base, %entry.while.end_crit_edge ], [ %pp.065, %if.else.while.end_crit_edge ], [ %pp.1, %cleanup.while.end_crit_edge ]
  %parent.1.ph = phi ptr [ %2, %refcount_inc_not_zero.exit.while.end_crit_edge ], [ null, %entry.while.end_crit_edge ], [ %2, %cleanup.while.end_crit_edge ], [ %2, %if.else.while.end_crit_edge ]
  %29 = ptrtoint ptr %parent_p to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %parent.1.ph, ptr %parent_p, align 4
  %30 = ptrtoint ptr %pp_p to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pp.063, ptr %pp_p, align 4
  br label %cleanup26

cleanup26:                                        ; preds = %while.end, %refcount_inc_not_zero.exit.cleanup26_crit_edge
  %retval.2 = phi ptr [ null, %while.end ], [ %2, %refcount_inc_not_zero.exit.cleanup26_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inet_putpeer(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %dtime = getelementptr inbounds %struct.inet_peer, ptr %p, i32 0, i32 7
  %1 = ptrtoint ptr %dtime to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %0, ptr %dtime, align 4
  %refcnt = getelementptr inbounds %struct.inet_peer, ptr %p, i32 0, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !60

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !63
  %3 = getelementptr inbounds %struct.inet_peer, ptr %p, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %3, ptr noundef nonnull @inetpeer_free_rcu) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inetpeer_free_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @peer_cachep, align 4
  %add.ptr = getelementptr i8, ptr %head, i32 -112
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @inet_peer_xrlim_allow(ptr noundef %peer, i32 noundef %timeout) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %peer, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rate_tokens = getelementptr inbounds %struct.inet_peer, ptr %peer, i32 0, i32 3
  %0 = ptrtoint ptr %rate_tokens to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate_tokens, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %rate_last = getelementptr inbounds %struct.inet_peer, ptr %peer, i32 0, i32 5
  %3 = ptrtoint ptr %rate_last to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rate_last, align 4
  %sub = add i32 %2, %1
  %add = sub i32 %sub, %4
  store i32 %2, ptr %rate_last, align 4
  %mul = mul i32 %timeout, 6
  %5 = tail call i32 @llvm.umin.i32(i32 %add, i32 %mul)
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %timeout)
  %cmp5.not = icmp ult i32 %5, %timeout
  %sub7 = select i1 %cmp5.not, i32 0, i32 %timeout
  %token.1 = sub i32 %5, %sub7
  %6 = xor i1 %cmp5.not, true
  %7 = ptrtoint ptr %rate_tokens to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %token.1, ptr %rate_tokens, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %6, %if.end ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inetpeer_invalidate_tree(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rb_first(ptr noundef %base) #10
  %tobool.not10 = icmp eq ptr %call, null
  br i1 %tobool.not10, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %inet_putpeer.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %p.011 = phi ptr [ %call1, %inet_putpeer.exit.while.body_crit_edge ], [ %call, %entry.while.body_crit_edge ]
  %call1 = tail call ptr @rb_next(ptr noundef nonnull %p.011) #10
  tail call void @rb_erase(ptr noundef nonnull %p.011, ptr noundef %base) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %dtime.i = getelementptr inbounds %struct.inet_peer, ptr %p.011, i32 0, i32 7
  %1 = ptrtoint ptr %dtime.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %0, ptr %dtime.i, align 4
  %refcnt.i = getelementptr inbounds %struct.inet_peer, ptr %p.011, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.inet_putpeer.exit_crit_edge, label %if.then10.i.i.i.i, !prof !60

if.end5.i.i.i.i.inet_putpeer.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet_putpeer.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %inet_putpeer.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !63
  %3 = getelementptr inbounds %struct.inet_peer, ptr %p.011, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %3, ptr noundef nonnull @inetpeer_free_rcu) #10
  br label %inet_putpeer.exit

inet_putpeer.exit:                                ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.inet_putpeer.exit_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 299, i32 noundef 0) #10
  %call.i = tail call i32 @__cond_resched() #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %inet_putpeer.exit.while.end_crit_edge, label %inet_putpeer.exit.while.body_crit_edge

inet_putpeer.exit.while.body_crit_edge:           ; preds = %inet_putpeer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

inet_putpeer.exit.while.end_crit_edge:            ; preds = %inet_putpeer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %inet_putpeer.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %total = getelementptr inbounds %struct.inet_peer_base, ptr %base, i32 0, i32 2
  %4 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %total, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
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
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_if_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !33}
!llvm.named.register.sp = !{!34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @inet_peer_base_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/ipv4/inetpeer.c", i32 60, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @inet_peer_base_init.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__ksymtab_inet_peer_base_init, !6, !"__ksymtab_inet_peer_base_init", i1 false, i1 false}
!6 = !{!"../net/ipv4/inetpeer.c", i32 63, i32 1}
!7 = !{ptr @inet_peer_minttl, !8, !"inet_peer_minttl", i1 false, i1 false}
!8 = !{!"../net/ipv4/inetpeer.c", i32 70, i32 5}
!9 = !{ptr @inet_peer_maxttl, !10, !"inet_peer_maxttl", i1 false, i1 false}
!10 = !{!"../net/ipv4/inetpeer.c", i32 71, i32 5}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/ipv4/inetpeer.c", i32 84, i32 34}
!13 = !{ptr @__ksymtab_inet_getpeer, !14, !"__ksymtab_inet_getpeer", i1 false, i1 false}
!14 = !{!"../net/ipv4/inetpeer.c", i32 234, i32 1}
!15 = !{ptr @__ksymtab_inet_putpeer, !16, !"__ksymtab_inet_putpeer", i1 false, i1 false}
!16 = !{!"../net/ipv4/inetpeer.c", i32 246, i32 1}
!17 = !{ptr @__ksymtab_inet_peer_xrlim_allow, !18, !"__ksymtab_inet_peer_xrlim_allow", i1 false, i1 false}
!18 = !{!"../net/ipv4/inetpeer.c", i32 287, i32 1}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/ipv4/inetpeer.c", i32 299, i32 3}
!21 = !{ptr @__ksymtab_inetpeer_invalidate_tree, !22, !"__ksymtab_inetpeer_invalidate_tree", i1 false, i1 false}
!22 = !{!"../net/ipv4/inetpeer.c", i32 304, i32 1}
!23 = !{ptr @peer_cachep, !24, !"peer_cachep", i1 false, i1 false}
!24 = !{!"../net/ipv4/inetpeer.c", i32 55, i32 27}
!25 = !{ptr @inet_peer_threshold, !26, !"inet_peer_threshold", i1 false, i1 false}
!26 = !{!"../net/ipv4/inetpeer.c", i32 68, i32 5}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{!"sp"}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 707354, i64 707381, i64 707403, i64 707431}
!45 = !{i64 707762, i64 707789, i64 707822, i64 707843, i64 707870, i64 707896}
!46 = !{!"auto-init"}
!47 = !{i64 2149362633}
!48 = !{i64 750174, i64 750235}
!49 = !{i64 752906}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i64 753191}
!52 = !{i64 2149993053}
!53 = !{i64 2149992895}
!54 = !{i64 2149993223}
!55 = !{i64 2149978300}
!56 = !{i64 2149362899}
!57 = !{i64 2149978625}
!58 = !{i64 2149978950}
!59 = !{i64 831007, i64 831031, i64 831052, i64 831069, i64 831086}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2148436029}
!62 = !{i64 2148350469, i64 2148350501, i64 2148350530, i64 2148350564, i64 2148350595, i64 2148350618}
!63 = !{i64 2149312143}

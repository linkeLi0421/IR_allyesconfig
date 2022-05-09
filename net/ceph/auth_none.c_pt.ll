; ModuleID = '/llk/IR_all_yes/net/ceph/auth_none.c_pt.bc'
source_filename = "../net/ceph/auth_none.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ceph_auth_client_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_auth_client = type { i32, ptr, ptr, i8, ptr, i64, ptr, i32, i32, i32, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ceph_none_authorizer = type { %struct.ceph_authorizer, [128 x i8], i32 }
%struct.ceph_authorizer = type { ptr }
%struct.ceph_auth_handshake = type { ptr, ptr, i32, ptr, i32, ptr, ptr }

@ceph_auth_none_init.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"libceph\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceph_auth_none_init\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/ceph/auth_none.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%.*s %12.12s:%-4d : ceph_auth_none_init %p\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"libceph: %.*s %12.12s:%-4d : ceph_auth_none_init %p\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@ceph_auth_none_ops = internal constant { %struct.ceph_auth_client_ops, [44 x i8] } { %struct.ceph_auth_client_ops { ptr @is_authenticated, ptr @should_authenticate, ptr @build_request, ptr @handle_reply, ptr @ceph_auth_none_create_authorizer, ptr null, ptr null, ptr null, ptr null, ptr @reset, ptr @destroy, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ceph_auth_none_build_authorizer.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ceph_auth_none_build_authorizer\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%.*s %12.12s:%-4d : %s built authorizer len %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"libceph: %.*s %12.12s:%-4d : %s built authorizer len %d\0A\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 135, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"ceph_auth_none_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 121, i32 42 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [24 x i8] c"../net/ceph/auth_none.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 56, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ceph_auth_none_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_auth_none_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_auth_none_init(ptr noundef %ac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_auth_none_init.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_auth_none_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !24

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_auth_none_init.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 135, ptr noundef %ac) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 1) #11
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %call7.i.i, align 8
  %2 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %ac, align 8
  %private = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 1
  %3 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %private, align 4
  %ops = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ceph_auth_none_ops, ptr %ops, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @is_authenticated(ptr nocapture noundef readonly %ac) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1, !range !25
  %4 = xor i8 %3, 1
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @should_authenticate(ptr nocapture noundef readonly %ac) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1, !range !25
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @build_request(ptr nocapture noundef readnone %ac, ptr nocapture noundef readnone %buf, ptr nocapture noundef readnone %end) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @handle_reply(ptr noundef %ac, i64 noundef %global_id, ptr nocapture noundef readnone %buf, ptr nocapture noundef readnone %end, ptr nocapture noundef readnone %session_key, ptr nocapture noundef readnone %session_key_len, ptr nocapture noundef readnone %con_secret, ptr nocapture noundef readnone %con_secret_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  tail call void @ceph_auth_set_global_id(ptr noundef %ac, i64 noundef %global_id) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_auth_none_create_authorizer(ptr nocapture noundef readonly %ac, i32 noundef %peer_type, ptr nocapture noundef writeonly %auth) #0 align 64 {
entry:
  %p.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3136, i32 noundef 136) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ceph_auth_none_destroy_authorizer, ptr %call7.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i) #8
  %buf.i = getelementptr inbounds %struct.ceph_none_authorizer, ptr %call7.i, i32 0, i32 1
  %add.ptr.i = getelementptr %struct.ceph_none_authorizer, ptr %call7.i, i32 0, i32 2
  %cmp.not.i.not.i = icmp ugt ptr %buf.i, %add.ptr.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %buf.i to i32
  br i1 %cmp.not.i.not.i, label %if.end.if.then3_crit_edge, label %do.end.i, !prof !26

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

do.end.i:                                         ; preds = %if.end
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %buf.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.ceph_none_authorizer, ptr %call7.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %incdec.ptr.i.i, ptr %p.i, align 4
  %name.i = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 4
  %4 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name.i, align 8
  %call5.i = call i32 @ceph_auth_entity_name_encode(ptr noundef %5, ptr noundef nonnull %p.i, ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i.if.then3_crit_edge, label %do.body9.i

do.end.i.if.then3_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

do.body9.i:                                       ; preds = %do.end.i
  %6 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p.i, align 4
  %cmp.not.i49.i = icmp ule ptr %7, %add.ptr.i
  %sub.ptr.rhs.cast.i51.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i52.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.ptr.sub.i52.i)
  %cmp1.i53.i = icmp ugt i32 %sub.ptr.sub.i52.i, 7
  %8 = select i1 %cmp.not.i49.i, i1 %cmp1.i53.i, i1 false
  br i1 %8, label %do.end20.i, label %do.body9.i.if.then3_crit_edge, !prof !27

do.body9.i.if.then3_crit_edge:                    ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

do.end20.i:                                       ; preds = %do.body9.i
  %global_id.i = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 5
  %9 = ptrtoint ptr %global_id.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %global_id.i, align 8
  %11 = call i64 @llvm.bswap.i64(i64 %10) #8
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %7, align 1
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 8
  %13 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i.i, ptr %p.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.i
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub.ptr.sub.i, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_auth_none_build_authorizer.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_auth_none_create_authorizer, %if.then34.i)) #8
          to label %if.end4 [label %if.then34.i], !srcloc !24

if.then34.i:                                      ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_auth_none_build_authorizer.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 56, ptr noundef nonnull @.str.6, i32 noundef %16) #8
  br label %if.end4

if.then3:                                         ; preds = %do.body9.i.if.then3_crit_edge, %do.end.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i.ph = phi i32 [ -34, %if.end.if.then3_crit_edge ], [ -34, %do.body9.i.if.then3_crit_edge ], [ %call5.i, %do.end.i.if.then3_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #8
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end4:                                          ; preds = %if.then34.i, %do.end20.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #8
  %17 = ptrtoint ptr %auth to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i, ptr %auth, align 4
  %authorizer_buf = getelementptr inbounds %struct.ceph_auth_handshake, ptr %auth, i32 0, i32 1
  %18 = ptrtoint ptr %authorizer_buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf.i, ptr %authorizer_buf, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i, align 4
  %authorizer_buf_len = getelementptr inbounds %struct.ceph_auth_handshake, ptr %auth, i32 0, i32 2
  %21 = ptrtoint ptr %authorizer_buf_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %authorizer_buf_len, align 4
  %authorizer_reply_buf = getelementptr inbounds %struct.ceph_auth_handshake, ptr %auth, i32 0, i32 3
  %22 = ptrtoint ptr %authorizer_reply_buf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %authorizer_reply_buf, align 4
  %authorizer_reply_buf_len = getelementptr inbounds %struct.ceph_auth_handshake, ptr %auth, i32 0, i32 4
  %23 = ptrtoint ptr %authorizer_reply_buf_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %authorizer_reply_buf_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then3 ], [ 0, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @reset(ptr nocapture noundef readonly %ac) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %1, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @destroy(ptr nocapture noundef %ac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_auth_set_global_id(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_auth_none_destroy_authorizer(ptr noundef %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %a) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_auth_entity_name_encode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ceph/auth_none.c", i32 135, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ceph_auth_none_init.__UNIQUE_ID_ddebug229, !1, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ceph_auth_none_ops, !9, !"ceph_auth_none_ops", i1 false, i1 false}
!9 = !{!"../net/ceph/auth_none.c", i32 121, i32 42}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/ceph/auth_none.c", i32 56, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ceph_auth_none_build_authorizer.__UNIQUE_ID_ddebug228, !11, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 2148970915, i64 2148970920, i64 2148970933, i64 2148970977, i64 2148971011, i64 2148971032}
!25 = !{i8 0, i8 2}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{!"branch_weights", i32 2000, i32 1}

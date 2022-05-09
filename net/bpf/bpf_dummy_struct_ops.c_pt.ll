; ModuleID = '/llk/IR_all_yes/net/bpf/bpf_dummy_struct_ops.c_pt.bc'
source_filename = "../net/bpf/bpf_dummy_struct_ops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_struct_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [64 x %struct.btf_func_model], i32, i32 }
%struct.btf_func_model = type { i8, i8, [12 x i8] }
%struct.bpf_verifier_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.170 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { %struct.anon.172, [0 x %struct.sock_filter] }
%struct.anon.172 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.169 }
%struct.atomic64_t = type { i64 }
%struct.hlist_node = type { ptr, ptr }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.list_head = type { ptr, ptr }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.169 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.btf_type = type { i32, i32, %union.anon.102 }
%union.anon.102 = type { i32 }
%struct.anon.113 = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bpf_dummy_ops_test_args = type { [12 x i64], %struct.bpf_dummy_ops_state }
%struct.bpf_dummy_ops_state = type { i32 }
%struct.vm_struct = type { ptr, ptr, i32, i32, ptr, i32, i32, ptr }

@bpf_bpf_dummy_ops = dso_local global { %struct.bpf_struct_ops, [244 x i8] } { %struct.bpf_struct_ops { ptr @bpf_dummy_verifier_ops, ptr @bpf_dummy_init, ptr null, ptr @bpf_dummy_init_member, ptr @bpf_dummy_reg, ptr @bpf_dummy_unreg, ptr null, ptr null, ptr @.str.1, [64 x %struct.btf_func_model] zeroinitializer, i32 0, i32 0 }, [244 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"net/bpf/bpf_dummy_struct_ops.c\00", [33 x i8] zeroinitializer }, align 32
@bpf_dummy_verifier_ops = internal constant { %struct.bpf_verifier_ops, [36 x i8] } { %struct.bpf_verifier_ops { ptr null, ptr @bpf_dummy_ops_is_valid_access, ptr null, ptr null, ptr null, ptr @bpf_dummy_ops_btf_struct_access, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bpf_dummy_ops\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bpf_dummy_ops_state\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"only access to bpf_dummy_ops_state is supported\0A\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"bpf_bpf_dummy_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 193, i32 23 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 122, i32 6 }
@___asan_gen_.13 = private unnamed_addr constant [23 x i8] c"bpf_dummy_verifier_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 172, i32 38 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 199, i32 10 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 230, i32 6 }
@___asan_gen_.23 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 214, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 156, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 154, i32 39 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [34 x i8] c"../net/bpf/bpf_dummy_struct_ops.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 161, i32 16 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @bpf_bpf_dummy_ops, ptr @.str, ptr @bpf_dummy_verifier_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_bpf_dummy_ops to i32), i32 940, i32 1184, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_dummy_verifier_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_struct_ops_test_run(ptr noundef %prog, ptr nocapture noundef readonly %kattr, ptr noundef %uattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %attach_btf_id = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %attach_btf_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attach_btf_id, align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.bpf_struct_ops, ptr @bpf_bpf_dummy_ops, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp.not = icmp eq i32 %3, %4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %attach_func_proto = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %attach_func_proto to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attach_func_proto, align 8
  %info.i = getelementptr inbounds %struct.btf_type, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %info.i, align 4
  %ctx_size_in.i = getelementptr inbounds %struct.anon.113, ptr %kattr, i32 0, i32 8
  %9 = ptrtoint ptr %ctx_size_in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctx_size_in.i, align 8
  %conv = shl i32 %8, 3
  %mul.i = and i32 %conv, 524280
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %mul.i)
  %cmp.not.i = icmp eq i32 %10, %mul.i
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 104) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.if.then4_crit_edge, label %if.end4.i

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.end4.i:                                        ; preds = %if.end.i
  %ctx_in7.i = getelementptr inbounds %struct.anon.113, ptr %kattr, i32 0, i32 10
  %12 = ptrtoint ptr %ctx_in7.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ctx_in7.i, align 8
  %conv8.i = trunc i64 %13 to i32
  %14 = inttoptr i32 %conv8.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %10)
  %cmp1.i.i.i = icmp ugt i32 %10, 104
  br i1 %cmp1.i.i.i, label %if.then3.i.i.i, label %if.then.i.i.i.i, !prof !29

if.then3.i.i.i:                                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef 104, i32 noundef %10) #5
  br label %out.i

if.then.i.i.i.i:                                  ; preds = %if.end4.i
  tail call void @__check_object_size(ptr noundef nonnull %call7.i.i.i, i32 noundef %10, i1 noundef zeroext false) #5
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #5
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %14, i32 %10, i32 -1226833920) #9, !srcloc !30
  %asmresult.i.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !31

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef %10) #5
  %16 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !32
  %and.i.i.i.i.i = and i32 %18, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call7.i.i.i, ptr noundef %14, i32 noundef %10) #5
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %10, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %10, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end13.i, label %if.then11.i.i.i, !prof !31

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i.i = sub i32 %10, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %sub.i.i.i
  %19 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %out.i

if.end13.i:                                       ; preds = %if.end.i.i.i
  %20 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %call7.i.i.i, align 8
  %conv21.i = trunc i64 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv21.i)
  %tobool22.not.i = icmp eq i32 %conv21.i, 0
  br i1 %tobool22.not.i, label %if.end13.i.dummy_ops_init_args.exit_crit_edge, label %land.lhs.true.i

if.end13.i.dummy_ops_init_args.exit_crit_edge:    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dummy_ops_init_args.exit

land.lhs.true.i:                                  ; preds = %if.end13.i
  %22 = inttoptr i32 %conv21.i to ptr
  %state.i = getelementptr inbounds %struct.bpf_dummy_ops_test_args, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #5
  %call.i.i45.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i45.i, label %land.lhs.true.i.if.then11.i.i62.i_crit_edge, label %land.lhs.true.i.i49.i

land.lhs.true.i.if.then11.i.i62.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i62.i

land.lhs.true.i.i49.i:                            ; preds = %land.lhs.true.i
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %22, i32 4, i32 -1226833920) #9, !srcloc !30
  %asmresult.i.i47.i = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i47.i)
  %cmp.i6.i48.i = icmp eq i32 %asmresult.i.i47.i, 0
  br i1 %cmp.i6.i48.i, label %if.end.i.i59.i, label %land.lhs.true.i.i49.i.if.then11.i.i62.i_crit_edge, !prof !31

land.lhs.true.i.i49.i.if.then11.i.i62.i_crit_edge: ; preds = %land.lhs.true.i.i49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i62.i

if.end.i.i59.i:                                   ; preds = %land.lhs.true.i.i49.i
  %call.i.i.i50.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #5
  %24 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i.i.i.i.i.i51.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i51.i to ptr
  %cpu_domain.i.i.i.i.i52.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i52.i) #4, !srcloc !32
  %and.i.i.i.i53.i = and i32 %26, -13
  %or.i.i.i.i54.i = or i32 %and.i.i.i.i53.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i54.i) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  %call1.i.i.i55.i = tail call i32 @arm_copy_from_user(ptr noundef %state.i, ptr noundef nonnull %22, i32 noundef 4) #5
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i55.i)
  %tobool4.not.i.i58.i = icmp eq i32 %call1.i.i.i55.i, 0
  br i1 %tobool4.not.i.i58.i, label %if.end.i.i59.i.dummy_ops_init_args.exit_crit_edge, label %if.end.i.i59.i.if.then11.i.i62.i_crit_edge, !prof !31

if.end.i.i59.i.if.then11.i.i62.i_crit_edge:       ; preds = %if.end.i.i59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i62.i

if.end.i.i59.i.dummy_ops_init_args.exit_crit_edge: ; preds = %if.end.i.i59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dummy_ops_init_args.exit

if.then11.i.i62.i:                                ; preds = %if.end.i.i59.i.if.then11.i.i62.i_crit_edge, %land.lhs.true.i.i49.i.if.then11.i.i62.i_crit_edge, %land.lhs.true.i.if.then11.i.i62.i_crit_edge
  %res.0.i.i5769.i = phi i32 [ %call1.i.i.i55.i, %if.end.i.i59.i.if.then11.i.i62.i_crit_edge ], [ 4, %land.lhs.true.i.if.then11.i.i62.i_crit_edge ], [ 4, %land.lhs.true.i.i49.i.if.then11.i.i62.i_crit_edge ]
  %sub.i.i60.i = sub i32 4, %res.0.i.i5769.i
  %add.ptr.i.i61.i = getelementptr i8, ptr %state.i, i32 %sub.i.i60.i
  %27 = call ptr @memset(ptr %add.ptr.i.i61.i, i32 0, i32 %res.0.i.i5769.i)
  br label %out.i

out.i:                                            ; preds = %if.then11.i.i62.i, %if.then11.i.i.i, %if.then3.i.i.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  br label %if.then4

dummy_ops_init_args.exit:                         ; preds = %if.end.i.i59.i.dummy_ops_init_args.exit_crit_edge, %if.end13.i.dummy_ops_init_args.exit_crit_edge
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %dummy_ops_init_args.exit.if.then4_crit_edge, label %if.end6

dummy_ops_init_args.exit.if.then4_crit_edge:      ; preds = %dummy_ops_init_args.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4:                                         ; preds = %dummy_ops_init_args.exit.if.then4_crit_edge, %out.i, %if.end.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %retval.0.i77 = phi ptr [ %call7.i.i.i, %dummy_ops_init_args.exit.if.then4_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then4_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.if.then4_crit_edge ], [ inttoptr (i32 -14 to ptr), %out.i ]
  %28 = ptrtoint ptr %retval.0.i77 to i32
  br label %cleanup

if.end6:                                          ; preds = %dummy_ops_init_args.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i58 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 468) #8
  %tobool.not = icmp eq ptr %call7.i.i.i58, null
  br i1 %tobool.not, label %if.end6.out_crit_edge, label %if.end9

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end9:                                          ; preds = %if.end6
  %call10 = tail call ptr @bpf_jit_alloc_exec(i32 noundef 4096) #5
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.out_crit_edge, label %if.end13

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end13:                                         ; preds = %if.end9
  %call.i = tail call ptr @find_vm_area(ptr noundef nonnull %call10) #5
  %tobool.not.i59 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i59, label %if.end13.set_vm_flush_reset_perms.exit_crit_edge, label %if.then.i

if.end13.set_vm_flush_reset_perms.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_vm_flush_reset_perms.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %flags.i = getelementptr inbounds %struct.vm_struct, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i, align 4
  %or.i60 = or i32 %31, 256
  store i32 %or.i60, ptr %flags.i, align 4
  br label %set_vm_flush_reset_perms.exit

set_vm_flush_reset_perms.exit:                    ; preds = %if.then.i, %if.end13.set_vm_flush_reset_perms.exit_crit_edge
  %expected_attach_type = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 3
  %32 = ptrtoint ptr %expected_attach_type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %expected_attach_type, align 4
  %arrayidx = getelementptr %struct.bpf_struct_ops, ptr @bpf_bpf_dummy_ops, i32 0, i32 9, i32 %33
  %add.ptr = getelementptr i8, ptr %call10, i32 4096
  %call14 = tail call i32 @bpf_struct_ops_prepare_trampoline(ptr noundef nonnull %call7.i.i.i58, ptr noundef %prog, ptr noundef %arrayidx, ptr noundef nonnull %call10, ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %set_vm_flush_reset_perms.exit.out_crit_edge, label %if.end18

set_vm_flush_reset_perms.exit.out_crit_edge:      ; preds = %set_vm_flush_reset_perms.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18:                                         ; preds = %set_vm_flush_reset_perms.exit
  %34 = ptrtoint ptr %call10 to i32
  %call19 = tail call i32 @set_memory_ro(i32 noundef %34, i32 noundef 1) #5
  %call20 = tail call i32 @set_memory_x(i32 noundef %34, i32 noundef 1) #5
  %35 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool.not.i62 = icmp eq i64 %36, 0
  %state2.i = getelementptr inbounds %struct.bpf_dummy_ops_test_args, ptr %call7.i.i.i, i32 0, i32 1
  %spec.select.i = select i1 %tobool.not.i62, ptr null, ptr %state2.i
  %arrayidx4.i = getelementptr [12 x i64], ptr %call7.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx4.i, align 8
  %arrayidx6.i = getelementptr [12 x i64], ptr %call7.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx6.i, align 8
  %arrayidx8.i = getelementptr [12 x i64], ptr %call7.i.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx8.i, align 8
  %arrayidx10.i = getelementptr [12 x i64], ptr %call7.i.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx10.i, align 8
  %call.i63 = tail call i32 (ptr, ...) %call10(ptr noundef %spec.select.i, i64 noundef %38, i64 noundef %40, i64 noundef %42, i64 noundef %44) #5
  %45 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %call7.i.i.i, align 8
  %conv3.i = trunc i64 %46 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i)
  %tobool.not.i64 = icmp eq i32 %conv3.i, 0
  br i1 %tobool.not.i64, label %if.end18.if.end25_crit_edge, label %land.lhs.true.i67

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

land.lhs.true.i67:                                ; preds = %if.end18
  %47 = inttoptr i32 %conv3.i to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #5
  %call.i.i.i68 = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i68, label %land.lhs.true.i67.out_crit_edge, label %if.end.i.i.i71

land.lhs.true.i67.out_crit_edge:                  ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.i.i.i71:                                   ; preds = %land.lhs.true.i67
  %48 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %47, i32 4, i32 -1226833920) #9, !srcloc !35
  %asmresult.i.i.i70 = extractvalue { i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i70)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i.i70, 0
  br i1 %cmp.i1.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i71.out_crit_edge

if.end.i.i.i71.out_crit_edge:                     ; preds = %if.end.i.i.i71
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i71
  %call.i.i.i.i72 = tail call zeroext i1 @__kasan_check_read(ptr noundef %state2.i, i32 noundef 4) #5
  %call.i1.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %47, ptr noundef %state2.i, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool4.not.i = icmp eq i32 %call.i1.i.i.i, 0
  br i1 %tobool4.not.i, label %copy_to_user.exit.i.if.end25_crit_edge, label %copy_to_user.exit.i.out_crit_edge

copy_to_user.exit.i.out_crit_edge:                ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

copy_to_user.exit.i.if.end25_crit_edge:           ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.end25:                                         ; preds = %copy_to_user.exit.i.if.end25_crit_edge, %if.end18.if.end25_crit_edge
  %retval26 = getelementptr inbounds %struct.anon.113, ptr %uattr, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 122) #5
  %49 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 4
  %51 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !32
  %and.i = and i32 %51, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  %52 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %retval26, i32 %call.i63, i32 -1226833921) #5, !srcloc !36
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool29.not = icmp eq i32 %52, 0
  %spec.select = select i1 %tobool29.not, i32 0, i32 -14
  br label %out

out:                                              ; preds = %if.end25, %copy_to_user.exit.i.out_crit_edge, %if.end.i.i.i71.out_crit_edge, %land.lhs.true.i67.out_crit_edge, %set_vm_flush_reset_perms.exit.out_crit_edge, %if.end9.out_crit_edge, %if.end6.out_crit_edge
  %err.0 = phi i32 [ %call14, %set_vm_flush_reset_perms.exit.out_crit_edge ], [ -12, %if.end6.out_crit_edge ], [ -12, %if.end9.out_crit_edge ], [ %spec.select, %if.end25 ], [ -14, %copy_to_user.exit.i.out_crit_edge ], [ -14, %land.lhs.true.i67.out_crit_edge ], [ -14, %if.end.i.i.i71.out_crit_edge ]
  %image.0 = phi ptr [ %call10, %set_vm_flush_reset_perms.exit.out_crit_edge ], [ null, %if.end6.out_crit_edge ], [ null, %if.end9.out_crit_edge ], [ %call10, %if.end25 ], [ %call10, %copy_to_user.exit.i.out_crit_edge ], [ %call10, %land.lhs.true.i67.out_crit_edge ], [ %call10, %if.end.i.i.i71.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  tail call void @bpf_jit_free_exec(ptr noundef %image.0) #5
  tail call void @kfree(ptr noundef %call7.i.i.i58) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %28, %if.then4 ], [ %err.0, %out ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_jit_alloc_exec(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_struct_ops_prepare_trampoline(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_ro(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_x(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_jit_free_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bpf_dummy_init(ptr nocapture noundef readnone %btf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bpf_dummy_init_member(ptr nocapture noundef readnone %t, ptr nocapture noundef readnone %member, ptr nocapture noundef readnone %kdata, ptr nocapture noundef readnone %udata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bpf_dummy_reg(ptr nocapture noundef readnone %kdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bpf_dummy_unreg(ptr nocapture noundef %kdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bpf_dummy_ops_is_valid_access(i32 noundef %off, i32 noundef %size, i32 noundef %type, ptr noundef %prog, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %off)
  %cmp1.i.i = icmp ult i32 %off, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp2.not.i.i = icmp eq i32 %type, 1
  %or.cond10.i.i = and i1 %cmp1.i.i, %cmp2.not.i.i
  br i1 %or.cond10.i.i, label %bpf_tracing_ctx_access.exit.i, label %entry.bpf_tracing_btf_ctx_access.exit_crit_edge

entry.bpf_tracing_btf_ctx_access.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_tracing_btf_ctx_access.exit

bpf_tracing_ctx_access.exit.i:                    ; preds = %entry
  %rem.i.i = srem i32 %off, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp5.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %cmp5.not.i.i, label %if.end.i, label %bpf_tracing_ctx_access.exit.i.bpf_tracing_btf_ctx_access.exit_crit_edge

bpf_tracing_ctx_access.exit.i.bpf_tracing_btf_ctx_access.exit_crit_edge: ; preds = %bpf_tracing_ctx_access.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_tracing_btf_ctx_access.exit

if.end.i:                                         ; preds = %bpf_tracing_ctx_access.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = tail call zeroext i1 @btf_ctx_access(i32 noundef %off, i32 noundef %size, i32 noundef 1, ptr noundef %prog, ptr noundef %info) #5
  br label %bpf_tracing_btf_ctx_access.exit

bpf_tracing_btf_ctx_access.exit:                  ; preds = %if.end.i, %bpf_tracing_ctx_access.exit.i.bpf_tracing_btf_ctx_access.exit_crit_edge, %entry.bpf_tracing_btf_ctx_access.exit_crit_edge
  %retval.0.i = phi i1 [ %call1.i, %if.end.i ], [ false, %bpf_tracing_ctx_access.exit.i.bpf_tracing_btf_ctx_access.exit_crit_edge ], [ false, %entry.bpf_tracing_btf_ctx_access.exit_crit_edge ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_dummy_ops_btf_struct_access(ptr noundef %log, ptr noundef %btf, ptr noundef %t, i32 noundef %off, i32 noundef %size, i32 noundef %atype, ptr noundef %next_btf_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @btf_find_by_name_kind(ptr noundef %btf, ptr noundef nonnull @.str.5, i8 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @btf_type_by_id(ptr noundef %btf, i32 noundef %call) #5
  %cmp2.not = icmp eq ptr %call1, %t
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @bpf_log(ptr noundef %log, ptr noundef nonnull @.str.6) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @btf_struct_access(ptr noundef %log, ptr noundef %btf, ptr noundef %t, i32 noundef %off, i32 noundef %size, i32 noundef %atype, ptr noundef %next_btf_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %atype)
  %cmp9 = icmp eq i32 %atype, 1
  %spec.select = select i1 %cmp9, i32 %call5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %if.then3 ], [ %spec.select, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btf_ctx_access(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btf_find_by_name_kind(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btf_type_by_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btf_struct_access(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bpf/bpf_dummy_struct_ops.c", i32 122, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/bpf/bpf_dummy_struct_ops.c", i32 199, i32 10}
!4 = !{ptr @bpf_bpf_dummy_ops, !5, !"bpf_bpf_dummy_ops", i1 false, i1 false}
!5 = !{!"../net/bpf/bpf_dummy_struct_ops.c", i32 193, i32 23}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!13 = !{ptr @bpf_dummy_verifier_ops, !14, !"bpf_dummy_verifier_ops", i1 false, i1 false}
!14 = !{!"../net/bpf/bpf_dummy_struct_ops.c", i32 172, i32 38}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/bpf/bpf_dummy_struct_ops.c", i32 154, i32 39}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/bpf/bpf_dummy_struct_ops.c", i32 161, i32 16}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2153337889, i64 2153337914}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 5833444}
!33 = !{i64 5833641}
!34 = !{i64 2153318874}
!35 = !{i64 2153338570, i64 2153338595}
!36 = !{i64 2157061618, i64 2157061898, i64 2157062232, i64 2157062566}

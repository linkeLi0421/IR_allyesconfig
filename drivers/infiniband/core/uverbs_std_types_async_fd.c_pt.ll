; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/uverbs_std_types_async_fd.c_pt.bc'
source_filename = "../drivers/infiniband/core/uverbs_std_types_async_fd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uverbs_object_def = type { i16, ptr, i32, ptr }
%struct.anon.182 = type { i16 }
%union.anon.184 = type { ptr }
%struct.uapi_definition = type { i8, i8, %union.anon.181, %union.anon.184 }
%union.anon.181 = type { %struct.anon.183 }
%struct.anon.183 = type { i16, i8, i8, i8 }
%struct.uverbs_obj_type_class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uverbs_obj_fd_type = type { %struct.uverbs_obj_type, ptr, ptr, ptr, i32 }
%struct.uverbs_obj_type = type { ptr, i32 }
%struct.uverbs_method_def = type { i16, i32, i32, ptr, ptr }
%struct.anon.172 = type { i16, i8 }
%union.anon.174 = type { %struct.anon.175, [4 x i8] }
%struct.anon.175 = type { ptr }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ib_uobject = type { i64, ptr, ptr, ptr, %struct.list_head, %struct.ib_rdmacg_object, i32, %struct.kref, %struct.atomic_t, %struct.callback_head, ptr }
%struct.ib_rdmacg_object = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ib_uverbs_async_event_file = type { %struct.ib_uobject, %struct.ib_uverbs_event_queue, %struct.ib_event_handler }
%struct.ib_uverbs_event_queue = type { %struct.spinlock, i32, %struct.wait_queue_head, ptr, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.168 }
%union.anon.168 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.169, i16, i16, i8 }
%union.anon.169 = type { i64 }

@ib_uverbs_object_UVERBS_OBJECT_ASYNC_EVENT = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 16, ptr @.compoundliteral, i32 1, ptr @_object_methods_UVERBS_OBJECT_ASYNC_EVENT74 }, [16 x i8] zeroinitializer }, align 32
@uverbs_def_obj_async_fd = dso_local constant { <{ { i8, i8, { %struct.anon.182, [4 x i8] }, %union.anon.184 }, %struct.uapi_definition }>, [40 x i8] } { <{ { i8, i8, { %struct.anon.182, [4 x i8] }, %union.anon.184 }, %struct.uapi_definition }> <{ { i8, i8, { %struct.anon.182, [4 x i8] }, %union.anon.184 } { i8 3, i8 0, { %struct.anon.182, [4 x i8] } { %struct.anon.182 { i16 16 }, [4 x i8] undef }, %union.anon.184 { ptr @ib_uverbs_object_UVERBS_OBJECT_ASYNC_EVENT } }, %struct.uapi_definition zeroinitializer }>, [40 x i8] zeroinitializer }, align 32
@uverbs_fd_class = external dso_local constant %struct.uverbs_obj_type_class, align 4
@uverbs_async_event_fops = external dso_local constant %struct.file_operations, align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[infinibandevent]\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.uverbs_obj_fd_type, [40 x i8] } { %struct.uverbs_obj_fd_type { %struct.uverbs_obj_type { ptr @uverbs_fd_class, i32 184 }, ptr @uverbs_async_event_destroy_uobj, ptr @uverbs_async_event_fops, ptr @.str, i32 0 }, [40 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_ASYNC_EVENT74 = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @ib_uverbs_method_UVERBS_METHOD_ASYNC_EVENT_ALLOC], [28 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_ASYNC_EVENT_ALLOC = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 0, i32 0, i32 1, ptr @_method_attrs_UVERBS_METHOD_ASYNC_EVENT_ALLOC, ptr @ib_uverbs_handler_UVERBS_METHOD_ASYNC_EVENT_ALLOC }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_ASYNC_EVENT_ALLOC = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.compoundliteral.1], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.1 = internal constant { { i16, { i8, i8, { %struct.anon.172 }, %union.anon.174 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.172 }, %union.anon.174 } } { i16 0, { i8, i8, { %struct.anon.172 }, %union.anon.174 } { i8 4, i8 32, { %struct.anon.172 } { %struct.anon.172 { i16 16, i8 2 } }, %union.anon.174 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [43 x i8] c"ib_uverbs_object_UVERBS_OBJECT_ASYNC_EVENT\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [24 x i8] c"uverbs_def_obj_async_fd\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 76, i32 30 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [44 x i8] c"_object_methods_UVERBS_OBJECT_ASYNC_EVENT74\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 67, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant [49 x i8] c"ib_uverbs_method_UVERBS_METHOD_ASYNC_EVENT_ALLOC\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [46 x i8] c"_method_attrs_UVERBS_METHOD_ASYNC_EVENT_ALLOC\00", align 1
@___asan_gen_.19 = private constant [55 x i8] c"../drivers/infiniband/core/uverbs_std_types_async_fd.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 60, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @ib_uverbs_object_UVERBS_OBJECT_ASYNC_EVENT, ptr @uverbs_def_obj_async_fd, ptr @.str, ptr @.compoundliteral, ptr @_object_methods_UVERBS_OBJECT_ASYNC_EVENT74, ptr @ib_uverbs_method_UVERBS_METHOD_ASYNC_EVENT_ALLOC, ptr @_method_attrs_UVERBS_METHOD_ASYNC_EVENT_ALLOC, ptr @.compoundliteral.1], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_object_UVERBS_OBJECT_ASYNC_EVENT to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_def_obj_async_fd to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_ASYNC_EVENT74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_ASYNC_EVENT_ALLOC to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_ASYNC_EVENT_ALLOC to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uverbs_async_event_release(ptr noundef %inode, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @uverbs_uobject_fd_release(ptr noundef %inode, ptr noundef %filp) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %ref.i = getelementptr inbounds %struct.ib_uobject, ptr %1, i32 0, i32 7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #3
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #3
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #3, !srcloc !18
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !19

if.end.if.end15.sink.split.i.i.i.i.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.uverbs_uobject_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !20

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.uverbs_uobject_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %uverbs_uobject_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i) #3
  br label %uverbs_uobject_get.exit

uverbs_uobject_get.exit:                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.uverbs_uobject_get.exit_crit_edge
  %call1 = tail call i32 @uverbs_uobject_fd_release(ptr noundef %inode, ptr noundef %filp) #3
  %ev_queue = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %1, i32 0, i32 1
  tail call void @ib_uverbs_free_event_queue(ptr noundef %ev_queue) #3
  tail call void @uverbs_uobject_put(ptr noundef nonnull %1) #3
  br label %cleanup

cleanup:                                          ; preds = %uverbs_uobject_get.exit, %if.then
  %retval.0 = phi i32 [ %call1, %uverbs_uobject_get.exit ], [ %call, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_uobject_fd_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_free_event_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uverbs_uobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uverbs_async_event_destroy_uobj(ptr noundef %uobj, i32 noundef %why) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %event_handler = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %uobj, i32 0, i32 2
  tail call void @ib_unregister_event_handler(ptr noundef %event_handler) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %why)
  %cmp = icmp eq i32 %why, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @ib_uverbs_async_handler(ptr noundef %uobj, i64 noundef 0, i64 noundef 8, ptr noundef null, ptr noundef null) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_event_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_async_handler(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_ASYNC_EVENT_ALLOC(ptr noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %0 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %and1.i.i.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  %attrs.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6
  %retval.0.i.i = select i1 %tobool.i.not.i.i, ptr inttoptr (i32 -2 to ptr), ptr %attrs.i.i
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i

entry.uverbs_attr_get_uobject.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %uverbs_attr_get_uobject.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %retval.0.i.i, align 8
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get_uobject.exit:                     ; preds = %if.end.i, %entry.uverbs_attr_get_uobject.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %retval.0.i.i, %entry.uverbs_attr_get_uobject.exit_crit_edge ]
  tail call void @ib_uverbs_init_async_event_file(ptr noundef %retval.0.i) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_init_async_event_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @uverbs_def_obj_async_fd, !1, !"uverbs_def_obj_async_fd", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/uverbs_std_types_async_fd.c", i32 76, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/uverbs_std_types_async_fd.c", i32 67, i32 1}
!4 = !{ptr @ib_uverbs_object_UVERBS_OBJECT_ASYNC_EVENT, !3, !"ib_uverbs_object_UVERBS_OBJECT_ASYNC_EVENT", i1 false, i1 false}
!5 = !{ptr @_object_methods_UVERBS_OBJECT_ASYNC_EVENT74, !3, !"_object_methods_UVERBS_OBJECT_ASYNC_EVENT74", i1 false, i1 false}
!6 = !{ptr @ib_uverbs_method_UVERBS_METHOD_ASYNC_EVENT_ALLOC, !7, !"ib_uverbs_method_UVERBS_METHOD_ASYNC_EVENT_ALLOC", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/core/uverbs_std_types_async_fd.c", i32 60, i32 1}
!8 = !{ptr @_method_attrs_UVERBS_METHOD_ASYNC_EVENT_ALLOC, !7, !"_method_attrs_UVERBS_METHOD_ASYNC_EVENT_ALLOC", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 2148223234, i64 2148223266, i64 2148223295, i64 2148223329, i64 2148223360, i64 2148223383}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!"branch_weights", i32 2000, i32 1}

; ModuleID = '/llk/IR_all_yes/drivers/tee/optee/core.c_pt.bc'
source_filename = "../drivers/tee/optee/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.tee_shm = type { ptr, i32, ptr, i32, i32, ptr, i32, %struct.refcount_struct, i32, i32, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.page = type { i32, %union.anon, %union.anon.69, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.69 = type { %struct.atomic_t }
%struct.optee = type { ptr, ptr, ptr, ptr, %union.anon.76, %struct.optee_call_queue, %struct.optee_notif, %struct.optee_supp, ptr, i32, i8, ptr, %struct.work_struct }
%union.anon.76 = type { %struct.optee_ffa }
%struct.optee_ffa = type { ptr, ptr, %struct.mutex, %struct.rhashtable }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.optee_call_queue = type { %struct.mutex, %struct.list_head }
%struct.optee_notif = type { i32, %struct.spinlock, %struct.list_head, ptr }
%struct.optee_supp = type { %struct.mutex, ptr, i32, %struct.list_head, %struct.idr, %struct.completion }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optee_context_data = type { %struct.mutex, %struct.list_head }
%struct.tee_context = type { ptr, ptr, %struct.kref, i8, i8, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.optee_session = type { %struct.list_head, i32 }

@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@optee_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&optee->scan_bus_work)\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"optee_bus_scan\00", [17 x i8] zeroinitializer }, align 32
@optee_open.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ctxdata->mutex\00", [16 x i8] zeroinitializer }, align 32
@__initcall__kmod_optee__285_197_optee_core_init6 = internal global ptr @optee_core_init, section ".initcall6.init", align 4
@__exitcall_optee_core_exit = internal global ptr @optee_core_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author286 = internal constant [20 x i8] c"optee.author=Linaro\00", section ".modinfo", align 1
@__UNIQUE_ID_description287 = internal constant [32 x i8] c"optee.description=OP-TEE driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version288 = internal constant [18 x i8] c"optee.version=1.0\00", section ".modinfo", align 1
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"optee\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.6, ptr @.str.7 }, section "__modver", align 4
@__UNIQUE_ID_file289 = internal constant [35 x i8] c"optee.file=drivers/tee/optee/optee\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [21 x i8] c"optee.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias291 = internal constant [27 x i8] c"optee.alias=platform:optee\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/tee/optee/core.c\00", [39 x i8] zeroinitializer }, align 32
@smc_abi_rc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ffa_abi_rc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@elfcorehdr_addr = external dso_local local_unnamed_addr global i64, align 8
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 99, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 100, i32 25 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 109, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 210, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 71, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"smc_abi_rc\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 174, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant [11 x i8] c"ffa_abi_rc\00", align 1
@___asan_gen_.44 = private constant [28 x i8] c"../drivers/tee/optee/core.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 175, i32 12 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_alias291, ptr @__UNIQUE_ID_author286, ptr @__UNIQUE_ID_description287, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__UNIQUE_ID_version288, ptr @__exitcall_optee_core_exit, ptr @__initcall__kmod_optee__285_197_optee_core_init6, ptr @__modver_attr, ptr @optee_open.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @optee_open.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @smc_abi_rc, ptr @ffa_abi_rc], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_open.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_abi_rc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffa_abi_rc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @optee_pool_op_alloc_helper(ptr nocapture noundef readnone %poolm, ptr noundef %shm, i32 noundef %size, ptr noundef readonly %shm_register) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dec.i = add i32 %size, -1
  %shr.i = lshr i32 %dec.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %0 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #5, !range !46
  %sub.i.i = sub nuw nsw i32 32, %0
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3520, i32 noundef %cond.i.i, i32 noundef 0, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup20_crit_edge, label %if.end

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup20

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #5
  %kaddr = getelementptr inbounds %struct.tee_shm, ptr %shm, i32 0, i32 2
  %1 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %kaddr, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call38.i.i.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %3
  %shl = shl i32 %add, 12
  %paddr = getelementptr inbounds %struct.tee_shm, ptr %shm, i32 0, i32 1
  %4 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl, ptr %paddr, align 4
  %shl3 = shl i32 4096, %cond.i.i
  %size4 = getelementptr inbounds %struct.tee_shm, ptr %shm, i32 0, i32 3
  %5 = ptrtoint ptr %size4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl3, ptr %size4, align 4
  %tobool5.not = icmp eq ptr %shm_register, null
  br i1 %tobool5.not, label %if.end.cleanup20_crit_edge, label %if.then6

if.end.cleanup20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup20

if.then6:                                         ; preds = %if.end
  %shl7 = shl nuw i32 1, %cond.i.i
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl7, i32 4) #5
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.then6.err_crit_edge, label %if.end7.i.i, !prof !47

if.then6.err_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end7.i.i:                                      ; preds = %if.then6
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #8
  %tobool9.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool9.not, label %if.end7.i.i.err_crit_edge, label %if.end7.i.i.for.body_crit_edge

if.end7.i.i.for.body_crit_edge:                   ; preds = %if.end7.i.i
  br label %for.body

if.end7.i.i.err_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end7.i.i.for.body_crit_edge
  %i.053 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end7.i.i.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.page, ptr %call38.i.i.i, i32 %i.053
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %i.053
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, %shl7
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  %flags = getelementptr inbounds %struct.tee_shm, ptr %shm, i32 0, i32 8
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %or = or i32 %11, 8
  store i32 %or, ptr %flags, align 8
  %12 = ptrtoint ptr %shm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shm, align 8
  %14 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kaddr, align 8
  %16 = ptrtoint ptr %15 to i32
  %call13 = tail call i32 %shm_register(ptr noundef %13, ptr noundef %shm, ptr noundef nonnull %call8.i.i, i32 noundef %shl7, i32 noundef %16) #5
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.end.cleanup20_crit_edge, label %for.end.err_crit_edge

for.end.err_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.end.cleanup20_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup20

err:                                              ; preds = %for.end.err_crit_edge, %if.end7.i.i.err_crit_edge, %if.then6.err_crit_edge
  %rc.0.ph = phi i32 [ %call13, %for.end.err_crit_edge ], [ -12, %if.end7.i.i.err_crit_edge ], [ -12, %if.then6.err_crit_edge ]
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef %cond.i.i) #5
  br label %cleanup20

cleanup20:                                        ; preds = %err, %for.end.cleanup20_crit_edge, %if.end.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  %retval.0 = phi i32 [ %rc.0.ph, %err ], [ -12, %entry.cleanup20_crit_edge ], [ 0, %if.end.cleanup20_crit_edge ], [ 0, %for.end.cleanup20_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @optee_open(ptr noundef %ctx, i1 noundef zeroext %cap_memref_null) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %cap_memref_null to i8
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call ptr @tee_get_drvdata(ptr noundef %1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 100) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup42_crit_edge, label %if.end

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup42

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %cmp = icmp eq ptr %1, %4
  br i1 %cmp, label %if.then3, label %if.end.do.body34_crit_edge

if.end.do.body34_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body34

if.then3:                                         ; preds = %if.end
  %supp = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %supp, i32 noundef 0) #5
  %ctx5 = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %ctx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx5, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.then7, label %if.then14.critedge

if.then7:                                         ; preds = %if.then3
  %7 = ptrtoint ptr %ctx5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ctx, ptr %ctx5, align 4
  tail call void @mutex_unlock(ptr noundef %supp) #5
  %scan_bus_done = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 10
  %8 = ptrtoint ptr %scan_bus_done to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %scan_bus_done, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool16.not = icmp eq i8 %9, 0
  br i1 %tobool16.not, label %do.body, label %if.then7.do.body34_crit_edge

if.then7.do.body34_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body34

if.then14.critedge:                               ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %supp) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup42

do.body:                                          ; preds = %if.then7
  %scan_bus_work = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 12
  tail call void @__init_work(ptr noundef %scan_bus_work, i32 noundef 0) #5
  %10 = ptrtoint ptr %scan_bus_work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %scan_bus_work, align 4
  %lockdep_map = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @optee_open.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry21 = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %entry21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry21, ptr %entry21, align 4
  %prev.i = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 12, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry21, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 12, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @optee_bus_scan, ptr %func, align 4
  %call23 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.1, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull @.str.2) #5
  %scan_bus_wq = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 11
  %14 = ptrtoint ptr %scan_bus_wq to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call23, ptr %scan_bus_wq, align 4
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup42

if.end27:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %call23, ptr noundef %scan_bus_work) #5
  %15 = ptrtoint ptr %scan_bus_done to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %scan_bus_done, align 4
  br label %do.body34

do.body34:                                        ; preds = %if.end27, %if.then7.do.body34_crit_edge, %if.end.do.body34_crit_edge
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @optee_open.__key.3) #5
  %sess_list = getelementptr inbounds %struct.optee_context_data, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %sess_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %sess_list, ptr %sess_list, align 4
  %prev.i69 = getelementptr inbounds %struct.optee_context_data, ptr %call7.i.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i69 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %sess_list, ptr %prev.i69, align 8
  %cap_memref_null39 = getelementptr inbounds %struct.tee_context, ptr %ctx, i32 0, i32 5
  %18 = ptrtoint ptr %cap_memref_null39 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %cap_memref_null39, align 2
  %data41 = getelementptr inbounds %struct.tee_context, ptr %ctx, i32 0, i32 1
  %19 = ptrtoint ptr %data41 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %data41, align 4
  br label %cleanup42

cleanup42:                                        ; preds = %do.body34, %if.then26, %if.then14.critedge, %entry.cleanup42_crit_edge
  %retval.1 = phi i32 [ 0, %do.body34 ], [ -12, %entry.cleanup42_crit_edge ], [ -10, %if.then26 ], [ -16, %if.then14.critedge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @optee_bus_scan(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @optee_enumerate_devices(i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !49

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 71, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @optee_release(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.tee_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.optee_release_helper.exit_crit_edge, label %if.end.i

entry.optee_release_helper.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %optee_release_helper.exit

if.end.i:                                         ; preds = %entry
  %sess_list.i = getelementptr inbounds %struct.optee_context_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sess_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sess_list.i, align 4
  %cmp.not1.i = icmp eq ptr %3, %sess_list.i
  br i1 %cmp.not1.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %sess.02.i = phi ptr [ %sess_tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %3, %if.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %sess.02.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %sess_tmp.0.i = load ptr, ptr %sess.02.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sess.02.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %sess.02.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %sess.02.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sess.02.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %sess.02.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %sess.02.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %sess.02.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %session_id.i = getelementptr inbounds %struct.optee_session, ptr %sess.02.i, i32 0, i32 1
  %13 = ptrtoint ptr %session_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %session_id.i, align 4
  %call.i = tail call i32 @optee_close_session_helper(ptr noundef %ctx, i32 noundef %14) #5
  tail call void @kfree(ptr noundef %sess.02.i) #5
  %cmp.not.i = icmp eq ptr %sess_tmp.0.i, %sess_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.for.end.i_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

list_del.exit.i.for.end.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %list_del.exit.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #5
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %data.i, align 4
  br label %optee_release_helper.exit

optee_release_helper.exit:                        ; preds = %for.end.i, %entry.optee_release_helper.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @optee_close_session_helper(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @optee_release_supp(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call ptr @tee_get_drvdata(ptr noundef %1) #5
  %data.i = getelementptr inbounds %struct.tee_context, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.optee_release_helper.exit_crit_edge, label %if.end.i

entry.optee_release_helper.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %optee_release_helper.exit

if.end.i:                                         ; preds = %entry
  %sess_list.i = getelementptr inbounds %struct.optee_context_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sess_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sess_list.i, align 4
  %cmp.not1.i = icmp eq ptr %5, %sess_list.i
  br i1 %cmp.not1.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %sess.02.i = phi ptr [ %sess_tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %5, %if.end.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %sess.02.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %sess_tmp.0.i = load ptr, ptr %sess.02.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sess.02.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %sess.02.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %sess.02.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sess.02.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %sess.02.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %sess.02.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %sess.02.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %session_id.i = getelementptr inbounds %struct.optee_session, ptr %sess.02.i, i32 0, i32 1
  %15 = ptrtoint ptr %session_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %session_id.i, align 4
  %call.i = tail call i32 @optee_close_session_helper(ptr noundef %ctx, i32 noundef %16) #5
  tail call void @kfree(ptr noundef %sess.02.i) #5
  %cmp.not.i = icmp eq ptr %sess_tmp.0.i, %sess_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.for.end.i_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

list_del.exit.i.for.end.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %list_del.exit.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %3) #5
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %data.i, align 4
  br label %optee_release_helper.exit

optee_release_helper.exit:                        ; preds = %for.end.i, %entry.optee_release_helper.exit_crit_edge
  %scan_bus_wq = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 11
  %18 = ptrtoint ptr %scan_bus_wq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %scan_bus_wq, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %optee_release_helper.exit.if.end_crit_edge, label %if.then

optee_release_helper.exit.if.end_crit_edge:       ; preds = %optee_release_helper.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %optee_release_helper.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @destroy_workqueue(ptr noundef nonnull %19) #5
  %20 = ptrtoint ptr %scan_bus_wq to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %scan_bus_wq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %optee_release_helper.exit.if.end_crit_edge
  %supp = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 7
  tail call void @optee_supp_release(ptr noundef %supp) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @optee_supp_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @optee_remove_common(ptr noundef %optee) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @optee_unregister_devices() #5
  tail call void @optee_notif_uninit(ptr noundef %optee) #5
  %ctx = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 3
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  tail call void @teedev_close_context(ptr noundef %1) #5
  %2 = ptrtoint ptr %optee to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %optee, align 4
  tail call void @tee_device_unregister(ptr noundef %3) #5
  %teedev = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 1
  %4 = ptrtoint ptr %teedev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %teedev, align 4
  tail call void @tee_device_unregister(ptr noundef %5) #5
  %pool = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 8
  %6 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pool, align 4
  tail call void @tee_shm_pool_free(ptr noundef %7) #5
  %supp = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 7
  tail call void @optee_supp_uninit(ptr noundef %supp) #5
  %call_queue = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 5
  tail call void @mutex_destroy(ptr noundef %call_queue) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @optee_unregister_devices() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @optee_notif_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @teedev_close_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tee_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tee_shm_pool_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @optee_supp_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @optee_core_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %0 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %0)
  %cmp.i.not = icmp eq i64 %0, -1
  br i1 %cmp.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @optee_smc_abi_register() #5
  store i32 %call1, ptr @smc_abi_rc, align 4
  %call2 = tail call i32 @optee_ffa_abi_register() #5
  store i32 %call2, ptr @ffa_abi_rc, align 4
  %1 = load i32, ptr @smc_abi_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  %spec.select = select i1 %or.cond, i32 0, i32 %1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %entry.return_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @optee_core_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @smc_abi_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @optee_smc_abi_unregister() #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load i32, ptr @ffa_abi_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @optee_ffa_abi_unregister() #5
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @optee_enumerate_devices(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @optee_smc_abi_register() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @optee_ffa_abi_register() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @optee_smc_abi_unregister() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @optee_ffa_abi_unregister() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !28, !30, !32, !34}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @optee_open.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/tee/optee/core.c", i32 99, i32 4}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/tee/optee/core.c", i32 100, i32 25}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @optee_open.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/tee/optee/core.c", i32 109, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_optee__285_197_optee_core_init6, !10, !"__initcall__kmod_optee__285_197_optee_core_init6", i1 false, i1 false}
!10 = !{!"../drivers/tee/optee/core.c", i32 197, i32 1}
!11 = !{ptr @__exitcall_optee_core_exit, !12, !"__exitcall_optee_core_exit", i1 false, i1 false}
!12 = !{!"../drivers/tee/optee/core.c", i32 206, i32 1}
!13 = !{ptr @__UNIQUE_ID_author286, !14, !"__UNIQUE_ID_author286", i1 false, i1 false}
!14 = !{!"../drivers/tee/optee/core.c", i32 208, i32 1}
!15 = !{ptr @__UNIQUE_ID_description287, !16, !"__UNIQUE_ID_description287", i1 false, i1 false}
!16 = !{!"../drivers/tee/optee/core.c", i32 209, i32 1}
!17 = !{ptr @__UNIQUE_ID_version288, !18, !"__UNIQUE_ID_version288", i1 false, i1 false}
!18 = !{!"../drivers/tee/optee/core.c", i32 210, i32 1}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__modver_attr, !18, !"__modver_attr", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_file289, !24, !"__UNIQUE_ID_file289", i1 false, i1 false}
!24 = !{!"../drivers/tee/optee/core.c", i32 211, i32 1}
!25 = !{ptr @__UNIQUE_ID_license290, !24, !"__UNIQUE_ID_license290", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_alias291, !27, !"__UNIQUE_ID_alias291", i1 false, i1 false}
!27 = !{!"../drivers/tee/optee/core.c", i32 212, i32 1}
!28 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/tee/optee/core.c", i32 71, i32 2}
!32 = !{ptr @smc_abi_rc, !33, !"smc_abi_rc", i1 false, i1 false}
!33 = !{!"../drivers/tee/optee/core.c", i32 174, i32 12}
!34 = !{ptr @ffa_abi_rc, !35, !"ffa_abi_rc", i1 false, i1 false}
!35 = !{!"../drivers/tee/optee/core.c", i32 175, i32 12}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i32 0, i32 33}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{i8 0, i8 2}
!49 = !{!"branch_weights", i32 2000, i32 1}

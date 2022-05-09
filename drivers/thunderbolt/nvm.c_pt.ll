; ModuleID = '/llk/IR_all_yes/drivers/thunderbolt/nvm.c_pt.bc'
source_filename = "../drivers/thunderbolt/nvm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tb_nvm = type { ptr, i8, i8, i32, ptr, ptr, ptr, i32, i8, i8 }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }

@nvm_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvm_active\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvm_non_active\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvm_ida.xa_lock\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@___asan_gen_.4 = private unnamed_addr constant [8 x i8] c"nvm_ida\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 64, i32 16 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 129, i32 16 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [29 x i8] c"../drivers/thunderbolt/nvm.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 15, i32 8 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @nvm_ida, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvm_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tb_nvm_alloc(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ida_alloc_range(ptr noundef nonnull @nvm_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %1 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.tb_nvm, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %id, align 8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.then3 ], [ %call7.i.i, %if.end5 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_nvm_add_active(ptr noundef %nvm, i32 noundef %size, ptr noundef %reg_read) local_unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %config) #6
  %0 = getelementptr inbounds i8, ptr %config, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 72)
  %name = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %name, align 4
  %reg_read1 = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 15
  %3 = ptrtoint ptr %reg_read1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %reg_read, ptr %reg_read1, align 4
  %read_only = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 10
  %4 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %read_only, align 4
  %id = getelementptr inbounds %struct.tb_nvm, ptr %nvm, i32 0, i32 3
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %id2 = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 2
  %7 = ptrtoint ptr %id2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %id2, align 4
  %stride = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 20
  %8 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %stride, align 4
  %word_size = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 19
  %9 = ptrtoint ptr %word_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %word_size, align 4
  %size3 = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 18
  %10 = ptrtoint ptr %size3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %size, ptr %size3, align 4
  %11 = ptrtoint ptr %nvm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nvm, align 4
  %13 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %config, align 4
  %owner = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 3
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %owner, align 4
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 21
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %nvm, ptr %priv, align 4
  %call = call ptr @nvmem_register(ptr noundef nonnull %config) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %active = getelementptr inbounds %struct.tb_nvm, ptr %nvm, i32 0, i32 4
  %17 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %active, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %16, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_nvm_write_buf(ptr nocapture noundef %nvm, i32 noundef %offset, ptr nocapture noundef readonly %val, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.tb_nvm, ptr %nvm, i32 0, i32 6
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call noalias ptr @vmalloc(i32 noundef 524288) #10
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %buf, align 4
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then.return_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %flushed = getelementptr inbounds %struct.tb_nvm, ptr %nvm, i32 0, i32 9
  %3 = ptrtoint ptr %flushed to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %flushed, align 1
  %add = add i32 %bytes, %offset
  %buf_data_size = getelementptr inbounds %struct.tb_nvm, ptr %nvm, i32 0, i32 7
  %4 = ptrtoint ptr %buf_data_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %buf_data_size, align 4
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %offset
  %7 = call ptr @memcpy(ptr %add.ptr, ptr %val, i32 %bytes)
  br label %return

return:                                           ; preds = %if.end5, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_nvm_add_non_active(ptr noundef %nvm, i32 noundef %size, ptr noundef %reg_write) local_unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %config) #6
  %0 = getelementptr inbounds i8, ptr %config, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 72)
  %name = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.1, ptr %name, align 4
  %reg_write1 = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 16
  %3 = ptrtoint ptr %reg_write1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %reg_write, ptr %reg_write1, align 4
  %root_only = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 11
  %4 = ptrtoint ptr %root_only to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %root_only, align 1
  %id = getelementptr inbounds %struct.tb_nvm, ptr %nvm, i32 0, i32 3
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %id2 = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 2
  %7 = ptrtoint ptr %id2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %id2, align 4
  %stride = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 20
  %8 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %stride, align 4
  %word_size = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 19
  %9 = ptrtoint ptr %word_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %word_size, align 4
  %size3 = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 18
  %10 = ptrtoint ptr %size3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %size, ptr %size3, align 4
  %11 = ptrtoint ptr %nvm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nvm, align 4
  %13 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %config, align 4
  %owner = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 3
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %owner, align 4
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 21
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %nvm, ptr %priv, align 4
  %call = call ptr @nvmem_register(ptr noundef nonnull %config) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %non_active = getelementptr inbounds %struct.tb_nvm, ptr %nvm, i32 0, i32 5
  %17 = ptrtoint ptr %non_active to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %non_active, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %16, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_nvm_free(ptr noundef %nvm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %nvm, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  %non_active = getelementptr inbounds %struct.tb_nvm, ptr %nvm, i32 0, i32 5
  %0 = ptrtoint ptr %non_active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %non_active, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvmem_unregister(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %active = getelementptr inbounds %struct.tb_nvm, ptr %nvm, i32 0, i32 4
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvmem_unregister(ptr noundef nonnull %3) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %buf = getelementptr inbounds %struct.tb_nvm, ptr %nvm, i32 0, i32 6
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 4
  tail call void @vfree(ptr noundef %5) #6
  %id = getelementptr inbounds %struct.tb_nvm, ptr %nvm, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  tail call void @ida_free(ptr noundef nonnull @nvm_ida, i32 noundef %7) #6
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %entry.if.end8_crit_edge
  tail call void @kfree(ptr noundef %nvm) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_nvm_read_data(i32 noundef %address, ptr nocapture noundef writeonly %buf, i32 noundef %size, i32 noundef %retries, ptr nocapture noundef readonly %read_block, ptr noundef %read_block_data) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %size.addr.0 = phi i32 [ %size, %entry ], [ %size.addr.1.ph, %do.cond.do.body_crit_edge ]
  %retries.addr.0 = phi i32 [ %retries, %entry ], [ %retries.addr.2.ph, %do.cond.do.body_crit_edge ]
  %buf.addr.0 = phi ptr [ %buf, %entry ], [ %buf.addr.1.ph, %do.cond.do.body_crit_edge ]
  %address.addr.0 = phi i32 [ %address, %entry ], [ %address.addr.1.ph, %do.cond.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #6
  %0 = call ptr @memset(ptr %data, i32 255, i32 64)
  %and = and i32 %address.addr.0, 3
  %add = add i32 %and, %size.addr.0
  %1 = call i32 @llvm.umin.i32(i32 %add, i32 64)
  %div34 = lshr i32 %address.addr.0, 2
  %add1 = add nuw nsw i32 %1, 3
  %div335 = lshr i32 %add1, 2
  %call = call i32 %read_block(ptr noundef %read_block_data, i32 noundef %div34, ptr noundef nonnull %data, i32 noundef %div335) #6
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %land.lhs.true [
    i32 0, label %if.end7
    i32 -19, label %do.body.cleanup_crit_edge
  ]

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %do.body
  %dec = add i32 %retries.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.addr.0)
  %tobool5.not = icmp eq i32 %retries.addr.0, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.cond_crit_edge

land.lhs.true.do.cond_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub nsw i32 %1, %and
  %add.ptr = getelementptr i8, ptr %data, i32 %and
  %3 = call ptr @memcpy(ptr %buf.addr.0, ptr %add.ptr, i32 %sub)
  %sub9 = sub i32 %size.addr.0, %sub
  %add10 = add i32 %sub, %address.addr.0
  %add.ptr11 = getelementptr i8, ptr %buf.addr.0, i32 %sub
  br label %do.cond

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #6
  br label %return

do.cond:                                          ; preds = %if.end7, %land.lhs.true.do.cond_crit_edge
  %size.addr.1.ph = phi i32 [ %size.addr.0, %land.lhs.true.do.cond_crit_edge ], [ %sub9, %if.end7 ]
  %retries.addr.2.ph = phi i32 [ %dec, %land.lhs.true.do.cond_crit_edge ], [ %retries.addr.0, %if.end7 ]
  %buf.addr.1.ph = phi ptr [ %buf.addr.0, %land.lhs.true.do.cond_crit_edge ], [ %add.ptr11, %if.end7 ]
  %address.addr.1.ph = phi i32 [ %address.addr.0, %land.lhs.true.do.cond_crit_edge ], [ %add10, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #6
  %cmp17.not = icmp eq i32 %size.addr.1.ph, 0
  br i1 %cmp17.not, label %do.cond.return_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.cond.return_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %do.cond.return_crit_edge, %cleanup
  %retval.2 = phi i32 [ %call, %cleanup ], [ 0, %do.cond.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_nvm_write_data(i32 noundef %address, ptr nocapture noundef readonly %buf, i32 noundef %size, i32 noundef %retries, ptr nocapture noundef readonly %write_block, ptr noundef %write_block_data) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %size.addr.0 = phi i32 [ %size, %entry ], [ %size.addr.1.ph, %do.cond.do.body_crit_edge ]
  %retries.addr.0 = phi i32 [ %retries, %entry ], [ %retries.addr.2.ph, %do.cond.do.body_crit_edge ]
  %buf.addr.0 = phi ptr [ %buf, %entry ], [ %buf.addr.1.ph, %do.cond.do.body_crit_edge ]
  %address.addr.0 = phi i32 [ %address, %entry ], [ %address.addr.1.ph, %do.cond.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #6
  %0 = call ptr @memset(ptr %data, i32 255, i32 64)
  %and = and i32 %address.addr.0, 3
  %add = add i32 %and, %size.addr.0
  %1 = call i32 @llvm.umin.i32(i32 %add, i32 64)
  %add.ptr = getelementptr i8, ptr %data, i32 %and
  %2 = call ptr @memcpy(ptr %add.ptr, ptr %buf.addr.0, i32 %1)
  %div30 = lshr i32 %address.addr.0, 2
  %div231 = lshr i32 %1, 2
  %call = call i32 %write_block(ptr noundef %write_block_data, i32 noundef %div30, ptr noundef nonnull %data, i32 noundef %div231) #6
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %call, label %do.body.cleanup_crit_edge [
    i32 0, label %if.end8
    i32 -110, label %if.then4
  ]

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %do.body
  %dec = add i32 %retries.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.addr.0)
  %tobool5.not = icmp eq i32 %retries.addr.0, 0
  br i1 %tobool5.not, label %if.then4.cleanup_crit_edge, label %if.then4.do.cond_crit_edge

if.then4.do.cond_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %size.addr.0, %1
  %add9 = add i32 %1, %address.addr.0
  %add.ptr10 = getelementptr i8, ptr %buf.addr.0, i32 %1
  br label %do.cond

cleanup:                                          ; preds = %if.then4.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %ret.0 = phi i32 [ %call, %do.body.cleanup_crit_edge ], [ -5, %if.then4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #6
  br label %return

do.cond:                                          ; preds = %if.end8, %if.then4.do.cond_crit_edge
  %size.addr.1.ph = phi i32 [ %size.addr.0, %if.then4.do.cond_crit_edge ], [ %sub, %if.end8 ]
  %retries.addr.2.ph = phi i32 [ %dec, %if.then4.do.cond_crit_edge ], [ %retries.addr.0, %if.end8 ]
  %buf.addr.1.ph = phi ptr [ %buf.addr.0, %if.then4.do.cond_crit_edge ], [ %add.ptr10, %if.end8 ]
  %address.addr.1.ph = phi i32 [ %address.addr.0, %if.then4.do.cond_crit_edge ], [ %add9, %if.end8 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #6
  %cmp15.not = icmp eq i32 %size.addr.1.ph, 0
  br i1 %cmp15.not, label %do.cond.return_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.cond.return_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %do.cond.return_crit_edge, %cleanup
  %retval.2 = phi i32 [ %ret.0, %cleanup ], [ 0, %do.cond.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_nvm_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ida_destroy(ptr noundef nonnull @nvm_ida) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thunderbolt/nvm.c", i32 64, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/thunderbolt/nvm.c", i32 129, i32 16}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/thunderbolt/nvm.c", i32 15, i32 8}
!6 = !{ptr @nvm_ida, !5, !"nvm_ida", i1 false, i1 false}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}

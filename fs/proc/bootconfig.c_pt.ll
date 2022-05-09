; ModuleID = '/llk/IR_all_yes/fs/proc/bootconfig.c_pt.bc'
source_filename = "../fs/proc/bootconfig.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xbc_node = type { i16, i16, i16, i16 }

@__initcall__kmod_proc__204_94_proc_boot_config_init5 = internal global ptr @proc_boot_config_init, section ".initcall5.init", align 4
@saved_boot_config = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bootconfig\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s = \00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%c%s%c%s\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\22\22\0A\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.6 = private unnamed_addr constant [18 x i8] c"saved_boot_config\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 13, i32 14 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 90, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 40, i32 39 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 51, i32 41 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 52, i32 44 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 52, i32 51 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [24 x i8] c"../fs/proc/bootconfig.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 58, i32 40 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__initcall__kmod_proc__204_94_proc_boot_config_init5, ptr @saved_boot_config, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saved_boot_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_boot_config_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @copy_xbc_key_value_list(ptr noundef null, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end.if.end11_crit_edge, label %if.then2

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then2:                                         ; preds = %if.end
  %add = add nuw i32 %call, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #13
  store ptr %call9.i.i, ptr @saved_boot_config, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.then2.cleanup_crit_edge, label %if.end5

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.then2
  %call7 = tail call fastcc i32 @copy_xbc_key_value_list(ptr noundef nonnull %call9.i.i, i32 noundef %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @saved_boot_config, align 4
  tail call void @kfree(ptr noundef %0) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end5.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call12 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @boot_config_proc_show, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then9 ], [ 0, %if.end11 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_xbc_key_value_list(ptr noundef %dst, i32 noundef %size) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %leaf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %leaf) #9
  %add.ptr = getelementptr i8, ptr %dst, i32 %size
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #14
  %1 = ptrtoint ptr %leaf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %leaf, align 4
  %call1 = call ptr @xbc_node_find_next_key_value(ptr noundef null, ptr noundef nonnull %leaf) #15
  %2 = ptrtoint ptr %leaf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %leaf, align 4
  %cmp.not122 = icmp eq ptr %3, null
  br i1 %cmp.not122, label %entry.out_crit_edge, label %for.body.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.lr.ph:                                   ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  br label %for.body

for.body:                                         ; preds = %for.inc62.for.body_crit_edge, %for.body.lr.ph
  %4 = phi ptr [ %3, %for.body.lr.ph ], [ %13, %for.inc62.for.body_crit_edge ]
  %dst.addr.0123 = phi ptr [ %dst, %for.body.lr.ph ], [ %dst.addr.2, %for.inc62.for.body_crit_edge ]
  %call.i = call i32 @xbc_node_compose_key_after(ptr noundef null, ptr noundef nonnull %4, ptr noundef %call7.i.i, i32 noundef 256) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %for.body..loopexit_crit_edge, label %if.end

for.body..loopexit_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %.loopexit

if.end:                                           ; preds = %for.body
  %cmp4 = icmp ugt ptr %add.ptr, %dst.addr.0123
  %sub.ptr.rhs.cast = ptrtoint ptr %dst.addr.0123 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cond = select i1 %cmp4, i32 %sub.ptr.sub, i32 0
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %dst.addr.0123, i32 noundef %cond, ptr noundef nonnull @.str.1, ptr noundef %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end..loopexit_crit_edge, label %if.end8

if.end..loopexit_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %.loopexit

if.end8:                                          ; preds = %if.end
  %add.ptr9 = getelementptr i8, ptr %dst.addr.0123, i32 %call5
  %5 = ptrtoint ptr %leaf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %leaf, align 4
  %call10 = call ptr @xbc_node_get_child(ptr noundef %6) #15
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %if.else45, label %if.end8.for.body15_crit_edge

if.end8.for.body15_crit_edge:                     ; preds = %if.end8
  br label %for.body15

for.body15:                                       ; preds = %if.end36.for.body15_crit_edge, %if.end8.for.body15_crit_edge
  %call38.sink = phi ptr [ %call38, %if.end36.for.body15_crit_edge ], [ %call10, %if.end8.for.body15_crit_edge ]
  %dst.addr.1117 = phi ptr [ %add.ptr37, %if.end36.for.body15_crit_edge ], [ %add.ptr9, %if.end8.for.body15_crit_edge ]
  %call41 = call ptr @xbc_node_get_data(ptr noundef nonnull %call38.sink) #15
  %call16 = call ptr @strchr(ptr noundef %call41, i32 noundef 34)
  %tobool17.not = icmp eq ptr %call16, null
  %. = select i1 %tobool17.not, i32 34, i32 39
  %cmp20 = icmp ugt ptr %add.ptr, %dst.addr.1117
  %sub.ptr.rhs.cast23 = ptrtoint ptr %dst.addr.1117 to i32
  %sub.ptr.sub24 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast23
  %cond27 = select i1 %cmp20, i32 %sub.ptr.sub24, i32 0
  %data.i.i = getelementptr inbounds %struct.xbc_node, ptr %call38.sink, i32 0, i32 3
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %data.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.i.i = icmp slt i16 %8, 0
  br i1 %tobool.i.i, label %xbc_node_is_array.exit, label %for.body15.xbc_node_is_array.exit.thread_crit_edge

for.body15.xbc_node_is_array.exit.thread_crit_edge: ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %xbc_node_is_array.exit.thread

xbc_node_is_array.exit:                           ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  %child.i = getelementptr inbounds %struct.xbc_node, ptr %call38.sink, i32 0, i32 1
  %9 = ptrtoint ptr %child.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %child.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.i.not = icmp eq i16 %10, 0
  %spec.select = select i1 %cmp.i.not, ptr @.str.4, ptr @.str.3
  br label %xbc_node_is_array.exit.thread

xbc_node_is_array.exit.thread:                    ; preds = %xbc_node_is_array.exit, %for.body15.xbc_node_is_array.exit.thread_crit_edge
  %11 = phi ptr [ @.str.4, %for.body15.xbc_node_is_array.exit.thread_crit_edge ], [ %spec.select, %xbc_node_is_array.exit ]
  %call32 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %dst.addr.1117, i32 noundef %cond27, ptr noundef nonnull @.str.2, i32 noundef %., ptr noundef %call41, i32 noundef %., ptr noundef nonnull %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %xbc_node_is_array.exit.thread..loopexit_crit_edge, label %if.end36

xbc_node_is_array.exit.thread..loopexit_crit_edge: ; preds = %xbc_node_is_array.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %.loopexit

if.end36:                                         ; preds = %xbc_node_is_array.exit.thread
  %add.ptr37 = getelementptr i8, ptr %dst.addr.1117, i32 %call32
  %call38 = call ptr @xbc_node_get_child(ptr noundef nonnull %call38.sink) #15
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end36.for.inc62_crit_edge, label %if.end36.for.body15_crit_edge

if.end36.for.body15_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15

if.end36.for.inc62_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc62

if.else45:                                        ; preds = %if.end8
  %cmp46 = icmp ugt ptr %add.ptr, %add.ptr9
  %sub.ptr.rhs.cast50 = ptrtoint ptr %add.ptr9 to i32
  %sub.ptr.sub51 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast50
  %cond54 = select i1 %cmp46, i32 %sub.ptr.sub51, i32 0
  %call55 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr9, i32 noundef %cond54, ptr noundef nonnull @.str.5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.else45..loopexit_crit_edge, label %if.end59

if.else45..loopexit_crit_edge:                    ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #11
  br label %.loopexit

if.end59:                                         ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr60 = getelementptr i8, ptr %add.ptr9, i32 %call55
  br label %for.inc62

for.inc62:                                        ; preds = %if.end59, %if.end36.for.inc62_crit_edge
  %dst.addr.2 = phi ptr [ %add.ptr60, %if.end59 ], [ %add.ptr37, %if.end36.for.inc62_crit_edge ]
  %call63 = call ptr @xbc_node_find_next_key_value(ptr noundef null, ptr noundef nonnull %leaf) #15
  %12 = ptrtoint ptr %leaf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %leaf, align 4
  %cmp.not = icmp eq ptr %13, null
  br i1 %cmp.not, label %for.inc62.out_crit_edge, label %for.inc62.for.body_crit_edge

for.inc62.for.body_crit_edge:                     ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc62.out_crit_edge:                          ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %for.inc62.out_crit_edge, %entry.out_crit_edge
  %dst.addr.3 = phi ptr [ %dst, %entry.out_crit_edge ], [ %dst.addr.2, %for.inc62.out_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i) #9
  %sub.ptr.lhs.cast70 = ptrtoint ptr %dst.addr.3 to i32
  %sub.ptr.rhs.cast71 = ptrtoint ptr %dst to i32
  %sub.ptr.sub72 = sub i32 %sub.ptr.lhs.cast70, %sub.ptr.rhs.cast71
  br label %14

.loopexit:                                        ; preds = %if.else45..loopexit_crit_edge, %xbc_node_is_array.exit.thread..loopexit_crit_edge, %if.end..loopexit_crit_edge, %for.body..loopexit_crit_edge
  %ret.3.ph = phi i32 [ %call32, %xbc_node_is_array.exit.thread..loopexit_crit_edge ], [ %call.i, %for.body..loopexit_crit_edge ], [ %call5, %if.end..loopexit_crit_edge ], [ %call55, %if.else45..loopexit_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i) #9
  br label %14

14:                                               ; preds = %.loopexit, %out
  %15 = phi i32 [ %ret.3.ph, %.loopexit ], [ %sub.ptr.sub72, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %leaf) #9
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boot_config_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @saved_boot_config, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @xbc_node_find_next_key_value(ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @xbc_node_get_child(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @xbc_node_get_data(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @xbc_node_compose_key_after(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__initcall__kmod_proc__204_94_proc_boot_config_init5, !1, !"__initcall__kmod_proc__204_94_proc_boot_config_init5", i1 false, i1 false}
!1 = !{!"../fs/proc/bootconfig.c", i32 94, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/proc/bootconfig.c", i32 90, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/proc/bootconfig.c", i32 40, i32 39}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/proc/bootconfig.c", i32 51, i32 41}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/proc/bootconfig.c", i32 52, i32 44}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/proc/bootconfig.c", i32 52, i32 51}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/proc/bootconfig.c", i32 58, i32 40}
!14 = !{ptr @saved_boot_config, !15, !"saved_boot_config", i1 false, i1 false}
!15 = !{!"../fs/proc/bootconfig.c", i32 13, i32 14}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}

; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/armada/armada_fb.c_pt.bc'
source_filename = "../drivers/gpu/drm/armada/armada_fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_framebuffer_funcs = type { ptr, ptr, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.armada_framebuffer = type { %struct.drm_framebuffer, i8, i8 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.armada_gem_object = type { %struct.drm_gem_object, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate Armada fb object\0A\00", [59 x i8] zeroinitializer }, align 32
@armada_fb_funcs = internal constant { %struct.drm_framebuffer_funcs, [20 x i8] } { %struct.drm_framebuffer_funcs { ptr @drm_gem_fb_destroy, ptr @drm_gem_fb_create_handle, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"w%u h%u pf%08x f%u p%u,%u,%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to initialize framebuffer: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [21 x i64] [i64 19, i64 32, i64 538982467, i64 842093913, i64 842094169, i64 875708993, i64 875709016, i64 875710274, i64 875710290, i64 875713089, i64 875713112, i64 892420673, i64 892424769, i64 909199170, i64 909199186, i64 909202777, i64 909203033, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 60, i32 3 }
@___asan_gen_.6 = private unnamed_addr constant [16 x i8] c"armada_fb_funcs\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 16, i32 43 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 95, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [38 x i8] c"../drivers/gpu/drm/armada/armada_fb.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 139, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @armada_fb_funcs, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_fb_funcs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @armada_framebuffer_create(ptr noundef %dev, ptr noundef %mode, ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode, i32 0, i32 3
  %0 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixel_format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 909199186, label %entry.sw.epilog_crit_edge
    i32 909199170, label %sw.bb1
    i32 892424769, label %sw.bb2
    i32 892420673, label %sw.bb3
    i32 875710290, label %sw.bb4
    i32 875710274, label %sw.bb5
    i32 875713112, label %sw.bb6
    i32 875709016, label %sw.bb7
    i32 875713089, label %sw.bb8
    i32 875708993, label %sw.bb9
    i32 1448695129, label %sw.bb10
    i32 1498831189, label %sw.bb11
    i32 1498765654, label %sw.bb12
    i32 1431918169, label %sw.bb13
    i32 909202777, label %sw.bb14
    i32 909203033, label %sw.bb15
    i32 842093913, label %sw.bb16
    i32 842094169, label %sw.bb17
    i32 538982467, label %sw.bb18
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %format.0 = phi i8 [ 10, %sw.bb18 ], [ 7, %sw.bb17 ], [ 7, %sw.bb16 ], [ 6, %sw.bb15 ], [ 6, %sw.bb14 ], [ 5, %sw.bb13 ], [ 5, %sw.bb12 ], [ 5, %sw.bb11 ], [ 5, %sw.bb10 ], [ 4, %sw.bb9 ], [ 4, %sw.bb8 ], [ 3, %sw.bb7 ], [ 3, %sw.bb6 ], [ 2, %sw.bb5 ], [ 2, %sw.bb4 ], [ 1, %sw.bb3 ], [ 1, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %config.0 = phi i8 [ 0, %sw.bb18 ], [ 10, %sw.bb17 ], [ 2, %sw.bb16 ], [ 10, %sw.bb15 ], [ 2, %sw.bb14 ], [ 6, %sw.bb13 ], [ 10, %sw.bb12 ], [ 2, %sw.bb11 ], [ 14, %sw.bb10 ], [ 0, %sw.bb9 ], [ 16, %sw.bb8 ], [ 0, %sw.bb7 ], [ 16, %sw.bb6 ], [ 0, %sw.bb5 ], [ 16, %sw.bb4 ], [ 0, %sw.bb3 ], [ 16, %sw.bb2 ], [ 0, %sw.bb1 ], [ 16, %entry.sw.epilog_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 152) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %fmt = getelementptr inbounds %struct.armada_framebuffer, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %format.0, ptr %fmt, align 8
  %mod = getelementptr inbounds %struct.armada_framebuffer, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %config.0, ptr %mod, align 1
  %obj22 = getelementptr inbounds %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 15
  %6 = ptrtoint ptr %obj22 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %obj, ptr %obj22, align 4
  tail call void @drm_helper_mode_fill_fb_struct(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef %mode) #4
  %call25 = tail call i32 @drm_framebuffer_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @armada_fb_funcs) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  %7 = inttoptr i32 %call25 to ptr
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %obj, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %obj, i32 1, i32 3, i32 1) #4
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %obj, ptr %obj, i32 1, ptr elementtype(i32) %obj) #4, !srcloc !17
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end29.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !18

if.end29.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end29
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !19

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end29.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end29.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %obj, i32 noundef %.sink.i.i.i.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge, %if.then27, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.then27 ], [ inttoptr (i32 -12 to ptr), %if.then ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ %call7.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ %call7.i.i, %if.end15.sink.split.i.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_mode_fill_fb_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_framebuffer_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @armada_fb_create(ptr noundef %dev, ptr noundef %dfile, ptr noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_get_format_info(ptr noundef %dev, ptr noundef %mode) #4
  %width = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode, i32 0, i32 1
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode, i32 0, i32 2
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 8
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode, i32 0, i32 3
  %4 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_format, align 4
  %flags = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %pitches = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode, i32 0, i32 6
  %8 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pitches, align 4
  %arrayidx2 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13) #4
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp = icmp ugt i8 %15, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %handles = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode, i32 0, i32 5
  %16 = ptrtoint ptr %handles to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %handles, align 4
  %arrayidx8 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp9.not = icmp eq i32 %17, %19
  br i1 %cmp9.not, label %lor.lhs.false, label %land.lhs.true.err_crit_edge

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

lor.lhs.false:                                    ; preds = %land.lhs.true
  %arrayidx14 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode, i32 0, i32 5, i32 2
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %21)
  %cmp15.not = icmp eq i32 %17, %21
  br i1 %cmp15.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.err_crit_edge

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %handles17 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode, i32 0, i32 5
  %22 = ptrtoint ptr %handles17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %handles17, align 4
  %call.i = tail call ptr @drm_gem_object_lookup(ptr noundef %dfile, i32 noundef %23) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.err_crit_edge, label %if.end21

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end21:                                         ; preds = %if.end
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %call.i, i32 0, i32 8
  %24 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %import_attach, align 4
  %tobool23.not = icmp eq ptr %25, null
  br i1 %tobool23.not, label %if.end21.if.end31_crit_edge, label %land.lhs.true24

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

land.lhs.true24:                                  ; preds = %if.end21
  %sgt = getelementptr inbounds %struct.armada_gem_object, ptr %call.i, i32 0, i32 7
  %26 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sgt, align 8
  %tobool25.not = icmp eq ptr %27, null
  br i1 %tobool25.not, label %if.then26, label %land.lhs.true24.if.end31_crit_edge

land.lhs.true24.if.end31_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then26:                                        ; preds = %land.lhs.true24
  %call27 = tail call i32 @armada_gem_map_import(ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.if.end31_crit_edge, label %if.then26.if.then.i75_crit_edge

if.then26.if.then.i75_crit_edge:                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i75

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.end31:                                         ; preds = %if.then26.if.end31_crit_edge, %land.lhs.true24.if.end31_crit_edge, %if.end21.if.end31_crit_edge
  %mapped = getelementptr inbounds %struct.armada_gem_object, ptr %call.i, i32 0, i32 4
  %28 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mapped, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool32.not = icmp eq i8 %29, 0
  br i1 %tobool32.not, label %if.end31.if.then.i75_crit_edge, label %if.end34

if.end31.if.then.i75_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i75

if.end34:                                         ; preds = %if.end31
  %call35 = tail call ptr @armada_framebuffer_create(ptr noundef %dev, ptr noundef %mode, ptr noundef nonnull %call.i)
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.then.i

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %call35 to i32
  br label %err

if.then.i:                                        ; preds = %if.end34
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #4
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #4, !srcloc !22
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !19

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i, i32 noundef 3) #4
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @drm_gem_object_free(ptr noundef nonnull %call.i) #4
  br label %cleanup

if.then.i75:                                      ; preds = %if.end31.if.then.i75_crit_edge, %if.then26.if.then.i75_crit_edge
  %ret.0 = phi i32 [ %call27, %if.then26.if.then.i75_crit_edge ], [ -22, %if.end31.if.then.i75_crit_edge ]
  %call.i.i.i.i.i.i.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #4
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #4, !srcloc !22
  %asmresult.i.i.i.i.i.i.i.i.i73 = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i73)
  %cmp.i.i.i.i.i.i74 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i73, 1
  br i1 %cmp.i.i.i.i.i.i74, label %if.then.i.i.i79, label %if.end5.i.i.i.i.i.i77

if.end5.i.i.i.i.i.i77:                            ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i73)
  %.not.i.i.i.i.i.i76 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i73, 0
  br i1 %.not.i.i.i.i.i.i76, label %if.end5.i.i.i.i.i.i77.err_crit_edge, label %if.then10.i.i.i.i.i.i78, !prof !19

if.end5.i.i.i.i.i.i77.err_crit_edge:              ; preds = %if.end5.i.i.i.i.i.i77
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.then10.i.i.i.i.i.i78:                          ; preds = %if.end5.i.i.i.i.i.i77
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i, i32 noundef 3) #4
  br label %err

if.then.i.i.i79:                                  ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @drm_gem_object_free(ptr noundef nonnull %call.i) #4
  br label %err

err:                                              ; preds = %if.then.i.i.i79, %if.then10.i.i.i.i.i.i78, %if.end5.i.i.i.i.i.i77.err_crit_edge, %if.then37, %if.end.err_crit_edge, %lor.lhs.false.err_crit_edge, %land.lhs.true.err_crit_edge
  %ret.1 = phi i32 [ %30, %if.then37 ], [ -22, %lor.lhs.false.err_crit_edge ], [ -22, %land.lhs.true.err_crit_edge ], [ -2, %if.end.err_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.i77.err_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i.i78 ], [ %ret.0, %if.then.i.i.i79 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %ret.1) #4
  %33 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %33, %err ], [ %call35, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call35, %if.then10.i.i.i.i.i.i ], [ %call35, %if.then.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_format_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @armada_gem_map_import(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_create_handle(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/armada/armada_fb.c", i32 60, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/armada/armada_fb.c", i32 95, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/armada/armada_fb.c", i32 139, i32 2}
!6 = !{ptr @armada_fb_funcs, !7, !"armada_fb_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/armada/armada_fb.c", i32 16, i32 43}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 2148452485, i64 2148452517, i64 2148452546, i64 2148452580, i64 2148452611, i64 2148452634}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i8 0, i8 2}
!21 = !{i64 2148540486}
!22 = !{i64 2148454950, i64 2148454982, i64 2148455011, i64 2148455045, i64 2148455076, i64 2148455099}
!23 = !{i64 2149825467}

; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/corec57d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/corec57d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_core_func = type { ptr, ptr, ptr, ptr, ptr, %struct.anon.116, ptr, ptr, ptr, ptr, ptr }
%struct.anon.116 = type { ptr }
%struct.nv50_head_func = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_crc_func = type { ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.nv50_outp_func = type { ptr, ptr }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@corec57d = internal constant { %struct.nv50_core_func, [52 x i8] } { %struct.nv50_core_func { ptr @corec57d_init, ptr @corec37d_ntfy_init, ptr @corec37d_caps_init, ptr @corec37d_ntfy_wait_done, ptr @corec37d_update, %struct.anon.116 { ptr @corec37d_wndw_owner }, ptr @headc57d, ptr @crcc57d, ptr null, ptr null, ptr @sorc37d }, [52 x i8] zeroinitializer }, align 32
@headc57d = external dso_local constant %struct.nv50_head_func, align 4
@crcc57d = external dso_local constant %struct.nv50_crc_func, align 4
@sorc37d = external dso_local constant %struct.nv50_outp_func, align 4
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/corec57d.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.corec57d_init = private unnamed_addr constant [14 x i8] c"corec57d_init\00", align 1
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57D_SET_CONTEXT_DMA_NOTIFIER\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57D_WINDOW_SET_WINDOW_FORMAT_USAGE_BOUNDS(i)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57D_WINDOW_SET_WINDOW_ROTATED_FORMAT_USAGE_BOUNDS(i)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57D_WINDOW_SET_WINDOW_USAGE_BOUNDS(i)\0A\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [9 x i8] c"corec57d\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 62, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 39, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 42, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/corec57d.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 50, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @corec57d, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corec57d to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @corec57d_new(ptr noundef %drm, i32 noundef %oclass, ptr noundef %pcore) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @core507d_new_(ptr noundef nonnull @corec57d, ptr noundef %drm, i32 noundef %oclass, ptr noundef %pcore) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core507d_new_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @corec57d_init(ptr nocapture noundef %core) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %push1 = getelementptr inbounds %struct.nv50_core, ptr %core, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %push1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push1, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 42
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end43_crit_edge, label %if.then.i

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end43

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 42) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end43_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then.i.if.end43_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end43

if.end43:                                         ; preds = %if.then.i.if.end43_crit_edge, %entry.if.end43_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 42
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end43.if.end79_crit_edge, label %do.end73, !prof !26

if.end43.if.end79_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end79

do.end73:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end79

if.end79:                                         ; preds = %do.end73, %if.end43.if.end79_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp92.not = icmp ult ptr %12, %14
  br i1 %cmp92.not, label %if.end79.if.end116_crit_edge, label %do.end110, !prof !26

if.end79.if.end116_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end116

do.end110:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end116

if.end116:                                        ; preds = %do.end110, %if.end79.if.end116_crit_edge
  %15 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 6
  %17 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 3
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %handle, align 4
  %name133 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name133, align 8
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262664, i32 noundef 520, i32 noundef 1, ptr noundef nonnull @__func__.corec57d_init) #2
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262664, ptr %34, align 4
  %handle147 = getelementptr inbounds %struct.nv50_core, ptr %core, i32 0, i32 1, i32 4, i32 3
  %36 = ptrtoint ptr %handle147 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %handle147, align 4
  %38 = load ptr, ptr %cur.i, align 4
  %39 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %seg.i, align 8
  %cmp152.not = icmp ult ptr %38, %40
  br i1 %cmp152.not, label %if.end116.if.end176_crit_edge, label %do.end170, !prof !26

if.end116.if.end176_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end176

do.end170:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end176

if.end176:                                        ; preds = %do.end170, %if.end116.if.end176_crit_edge
  %41 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur.i, align 4
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i, align 4
  %cmp190.not = icmp ult ptr %42, %44
  br i1 %cmp190.not, label %if.end176.if.end214_crit_edge, label %do.end208, !prof !26

if.end176.if.end214_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end214

do.end208:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end214

if.end214:                                        ; preds = %do.end208, %if.end176.if.end214_crit_edge
  %45 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i, align 4
  %47 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast232 = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast233 = ptrtoint ptr %48 to i32
  %sub.ptr.sub234 = sub i32 %sub.ptr.lhs.cast232, %sub.ptr.rhs.cast233
  %49 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mem, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %client, align 4
  %name246 = getelementptr inbounds %struct.nvif_object, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %name246 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name246, align 8
  %59 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %handle, align 4
  %61 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name133, align 8
  tail call void (ptr, ptr, ...) %54(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %58, i32 noundef %60, ptr noundef %62, i32 noundef %sub.ptr.sub234, i32 noundef %37) #2
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %incdec.ptr255 = getelementptr i32, ptr %64, i32 1
  store ptr %incdec.ptr255, ptr %cur.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %37, ptr %64, align 4
  br label %do.body262

do.body262:                                       ; preds = %if.end1001.do.body262_crit_edge, %if.end214
  %i.01184 = phi i32 [ 0, %if.end214 ], [ %inc, %if.end1001.do.body262_crit_edge ]
  %mul264 = shl nuw nsw i32 %i.01184, 7
  %add266 = add nuw nsw i32 %mul264, 4100
  %66 = or i32 %add266, 524288
  %67 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cur.i, align 4
  %69 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %seg.i, align 8
  %cmp384.not = icmp ult ptr %68, %70
  br i1 %cmp384.not, label %do.body262.if.end409_crit_edge, label %do.end403, !prof !26

do.body262.if.end409_crit_edge:                   ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end409

do.end403:                                        ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end409

if.end409:                                        ; preds = %do.end403, %do.body262.if.end409_crit_edge
  %71 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cur.i, align 4
  %73 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %end.i, align 4
  %cmp423.not = icmp ult ptr %72, %74
  br i1 %cmp423.not, label %if.end409.if.end448_crit_edge, label %do.end442, !prof !26

if.end409.if.end448_crit_edge:                    ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end448

do.end442:                                        ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end448

if.end448:                                        ; preds = %do.end442, %if.end409.if.end448_crit_edge
  %75 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cur.i, align 4
  %77 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast466 = ptrtoint ptr %76 to i32
  %sub.ptr.rhs.cast467 = ptrtoint ptr %78 to i32
  %sub.ptr.sub468 = sub i32 %sub.ptr.lhs.cast466, %sub.ptr.rhs.cast467
  %79 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mem, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %85 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %client, align 4
  %name480 = getelementptr inbounds %struct.nvif_object, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %name480 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name480, align 8
  %89 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %handle, align 4
  %91 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name133, align 8
  tail call void (ptr, ptr, ...) %84(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %88, i32 noundef %90, ptr noundef %92, i32 noundef %sub.ptr.sub468, i32 noundef %66, i32 noundef %add266, i32 noundef 2, ptr noundef nonnull @__func__.corec57d_init) #2
  %93 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cur.i, align 4
  %incdec.ptr491 = getelementptr i32, ptr %94, i32 1
  store ptr %incdec.ptr491, ptr %cur.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %66, ptr %94, align 4
  %96 = load ptr, ptr %cur.i, align 4
  %97 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %seg.i, align 8
  %cmp503.not = icmp ult ptr %96, %98
  br i1 %cmp503.not, label %if.end448.if.end528_crit_edge, label %do.end522, !prof !26

if.end448.if.end528_crit_edge:                    ; preds = %if.end448
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end528

do.end522:                                        ; preds = %if.end448
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end528

if.end528:                                        ; preds = %do.end522, %if.end448.if.end528_crit_edge
  %99 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cur.i, align 4
  %101 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %end.i, align 4
  %cmp542.not = icmp ult ptr %100, %102
  br i1 %cmp542.not, label %if.end528.if.end567_crit_edge, label %do.end561, !prof !26

if.end528.if.end567_crit_edge:                    ; preds = %if.end528
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end567

do.end561:                                        ; preds = %if.end528
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end567

if.end567:                                        ; preds = %do.end561, %if.end528.if.end567_crit_edge
  %103 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cur.i, align 4
  %105 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast585 = ptrtoint ptr %104 to i32
  %sub.ptr.rhs.cast586 = ptrtoint ptr %106 to i32
  %sub.ptr.sub587 = sub i32 %sub.ptr.lhs.cast585, %sub.ptr.rhs.cast586
  %107 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mem, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %113 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %client, align 4
  %name599 = getelementptr inbounds %struct.nvif_object, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %name599 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %name599, align 8
  %117 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %handle, align 4
  %119 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %name133, align 8
  tail call void (ptr, ptr, ...) %112(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %116, i32 noundef %118, ptr noundef %120, i32 noundef %sub.ptr.sub587, i32 noundef 15) #2
  %121 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cur.i, align 4
  %incdec.ptr608 = getelementptr i32, ptr %122, i32 1
  store ptr %incdec.ptr608, ptr %cur.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 15, ptr %122, align 4
  %124 = load ptr, ptr %cur.i, align 4
  %125 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %seg.i, align 8
  %cmp620.not = icmp ult ptr %124, %126
  br i1 %cmp620.not, label %if.end567.if.end645_crit_edge, label %do.end639, !prof !26

if.end567.if.end645_crit_edge:                    ; preds = %if.end567
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end645

do.end639:                                        ; preds = %if.end567
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end645

if.end645:                                        ; preds = %do.end639, %if.end567.if.end645_crit_edge
  %127 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cur.i, align 4
  %129 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %end.i, align 4
  %cmp659.not = icmp ult ptr %128, %130
  br i1 %cmp659.not, label %if.end645.if.end793_crit_edge, label %do.end678, !prof !26

if.end645.if.end793_crit_edge:                    ; preds = %if.end645
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end793

do.end678:                                        ; preds = %if.end645
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end793

if.end793:                                        ; preds = %do.end678, %if.end645.if.end793_crit_edge
  %131 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cur.i, align 4
  %133 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast702 = ptrtoint ptr %132 to i32
  %sub.ptr.rhs.cast703 = ptrtoint ptr %134 to i32
  %sub.ptr.sub704 = sub i32 %sub.ptr.lhs.cast702, %sub.ptr.rhs.cast703
  %135 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mem, align 8
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %141 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %client, align 4
  %name716 = getelementptr inbounds %struct.nvif_object, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %name716 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %name716, align 8
  %145 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %handle, align 4
  %147 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %name133, align 8
  tail call void (ptr, ptr, ...) %140(ptr noundef %mem, ptr noundef nonnull @.str.9, ptr noundef %144, i32 noundef %146, ptr noundef %148, i32 noundef %sub.ptr.sub704, i32 noundef 0) #2
  %149 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %cur.i, align 4
  %incdec.ptr725 = getelementptr i32, ptr %150, i32 1
  store ptr %incdec.ptr725, ptr %cur.i, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %150, align 4
  %add735 = add nuw nsw i32 %mul264, 4112
  %152 = or i32 %add735, 262144
  %153 = load ptr, ptr %cur.i, align 4
  %154 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %seg.i, align 8
  %cmp818.not = icmp ult ptr %153, %155
  br i1 %cmp818.not, label %if.end793.if.end843_crit_edge, label %do.end837, !prof !26

if.end793.if.end843_crit_edge:                    ; preds = %if.end793
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end843

do.end837:                                        ; preds = %if.end793
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end843

if.end843:                                        ; preds = %do.end837, %if.end793.if.end843_crit_edge
  %156 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cur.i, align 4
  %158 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %end.i, align 4
  %cmp857.not = icmp ult ptr %157, %159
  br i1 %cmp857.not, label %if.end843.if.end882_crit_edge, label %do.end876, !prof !26

if.end843.if.end882_crit_edge:                    ; preds = %if.end843
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end882

do.end876:                                        ; preds = %if.end843
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end882

if.end882:                                        ; preds = %do.end876, %if.end843.if.end882_crit_edge
  %160 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cur.i, align 4
  %162 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast900 = ptrtoint ptr %161 to i32
  %sub.ptr.rhs.cast901 = ptrtoint ptr %163 to i32
  %sub.ptr.sub902 = sub i32 %sub.ptr.lhs.cast900, %sub.ptr.rhs.cast901
  %164 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mem, align 8
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %170 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %client, align 4
  %name914 = getelementptr inbounds %struct.nvif_object, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %name914 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %name914, align 8
  %174 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %handle, align 4
  %176 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %name133, align 8
  tail call void (ptr, ptr, ...) %169(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %173, i32 noundef %175, ptr noundef %177, i32 noundef %sub.ptr.sub902, i32 noundef %152, i32 noundef %add735, i32 noundef 1, ptr noundef nonnull @__func__.corec57d_init) #2
  %178 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %cur.i, align 4
  %incdec.ptr925 = getelementptr i32, ptr %179, i32 1
  store ptr %incdec.ptr925, ptr %cur.i, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %152, ptr %179, align 4
  %181 = load ptr, ptr %cur.i, align 4
  %182 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %seg.i, align 8
  %cmp937.not = icmp ult ptr %181, %183
  br i1 %cmp937.not, label %if.end882.if.end962_crit_edge, label %do.end956, !prof !26

if.end882.if.end962_crit_edge:                    ; preds = %if.end882
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end962

do.end956:                                        ; preds = %if.end882
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end962

if.end962:                                        ; preds = %do.end956, %if.end882.if.end962_crit_edge
  %184 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %cur.i, align 4
  %186 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %end.i, align 4
  %cmp976.not = icmp ult ptr %185, %187
  br i1 %cmp976.not, label %if.end962.if.end1001_crit_edge, label %do.end995, !prof !26

if.end962.if.end1001_crit_edge:                   ; preds = %if.end962
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1001

do.end995:                                        ; preds = %if.end962
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end1001

if.end1001:                                       ; preds = %do.end995, %if.end962.if.end1001_crit_edge
  %188 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cur.i, align 4
  %190 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1019 = ptrtoint ptr %189 to i32
  %sub.ptr.rhs.cast1020 = ptrtoint ptr %191 to i32
  %sub.ptr.sub1021 = sub i32 %sub.ptr.lhs.cast1019, %sub.ptr.rhs.cast1020
  %192 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mem, align 8
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %193, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %198 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %client, align 4
  %name1033 = getelementptr inbounds %struct.nvif_object, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %name1033 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %name1033, align 8
  %202 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %handle, align 4
  %204 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %name133, align 8
  tail call void (ptr, ptr, ...) %197(ptr noundef %mem, ptr noundef nonnull @.str.10, ptr noundef %201, i32 noundef %203, ptr noundef %205, i32 noundef %sub.ptr.sub1021, i32 noundef 1146879) #2
  %206 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1042 = getelementptr i32, ptr %207, i32 1
  store ptr %incdec.ptr1042, ptr %cur.i, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 1146879, ptr %207, align 4
  %inc = add nuw nsw i32 %i.01184, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %if.end1001.do.body262_crit_edge

if.end1001.do.body262_crit_edge:                  ; preds = %if.end1001
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body262

for.end:                                          ; preds = %if.end1001
  call void @__sanitizer_cov_trace_pc() #4
  %assign_windows = getelementptr inbounds %struct.nv50_core, ptr %core, i32 0, i32 2
  %209 = ptrtoint ptr %assign_windows to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 1, ptr %assign_windows, align 8
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 1
  %210 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %kick.i, align 4
  tail call void %211(ptr noundef %1) #2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @corec37d_ntfy_init(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @corec37d_caps_init(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @corec37d_ntfy_wait_done(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @corec37d_update(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @corec37d_wndw_owner(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @corec57d, !1, !"corec57d", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/corec57d.c", i32 62, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv50/corec57d.c", i32 39, i32 2}
!4 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.corec57d_init, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/dispnv50/corec57d.c", i32 42, i32 3}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/dispnv50/corec57d.c", i32 50, i32 3}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 2000, i32 1}

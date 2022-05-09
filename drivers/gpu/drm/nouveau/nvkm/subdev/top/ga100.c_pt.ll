; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/top/ga100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/top/ga100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_top_func = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_top = type { ptr, %struct.nvkm_subdev, %struct.list_head }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_top_device = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head }

@ga100_top = internal constant { %struct.nvkm_top_func, [28 x i8] } { %struct.nvkm_top_func { ptr @ga100_top_oneinit }, [28 x i8] zeroinitializer }, align 32
@ga100_top_oneinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 42, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: %02x: %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ga100_top_oneinit\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/top/ga100.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ga100_top_oneinit._entry_ptr = internal global ptr @ga100_top_oneinit._entry, section ".printk_index", align 4
@ga100_top_oneinit._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 91, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: %02x.%d (%8s): addr %06x fault %2d runlist %6x engine %2d reset %2d\0A\00", [55 x i8] zeroinitializer }, align 32
@ga100_top_oneinit._entry_ptr.7 = internal global ptr @ga100_top_oneinit._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"????????\00", [23 x i8] zeroinitializer }, align 32
@nvkm_subdev_type = external dso_local local_unnamed_addr global [51 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 13, i64 14, i64 16, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23]
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"ga100_top\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 99, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 42, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/top/ga100.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 87, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @ga100_top_oneinit._entry, ptr @ga100_top_oneinit._entry.5, ptr @ga100_top_oneinit._entry_ptr, ptr @ga100_top_oneinit._entry_ptr.7, ptr @ga100_top, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ga100_top to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ga100_top_oneinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ga100_top_oneinit._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ga100_top_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ptop) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_top_new_(ptr noundef nonnull @ga100_top, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ptop) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_top_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ga100_top_oneinit(ptr noundef %top) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_top, ptr %top, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 140540
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %4)
  %cmp408.not = icmp ult i32 %4, 1048576
  br i1 %cmp408.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %shr = lshr i32 %4, 20
  %debug = getelementptr inbounds %struct.nvkm_top, ptr %top, i32 0, i32 1, i32 5
  %name = getelementptr inbounds %struct.nvkm_top, ptr %top, i32 0, i32 1, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %info.0414 = phi ptr [ null, %for.body.lr.ph ], [ %info.2, %for.inc.for.body_crit_edge ]
  %type.0413 = phi i32 [ -1, %for.body.lr.ph ], [ %type.3, %for.inc.for.body_crit_edge ]
  %inst.0412 = phi i32 [ -1, %for.body.lr.ph ], [ %inst.3, %for.inc.for.body_crit_edge ]
  %i.0410 = phi i32 [ 0, %for.body.lr.ph ], [ %inc327, %for.inc.for.body_crit_edge ]
  %n.0409 = phi i32 [ 0, %for.body.lr.ph ], [ %n.1, %for.inc.for.body_crit_edge ]
  %tobool.not = icmp eq ptr %info.0414, null
  br i1 %tobool.not, label %if.then, label %for.body.if.end6_crit_edge

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %for.body
  %call3 = tail call ptr @nvkm_top_device_new(ptr noundef %top) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %for.body.if.end6_crit_edge
  %inst.1 = phi i32 [ %inst.0412, %for.body.if.end6_crit_edge ], [ 0, %if.then.if.end6_crit_edge ]
  %type.1 = phi i32 [ %type.0413, %for.body.if.end6_crit_edge ], [ -1, %if.then.if.end6_crit_edge ]
  %info.1 = phi ptr [ %info.0414, %for.body.if.end6_crit_edge ], [ %call3, %if.then.if.end6_crit_edge ]
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %mul = shl i32 %i.0410, 2
  %add = add nuw nsw i32 %mul, 141312
  %add.ptr9 = getelementptr i8, ptr %6, i32 %add
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp12 = icmp ugt i32 %9, 4
  br i1 %cmp12, label %do.end, label %if.end6.if.end16_crit_edge

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %i.0410, i32 noundef %7) #7
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.end6.if.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool19.not = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0409)
  %cmp20 = icmp eq i32 %n.0409, 0
  %or.cond = select i1 %tobool19.not, i1 %cmp20, i1 false
  br i1 %or.cond, label %if.end16.for.inc_crit_edge, label %if.end22

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end22:                                         ; preds = %if.end16
  %inc = add i32 %n.0409, 1
  %14 = zext i32 %n.0409 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %n.0409, label %if.end22.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb27
    i32 2, label %sw.bb30
  ]

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %and = lshr i32 %7, 24
  %shr23 = and i32 %and, 63
  %and24 = lshr i32 %7, 16
  %shr25 = and i32 %and24, 15
  %and26 = and i32 %7, 127
  %fault = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 3
  %15 = ptrtoint ptr %fault to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and26, ptr %fault, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %and28 = and i32 %7, 16773120
  %addr = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 2
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and28, ptr %addr, align 4
  %and29 = and i32 %7, 31
  %reset = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 6
  %17 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and29, ptr %reset, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %and31 = and i32 %7, 16776192
  %runlist = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 5
  %18 = ptrtoint ptr %runlist to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and31, ptr %runlist, align 4
  %and32 = and i32 %7, 3
  %engine = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 4
  %19 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and32, ptr %engine, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb27, %sw.bb, %if.end22.sw.epilog_crit_edge
  %inst.2 = phi i32 [ %inst.1, %if.end22.sw.epilog_crit_edge ], [ %inst.1, %sw.bb30 ], [ %inst.1, %sw.bb27 ], [ %shr25, %sw.bb ]
  %type.2 = phi i32 [ %type.1, %if.end22.sw.epilog_crit_edge ], [ %type.1, %sw.bb30 ], [ %type.1, %sw.bb27 ], [ %shr23, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool34.not = icmp sgt i32 %7, -1
  br i1 %tobool34.not, label %if.end36, label %sw.epilog.for.inc_crit_edge

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end36:                                         ; preds = %sw.epilog
  %20 = zext i32 %type.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %type.2, label %if.end36.do.body298_crit_edge [
    i32 0, label %do.body38
    i32 13, label %do.body73
    i32 14, label %if.end36.do.body298.sink.split_crit_edge
    i32 16, label %do.body119
    i32 18, label %do.body125
    i32 19, label %do.body131
    i32 20, label %do.body137
    i32 21, label %do.body177
    i32 22, label %do.body217
    i32 23, label %do.body257
  ]

if.end36.do.body298.sink.split_crit_edge:         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body298.sink.split

if.end36.do.body298_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body298

do.body38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst.2)
  %tobool39.not = icmp eq i32 %inst.2, 0
  br i1 %tobool39.not, label %do.body38.do.body298.sink.split_crit_edge, label %do.end51, !prof !27

do.body38.do.body298.sink.split_crit_edge:        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body298.sink.split

do.end51:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 72, i32 noundef 9, ptr noundef null) #4
  br label %do.body298.sink.split

do.body73:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst.2)
  %tobool75.not = icmp eq i32 %inst.2, 0
  br i1 %tobool75.not, label %do.body73.do.body298.sink.split_crit_edge, label %do.end91, !prof !27

do.body73.do.body298.sink.split_crit_edge:        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body298.sink.split

do.end91:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 73, i32 noundef 9, ptr noundef null) #4
  br label %do.body298.sink.split

do.body119:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body298.sink.split

do.body125:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body298.sink.split

do.body131:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body298.sink.split

do.body137:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst.2)
  %tobool139.not = icmp eq i32 %inst.2, 0
  br i1 %tobool139.not, label %do.body137.do.body298.sink.split_crit_edge, label %do.end155, !prof !27

do.body137.do.body298.sink.split_crit_edge:       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body298.sink.split

do.end155:                                        ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 78, i32 noundef 9, ptr noundef null) #4
  br label %do.body298.sink.split

do.body177:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst.2)
  %tobool179.not = icmp eq i32 %inst.2, 0
  br i1 %tobool179.not, label %do.body177.do.body298.sink.split_crit_edge, label %do.end195, !prof !27

do.body177.do.body298.sink.split_crit_edge:       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body298.sink.split

do.end195:                                        ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 79, i32 noundef 9, ptr noundef null) #4
  br label %do.body298.sink.split

do.body217:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst.2)
  %tobool219.not = icmp eq i32 %inst.2, 0
  br i1 %tobool219.not, label %do.body217.do.body298.sink.split_crit_edge, label %do.end235, !prof !27

do.body217.do.body298.sink.split_crit_edge:       ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body298.sink.split

do.end235:                                        ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 80, i32 noundef 9, ptr noundef null) #4
  br label %do.body298.sink.split

do.body257:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst.2)
  %tobool259.not = icmp eq i32 %inst.2, 0
  br i1 %tobool259.not, label %do.body257.do.body298.sink.split_crit_edge, label %do.end275, !prof !27

do.body257.do.body298.sink.split_crit_edge:       ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body298.sink.split

do.end275:                                        ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 81, i32 noundef 9, ptr noundef null) #4
  br label %do.body298.sink.split

do.body298.sink.split:                            ; preds = %do.end275, %do.body257.do.body298.sink.split_crit_edge, %do.end235, %do.body217.do.body298.sink.split_crit_edge, %do.end195, %do.body177.do.body298.sink.split_crit_edge, %do.end155, %do.body137.do.body298.sink.split_crit_edge, %do.body131, %do.body125, %do.body119, %do.end91, %do.body73.do.body298.sink.split_crit_edge, %do.end51, %do.body38.do.body298.sink.split_crit_edge, %if.end36.do.body298.sink.split_crit_edge
  %.sink416 = phi i32 [ 41, %do.body119 ], [ 25, %do.body125 ], [ 28, %do.body131 ], [ 33, %do.end51 ], [ 33, %do.body38.do.body298.sink.split_crit_edge ], [ 47, %do.end91 ], [ 47, %do.body73.do.body298.sink.split_crit_edge ], [ 42, %if.end36.do.body298.sink.split_crit_edge ], [ 24, %do.end155 ], [ 24, %do.body137.do.body298.sink.split_crit_edge ], [ 43, %do.end195 ], [ 43, %do.body177.do.body298.sink.split_crit_edge ], [ 44, %do.end235 ], [ 44, %do.body217.do.body298.sink.split_crit_edge ], [ 26, %do.end275 ], [ 26, %do.body257.do.body298.sink.split_crit_edge ]
  %.sink = phi i32 [ %inst.2, %do.body119 ], [ %inst.2, %do.body125 ], [ %inst.2, %do.body131 ], [ 0, %do.end51 ], [ 0, %do.body38.do.body298.sink.split_crit_edge ], [ 0, %do.end91 ], [ 0, %do.body73.do.body298.sink.split_crit_edge ], [ %inst.2, %if.end36.do.body298.sink.split_crit_edge ], [ 0, %do.end155 ], [ 0, %do.body137.do.body298.sink.split_crit_edge ], [ 0, %do.end195 ], [ 0, %do.body177.do.body298.sink.split_crit_edge ], [ 0, %do.end235 ], [ 0, %do.body217.do.body298.sink.split_crit_edge ], [ 0, %do.end275 ], [ 0, %do.body257.do.body298.sink.split_crit_edge ]
  %21 = ptrtoint ptr %info.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink416, ptr %info.1, align 4
  %inst67 = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 1
  %22 = ptrtoint ptr %inst67 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %inst67, align 4
  br label %do.body298

do.body298:                                       ; preds = %do.body298.sink.split, %if.end36.do.body298_crit_edge
  %23 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp301 = icmp ugt i32 %24, 3
  br i1 %cmp301, label %do.end305, label %do.body298.for.inc_crit_edge

do.body298.for.inc_crit_edge:                     ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.end305:                                        ; preds = %do.body298
  %25 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device2, align 4
  %dev307 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev307 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev307, align 8
  %29 = ptrtoint ptr %info.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %info.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %30)
  %cmp311 = icmp eq i32 %30, 51
  br i1 %cmp311, label %do.end305.cond.end_crit_edge, label %cond.false

do.end305.cond.end_crit_edge:                     ; preds = %do.end305
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %do.end305
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr [51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.end305.cond.end_crit_edge
  %cond = phi ptr [ %32, %cond.false ], [ @.str.8, %do.end305.cond.end_crit_edge ]
  %addr313 = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 2
  %33 = ptrtoint ptr %addr313 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr313, align 4
  %fault314 = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 3
  %35 = ptrtoint ptr %fault314 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fault314, align 4
  %runlist315 = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 5
  %37 = ptrtoint ptr %runlist315 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %runlist315, align 4
  %39 = tail call i32 @llvm.smax.i32(i32 %38, i32 0)
  %engine322 = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 4
  %40 = ptrtoint ptr %engine322 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %engine322, align 4
  %reset323 = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 6
  %42 = ptrtoint ptr %reset323 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reset323, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %type.2, i32 noundef %inst.2, ptr noundef %cond, i32 noundef %34, i32 noundef %36, i32 noundef %39, i32 noundef %41, i32 noundef %43) #7
  br label %for.inc

for.inc:                                          ; preds = %cond.end, %do.body298.for.inc_crit_edge, %sw.epilog.for.inc_crit_edge, %if.end16.for.inc_crit_edge
  %n.1 = phi i32 [ %inc, %sw.epilog.for.inc_crit_edge ], [ 0, %if.end16.for.inc_crit_edge ], [ 0, %cond.end ], [ 0, %do.body298.for.inc_crit_edge ]
  %inst.3 = phi i32 [ %inst.2, %sw.epilog.for.inc_crit_edge ], [ %inst.1, %if.end16.for.inc_crit_edge ], [ %inst.2, %cond.end ], [ %inst.2, %do.body298.for.inc_crit_edge ]
  %type.3 = phi i32 [ %type.2, %sw.epilog.for.inc_crit_edge ], [ %type.1, %if.end16.for.inc_crit_edge ], [ %type.2, %cond.end ], [ %type.2, %do.body298.for.inc_crit_edge ]
  %info.2 = phi ptr [ %info.1, %sw.epilog.for.inc_crit_edge ], [ %info.1, %if.end16.for.inc_crit_edge ], [ null, %cond.end ], [ null, %do.body298.for.inc_crit_edge ]
  %inc327 = add nuw nsw i32 %i.0410, 1
  %exitcond.not = icmp eq i32 %inc327, %shr
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_top_device_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @ga100_top, !1, !"ga100_top", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/top/ga100.c", i32 99, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/top/ga100.c", i32 42, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ga100_top_oneinit._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @ga100_top_oneinit._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/top/ga100.c", i32 87, i32 3}
!12 = !{ptr @ga100_top_oneinit._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ga100_top_oneinit._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
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
!24 = !{i64 5384829}
!25 = !{i64 2156220394}
!26 = !{i64 2156220821}
!27 = !{!"branch_weights", i32 2000, i32 1}

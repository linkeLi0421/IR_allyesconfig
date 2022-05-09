; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/top/gk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/top/gk104.c"
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

@gk104_top = internal constant { %struct.nvkm_top_func, [28 x i8] } { %struct.nvkm_top_func { ptr @gk104_top_oneinit }, [28 x i8] zeroinitializer }, align 32
@gk104_top_oneinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 44, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: %02x: %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gk104_top_oneinit\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/top/gk104.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gk104_top_oneinit._entry_ptr = internal global ptr @gk104_top_oneinit._entry, section ".printk_index", align 4
@gk104_top_oneinit._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"%s: %02x.%d (%8s): addr %06x fault %2d engine %2d runlist %2d intr %2d reset %2d\0A\00", [46 x i8] zeroinitializer }, align 32
@gk104_top_oneinit._entry_ptr.7 = internal global ptr @gk104_top_oneinit._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"????????\00", [23 x i8] zeroinitializer }, align 32
@nvkm_subdev_type = external dso_local local_unnamed_addr global [51 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [19 x i64] [i64 17, i64 32, i64 0, i64 1, i64 2, i64 3, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 18, i64 19, i64 20, i64 21]
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"gk104_top\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 110, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 44, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/top/gk104.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 97, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @gk104_top_oneinit._entry, ptr @gk104_top_oneinit._entry.5, ptr @gk104_top_oneinit._entry_ptr, ptr @gk104_top_oneinit._entry_ptr.7, ptr @gk104_top, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_top to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_top_oneinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_top_oneinit._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_top_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ptop) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_top_new_(ptr noundef nonnull @gk104_top, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ptop) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_top_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk104_top_oneinit(ptr noundef %top) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_top, ptr %top, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %debug = getelementptr inbounds %struct.nvkm_top, ptr %top, i32 0, i32 1, i32 5
  %name = getelementptr inbounds %struct.nvkm_top, ptr %top, i32 0, i32 1, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %info.0733 = phi ptr [ null, %entry ], [ %info.2, %for.inc.for.body_crit_edge ]
  %type.0732 = phi i32 [ -1, %entry ], [ %type.3, %for.inc.for.body_crit_edge ]
  %inst.0731 = phi i32 [ -1, %entry ], [ %inst.3, %for.inc.for.body_crit_edge ]
  %i.0729 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %tobool.not = icmp eq ptr %info.0733, null
  br i1 %tobool.not, label %if.then, label %for.body.if.end5_crit_edge

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.then:                                          ; preds = %for.body
  %call = tail call ptr @nvkm_top_device_new(ptr noundef %top) #3
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %for.body.if.end5_crit_edge
  %inst.1 = phi i32 [ %inst.0731, %for.body.if.end5_crit_edge ], [ 0, %if.then.if.end5_crit_edge ]
  %type.1 = phi i32 [ %type.0732, %for.body.if.end5_crit_edge ], [ -1, %if.then.if.end5_crit_edge ]
  %info.1 = phi ptr [ %info.0733, %for.body.if.end5_crit_edge ], [ %call, %if.then.if.end5_crit_edge ]
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %mul = shl i32 %i.0729, 2
  %add = add nuw nsw i32 %mul, 141056
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  %5 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp7 = icmp ugt i32 %6, 4
  br i1 %cmp7, label %do.end, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %i.0729, i32 noundef %4) #6
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.end5.if.end11_crit_edge
  %and = and i32 %4, 3
  %11 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end11.unreachabledefault [
    i32 0, label %if.end11.for.inc_crit_edge
    i32 1, label %sw.bb14
    i32 2, label %sw.bb23
    i32 3, label %sw.bb48
  ]

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

sw.bb14:                                          ; preds = %if.end11
  %and15 = lshr i32 %4, 26
  %shr = and i32 %and15, 15
  %and16 = and i32 %4, 16773120
  %addr = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 2
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and16, ptr %addr, align 4
  %and17 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %sw.bb14.sw.epilog_crit_edge, label %if.then19

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then19:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #5
  %and20 = lshr i32 %4, 3
  %shr21 = and i32 %and20, 127
  %fault = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 3
  %13 = ptrtoint ptr %fault to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr21, ptr %fault, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end11
  %and24 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %sw.bb23.if.end29_crit_edge, label %if.then26

sw.bb23.if.end29_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

if.then26:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #5
  %and27 = lshr i32 %4, 26
  %shr28 = and i32 %and27, 15
  %engine = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 4
  %14 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr28, ptr %engine, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %sw.bb23.if.end29_crit_edge
  %and30 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end35_crit_edge, label %if.then32

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  %and33 = lshr i32 %4, 21
  %shr34 = and i32 %and33, 15
  %runlist = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 5
  %15 = ptrtoint ptr %runlist to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr34, ptr %runlist, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end29.if.end35_crit_edge
  %and36 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end41_crit_edge, label %if.then38

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  %and39 = lshr i32 %4, 15
  %shr40 = and i32 %and39, 31
  %intr = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 7
  %16 = ptrtoint ptr %intr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr40, ptr %intr, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end35.if.end41_crit_edge
  %and42 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.sw.epilog_crit_edge, label %if.then44

if.end41.sw.epilog_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  %and45 = lshr i32 %4, 9
  %shr46 = and i32 %and45, 31
  %reset = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 6
  %17 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr46, ptr %reset, align 4
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  %and49 = lshr i32 %4, 2
  %shr50 = and i32 %and49, 536870911
  br label %sw.epilog

if.end11.unreachabledefault:                      ; preds = %if.end11
  unreachable

sw.epilog:                                        ; preds = %sw.bb48, %if.then44, %if.end41.sw.epilog_crit_edge, %if.then19, %sw.bb14.sw.epilog_crit_edge
  %inst.2 = phi i32 [ %inst.1, %sw.bb48 ], [ %inst.1, %if.then44 ], [ %inst.1, %if.end41.sw.epilog_crit_edge ], [ %shr, %if.then19 ], [ %shr, %sw.bb14.sw.epilog_crit_edge ]
  %type.2 = phi i32 [ %shr50, %sw.bb48 ], [ %type.1, %if.then44 ], [ %type.1, %if.end41.sw.epilog_crit_edge ], [ %type.1, %if.then19 ], [ %type.1, %sw.bb14.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool52.not = icmp sgt i32 %4, -1
  br i1 %tobool52.not, label %if.end54, label %sw.epilog.for.inc_crit_edge

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end54:                                         ; preds = %sw.epilog
  %18 = zext i32 %type.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %type.2, label %if.end54.do.body595_crit_edge [
    i32 0, label %do.body56
    i32 1, label %do.body91
    i32 2, label %do.body131
    i32 3, label %do.body171
    i32 8, label %do.body211
    i32 9, label %do.body251
    i32 10, label %do.body291
    i32 11, label %do.body331
    i32 12, label %do.body371
    i32 13, label %do.body411
    i32 14, label %if.end54.do.body595.sink.split_crit_edge
    i32 15, label %do.body457
    i32 16, label %do.body497
    i32 18, label %do.body503
    i32 19, label %do.body509
    i32 20, label %do.body515
    i32 21, label %do.body555
  ]

if.end54.do.body595.sink.split_crit_edge:         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body595.sink.split

if.end54.do.body595_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body595

do.body56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst.2)
  %tobool57.not = icmp eq i32 %inst.2, 0
  br i1 %tobool57.not, label %do.body56.do.body595.sink.split_crit_edge, label %do.end69, !prof !26

do.body56.do.body595.sink.split_crit_edge:        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body595.sink.split

do.end69:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 76, i32 noundef 9, ptr noundef null) #3
  br label %do.body595.sink.split

do.body91:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst.2)
  %tobool93.not = icmp eq i32 %inst.2, 0
  br i1 %tobool93.not, label %do.body91.do.body595.sink.split_crit_edge, label %do.end109, !prof !26

do.body91.do.body595.sink.split_crit_edge:        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body595.sink.split

do.end109:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 77, i32 noundef 9, ptr noundef null) #3
  br label %do.body595.sink.split

do.body131:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst.2)
  %tobool133.not = icmp eq i32 %inst.2, 0
  br i1 %tobool133.not, label %do.body131.do.body595.sink.split_crit_edge, label %do.end149, !prof !26

do.body131.do.body595.sink.split_crit_edge:       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body595.sink.split

do.end149:                                        ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 78, i32 noundef 9, ptr noundef null) #3
  br label %do.body595.sink.split

do.body171:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst.2)
  %tobool173.not = icmp eq i32 %inst.2, 0
  br i1 %tobool173.not, label %do.body171.do.body595.sink.split_crit_edge, label %do.end189, !prof !26

do.body171.do.body595.sink.split_crit_edge:       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body595.sink.split

do.end189:                                        ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 79, i32 noundef 9, ptr noundef null) #3
  br label %do.body595.sink.split

do.body211:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst.2)
  %tobool213.not = icmp eq i32 %inst.2, 0
  br i1 %tobool213.not, label %do.body211.do.body595.sink.split_crit_edge, label %do.end229, !prof !26

do.body211.do.body595.sink.split_crit_edge:       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body595.sink.split

do.end229:                                        ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 80, i32 noundef 9, ptr noundef null) #3
  br label %do.body595.sink.split

do.body251:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst.2)
  %tobool253.not = icmp eq i32 %inst.2, 0
  br i1 %tobool253.not, label %do.body251.do.body595.sink.split_crit_edge, label %do.end269, !prof !26

do.body251.do.body595.sink.split_crit_edge:       ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body595.sink.split

do.end269:                                        ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 81, i32 noundef 9, ptr noundef null) #3
  br label %do.body595.sink.split

do.body291:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst.2)
  %tobool293.not = icmp eq i32 %inst.2, 0
  br i1 %tobool293.not, label %do.body291.do.body595.sink.split_crit_edge, label %do.end309, !prof !26

do.body291.do.body595.sink.split_crit_edge:       ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body595.sink.split

do.end309:                                        ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 82, i32 noundef 9, ptr noundef null) #3
  br label %do.body595.sink.split

do.body331:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst.2)
  %tobool333.not = icmp eq i32 %inst.2, 0
  br i1 %tobool333.not, label %do.body331.do.body595.sink.split_crit_edge, label %do.end349, !prof !26

do.body331.do.body595.sink.split_crit_edge:       ; preds = %do.body331
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body595.sink.split

do.end349:                                        ; preds = %do.body331
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 83, i32 noundef 9, ptr noundef null) #3
  br label %do.body595.sink.split

do.body371:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst.2)
  %tobool373.not = icmp eq i32 %inst.2, 0
  br i1 %tobool373.not, label %do.body371.do.body595.sink.split_crit_edge, label %do.end389, !prof !26

do.body371.do.body595.sink.split_crit_edge:       ; preds = %do.body371
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body595.sink.split

do.end389:                                        ; preds = %do.body371
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 84, i32 noundef 9, ptr noundef null) #3
  br label %do.body595.sink.split

do.body411:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst.2)
  %tobool413.not = icmp eq i32 %inst.2, 0
  br i1 %tobool413.not, label %do.body411.do.body595.sink.split_crit_edge, label %do.end429, !prof !26

do.body411.do.body595.sink.split_crit_edge:       ; preds = %do.body411
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body595.sink.split

do.end429:                                        ; preds = %do.body411
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 85, i32 noundef 9, ptr noundef null) #3
  br label %do.body595.sink.split

do.body457:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst.2)
  %tobool459.not = icmp eq i32 %inst.2, 0
  br i1 %tobool459.not, label %do.body457.do.body595.sink.split_crit_edge, label %do.end475, !prof !26

do.body457.do.body595.sink.split_crit_edge:       ; preds = %do.body457
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body595.sink.split

do.end475:                                        ; preds = %do.body457
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 87, i32 noundef 9, ptr noundef null) #3
  br label %do.body595.sink.split

do.body497:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body595.sink.split

do.body503:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body595.sink.split

do.body509:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body595.sink.split

do.body515:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst.2)
  %tobool517.not = icmp eq i32 %inst.2, 0
  br i1 %tobool517.not, label %do.body515.do.body595.sink.split_crit_edge, label %do.end533, !prof !26

do.body515.do.body595.sink.split_crit_edge:       ; preds = %do.body515
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body595.sink.split

do.end533:                                        ; preds = %do.body515
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 91, i32 noundef 9, ptr noundef null) #3
  br label %do.body595.sink.split

do.body555:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst.2)
  %tobool557.not = icmp eq i32 %inst.2, 0
  br i1 %tobool557.not, label %do.body555.do.body595.sink.split_crit_edge, label %do.end573, !prof !26

do.body555.do.body595.sink.split_crit_edge:       ; preds = %do.body555
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body595.sink.split

do.end573:                                        ; preds = %do.body555
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 92, i32 noundef 9, ptr noundef null) #3
  br label %do.body595.sink.split

do.body595.sink.split:                            ; preds = %do.end573, %do.body555.do.body595.sink.split_crit_edge, %do.end533, %do.body515.do.body595.sink.split_crit_edge, %do.body509, %do.body503, %do.body497, %do.end475, %do.body457.do.body595.sink.split_crit_edge, %do.end429, %do.body411.do.body595.sink.split_crit_edge, %do.end389, %do.body371.do.body595.sink.split_crit_edge, %do.end349, %do.body331.do.body595.sink.split_crit_edge, %do.end309, %do.body291.do.body595.sink.split_crit_edge, %do.end269, %do.body251.do.body595.sink.split_crit_edge, %do.end229, %do.body211.do.body595.sink.split_crit_edge, %do.end189, %do.body171.do.body595.sink.split_crit_edge, %do.end149, %do.body131.do.body595.sink.split_crit_edge, %do.end109, %do.body91.do.body595.sink.split_crit_edge, %do.end69, %do.body56.do.body595.sink.split_crit_edge, %if.end54.do.body595.sink.split_crit_edge
  %.sink734 = phi i32 [ 41, %do.body497 ], [ 25, %do.body503 ], [ 28, %do.body509 ], [ 33, %do.end69 ], [ 33, %do.body56.do.body595.sink.split_crit_edge ], [ 28, %do.end109 ], [ 28, %do.body91.do.body595.sink.split_crit_edge ], [ 28, %do.end149 ], [ 28, %do.body131.do.body595.sink.split_crit_edge ], [ 28, %do.end189 ], [ 28, %do.body171.do.body595.sink.split_crit_edge ], [ 38, %do.end229 ], [ 38, %do.body211.do.body595.sink.split_crit_edge ], [ 39, %do.end269 ], [ 39, %do.body251.do.body595.sink.split_crit_edge ], [ 40, %do.end309 ], [ 40, %do.body291.do.body595.sink.split_crit_edge ], [ 37, %do.end349 ], [ 37, %do.body331.do.body595.sink.split_crit_edge ], [ 49, %do.end389 ], [ 49, %do.body371.do.body595.sink.split_crit_edge ], [ 47, %do.end429 ], [ 47, %do.body411.do.body595.sink.split_crit_edge ], [ 42, %if.end54.do.body595.sink.split_crit_edge ], [ 42, %do.end475 ], [ 42, %do.body457.do.body595.sink.split_crit_edge ], [ 24, %do.end533 ], [ 24, %do.body515.do.body595.sink.split_crit_edge ], [ 43, %do.end573 ], [ 43, %do.body555.do.body595.sink.split_crit_edge ]
  %.sink = phi i32 [ %inst.2, %do.body497 ], [ %inst.2, %do.body503 ], [ %inst.2, %do.body509 ], [ 0, %do.end69 ], [ 0, %do.body56.do.body595.sink.split_crit_edge ], [ 0, %do.end109 ], [ 0, %do.body91.do.body595.sink.split_crit_edge ], [ 1, %do.end149 ], [ 1, %do.body131.do.body595.sink.split_crit_edge ], [ 2, %do.end189 ], [ 2, %do.body171.do.body595.sink.split_crit_edge ], [ 0, %do.end229 ], [ 0, %do.body211.do.body595.sink.split_crit_edge ], [ 0, %do.end269 ], [ 0, %do.body251.do.body595.sink.split_crit_edge ], [ 0, %do.end309 ], [ 0, %do.body291.do.body595.sink.split_crit_edge ], [ 0, %do.end349 ], [ 0, %do.body331.do.body595.sink.split_crit_edge ], [ 0, %do.end389 ], [ 0, %do.body371.do.body595.sink.split_crit_edge ], [ 0, %do.end429 ], [ 0, %do.body411.do.body595.sink.split_crit_edge ], [ %inst.2, %if.end54.do.body595.sink.split_crit_edge ], [ 1, %do.end475 ], [ 1, %do.body457.do.body595.sink.split_crit_edge ], [ 0, %do.end533 ], [ 0, %do.body515.do.body595.sink.split_crit_edge ], [ 0, %do.end573 ], [ 0, %do.body555.do.body595.sink.split_crit_edge ]
  %19 = ptrtoint ptr %info.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink734, ptr %info.1, align 4
  %inst85 = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 1
  %20 = ptrtoint ptr %inst85 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %inst85, align 4
  br label %do.body595

do.body595:                                       ; preds = %do.body595.sink.split, %if.end54.do.body595_crit_edge
  %21 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp598 = icmp ugt i32 %22, 3
  br i1 %cmp598, label %do.end602, label %do.body595.for.inc_crit_edge

do.body595.for.inc_crit_edge:                     ; preds = %do.body595
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

do.end602:                                        ; preds = %do.body595
  %23 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device2, align 4
  %dev604 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev604 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev604, align 8
  %27 = ptrtoint ptr %info.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %info.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %28)
  %cmp608 = icmp eq i32 %28, 51
  br i1 %cmp608, label %do.end602.cond.end_crit_edge, label %cond.false

do.end602.cond.end_crit_edge:                     ; preds = %do.end602
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.false:                                       ; preds = %do.end602
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr [51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.end602.cond.end_crit_edge
  %cond = phi ptr [ %30, %cond.false ], [ @.str.8, %do.end602.cond.end_crit_edge ]
  %addr610 = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 2
  %31 = ptrtoint ptr %addr610 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr610, align 4
  %fault611 = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 3
  %33 = ptrtoint ptr %fault611 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fault611, align 4
  %engine612 = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 4
  %35 = ptrtoint ptr %engine612 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %engine612, align 4
  %runlist613 = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 5
  %37 = ptrtoint ptr %runlist613 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %runlist613, align 4
  %intr614 = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 7
  %39 = ptrtoint ptr %intr614 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %intr614, align 4
  %reset615 = getelementptr inbounds %struct.nvkm_top_device, ptr %info.1, i32 0, i32 6
  %41 = ptrtoint ptr %reset615 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reset615, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %type.2, i32 noundef %inst.2, ptr noundef %cond, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42) #6
  br label %for.inc

for.inc:                                          ; preds = %cond.end, %do.body595.for.inc_crit_edge, %sw.epilog.for.inc_crit_edge, %if.end11.for.inc_crit_edge
  %inst.3 = phi i32 [ %inst.2, %sw.epilog.for.inc_crit_edge ], [ %inst.1, %if.end11.for.inc_crit_edge ], [ %inst.2, %cond.end ], [ %inst.2, %do.body595.for.inc_crit_edge ]
  %type.3 = phi i32 [ %type.2, %sw.epilog.for.inc_crit_edge ], [ %type.1, %if.end11.for.inc_crit_edge ], [ %type.2, %cond.end ], [ %type.2, %do.body595.for.inc_crit_edge ]
  %info.2 = phi ptr [ %info.1, %sw.epilog.for.inc_crit_edge ], [ %info.1, %if.end11.for.inc_crit_edge ], [ null, %cond.end ], [ null, %do.body595.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0729, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_top_device_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @gk104_top, !1, !"gk104_top", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/top/gk104.c", i32 110, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/top/gk104.c", i32 44, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @gk104_top_oneinit._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @gk104_top_oneinit._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/top/gk104.c", i32 97, i32 3}
!12 = !{ptr @gk104_top_oneinit._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @gk104_top_oneinit._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
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
!24 = !{i64 5385466}
!25 = !{i64 2156221073}
!26 = !{!"branch_weights", i32 2000, i32 1}

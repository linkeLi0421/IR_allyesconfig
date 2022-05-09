; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/power_budget.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/power_budget.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bit_entry = type { i8, i8, i16, i16 }
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
%struct.nvbios_power_budget = type { i32, i8, i8, i8, i8, i8 }
%struct.nvbios_power_budget_entry = type { i32, i32, i32 }

@nvbios_power_budget_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 86, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: invalid cap_entry in power budget table found\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvbios_power_budget_header\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/bios/power_budget.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvbios_power_budget_header._entry_ptr = internal global ptr @nvbios_power_budget_header._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 48]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 48]
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [59 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/power_budget.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 85, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @nvbios_power_budget_header._entry, ptr @nvbios_power_budget_header._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvbios_power_budget_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_power_budget_header(ptr noundef %bios, ptr noundef writeonly %budget) local_unnamed_addr #0 align 64 {
entry:
  %bit_P.i = alloca %struct.bit_entry, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bios, null
  %tobool2.not = icmp eq ptr %budget, null
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bit_P.i) #4
  %0 = getelementptr inbounds %struct.bit_entry, ptr %bit_P.i, i32 0, i32 2
  %1 = getelementptr inbounds %struct.bit_entry, ptr %bit_P.i, i32 0, i32 3
  %2 = call ptr @memset(ptr %bit_P.i, i32 255, i32 6)
  %call.i = call i32 @bit_entry(ptr noundef nonnull %bios, i8 noundef zeroext 80, ptr noundef nonnull %bit_P.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.nvbios_power_budget_table.exit.thread_crit_edge

if.end.nvbios_power_budget_table.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_power_budget_table.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end
  %3 = getelementptr inbounds %struct.bit_entry, ptr %bit_P.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.not.i = icmp eq i8 %5, 2
  br i1 %cmp.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.nvbios_power_budget_table.exit.thread_crit_edge

lor.lhs.false.i.nvbios_power_budget_table.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_power_budget_table.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %7)
  %cmp4.i = icmp ult i16 %7, 48
  br i1 %cmp4.i, label %lor.lhs.false2.i.nvbios_power_budget_table.exit.thread_crit_edge, label %if.end.i

lor.lhs.false2.i.nvbios_power_budget_table.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_power_budget_table.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 2
  %conv6.i = zext i16 %9 to i32
  %add.i = add nuw nsw i32 %conv6.i, 44
  %call7.i = call i32 @nvbios_rd32(ptr noundef nonnull %bios, i32 noundef %add.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end.i.nvbios_power_budget_table.exit.thread_crit_edge, label %if.end10.i

if.end.i.nvbios_power_budget_table.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_power_budget_table.exit.thread

if.end10.i:                                       ; preds = %if.end.i
  %call11.i = call zeroext i8 @nvbios_rd08(ptr noundef nonnull %bios, i32 noundef %call7.i) #4
  %10 = zext i8 %call11.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %call11.i, label %if.end10.i.nvbios_power_budget_table.exit.thread_crit_edge [
    i8 32, label %if.end10.i.lor.lhs.false4_crit_edge
    i8 48, label %if.end10.i.lor.lhs.false4_crit_edge69
  ]

if.end10.i.lor.lhs.false4_crit_edge69:            ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false4

if.end10.i.lor.lhs.false4_crit_edge:              ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false4

if.end10.i.nvbios_power_budget_table.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_power_budget_table.exit.thread

nvbios_power_budget_table.exit.thread:            ; preds = %if.end10.i.nvbios_power_budget_table.exit.thread_crit_edge, %if.end.i.nvbios_power_budget_table.exit.thread_crit_edge, %lor.lhs.false2.i.nvbios_power_budget_table.exit.thread_crit_edge, %lor.lhs.false.i.nvbios_power_budget_table.exit.thread_crit_edge, %if.end.nvbios_power_budget_table.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_P.i) #4
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end10.i.lor.lhs.false4_crit_edge, %if.end10.i.lor.lhs.false4_crit_edge69
  %add13.i = add i32 %call7.i, 1
  %call14.i = call zeroext i8 @nvbios_rd08(ptr noundef nonnull %bios, i32 noundef %add13.i) #4
  %add15.i = add i32 %call7.i, 2
  %call16.i = call zeroext i8 @nvbios_rd08(ptr noundef nonnull %bios, i32 noundef %add15.i) #4
  %add17.i = add i32 %call7.i, 3
  %call18.i = call zeroext i8 @nvbios_rd08(ptr noundef nonnull %bios, i32 noundef %add17.i) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_P.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call18.i)
  %tobool5.not = icmp eq i8 %call18.i, 0
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end7

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false4
  %11 = zext i8 %call11.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %call11.i, label %if.end7.if.end27_crit_edge [
    i8 32, label %if.end7.sw.epilog_crit_edge
    i8 48, label %sw.bb9
  ]

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end7.if.end27_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

sw.bb9:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %if.end7.sw.epilog_crit_edge
  %.sink = phi i32 [ 10, %sw.bb9 ], [ 9, %if.end7.sw.epilog_crit_edge ]
  %add10 = add i32 %call7.i, %.sink
  %call11 = call zeroext i8 @nvbios_rd08(ptr noundef nonnull %bios, i32 noundef %add10) #4
  call void @__sanitizer_cov_trace_cmp1(i8 %call11, i8 %call18.i)
  %cmp.not = icmp ult i8 %call11, %call18.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call11)
  %cmp16.not = icmp eq i8 %call11, -1
  %or.cond54 = or i1 %cmp.not, %cmp16.not
  br i1 %or.cond54, label %sw.epilog.if.end27_crit_edge, label %do.body

sw.epilog.if.end27_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

do.body:                                          ; preds = %sw.epilog
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp19 = icmp ugt i32 %13, 1
  br i1 %cmp19, label %do.end, label %do.body.if.end23_crit_edge

do.body.if.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef %name) #7
  br label %if.end23

if.end23:                                         ; preds = %do.end, %do.body.if.end23_crit_edge
  %cap_entry26 = getelementptr inbounds %struct.nvbios_power_budget, ptr %budget, i32 0, i32 5
  %18 = ptrtoint ptr %cap_entry26 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %cap_entry26, align 4
  br label %cleanup

if.end27:                                         ; preds = %sw.epilog.if.end27_crit_edge, %if.end7.if.end27_crit_edge
  %cap_entry.068 = phi i8 [ %call11, %sw.epilog.if.end27_crit_edge ], [ -1, %if.end7.if.end27_crit_edge ]
  %19 = ptrtoint ptr %budget to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call7.i, ptr %budget, align 4
  %ver28 = getelementptr inbounds %struct.nvbios_power_budget, ptr %budget, i32 0, i32 1
  %20 = ptrtoint ptr %ver28 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call11.i, ptr %ver28, align 4
  %hlen = getelementptr inbounds %struct.nvbios_power_budget, ptr %budget, i32 0, i32 2
  %21 = ptrtoint ptr %hlen to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call14.i, ptr %hlen, align 1
  %elen = getelementptr inbounds %struct.nvbios_power_budget, ptr %budget, i32 0, i32 3
  %22 = ptrtoint ptr %elen to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call16.i, ptr %elen, align 2
  %ecount = getelementptr inbounds %struct.nvbios_power_budget, ptr %budget, i32 0, i32 4
  %23 = ptrtoint ptr %ecount to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call18.i, ptr %ecount, align 1
  %cap_entry29 = getelementptr inbounds %struct.nvbios_power_budget, ptr %budget, i32 0, i32 5
  %24 = ptrtoint ptr %cap_entry29 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %cap_entry.068, ptr %cap_entry29, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end23, %lor.lhs.false4.cleanup_crit_edge, %nvbios_power_budget_table.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end23 ], [ 0, %if.end27 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %lor.lhs.false4.cleanup_crit_edge ], [ -19, %nvbios_power_budget_table.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_power_budget_entry(ptr noundef %bios, ptr noundef readonly %budget, i8 noundef zeroext %idx, ptr noundef writeonly %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bios, null
  %tobool2.not = icmp eq ptr %budget, null
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %0 = ptrtoint ptr %budget to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %budget, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not = icmp eq i32 %1, 0
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %ecount = getelementptr inbounds %struct.nvbios_power_budget, ptr %budget, i32 0, i32 4
  %2 = ptrtoint ptr %ecount to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ecount, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %idx)
  %cmp.not = icmp ule i8 %3, %idx
  %tobool9.not = icmp eq ptr %entry1, null
  %or.cond52 = or i1 %tobool9.not, %cmp.not
  br i1 %or.cond52, label %lor.lhs.false5.cleanup_crit_edge, label %if.end

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  %conv = zext i8 %idx to i32
  %hlen = getelementptr inbounds %struct.nvbios_power_budget, ptr %budget, i32 0, i32 2
  %4 = ptrtoint ptr %hlen to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hlen, align 1
  %conv11 = zext i8 %5 to i32
  %add = add i32 %1, %conv11
  %elen = getelementptr inbounds %struct.nvbios_power_budget, ptr %budget, i32 0, i32 3
  %6 = ptrtoint ptr %elen to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %elen, align 2
  %conv13 = zext i8 %7 to i32
  %mul = mul nuw nsw i32 %conv13, %conv
  %add14 = add i32 %add, %mul
  %ver = getelementptr inbounds %struct.nvbios_power_budget, ptr %budget, i32 0, i32 1
  %8 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %9)
  %cmp16 = icmp ugt i8 %9, 31
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add19 = add i32 %add14, 2
  %call = tail call i32 @nvbios_rd32(ptr noundef nonnull %bios, i32 noundef %add19) #4
  %10 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call, ptr %entry1, align 4
  %add20 = add i32 %add14, 6
  %call21 = tail call i32 @nvbios_rd32(ptr noundef nonnull %bios, i32 noundef %add20) #4
  %avg_w = getelementptr inbounds %struct.nvbios_power_budget_entry, ptr %entry1, i32 0, i32 1
  %11 = ptrtoint ptr %avg_w to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call21, ptr %avg_w, align 4
  %add22 = add i32 %add14, 10
  %call23 = tail call i32 @nvbios_rd32(ptr noundef nonnull %bios, i32 noundef %add22) #4
  %max_w = getelementptr inbounds %struct.nvbios_power_budget_entry, ptr %entry1, i32 0, i32 2
  %12 = ptrtoint ptr %max_w to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call23, ptr %max_w, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %entry1, align 4
  %add25 = add i32 %add14, 2
  %call26 = tail call i32 @nvbios_rd32(ptr noundef nonnull %bios, i32 noundef %add25) #4
  %max_w27 = getelementptr inbounds %struct.nvbios_power_budget_entry, ptr %entry1, i32 0, i32 2
  %14 = ptrtoint ptr %max_w27 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call26, ptr %max_w27, align 4
  %avg_w29 = getelementptr inbounds %struct.nvbios_power_budget_entry, ptr %entry1, i32 0, i32 1
  %15 = ptrtoint ptr %avg_w29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call26, ptr %avg_w29, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then18, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/power_budget.c", i32 85, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvbios_power_budget_header._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvbios_power_budget_header._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}

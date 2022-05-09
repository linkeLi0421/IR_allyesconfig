; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/iccsense.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/iccsense.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_extdev_func = type { i8, i8, i8 }
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
%struct.nvbios_iccsense = type { i32, ptr }
%struct.pwr_rail_t = type { i8, i8, i8, [3 x %struct.pwr_rail_resistor_t], i16 }
%struct.pwr_rail_resistor_t = type { i8, i8 }

@nvbios_iccsense_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 71, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: ICCSENSE version 0x%02x unknown\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvbios_iccsense_parse\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/bios/iccsense.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvbios_iccsense_parse._entry_ptr = internal global ptr @nvbios_iccsense_parse._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [55 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/iccsense.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 71, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @nvbios_iccsense_parse._entry, ptr @nvbios_iccsense_parse._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvbios_iccsense_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_iccsense_parse(ptr noundef %bios, ptr nocapture noundef %iccsense) local_unnamed_addr #0 align 64 {
entry:
  %bit_P.i = alloca %struct.bit_entry, align 2
  %extdev = alloca %struct.nvbios_extdev_func, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bit_P.i) #5
  %0 = getelementptr inbounds %struct.bit_entry, ptr %bit_P.i, i32 0, i32 2
  %1 = getelementptr inbounds %struct.bit_entry, ptr %bit_P.i, i32 0, i32 3
  %2 = call ptr @memset(ptr %bit_P.i, i32 255, i32 6)
  %call.i = call i32 @bit_entry(ptr noundef %bios, i8 noundef zeroext 80, ptr noundef nonnull %bit_P.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.nvbios_iccsense_table.exit.thread_crit_edge

entry.nvbios_iccsense_table.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvbios_iccsense_table.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %3 = getelementptr inbounds %struct.bit_entry, ptr %bit_P.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.not.i = icmp eq i8 %5, 2
  br i1 %cmp.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.nvbios_iccsense_table.exit.thread_crit_edge

lor.lhs.false.i.nvbios_iccsense_table.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvbios_iccsense_table.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 44, i16 %7)
  %cmp4.i = icmp ult i16 %7, 44
  br i1 %cmp4.i, label %lor.lhs.false2.i.nvbios_iccsense_table.exit.thread_crit_edge, label %if.end.i

lor.lhs.false2.i.nvbios_iccsense_table.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvbios_iccsense_table.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 2
  %conv6.i = zext i16 %9 to i32
  %add.i = add nuw nsw i32 %conv6.i, 40
  %call7.i = call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end.i.nvbios_iccsense_table.exit.thread_crit_edge, label %if.end10.i

if.end.i.nvbios_iccsense_table.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvbios_iccsense_table.exit.thread

if.end10.i:                                       ; preds = %if.end.i
  %call12.i = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %call7.i) #5
  %10 = zext i8 %call12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %call12.i, label %if.end10.i.nvbios_iccsense_table.exit.thread_crit_edge [
    i8 16, label %if.end10.i.lor.lhs.false_crit_edge
    i8 32, label %if.end10.i.lor.lhs.false_crit_edge177
  ]

if.end10.i.lor.lhs.false_crit_edge177:            ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

if.end10.i.lor.lhs.false_crit_edge:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

if.end10.i.nvbios_iccsense_table.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvbios_iccsense_table.exit.thread

nvbios_iccsense_table.exit.thread:                ; preds = %if.end10.i.nvbios_iccsense_table.exit.thread_crit_edge, %if.end.i.nvbios_iccsense_table.exit.thread_crit_edge, %lor.lhs.false2.i.nvbios_iccsense_table.exit.thread_crit_edge, %lor.lhs.false.i.nvbios_iccsense_table.exit.thread_crit_edge, %entry.nvbios_iccsense_table.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_P.i) #5
  br label %cleanup100

lor.lhs.false:                                    ; preds = %if.end10.i.lor.lhs.false_crit_edge, %if.end10.i.lor.lhs.false_crit_edge177
  %add14.i = add i32 %call7.i, 1
  %call15.i = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add14.i) #5
  %add16.i = add i32 %call7.i, 2
  %call17.i = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add16.i) #5
  %add18.i = add i32 %call7.i, 3
  %call19.i = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add18.i) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_P.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call19.i)
  %tobool3.not = icmp eq i8 %call19.i, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup100_crit_edge, label %if.end

lor.lhs.false.cleanup100_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup100

if.end:                                           ; preds = %lor.lhs.false
  %conv = zext i8 %call12.i to i32
  %11 = zext i8 %call12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %call12.i, label %do.body [
    i8 16, label %if.end.if.end17_crit_edge
    i8 32, label %if.end.if.end17_crit_edge178
  ]

if.end.if.end17_crit_edge178:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

do.body:                                          ; preds = %if.end
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp9.not = icmp eq i32 %13, 0
  br i1 %cmp9.not, label %do.body.cleanup100_crit_edge, label %do.end

do.body.cleanup100_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup100

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %conv) #8
  br label %cleanup100

if.end17:                                         ; preds = %if.end.if.end17_crit_edge, %if.end.if.end17_crit_edge178
  %conv18 = zext i8 %call19.i to i32
  %18 = ptrtoint ptr %iccsense to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv18, ptr %iccsense, align 4
  %19 = mul nuw nsw i32 %conv18, 12
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3264) #9
  %rail = getelementptr inbounds %struct.nvbios_iccsense, ptr %iccsense, i32 0, i32 1
  %20 = ptrtoint ptr %rail to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8.i, ptr %rail, align 4
  %tobool22.not = icmp eq ptr %call8.i, null
  br i1 %tobool22.not, label %if.end17.cleanup100_crit_edge, label %for.body.preheader

if.end17.cleanup100_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup100

for.body.preheader:                               ; preds = %if.end17
  %21 = getelementptr inbounds %struct.nvbios_extdev_func, ptr %extdev, i32 0, i32 1
  %22 = getelementptr inbounds %struct.nvbios_extdev_func, ptr %extdev, i32 0, i32 2
  %conv31 = zext i8 %call15.i to i32
  %add = add i32 %call7.i, %conv31
  %conv33 = zext i8 %call17.i to i32
  %wide.trip.count = zext i8 %call19.i to i32
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %extdev) #5
  %23 = ptrtoint ptr %extdev to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %extdev, align 1, !annotation !17
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %21, align 1, !annotation !17
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %22, align 1, !annotation !17
  %26 = ptrtoint ptr %rail to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rail, align 4
  %arrayidx = getelementptr %struct.pwr_rail_t, ptr %27, i32 %indvars.iv
  %mul = mul nuw nsw i32 %indvars.iv, %conv33
  %add34 = add i32 %add, %mul
  %28 = zext i8 %call12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %call12.i, label %for.body.sw.epilog_crit_edge [
    i8 16, label %sw.bb
    i8 32, label %sw.bb46
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %add36 = add i32 %add34, 1
  %call37 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add36) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %call37)
  %cmp39 = icmp ugt i8 %call37, -9
  %. = zext i1 %cmp39 to i8
  br label %sw.epilog.sink.split

sw.bb46:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call47 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add34) #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb46, %sw.bb
  %call47.sink = phi i8 [ %call47, %sw.bb46 ], [ %., %sw.bb ]
  %.sink = phi i32 [ 1, %sw.bb46 ], [ 2, %sw.bb ]
  %res_start.0.ph = phi i32 [ 5, %sw.bb46 ], [ 3, %sw.bb ]
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %call47.sink, ptr %arrayidx, align 2
  %add49 = add i32 %add34, %.sink
  %call50 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add49) #5
  %extdev_id51 = getelementptr %struct.pwr_rail_t, ptr %27, i32 %indvars.iv, i32 1
  %30 = ptrtoint ptr %extdev_id51 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call50, ptr %extdev_id51, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body.sw.epilog_crit_edge
  %res_start.0 = phi i32 [ 0, %for.body.sw.epilog_crit_edge ], [ %res_start.0.ph, %sw.epilog.sink.split ]
  %extdev_id52 = getelementptr %struct.pwr_rail_t, ptr %27, i32 %indvars.iv, i32 1
  %31 = ptrtoint ptr %extdev_id52 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %extdev_id52, align 1
  %conv53 = zext i8 %32 to i32
  %call54 = call i32 @nvbios_extdev_parse(ptr noundef %bios, i32 noundef %conv53, ptr noundef nonnull %extdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end57:                                         ; preds = %sw.epilog
  %33 = ptrtoint ptr %extdev to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %extdev, align 1
  %switch.tableidx = add i8 %34, -76
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %35 = icmp ult i8 %switch.tableidx, 3
  %switch.cast = zext i8 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 196865, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %.sink173 = select i1 %35, i8 %switch.masked, i8 0
  %resistor_count62 = getelementptr %struct.pwr_rail_t, ptr %27, i32 %indvars.iv, i32 2
  %36 = ptrtoint ptr %resistor_count62 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink173, ptr %resistor_count62, align 2
  %resistor_count65 = getelementptr %struct.pwr_rail_t, ptr %27, i32 %indvars.iv, i32 2
  %.pre = add i32 %res_start.0, %add34
  br i1 %35, label %if.end57.for.body69_crit_edge, label %if.end57.for.end_crit_edge

if.end57.for.end_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end57.for.body69_crit_edge:                    ; preds = %if.end57
  br label %for.body69

for.body69:                                       ; preds = %for.body69.for.body69_crit_edge, %if.end57.for.body69_crit_edge
  %r.0168 = phi i32 [ %inc, %for.body69.for.body69_crit_edge ], [ 0, %if.end57.for.body69_crit_edge ]
  %mul72 = shl nuw i32 %r.0168, 1
  %add73 = add i32 %.pre, %mul72
  %call74 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add73) #5
  %arrayidx75 = getelementptr %struct.pwr_rail_t, ptr %27, i32 %indvars.iv, i32 3, i32 %r.0168
  %37 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %call74, ptr %arrayidx75, align 1
  %add80 = add i32 %add73, 1
  %call81 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add80) #5
  %enabled = getelementptr %struct.pwr_rail_t, ptr %27, i32 %indvars.iv, i32 3, i32 %r.0168, i32 1
  %38 = lshr i8 %call81, 6
  %.lobit = and i8 %38, 1
  %39 = xor i8 %.lobit, 1
  %40 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %enabled, align 1
  %inc = add nuw nsw i32 %r.0168, 1
  %41 = ptrtoint ptr %resistor_count65 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %resistor_count65, align 2
  %conv66 = zext i8 %42 to i32
  %cmp67 = icmp ult i32 %inc, %conv66
  br i1 %cmp67, label %for.body69.for.body69_crit_edge, label %for.body69.for.end_crit_edge

for.body69.for.end_crit_edge:                     ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body69.for.body69_crit_edge:                  ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body69

for.end:                                          ; preds = %for.body69.for.end_crit_edge, %if.end57.for.end_crit_edge
  %.lcssa = phi i8 [ 0, %if.end57.for.end_crit_edge ], [ %42, %for.body69.for.end_crit_edge ]
  %conv66.le = zext i8 %.lcssa to i32
  %mul91 = shl nuw nsw i32 %conv66.le, 1
  %add92 = add i32 %.pre, %mul91
  %call93 = call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add92) #5
  %config = getelementptr %struct.pwr_rail_t, ptr %27, i32 %indvars.iv, i32 4
  %43 = ptrtoint ptr %config to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %call93, ptr %config, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %sw.epilog.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %extdev) #5
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup.cleanup100_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup.cleanup100_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup100

cleanup100:                                       ; preds = %cleanup.cleanup100_crit_edge, %if.end17.cleanup100_crit_edge, %do.end, %do.body.cleanup100_crit_edge, %lor.lhs.false.cleanup100_crit_edge, %nvbios_iccsense_table.exit.thread
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup100_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup100_crit_edge ], [ -12, %if.end17.cleanup100_crit_edge ], [ -22, %nvbios_iccsense_table.exit.thread ], [ 0, %cleanup.cleanup100_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_extdev_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/iccsense.c", i32 71, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvbios_iccsense_parse._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvbios_iccsense_parse._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}

; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/volt/gpio.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_volt = type { ptr, %struct.nvkm_subdev, i8, i8, [256 x %struct.anon.133], i32, i32, i8, i8, i8, i32 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.133 = type { i32, i8 }
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
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }

@tags = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\04\05\06\1Astuv", [24 x i8] zeroinitializer }, align 32
@nvkm_voltgpio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 91, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: VID bit %d has no GPIO\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvkm_voltgpio_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/volt/gpio.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_voltgpio_init._entry_ptr = internal global ptr @nvkm_voltgpio_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.5 = private unnamed_addr constant [5 x i8] c"tags\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 30, i32 17 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gpio.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 91, i32 5 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @nvkm_voltgpio_init._entry, ptr @nvkm_voltgpio_init._entry_ptr, ptr @tags, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tags to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_voltgpio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_voltgpio_get(ptr nocapture noundef readonly %volt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %gpio1 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %gpio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio1, align 8
  %vid_mask = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 2
  %4 = ptrtoint ptr %vid_mask to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vid_mask, align 4
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %entry
  %call = tail call i32 @nvkm_gpio_get(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 4, i8 noundef zeroext -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  %7 = trunc i32 %call to i8
  br i1 %cmp2, label %if.then.cleanup10_crit_edge, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then.cleanup10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup10

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %entry.for.inc_crit_edge
  %vid.2 = phi i8 [ %7, %if.then.for.inc_crit_edge ], [ 0, %entry.for.inc_crit_edge ]
  %8 = ptrtoint ptr %vid_mask to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vid_mask, align 4
  %10 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.1 = icmp eq i8 %10, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %call.1 = tail call i32 @nvkm_gpio_get(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 5, i8 noundef zeroext -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp2.1 = icmp slt i32 %call.1, 0
  %call.1.tr = trunc i32 %call.1 to i8
  %11 = shl i8 %call.1.tr, 1
  %conv7.1 = or i8 %vid.2, %11
  br i1 %cmp2.1, label %if.then.1.cleanup10_crit_edge, label %if.then.1.for.inc.1_crit_edge

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then.1.cleanup10_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup10

for.inc.1:                                        ; preds = %if.then.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %vid.2.1 = phi i8 [ %conv7.1, %if.then.1.for.inc.1_crit_edge ], [ %vid.2, %for.inc.for.inc.1_crit_edge ]
  %12 = ptrtoint ptr %vid_mask to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vid_mask, align 4
  %14 = and i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.2 = icmp eq i8 %14, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %call.2 = tail call i32 @nvkm_gpio_get(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 6, i8 noundef zeroext -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp2.2 = icmp slt i32 %call.2, 0
  %call.2.tr = trunc i32 %call.2 to i8
  %15 = shl i8 %call.2.tr, 2
  %conv7.2 = or i8 %vid.2.1, %15
  br i1 %cmp2.2, label %if.then.2.cleanup10_crit_edge, label %if.then.2.for.inc.2_crit_edge

if.then.2.for.inc.2_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then.2.cleanup10_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup10

for.inc.2:                                        ; preds = %if.then.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %vid.2.2 = phi i8 [ %conv7.2, %if.then.2.for.inc.2_crit_edge ], [ %vid.2.1, %for.inc.1.for.inc.2_crit_edge ]
  %16 = ptrtoint ptr %vid_mask to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vid_mask, align 4
  %18 = and i8 %17, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.3 = icmp eq i8 %18, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  %call.3 = tail call i32 @nvkm_gpio_get(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 26, i8 noundef zeroext -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp2.3 = icmp slt i32 %call.3, 0
  %call.3.tr = trunc i32 %call.3 to i8
  %19 = shl i8 %call.3.tr, 3
  %conv7.3 = or i8 %vid.2.2, %19
  br i1 %cmp2.3, label %if.then.3.cleanup10_crit_edge, label %if.then.3.for.inc.3_crit_edge

if.then.3.for.inc.3_crit_edge:                    ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.then.3.cleanup10_crit_edge:                    ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup10

for.inc.3:                                        ; preds = %if.then.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %vid.2.3 = phi i8 [ %conv7.3, %if.then.3.for.inc.3_crit_edge ], [ %vid.2.2, %for.inc.2.for.inc.3_crit_edge ]
  %20 = ptrtoint ptr %vid_mask to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vid_mask, align 4
  %22 = and i8 %21, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.4 = icmp eq i8 %22, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  %call.4 = tail call i32 @nvkm_gpio_get(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 115, i8 noundef zeroext -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp2.4 = icmp slt i32 %call.4, 0
  %call.4.tr = trunc i32 %call.4 to i8
  %23 = shl i8 %call.4.tr, 4
  %conv7.4 = or i8 %vid.2.3, %23
  br i1 %cmp2.4, label %if.then.4.cleanup10_crit_edge, label %if.then.4.for.inc.4_crit_edge

if.then.4.for.inc.4_crit_edge:                    ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

if.then.4.cleanup10_crit_edge:                    ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup10

for.inc.4:                                        ; preds = %if.then.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %vid.2.4 = phi i8 [ %conv7.4, %if.then.4.for.inc.4_crit_edge ], [ %vid.2.3, %for.inc.3.for.inc.4_crit_edge ]
  %24 = ptrtoint ptr %vid_mask to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %vid_mask, align 4
  %26 = and i8 %25, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.5 = icmp eq i8 %26, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  %call.5 = tail call i32 @nvkm_gpio_get(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 116, i8 noundef zeroext -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %cmp2.5 = icmp slt i32 %call.5, 0
  %call.5.tr = trunc i32 %call.5 to i8
  %27 = shl i8 %call.5.tr, 5
  %conv7.5 = or i8 %vid.2.4, %27
  br i1 %cmp2.5, label %if.then.5.cleanup10_crit_edge, label %if.then.5.for.inc.5_crit_edge

if.then.5.for.inc.5_crit_edge:                    ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5

if.then.5.cleanup10_crit_edge:                    ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup10

for.inc.5:                                        ; preds = %if.then.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %vid.2.5 = phi i8 [ %conv7.5, %if.then.5.for.inc.5_crit_edge ], [ %vid.2.4, %for.inc.4.for.inc.5_crit_edge ]
  %28 = ptrtoint ptr %vid_mask to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %vid_mask, align 4
  %30 = and i8 %29, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.6 = icmp eq i8 %30, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  %call.6 = tail call i32 @nvkm_gpio_get(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 117, i8 noundef zeroext -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %cmp2.6 = icmp slt i32 %call.6, 0
  br i1 %cmp2.6, label %if.then.6.cleanup10_crit_edge, label %for.inc.6thread-pre-split

if.then.6.cleanup10_crit_edge:                    ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup10

for.inc.6thread-pre-split:                        ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #6
  %call.6.tr = trunc i32 %call.6 to i8
  %31 = shl i8 %call.6.tr, 6
  %conv7.6 = or i8 %vid.2.5, %31
  %32 = ptrtoint ptr %vid_mask to i32
  call void @__asan_load1_noabort(i32 %32)
  %.pr = load i8, ptr %vid_mask, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.6thread-pre-split, %for.inc.5.for.inc.6_crit_edge
  %33 = phi i8 [ %.pr, %for.inc.6thread-pre-split ], [ %29, %for.inc.5.for.inc.6_crit_edge ]
  %vid.2.6 = phi i8 [ %conv7.6, %for.inc.6thread-pre-split ], [ %vid.2.5, %for.inc.5.for.inc.6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %tobool.not.7 = icmp sgt i8 %33, -1
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  %call.7 = tail call i32 @nvkm_gpio_get(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 118, i8 noundef zeroext -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %cmp2.7 = icmp slt i32 %call.7, 0
  %call.7.tr = trunc i32 %call.7 to i8
  %34 = shl i8 %call.7.tr, 7
  %conv7.7 = or i8 %vid.2.6, %34
  br i1 %cmp2.7, label %if.then.7.cleanup10_crit_edge, label %if.then.7.for.inc.7_crit_edge

if.then.7.for.inc.7_crit_edge:                    ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.7

if.then.7.cleanup10_crit_edge:                    ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup10

for.inc.7:                                        ; preds = %if.then.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %vid.2.7 = phi i8 [ %conv7.7, %if.then.7.for.inc.7_crit_edge ], [ %vid.2.6, %for.inc.6.for.inc.7_crit_edge ]
  %conv9 = zext i8 %vid.2.7 to i32
  br label %cleanup10

cleanup10:                                        ; preds = %for.inc.7, %if.then.7.cleanup10_crit_edge, %if.then.6.cleanup10_crit_edge, %if.then.5.cleanup10_crit_edge, %if.then.4.cleanup10_crit_edge, %if.then.3.cleanup10_crit_edge, %if.then.2.cleanup10_crit_edge, %if.then.1.cleanup10_crit_edge, %if.then.cleanup10_crit_edge
  %retval.3 = phi i32 [ %conv9, %for.inc.7 ], [ %call, %if.then.cleanup10_crit_edge ], [ %call.1, %if.then.1.cleanup10_crit_edge ], [ %call.2, %if.then.2.cleanup10_crit_edge ], [ %call.3, %if.then.3.cleanup10_crit_edge ], [ %call.4, %if.then.4.cleanup10_crit_edge ], [ %call.5, %if.then.5.cleanup10_crit_edge ], [ %call.6, %if.then.6.cleanup10_crit_edge ], [ %call.7, %if.then.7.cleanup10_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_get(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_voltgpio_set(ptr nocapture noundef readonly %volt, i8 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %gpio1 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %gpio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio1, align 8
  %vid_mask = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.020 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %vid.addr.018 = phi i8 [ %vid, %entry ], [ %9, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %vid_mask to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vid_mask, align 4
  %conv = zext i8 %5 to i32
  %shl = shl nuw nsw i32 1, %i.020
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr [8 x i8], ptr @tags, i32 0, i32 %i.020
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = and i8 %vid.addr.018, 1
  %and3 = zext i8 %8 to i32
  %call = tail call i32 @nvkm_gpio_set(ptr noundef %3, i32 noundef 0, i8 noundef zeroext %7, i8 noundef zeroext -1, i32 noundef %and3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then.cleanup10_crit_edge, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then.cleanup10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup10

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.020, 1
  %9 = lshr i8 %vid.addr.018, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cleanup10_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup10_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup10

cleanup10:                                        ; preds = %for.inc.cleanup10_crit_edge, %if.then.cleanup10_crit_edge
  %retval.3 = phi i32 [ %call, %if.then.cleanup10_crit_edge ], [ 0, %for.inc.cleanup10_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_set(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_voltgpio_init(ptr noundef %volt) local_unnamed_addr #0 align 64 {
entry:
  %func = alloca %struct.dcb_gpio_func, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %gpio2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %gpio2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio2, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %func) #4
  %vid_mask = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 2
  %debug = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 5
  %name = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 4
  %4 = call ptr @memset(ptr %func, i32 255, i32 5)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.041 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %vid_mask to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %vid_mask, align 4
  %conv = zext i8 %6 to i32
  %shl = shl nuw nsw i32 1, %i.041
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr [8 x i8], ptr @tags, i32 0, i32 %i.041
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %call = call i32 @nvkm_gpio_find(ptr noundef %3, i32 noundef 0, i8 noundef zeroext %8, i8 noundef zeroext -1, ptr noundef nonnull %func) #4
  %9 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.then.cleanup23_crit_edge [
    i32 0, label %if.then.for.inc_crit_edge
    i32 -2, label %do.body
  ]

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then.cleanup23_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup23

do.body:                                          ; preds = %if.then
  %10 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp8 = icmp ugt i32 %11, 3
  br i1 %cmp8, label %do.end, label %do.body.if.end13_crit_edge

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %i.041) #7
  br label %if.end13

if.end13:                                         ; preds = %do.end, %do.body.if.end13_crit_edge
  %16 = ptrtoint ptr %vid_mask to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vid_mask, align 4
  %18 = trunc i32 %shl to i8
  %19 = xor i8 %18, -1
  %conv20 = and i8 %17, %19
  store i8 %conv20, ptr %vid_mask, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cleanup23_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup23_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup23

cleanup23:                                        ; preds = %for.inc.cleanup23_crit_edge, %if.then.cleanup23_crit_edge
  %retval.3 = phi i32 [ 0, %for.inc.cleanup23_crit_edge ], [ %call, %if.then.cleanup23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %func) #4
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_find(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gpio.c", i32 91, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_voltgpio_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_voltgpio_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @tags, !9, !"tags", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gpio.c", i32 30, i32 17}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}

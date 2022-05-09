; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk104.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_volt_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }
%struct.nvbios_volt = type { i32, i32, i32, i32, i8, i8, i16, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.133, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
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
%struct.anon.133 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.gk104_volt = type { %struct.nvkm_volt, %struct.nvbios_volt }
%struct.nvkm_volt = type { ptr, %struct.nvkm_subdev, i8, i8, [256 x %struct.anon.134], i32, i32, i8, i8, i8, i32 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.134 = type { i32, i8 }

@gk104_volt_gpio = internal constant { %struct.nvkm_volt_func, [36 x i8] } { %struct.nvkm_volt_func { ptr @gf100_volt_oneinit, ptr null, ptr null, ptr @nvkm_voltgpio_get, ptr @nvkm_voltgpio_set, ptr null, ptr @gk104_volt_speedo_read }, [36 x i8] zeroinitializer }, align 32
@gk104_volt_pwm = internal constant { %struct.nvkm_volt_func, [36 x i8] } { %struct.nvkm_volt_func { ptr @gf100_volt_oneinit, ptr @gk104_volt_get, ptr @gk104_volt_set, ptr null, ptr null, ptr null, ptr @gk104_volt_speedo_read }, [36 x i8] zeroinitializer }, align 32
@gk104_volt_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 129, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"%s: Type mismatch between the voltage table type and the GPIO table. Fallback to GPIO mode.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gk104_volt_new\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk104.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gk104_volt_new._entry_ptr = internal global ptr @gk104_volt_new._entry, section ".printk_index", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPIO\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PWM\00", [28 x i8] zeroinitializer }, align 32
@gk104_volt_new._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 138, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: Using %s mode\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gk104_volt_new._entry_ptr.10 = internal global ptr @gk104_volt_new._entry.7, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"gk104_volt_gpio\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 90, i32 4 }
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"gk104_volt_pwm\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 85, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 127, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 134, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 136, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk104.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 138, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @gk104_volt_new._entry, ptr @gk104_volt_new._entry.7, ptr @gk104_volt_new._entry_ptr, ptr @gk104_volt_new._entry_ptr.10, ptr @gk104_volt_gpio, ptr @gk104_volt_pwm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_volt_gpio to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_volt_pwm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_volt_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_volt_new._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_volt_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pvolt) local_unnamed_addr #0 align 64 {
entry:
  %gpio = alloca %struct.dcb_gpio_func, align 1
  %bios = alloca %struct.nvbios_volt, align 4
  %ver = alloca i8, align 1
  %hdr = alloca i8, align 1
  %cnt = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %gpio) #5
  %0 = call ptr @memset(ptr %gpio, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %bios) #5
  %1 = call ptr @memset(ptr %bios, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #5
  %2 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %ver, align 1, !annotation !30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #5
  %3 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %hdr, align 1, !annotation !30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #5
  %4 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %cnt, align 1, !annotation !30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #5
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %len, align 1, !annotation !30
  %bios1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 21
  %6 = ptrtoint ptr %bios1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bios1, align 8
  %call = call i32 @nvbios_volt_parse(ptr noundef %7, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len, ptr noundef nonnull %bios) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpio2 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 25
  %8 = ptrtoint ptr %gpio2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio2, align 8
  %call3 = call i32 @nvkm_gpio_find(ptr noundef %9, i32 noundef 0, i8 noundef zeroext -127, i8 noundef zeroext -1, ptr noundef nonnull %gpio) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %10 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then6, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %cmp28 = phi i1 [ false, %if.then6 ], [ true, %land.lhs.true.if.end7_crit_edge ], [ true, %if.end.if.end7_crit_edge ]
  %cmp17.not = phi i1 [ true, %if.then6 ], [ false, %land.lhs.true.if.end7_crit_edge ], [ false, %if.end.if.end7_crit_edge ]
  %volt_func.0 = phi ptr [ @gk104_volt_pwm, %if.then6 ], [ @gk104_volt_gpio, %land.lhs.true.if.end7_crit_edge ], [ @gk104_volt_gpio, %if.end.if.end7_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 2152) #8
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @nvkm_volt_ctor(ptr noundef nonnull %volt_func.0, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i) #5
  %13 = ptrtoint ptr %pvolt to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %pvolt, align 4
  %bios13 = getelementptr inbounds %struct.gk104_volt, ptr %call7.i.i, i32 0, i32 1
  %14 = call ptr @memcpy(ptr %bios13, ptr %bios, i32 28)
  %15 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp15 = icmp ne i32 %16, 1
  %brmerge = or i1 %cmp17.not, %cmp15
  br i1 %brmerge, label %if.end11.if.end27_crit_edge, label %do.body

if.end11.if.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

do.body:                                          ; preds = %if.end11
  %debug = getelementptr inbounds %struct.nvkm_volt, ptr %call7.i.i, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp20.not = icmp eq i32 %18, 0
  br i1 %cmp20.not, label %do.body.if.end27_crit_edge, label %do.end

do.body.if.end27_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %device23 = getelementptr inbounds %struct.nvkm_volt, ptr %call7.i.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %device23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device23, align 8
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_volt, ptr %call7.i.i, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef %name) #9
  br label %if.end27

if.end27:                                         ; preds = %do.end, %do.body.if.end27_crit_edge, %if.end11.if.end27_crit_edge
  br i1 %cmp28, label %if.then29, label %if.end27.do.body33_crit_edge

if.end27.do.body33_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body33

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = call i32 @nvkm_voltgpio_init(ptr noundef nonnull %call7.i.i) #5
  br label %do.body33

do.body33:                                        ; preds = %if.then29, %if.end27.do.body33_crit_edge
  %mode.0 = phi ptr [ @.str.5, %if.then29 ], [ @.str.6, %if.end27.do.body33_crit_edge ]
  %debug37 = getelementptr inbounds %struct.nvkm_volt, ptr %call7.i.i, i32 0, i32 1, i32 5
  %23 = ptrtoint ptr %debug37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp38 = icmp ugt i32 %24, 3
  br i1 %cmp38, label %do.end42, label %do.body33.cleanup_crit_edge

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end42:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  %device43 = getelementptr inbounds %struct.nvkm_volt, ptr %call7.i.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %device43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device43, align 8
  %dev44 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev44, align 8
  %name45 = getelementptr inbounds %struct.nvkm_volt, ptr %call7.i.i, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.8, ptr noundef %name45, ptr noundef nonnull %mode.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %do.body33.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ 0, %do.end42 ], [ 0, %do.body33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bios) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %gpio) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_volt_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_find(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_volt_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_voltgpio_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_volt_oneinit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_voltgpio_get(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_voltgpio_set(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk104_volt_speedo_read(ptr nocapture noundef readonly %volt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %fuse2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %fuse2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fuse2, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1189428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !32
  %call = tail call i32 @nvkm_fuse_read(ptr noundef nonnull %3, i32 noundef 936) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 1189428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 65) #5, !srcloc !32
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.body ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fuse_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk104_volt_get(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_volt, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 131904
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 131908
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  %base10 = getelementptr inbounds %struct.gk104_volt, ptr %base, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %base10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base10, align 4
  %pwm_range = getelementptr inbounds %struct.gk104_volt, ptr %base, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %pwm_range to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pwm_range, align 4
  %mul = mul i32 %11, %7
  %div11 = udiv i32 %mul, %4
  %add = add i32 %div11, %9
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk104_volt_set(ptr nocapture noundef readonly %base, i32 noundef %uv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_volt, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pwm_freq = getelementptr inbounds %struct.gk104_volt, ptr %base, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %pwm_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwm_freq, align 4
  %div3 = udiv i32 27648000, %3
  %base4 = getelementptr inbounds %struct.gk104_volt, ptr %base, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %base4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base4, align 4
  %sub = sub i32 %uv, %5
  %mul = mul i32 %sub, %div3
  %pwm_range = getelementptr inbounds %struct.gk104_volt, ptr %base, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %pwm_range to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pwm_range, align 4
  %add = add i32 %7, -1
  %sub5 = add i32 %add, %mul
  %div7 = udiv i32 %sub5, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 131904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %div3) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %or = or i32 %div7, -2147483648
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %11, i32 131908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %or) #5, !srcloc !32
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk104.c", i32 127, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gk104_volt_new._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gk104_volt_new._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk104.c", i32 134, i32 10}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk104.c", i32 136, i32 10}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk104.c", i32 138, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @gk104_volt_new._entry.7, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @gk104_volt_new._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @gk104_volt_gpio, !18, !"gk104_volt_gpio", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk104.c", i32 90, i32 4}
!19 = !{ptr @gk104_volt_pwm, !20, !"gk104_volt_pwm", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk104.c", i32 85, i32 1}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"auto-init"}
!31 = !{i64 2156231411}
!32 = !{i64 5386192}
!33 = !{i64 2156231805}
!34 = !{i64 5386610}
!35 = !{i64 2156228529}
!36 = !{i64 2156228911}
!37 = !{i64 2156230584}
!38 = !{i64 2156231002}

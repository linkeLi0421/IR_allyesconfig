; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/core/firmware.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/firmware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvidia/%s/%s-%d.bin\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvidia/%s/%s.bin\00", [47 x i8] zeroinitializer }, align 32
@nvkm_firmware_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 94, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: firmware \22%s\22 loaded - %zu byte(s)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_firmware_get\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/nouveau/nvkm/core/firmware.c\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_firmware_get._entry_ptr = internal global ptr @nvkm_firmware_get._entry, section ".printk_index", align 4
@nvkm_firmware_get._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 98, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: firmware \22%s\22 unavailable\0A\00", [33 x i8] zeroinitializer }, align 32
@nvkm_firmware_get._entry_ptr.10 = internal global ptr @nvkm_firmware_get._entry.8, section ".printk_index", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 32, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 88, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 90, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 93, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [48 x i8] c"../drivers/gpu/drm/nouveau/nvkm/core/firmware.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 98, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @nvkm_firmware_get._entry, ptr @nvkm_firmware_get._entry.8, ptr @nvkm_firmware_get._entry_ptr, ptr @nvkm_firmware_get._entry_ptr.10, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_firmware_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_firmware_get._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_firmware_load_name(ptr noundef %subdev, ptr noundef %base, ptr noundef %name, i32 noundef %ver, ptr noundef %pfw) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %path) #8
  %0 = call ptr @memset(ptr %path, i32 255, i32 64)
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %path, i32 noundef 64, ptr noundef nonnull @.str, ptr noundef %base, ptr noundef %name)
  %call2 = call i32 @nvkm_firmware_get(ptr noundef %subdev, ptr noundef nonnull %path, i32 noundef %ver, ptr noundef %pfw)
  %1 = call i32 @llvm.smin.i32(i32 %call2, i32 0)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %path) #8
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_firmware_get(ptr noundef %subdev, ptr noundef %fwname, i32 noundef %ver, ptr noundef %fw) local_unnamed_addr #0 align 64 {
entry:
  %f = alloca [64 x i8], align 1
  %cname = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %f) #8
  %2 = call ptr @memset(ptr %f, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cname) #8
  %3 = getelementptr inbounds [16 x i8], ptr %cname, i32 0, i32 15
  %chip = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 14
  %4 = call ptr @memset(ptr %cname, i32 255, i32 16)
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call = call ptr @strncpy(ptr noundef nonnull %cname, ptr noundef %8, i32 noundef 16)
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  %call3 = call i32 @strlen(ptr noundef nonnull %cname) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not61 = icmp eq i32 %call3, 0
  br i1 %tobool.not61, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %i.062 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %call3, %entry.while.body_crit_edge ]
  %dec = add i32 %i.062, -1
  %arrayidx4 = getelementptr [16 x i8], ptr %cname, i32 0, i32 %dec
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4, align 1
  %conv.i = zext i8 %11 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.not.i = icmp eq i8 %14, 0
  %sub.i = add i8 %11, 32
  %spec.select.i = select i1 %cmp.not.i, i8 %11, i8 %sub.i
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.select.i, ptr %arrayidx4, align 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ver)
  %cmp.not = icmp eq i32 %ver, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %f, i32 noundef 64, ptr noundef nonnull @.str.1, ptr noundef nonnull %cname, ptr noundef %fwname, i32 noundef %ver)
  br label %if.end

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %f, i32 noundef 64, ptr noundef nonnull @.str.2, ptr noundef nonnull %cname, ptr noundef %fwname)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %call14 = call i32 @firmware_request_nowarn(ptr noundef %fw, ptr noundef nonnull %f, ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %18 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp17 = icmp ugt i32 %19, 3
  br i1 %tobool15.not, label %do.body, label %do.body29

do.body:                                          ; preds = %if.end
  br i1 %cmp17, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device1, align 4
  %dev21 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev21, align 8
  %name22 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  %24 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef %name22, ptr noundef nonnull %f, i32 noundef %27) #12
  br label %cleanup

do.body29:                                        ; preds = %if.end
  br i1 %cmp17, label %do.end36, label %do.body29.cleanup_crit_edge

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end36:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device1, align 4
  %dev38 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev38, align 8
  %name39 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.9, ptr noundef %name39, ptr noundef nonnull %f) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %do.body29.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ -2, %do.end36 ], [ -2, %do.body29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cname) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %f) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_firmware_load_blob(ptr noundef %subdev, ptr noundef %base, ptr noundef %name, i32 noundef %ver, ptr nocapture noundef %blob) local_unnamed_addr #0 align 64 {
entry:
  %path.i = alloca [64 x i8], align 1
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #8
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %path.i) #8
  %1 = call ptr @memset(ptr %path.i, i32 255, i32 64)
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %path.i, i32 noundef 64, ptr noundef nonnull @.str, ptr noundef %base, ptr noundef %name) #8
  %call2.i = call i32 @nvkm_firmware_get(ptr noundef %subdev, ptr noundef nonnull %path.i, i32 noundef %ver, ptr noundef nonnull %fw) #8
  %2 = call i32 @llvm.smin.i32(i32 %call2.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %path.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp = icmp sgt i32 %call2.i, -1
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %call1 = call ptr @kmemdup(ptr noundef %6, i32 noundef %8, i32 noundef 3264) #8
  %9 = ptrtoint ptr %blob to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %blob, align 4
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %size4 = getelementptr inbounds %struct.nvkm_blob, ptr %blob, i32 0, i32 1
  %14 = ptrtoint ptr %size4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %size4, align 4
  call void @release_firmware(ptr noundef %11) #8
  %15 = ptrtoint ptr %blob to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %blob, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.end7 ], [ -12, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_firmware_put(ptr noundef %fw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @release_firmware(ptr noundef %fw) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @firmware_request_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/firmware.c", i32 32, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/firmware.c", i32 88, i32 26}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/firmware.c", i32 90, i32 26}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/firmware.c", i32 93, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nvkm_firmware_get._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @nvkm_firmware_get._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/firmware.c", i32 98, i32 2}
!16 = !{ptr @nvkm_firmware_get._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @nvkm_firmware_get._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}

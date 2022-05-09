; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/i2c.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/i2c.c"
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
%struct.dcb_i2c_entry = type { i32, i8, i8, i8, i8 }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.133 }
%struct.anon.133 = type { i8, i8, i8, i8, i8 }

@dcb_i2c_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 41, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: ccb %02x not supported\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dcb_i2c_table\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/bios/i2c.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dcb_i2c_table._entry_ptr = internal global ptr @dcb_i2c_table._entry, section ".printk_index", align 4
@dcb_i2c_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 130, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: unknown i2c type %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dcb_i2c_parse\00", [18 x i8] zeroinitializer }, align 32
@dcb_i2c_parse._entry_ptr = internal global ptr @dcb_i2c_parse._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 4, i64 5, i64 6, i64 128, i64 255]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 41, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/i2c.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 130, i32 4 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @dcb_i2c_parse._entry, ptr @dcb_i2c_parse._entry_ptr, ptr @dcb_i2c_table._entry, ptr @dcb_i2c_table._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcb_i2c_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcb_i2c_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_i2c_table(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @dcb_table(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %if.then

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %1)
  %cmp = icmp ugt i8 %1, 20
  br i1 %cmp, label %if.end, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.end:                                           ; preds = %if.then
  %conv3 = zext i16 %call to i32
  %add = add nuw nsw i32 %conv3, 2
  %call4 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add) #4
  %2 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %.pr = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %.pr)
  %cmp6 = icmp ugt i8 %.pr, 47
  br i1 %cmp6, label %if.then8, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add10 = add nuw nsw i32 %conv3, 4
  %call11 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add10) #4
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end.if.end13_crit_edge
  %i2c.1 = phi i16 [ %call11, %if.then8 ], [ %call4, %if.end.if.end13_crit_edge ]
  %conv14 = zext i16 %i2c.1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %i2c.1)
  %tobool15.not = icmp eq i16 %i2c.1, 0
  br i1 %tobool15.not, label %if.end13.if.else_crit_edge, label %land.lhs.true

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %if.end13
  %3 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ver, align 1
  %conv16 = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %4)
  %cmp17 = icmp ugt i8 %4, 65
  br i1 %cmp17, label %do.body, label %land.lhs.true31.critedge

do.body:                                          ; preds = %land.lhs.true
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %5 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp20 = icmp ugt i32 %6, 1
  br i1 %cmp20, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %conv16) #7
  br label %cleanup

land.lhs.true31.critedge:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %4)
  %cmp33 = icmp ugt i8 %4, 47
  br i1 %cmp33, label %if.then35, label %land.lhs.true31.critedge.if.else_crit_edge

land.lhs.true31.critedge.if.else_crit_edge:       ; preds = %land.lhs.true31.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then35:                                        ; preds = %land.lhs.true31.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %call38 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv14) #4
  %11 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call38, ptr %ver, align 1
  %add40 = add nuw nsw i32 %conv14, 1
  %call41 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add40) #4
  %12 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call41, ptr %hdr, align 1
  %add43 = add nuw nsw i32 %conv14, 2
  %call44 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add43) #4
  %13 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call44, ptr %cnt, align 1
  %add46 = add nuw nsw i32 %conv14, 3
  %call47 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add46) #4
  br label %if.end48

if.else:                                          ; preds = %land.lhs.true31.critedge.if.else_crit_edge, %if.end13.if.else_crit_edge, %if.then.if.else_crit_edge, %entry.if.else_crit_edge
  %i2c.187 = phi i16 [ 0, %if.end13.if.else_crit_edge ], [ %i2c.1, %land.lhs.true31.critedge.if.else_crit_edge ], [ 0, %entry.if.else_crit_edge ], [ 0, %if.then.if.else_crit_edge ]
  %14 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hdr, align 1
  %15 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 16, ptr %cnt, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then35
  %i2c.186 = phi i16 [ %i2c.187, %if.else ], [ %i2c.1, %if.then35 ]
  %storemerge = phi i8 [ 4, %if.else ], [ %call47, %if.then35 ]
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %storemerge, ptr %len, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i16 [ %i2c.186, %if.end48 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_i2c_entry(ptr noundef %bios, i8 noundef zeroext %idx, ptr noundef %ver, ptr noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %hdr = alloca i8, align 1
  %cnt = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #4
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %hdr, align 1, !annotation !22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #4
  %1 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %cnt, align 1, !annotation !22
  %call = call zeroext i16 @dcb_i2c_table(ptr noundef %bios, ptr noundef %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef %len)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %idx)
  %cmp = icmp ugt i8 %3, %idx
  br i1 %cmp, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %conv1 = zext i8 %idx to i16
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdr, align 1
  %conv5 = zext i8 %5 to i16
  %add = add i16 %call, %conv5
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 1
  %conv7 = zext i8 %7 to i16
  %mul = mul nuw i16 %conv7, %conv1
  %add8 = add i16 %add, %mul
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %add8, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #4
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dcb_i2c_parse(ptr noundef %bios, i8 noundef zeroext %idx, ptr nocapture noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %hdr.i = alloca i8, align 1
  %cnt.i = alloca i8, align 1
  %ver = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #4
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ver, align 1, !annotation !22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #4
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %len, align 1, !annotation !22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i) #4
  %2 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %hdr.i, align 1, !annotation !22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i) #4
  %3 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %cnt.i, align 1, !annotation !22
  %call.i = call zeroext i16 @dcb_i2c_table(ptr noundef %bios, ptr noundef nonnull %ver, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cnt.i, ptr noundef nonnull %len) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %entry.dcb_i2c_entry.exit.thread_crit_edge, label %land.lhs.true.i

entry.dcb_i2c_entry.exit.thread_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %dcb_i2c_entry.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cnt.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %idx)
  %cmp.i = icmp ugt i8 %5, %idx
  br i1 %cmp.i, label %dcb_i2c_entry.exit, label %land.lhs.true.i.dcb_i2c_entry.exit.thread_crit_edge

land.lhs.true.i.dcb_i2c_entry.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dcb_i2c_entry.exit.thread

dcb_i2c_entry.exit.thread:                        ; preds = %land.lhs.true.i.dcb_i2c_entry.exit.thread_crit_edge, %entry.dcb_i2c_entry.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #4
  br label %if.end140

dcb_i2c_entry.exit:                               ; preds = %land.lhs.true.i
  %conv1.i = zext i8 %idx to i16
  %6 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hdr.i, align 1
  %conv5.i = zext i8 %7 to i16
  %add.i = add i16 %call.i, %conv5.i
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %len, align 1
  %conv7.i = zext i8 %9 to i16
  %mul.i = mul nuw i16 %conv7.i, %conv1.i
  %add8.i = add i16 %add.i, %mul.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add8.i)
  %tobool.not = icmp eq i16 %add8.i, 0
  br i1 %tobool.not, label %dcb_i2c_entry.exit.if.end140_crit_edge, label %if.then

dcb_i2c_entry.exit.if.end140_crit_edge:           ; preds = %dcb_i2c_entry.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end140

if.then:                                          ; preds = %dcb_i2c_entry.exit
  %10 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %11)
  %cmp = icmp ugt i8 %11, 64
  br i1 %cmp, label %if.then3, label %if.else18

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %conv4 = zext i16 %add8.i to i32
  %call5 = call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %conv4) #4
  %12 = and i32 %call5, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %12)
  %13 = icmp eq i32 %12, 1023
  %storemerge302 = select i1 %13, i32 255, i32 128
  br label %if.end41

if.else18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %11)
  %cmp20 = icmp ugt i8 %11, 47
  %conv23 = zext i16 %add8.i to i32
  %add = add nuw nsw i32 %conv23, 3
  %call24 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add) #4
  br i1 %cmp20, label %if.then22, label %if.else27

if.then22:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #6
  %conv25 = zext i8 %call24 to i32
  br label %if.end41

if.else27:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #6
  %14 = and i8 %call24, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %14)
  %cmp35 = icmp eq i8 %14, 7
  %narrow = select i1 %cmp35, i8 -1, i8 %14
  %spec.store.select = zext i8 %narrow to i32
  br label %if.end41

if.end41:                                         ; preds = %if.else27, %if.then22, %if.then3
  %spec.store.select.sink = phi i32 [ %spec.store.select, %if.else27 ], [ %conv25, %if.then22 ], [ %storemerge302, %if.then3 ]
  %15 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.store.select.sink, ptr %info, align 4
  %drive = getelementptr inbounds %struct.dcb_i2c_entry, ptr %info, i32 0, i32 1
  %share = getelementptr inbounds %struct.dcb_i2c_entry, ptr %info, i32 0, i32 3
  %auxch = getelementptr inbounds %struct.dcb_i2c_entry, ptr %info, i32 0, i32 4
  %16 = ptrtoint ptr %drive to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %drive, align 4
  %trunc = trunc i32 %spec.store.select.sink to i8
  %17 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %do.body [
    i8 0, label %sw.bb
    i8 4, label %sw.bb51
    i8 5, label %sw.bb56
    i8 6, label %sw.bb79
    i8 -128, label %sw.bb97
    i8 -1, label %if.end41.cleanup_crit_edge
  ]

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %sense = getelementptr inbounds %struct.dcb_i2c_entry, ptr %info, i32 0, i32 2
  %conv43 = zext i16 %add8.i to i32
  %call45 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv43) #4
  %18 = ptrtoint ptr %drive to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call45, ptr %drive, align 4
  %add48 = add nuw nsw i32 %conv43, 1
  %call49 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add48) #4
  %19 = ptrtoint ptr %sense to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call49, ptr %sense, align 1
  br label %cleanup

sw.bb51:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %conv52 = zext i16 %add8.i to i32
  %add53 = add nuw nsw i32 %conv52, 1
  %call54 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add53) #4
  %20 = ptrtoint ptr %drive to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call54, ptr %drive, align 4
  br label %cleanup

sw.bb56:                                          ; preds = %if.end41
  %conv57 = zext i16 %add8.i to i32
  %call59 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv57) #4
  %21 = and i8 %call59, 15
  %22 = ptrtoint ptr %drive to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %drive, align 4
  %add65 = add nuw nsw i32 %conv57, 1
  %call66 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add65) #4
  %23 = and i8 %call66, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool69.not = icmp eq i8 %23, 0
  br i1 %tobool69.not, label %sw.bb56.cleanup_crit_edge, label %if.then70

sw.bb56.cleanup_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then70:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #6
  %call73 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add65) #4
  %24 = lshr i8 %call73, 1
  %25 = ptrtoint ptr %share to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %share, align 2
  br label %cleanup

sw.bb79:                                          ; preds = %if.end41
  %conv80 = zext i16 %add8.i to i32
  %call82 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv80) #4
  %26 = and i8 %call82, 15
  %27 = ptrtoint ptr %auxch to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %auxch, align 1
  %add88 = add nuw nsw i32 %conv80, 1
  %call89 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add88) #4
  %28 = and i8 %call89, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool92.not = icmp eq i8 %28, 0
  br i1 %tobool92.not, label %sw.bb79.cleanup_crit_edge, label %if.then93

sw.bb79.cleanup_crit_edge:                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then93:                                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %auxch to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %auxch, align 1
  %31 = ptrtoint ptr %share to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %share, align 2
  br label %cleanup

sw.bb97:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %conv98 = zext i16 %add8.i to i32
  %call100 = call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %conv98) #4
  %32 = trunc i16 %call100 to i8
  %conv104 = and i8 %32, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %conv104)
  %cmp108 = icmp eq i8 %conv104, 31
  %spec.select = select i1 %cmp108, i8 -1, i8 %conv104
  %33 = ptrtoint ptr %drive to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %spec.select, ptr %drive, align 4
  %call115 = call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %conv98) #4
  %34 = lshr i16 %call115, 5
  %35 = trunc i16 %34 to i8
  %conv119 = and i8 %35, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %conv119)
  %cmp123 = icmp eq i8 %conv119, 31
  %storemerge300 = select i1 %cmp123, i8 -1, i8 %conv119
  %36 = ptrtoint ptr %auxch to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %storemerge300, ptr %auxch, align 1
  %37 = ptrtoint ptr %share to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %storemerge300, ptr %share, align 2
  br label %cleanup

do.body:                                          ; preds = %if.end41
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %38 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp131 = icmp ugt i32 %39, 1
  br i1 %cmp131, label %do.end, label %do.body.if.end136_crit_edge

do.body.if.end136_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end136

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %40 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %43, ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %spec.store.select.sink) #7
  br label %if.end136

if.end136:                                        ; preds = %do.end, %do.body.if.end136_crit_edge
  %44 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 255, ptr %info, align 4
  br label %cleanup

if.end140:                                        ; preds = %dcb_i2c_entry.exit.if.end140_crit_edge, %dcb_i2c_entry.exit.thread
  %bmp_offset = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 5
  %45 = ptrtoint ptr %bmp_offset to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bmp_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool141.not = icmp ne i32 %46, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %idx)
  %cmp144 = icmp ult i8 %idx, 2
  %or.cond303 = and i1 %cmp144, %tobool141.not
  br i1 %or.cond303, label %if.then146, label %if.end140.cleanup_crit_edge

if.end140.cleanup_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then146:                                       ; preds = %if.end140
  %add148 = add i32 %46, 5
  %call149 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add148) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %call149)
  %cmp151 = icmp ult i8 %call149, 4
  br i1 %cmp151, label %if.then146.if.end158_crit_edge, label %if.else154

if.then146.if.end158_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end158

if.else154:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %bmp_offset to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bmp_offset, align 4
  %conv157 = add i32 %48, 54
  %phi.cast = and i32 %conv157, 65535
  br label %if.end158

if.end158:                                        ; preds = %if.else154, %if.then146.if.end158_crit_edge
  %ent.0 = phi i32 [ %phi.cast, %if.else154 ], [ 72, %if.then146.if.end158_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %idx)
  %cmp160 = icmp eq i8 %idx, 0
  br i1 %cmp160, label %if.then162, label %if.then185

if.then162:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #6
  %add164 = add nuw nsw i32 %ent.0, 4
  %call165 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add164) #4
  %drive166 = getelementptr inbounds %struct.dcb_i2c_entry, ptr %info, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call165)
  %tobool168.not = icmp eq i8 %call165, 0
  %spec.select304 = select i1 %tobool168.not, i8 63, i8 %call165
  %49 = ptrtoint ptr %drive166 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %spec.select304, ptr %drive166, align 4
  %add173 = add nuw nsw i32 %ent.0, 5
  %call174 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add173) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call174)
  %tobool177.not = icmp eq i8 %call174, 0
  %spec.store.select306 = select i1 %tobool177.not, i8 62, i8 %call174
  br label %if.end205

if.then185:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #6
  %add187 = add nuw nsw i32 %ent.0, 6
  %call188 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add187) #4
  %drive189 = getelementptr inbounds %struct.dcb_i2c_entry, ptr %info, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call188)
  %tobool191.not = icmp eq i8 %call188, 0
  %spec.select305 = select i1 %tobool191.not, i8 55, i8 %call188
  %50 = ptrtoint ptr %drive189 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %spec.select305, ptr %drive189, align 4
  %add196 = add nuw nsw i32 %ent.0, 7
  %call197 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add196) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call197)
  %tobool200.not = icmp eq i8 %call197, 0
  %spec.store.select307 = select i1 %tobool200.not, i8 54, i8 %call197
  br label %if.end205

if.end205:                                        ; preds = %if.then185, %if.then162
  %spec.store.select307.sink = phi i8 [ %spec.store.select306, %if.then162 ], [ %spec.store.select307, %if.then185 ]
  %51 = getelementptr inbounds %struct.dcb_i2c_entry, ptr %info, i32 0, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %spec.store.select307.sink, ptr %51, align 1
  %53 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %info, align 4
  %share207 = getelementptr inbounds %struct.dcb_i2c_entry, ptr %info, i32 0, i32 3
  %54 = ptrtoint ptr %share207 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %share207, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end205, %if.end140.cleanup_crit_edge, %if.end136, %sw.bb97, %if.then93, %sw.bb79.cleanup_crit_edge, %if.then70, %sw.bb56.cleanup_crit_edge, %sw.bb51, %sw.bb, %if.end41.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end136 ], [ 0, %sw.bb97 ], [ 0, %sw.bb51 ], [ 0, %sw.bb ], [ 0, %if.end205 ], [ 0, %if.then70 ], [ 0, %sw.bb56.cleanup_crit_edge ], [ 0, %if.then93 ], [ 0, %sw.bb79.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ], [ -2, %if.end140.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/i2c.c", i32 41, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dcb_i2c_table._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @dcb_i2c_table._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/i2c.c", i32 130, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @dcb_i2c_parse._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @dcb_i2c_parse._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"auto-init"}

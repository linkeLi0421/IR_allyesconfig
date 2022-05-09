; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/M0203.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/M0203.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_M0203T = type { i8, i16 }
%struct.nvbios_M0203E = type { i8, i8, i8 }
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

@nvbios_M0203Em._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 112, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: M0203T not found\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvbios_M0203Em\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/bios/M0203.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvbios_M0203Em._entry_ptr = internal global ptr @nvbios_M0203Em._entry, section ".printk_index", align 4
@nvbios_M0203Em._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 123, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: M0203T type %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@nvbios_M0203Em._entry_ptr.7 = internal global ptr @nvbios_M0203Em._entry.5, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 112, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/M0203.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 123, i32 4 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @nvbios_M0203Em._entry, ptr @nvbios_M0203Em._entry.5, ptr @nvbios_M0203Em._entry_ptr, ptr @nvbios_M0203Em._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvbios_M0203Em._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvbios_M0203Em._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0203Te(ptr noundef %bios, ptr nocapture noundef writeonly %ver, ptr nocapture noundef writeonly %hdr, ptr nocapture noundef writeonly %cnt, ptr nocapture noundef writeonly %len) local_unnamed_addr #0 align 64 {
entry:
  %bit_M = alloca %struct.bit_entry, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bit_M) #4
  %0 = getelementptr inbounds %struct.bit_entry, ptr %bit_M, i32 0, i32 2
  %1 = getelementptr inbounds %struct.bit_entry, ptr %bit_M, i32 0, i32 3
  %2 = call ptr @memset(ptr %bit_M, i32 255, i32 6)
  %call = call i32 @bit_entry(ptr noundef %bios, i8 noundef zeroext 77, ptr noundef nonnull %bit_M) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds %struct.bit_entry, ptr %bit_M, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp eq i8 %5, 2
  br i1 %cmp, label %land.lhs.true, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %7)
  %cmp3 = icmp ugt i16 %7, 4
  br i1 %cmp3, label %if.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 2
  %conv6 = zext i16 %9 to i32
  %add = add nuw nsw i32 %conv6, 3
  %call7 = call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add) #4
  %conv8 = zext i16 %call7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call7)
  %tobool9.not = icmp eq i16 %call7, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then10:                                        ; preds = %if.end
  %call12 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv8) #4
  %10 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call12, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %call12)
  %cond = icmp eq i8 %call12, 16
  br i1 %cond, label %sw.bb, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  %add14 = add nuw nsw i32 %conv8, 1
  %call15 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add14) #4
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call15, ptr %hdr, align 1
  %add16 = add nuw nsw i32 %conv8, 2
  %call17 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add16) #4
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call17, ptr %len, align 1
  %add18 = add nuw nsw i32 %conv8, 3
  %call19 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add18) #4
  %13 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call19, ptr %cnt, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.then10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv8, %sw.bb ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then10.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_M) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0203Tp(ptr noundef %bios, ptr nocapture noundef %ver, ptr nocapture noundef writeonly %hdr, ptr nocapture noundef writeonly %cnt, ptr nocapture noundef writeonly %len, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvbios_M0203Te(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len)
  %0 = ptrtoint ptr %info to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 0, ptr %info, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %1 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %2)
  %cond13 = icmp eq i8 %2, 16
  %cond = select i1 %tobool.not, i1 %cond13, i1 false
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %call, 4
  %call2 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add) #4
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %call2, ptr %info, align 2
  %add3 = add i32 %call, 5
  %call4 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add3) #4
  %pointer = getelementptr inbounds %struct.nvbios_M0203T, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %pointer to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %call4, ptr %pointer, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0203Ee(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef writeonly %ver, ptr nocapture noundef %hdr) local_unnamed_addr #0 align 64 {
entry:
  %cnt = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #4
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %cnt, align 1, !annotation !21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #4
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %len, align 1, !annotation !21
  %call = call i32 @nvbios_M0203Te(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %idx)
  %cmp = icmp sgt i32 %conv, %idx
  br i1 %cmp, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdr, align 1
  %conv2 = zext i8 %5 to i32
  %add = add i32 %call, %conv2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 1
  %conv3 = zext i8 %7 to i32
  %mul = mul i32 %conv3, %idx
  %add4 = add i32 %add, %mul
  store i8 %7, ptr %hdr, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add4, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0203Ep(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef %ver, ptr nocapture noundef %hdr, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  %cnt.i = alloca i8, align 1
  %len.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i) #4
  %0 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %cnt.i, align 1, !annotation !21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len.i) #4
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %len.i, align 1, !annotation !21
  %call.i = call i32 @nvbios_M0203Te(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef nonnull %cnt.i, ptr noundef nonnull %len.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.nvbios_M0203Ee.exit.thread_crit_edge, label %land.lhs.true.i

entry.nvbios_M0203Ee.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_M0203Ee.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt.i, align 1
  %conv.i = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %idx)
  %cmp.i = icmp sgt i32 %conv.i, %idx
  br i1 %cmp.i, label %nvbios_M0203Ee.exit, label %land.lhs.true.i.nvbios_M0203Ee.exit.thread_crit_edge

land.lhs.true.i.nvbios_M0203Ee.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_M0203Ee.exit.thread

nvbios_M0203Ee.exit.thread:                       ; preds = %land.lhs.true.i.nvbios_M0203Ee.exit.thread_crit_edge, %entry.nvbios_M0203Ee.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #4
  %4 = call ptr @memset(ptr %info, i32 0, i32 3)
  br label %cleanup

nvbios_M0203Ee.exit:                              ; preds = %land.lhs.true.i
  %5 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hdr, align 1
  %conv2.i = zext i8 %6 to i32
  %add.i = add i32 %call.i, %conv2.i
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len.i, align 1
  %conv3.i = zext i8 %8 to i32
  %mul.i = mul i32 %conv3.i, %idx
  %add4.i = add i32 %add.i, %mul.i
  store i8 %8, ptr %hdr, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #4
  %9 = call ptr @memset(ptr %info, i32 0, i32 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add4.i)
  %tobool.not = icmp ne i32 %add4.i, 0
  %10 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %11)
  %cond28 = icmp eq i8 %11, 16
  %cond = select i1 %tobool.not, i1 %cond28, i1 false
  br i1 %cond, label %sw.bb, label %nvbios_M0203Ee.exit.cleanup_crit_edge

nvbios_M0203Ee.exit.cleanup_crit_edge:            ; preds = %nvbios_M0203Ee.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %nvbios_M0203Ee.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add4.i) #4
  %12 = and i8 %call2, 15
  %13 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %info, align 1
  %call6 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add4.i) #4
  %14 = lshr i8 %call6, 4
  %strap = getelementptr inbounds %struct.nvbios_M0203E, ptr %info, i32 0, i32 1
  %15 = ptrtoint ptr %strap to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %strap, align 1
  %add11 = add i32 %add4.i, 1
  %call12 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add11) #4
  %16 = and i8 %call12, 15
  %group = getelementptr inbounds %struct.nvbios_M0203E, ptr %info, i32 0, i32 2
  %17 = ptrtoint ptr %group to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %group, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %nvbios_M0203Ee.exit.cleanup_crit_edge, %nvbios_M0203Ee.exit.thread
  %retval.0 = phi i32 [ %add4.i, %sw.bb ], [ 0, %nvbios_M0203Ee.exit.cleanup_crit_edge ], [ 0, %nvbios_M0203Ee.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0203Em(ptr noundef %bios, i8 noundef zeroext %ramcfg, ptr nocapture noundef %ver, ptr nocapture noundef %hdr, ptr nocapture noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %cnt = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #4
  %call.i = call i32 @nvbios_M0203Te(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %1)
  %cond13.i = icmp eq i8 %1, 16
  %cond.i = select i1 %tobool.not.i, i1 %cond13.i, i1 false
  br i1 %cond.i, label %nvbios_M0203Tp.exit.thread, label %nvbios_M0203Tp.exit

nvbios_M0203Tp.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.i = add i32 %call.i, 4
  %call2.i = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add.i) #4
  %add3.i = add i32 %call.i, 5
  %call4.i = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add3.i) #4
  br label %while.cond.preheader

nvbios_M0203Tp.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body, label %nvbios_M0203Tp.exit.while.cond.preheader_crit_edge

nvbios_M0203Tp.exit.while.cond.preheader_crit_edge: ; preds = %nvbios_M0203Tp.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %nvbios_M0203Tp.exit.while.cond.preheader_crit_edge, %nvbios_M0203Tp.exit.thread
  %M0203T.sroa.0.053 = phi i8 [ %call2.i, %nvbios_M0203Tp.exit.thread ], [ 0, %nvbios_M0203Tp.exit.while.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %M0203T.sroa.0.053)
  %cond = icmp eq i8 %M0203T.sroa.0.053, 0
  %strap = getelementptr inbounds %struct.nvbios_M0203E, ptr %info, i32 0, i32 1
  br label %while.cond

do.body:                                          ; preds = %nvbios_M0203Tp.exit
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef %name) #7
  br label %cleanup

while.cond:                                       ; preds = %sw.bb.while.cond_crit_edge, %while.cond.preheader
  %idx.0 = phi i8 [ %inc, %sw.bb.while.cond_crit_edge ], [ -1, %while.cond.preheader ]
  %inc = add i8 %idx.0, 1
  %conv = zext i8 %inc to i32
  %call7 = tail call i32 @nvbios_M0203Ep(ptr noundef %bios, i32 noundef %conv, ptr noundef %ver, ptr noundef %hdr, ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body:                                       ; preds = %while.cond
  br i1 %cond, label %sw.bb, label %do.body16

sw.bb:                                            ; preds = %while.body
  %8 = ptrtoint ptr %strap to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %strap, align 1
  %cmp12.not = icmp eq i8 %9, %ramcfg
  br i1 %cmp12.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.while.cond_crit_edge

sw.bb.while.cond_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body16:                                        ; preds = %while.body
  %debug18 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %10 = ptrtoint ptr %debug18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp19 = icmp ugt i32 %11, 1
  br i1 %cmp19, label %do.end24, label %do.body16.cleanup_crit_edge

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end24:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  %conv9.le = zext i8 %M0203T.sroa.0.053 to i32
  %device25 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %12 = ptrtoint ptr %device25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device25, align 4
  %dev26 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev26, align 8
  %name27 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef %name27, i32 noundef %conv9.le) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %do.body16.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.end24 ], [ 0, %do.body16.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ], [ %call7, %sw.bb.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #4
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/M0203.c", i32 112, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvbios_M0203Em._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvbios_M0203Em._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/M0203.c", i32 123, i32 4}
!10 = !{ptr @nvbios_M0203Em._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nvbios_M0203Em._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}

; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/nv50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_mxm = type { %struct.nvkm_subdev, i32, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
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
%struct.context = type { ptr, %struct.mxms_odev }
%struct.mxms_odev = type { i8, i8, i8, i8 }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.83 }
%struct.anon.83 = type { i8, i8, i8, i8, i8 }

@mxm_dcb_sanitise._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 195, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: unsupported DCB version\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxm_dcb_sanitise\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mxm/nv50.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxm_dcb_sanitise._entry_ptr = internal global ptr @mxm_dcb_sanitise._entry, section ".printk_index", align 4
@mxm_dcb_sanitise_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 107, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: disable %d: %08x %08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxm_dcb_sanitise_entry\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mxm_dcb_sanitise_entry._entry_ptr = internal global ptr @mxm_dcb_sanitise_entry._entry, section ".printk_index", align 4
@mxm_show_unmatched._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 183, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: unmatched output device %016llx\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxm_show_unmatched\00", [45 x i8] zeroinitializer }, align 32
@mxm_show_unmatched._entry_ptr = internal global ptr @mxm_show_unmatched._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 7, i64 14]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 195, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 106, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/nv50.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 183, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @mxm_dcb_sanitise._entry, ptr @mxm_dcb_sanitise._entry_ptr, ptr @mxm_dcb_sanitise_entry._entry, ptr @mxm_dcb_sanitise_entry._entry_ptr, ptr @mxm_show_unmatched._entry, ptr @mxm_show_unmatched._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxm_dcb_sanitise._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxm_dcb_sanitise_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxm_show_unmatched._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_mxm_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pmxm) local_unnamed_addr #0 align 64 {
entry:
  %ver.i = alloca i8, align 1
  %hdr.i = alloca i8, align 1
  %cnt.i = alloca i8, align 1
  %len.i = alloca i8, align 1
  %mxm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mxm) #4
  %0 = ptrtoint ptr %mxm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mxm, align 4, !annotation !28
  %call = call i32 @nvkm_mxm_new_(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %mxm) #4
  %1 = ptrtoint ptr %mxm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mxm, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %pmxm to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %pmxm, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %action = getelementptr inbounds %struct.nvkm_mxm, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %action, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  %bios2.i = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %bios2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bios2.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver.i) #4
  %10 = ptrtoint ptr %ver.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %ver.i, align 1, !annotation !28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i) #4
  %11 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %hdr.i, align 1, !annotation !28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i) #4
  %12 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %cnt.i, align 1, !annotation !28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len.i) #4
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %len.i, align 1, !annotation !28
  %call.i = call zeroext i16 @dcb_table(ptr noundef %9, ptr noundef nonnull %ver.i, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cnt.i, ptr noundef nonnull %len.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %cmp.i = icmp eq i16 %call.i, 0
  br i1 %cmp.i, label %if.then5.do.body.i_crit_edge, label %lor.lhs.false.i

if.then5.do.body.i_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %if.then5
  %14 = ptrtoint ptr %ver.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ver.i, align 1
  %16 = and i8 %15, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %16)
  %switch.i = icmp eq i8 %16, 64
  br i1 %switch.i, label %if.end17.i, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %if.then5.do.body.i_crit_edge
  %debug.i = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 5
  %17 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp10.i = icmp ugt i32 %18, 1
  br i1 %cmp10.i, label %do.end.i, label %do.body.i.mxm_dcb_sanitise.exit_crit_edge

do.body.i.mxm_dcb_sanitise.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mxm_dcb_sanitise.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef %name.i) #7
  br label %mxm_dcb_sanitise.exit

if.end17.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %call18.i = call i32 @dcb_outp_foreach(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @mxm_dcb_sanitise_entry) #4
  %call19.i = call zeroext i1 @mxms_foreach(ptr noundef %2, i8 noundef zeroext 1, ptr noundef nonnull @mxm_show_unmatched, ptr noundef null) #4
  br label %mxm_dcb_sanitise.exit

mxm_dcb_sanitise.exit:                            ; preds = %if.end17.i, %do.end.i, %do.body.i.mxm_dcb_sanitise.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver.i) #4
  br label %cleanup

cleanup:                                          ; preds = %mxm_dcb_sanitise.exit, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mxm) #4
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mxm_new_(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_outp_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxm_dcb_sanitise_entry(ptr noundef %bios, ptr noundef %data, i32 noundef %idx, i16 noundef zeroext %pdcb) #0 align 64 {
entry:
  %ctx = alloca %struct.context, align 4
  %ver = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctx) #4
  %0 = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 1
  %1 = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 1, i32 3
  %data1 = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 2
  %3 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data1, align 4
  %conv = zext i16 %pdcb to i32
  %add.ptr = getelementptr i8, ptr %4, i32 %conv
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %ctx, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #4
  %7 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %ver, align 1, !annotation !28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #4
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %len, align 1, !annotation !28
  %call = call zeroext i1 @mxms_foreach(ptr noundef %data, i8 noundef zeroext 1, ptr noundef nonnull @mxm_match_dcb, ptr noundef nonnull %ctx) #4
  br i1 %call, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %data, i32 0, i32 5
  %9 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp = icmp ugt i32 %10, 3
  br i1 %cmp, label %do.end, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %data, i32 0, i32 4
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %arrayidx7 = getelementptr i32, ptr %16, i32 1
  %19 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx7, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %idx, i32 noundef %18, i32 noundef %20) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body.if.end_crit_edge
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %or = or i32 %24, 15
  store i32 %or, ptr %22, align 4
  br label %cleanup

if.end12:                                         ; preds = %entry
  %25 = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 2
  %call14 = call zeroext i8 @mxm_ddc_map(ptr noundef %bios, i8 noundef zeroext %27) #4
  %28 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %and = and i32 %31, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and)
  %cmp17.not = icmp eq i32 %and, 6
  %32 = shl i8 %call14, 4
  %33 = and i8 %call14, -16
  %i2cidx.0 = select i1 %cmp17.not, i8 %33, i8 %32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %i2cidx.0)
  %cmp28.not = icmp eq i8 %i2cidx.0, -16
  br i1 %cmp28.not, label %if.end12.if.end38_crit_edge, label %if.then30

if.end12.if.end38_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then30:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %conv27 = zext i8 %i2cidx.0 to i32
  %and33 = and i32 %31, -241
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and33, ptr %29, align 4
  %35 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %or37 = or i32 %38, %conv27
  store i32 %or37, ptr %36, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then30, %if.end12.if.end38_crit_edge
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %40)
  %switch = icmp ult i8 %40, 2
  br i1 %switch, label %if.end38.sw.epilog_crit_edge, label %sw.default

if.end38.sw.epilog_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %2, align 1
  %call42 = call zeroext i8 @mxm_sor_map(ptr noundef %bios, i8 noundef zeroext %42) #4
  %43 = and i8 %call42, 48
  %44 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctx, align 4
  %arrayidx47 = getelementptr i32, ptr %45, i32 1
  %46 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx47, align 4
  %and48 = and i32 %47, -49
  store i32 %and48, ptr %arrayidx47, align 4
  %conv49 = zext i8 %43 to i32
  %48 = load ptr, ptr %ctx, align 4
  %arrayidx51 = getelementptr i32, ptr %48, i32 1
  %49 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx51, align 4
  %or52 = or i32 %50, %conv49
  store i32 %or52, ptr %arrayidx51, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end38.sw.epilog_crit_edge
  %51 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data1, align 4
  %53 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctx, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %and56 = lshr i32 %56, 12
  %57 = trunc i32 %and56 to i8
  %conv57 = and i8 %57, 15
  %call58 = call i32 @nvbios_connEe(ptr noundef %bios, i8 noundef zeroext %conv57, ptr noundef nonnull %ver, ptr noundef nonnull %len) #4
  %add.ptr59 = getelementptr i8, ptr %52, i32 %call58
  %58 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %add.ptr59, align 1
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %1, align 1
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i8 %61, label %sw.epilog.sw.epilog78_crit_edge [
    i8 1, label %sw.bb63
    i8 2, label %sw.bb67
    i8 3, label %sw.bb68
    i8 14, label %sw.bb69
    i8 7, label %sw.epilog.sw.bb73_crit_edge
  ]

sw.epilog.sw.bb73_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb73

sw.epilog.sw.epilog78_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog78

sw.bb63:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %63 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ctx, align 4
  %arrayidx65 = getelementptr i32, ptr %64, i32 1
  %65 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx65, align 4
  %or66 = or i32 %66, 4
  store i32 %or66, ptr %arrayidx65, align 4
  br label %sw.epilog78

sw.bb67:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog78

sw.bb68:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog78

sw.bb69:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ctx, align 4
  %arrayidx71 = getelementptr i32, ptr %68, i32 1
  %69 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx71, align 4
  %or72 = or i32 %70, 65536
  store i32 %or72, ptr %arrayidx71, align 4
  br label %sw.bb73

sw.bb73:                                          ; preds = %sw.bb69, %sw.epilog.sw.bb73_crit_edge
  %71 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ctx, align 4
  %arrayidx75 = getelementptr i32, ptr %72, i32 1
  %73 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx75, align 4
  %or76 = or i32 %74, 4
  store i32 %or76, ptr %arrayidx75, align 4
  br label %sw.epilog78

sw.epilog78:                                      ; preds = %sw.bb73, %sw.bb68, %sw.bb67, %sw.bb63, %sw.epilog.sw.epilog78_crit_edge
  %type.0 = phi i8 [ %59, %sw.epilog.sw.epilog78_crit_edge ], [ 71, %sw.bb73 ], [ 49, %sw.bb68 ], [ 97, %sw.bb67 ], [ %59, %sw.bb63 ]
  %call79 = call zeroext i16 @mxms_version(ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %call79)
  %cmp81 = icmp ugt i16 %call79, 767
  br i1 %cmp81, label %if.then83, label %sw.epilog78.cleanup_crit_edge

sw.epilog78.cleanup_crit_edge:                    ; preds = %sw.epilog78
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then83:                                        ; preds = %sw.epilog78
  call void @__sanitizer_cov_trace_pc() #6
  %75 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %type.0, ptr %add.ptr59, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then83, %sw.epilog78.cleanup_crit_edge, %if.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctx) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mxms_foreach(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mxm_show_unmatched(ptr noundef %mxm, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data, align 8
  %and = and i64 %1, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 240, i64 %and)
  %cmp.not = icmp eq i64 %and, 240
  br i1 %cmp.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2 = icmp ugt i32 %3, 2
  br i1 %cmp2, label %do.end, label %do.body.if.end7_crit_edge

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef %name, i64 noundef %1) #7
  br label %if.end7

if.end7:                                          ; preds = %do.end, %do.body.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mxm_match_dcb(ptr noundef %mxm, ptr noundef %data, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %bios1 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios1, align 8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %data, align 8
  %desc2 = getelementptr inbounds %struct.context, ptr %info, i32 0, i32 1
  tail call void @mxms_output_device(ptr noundef %mxm, ptr noundef %data, ptr noundef %desc2) #4
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and = and i32 %9, 15
  %10 = ptrtoint ptr %desc2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %desc2, align 4
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp.not = icmp eq i32 %and, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup59_crit_edge

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup59

if.end:                                           ; preds = %entry
  %and5 = and i64 %5, 224
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5)
  %cmp6.not = icmp eq i64 %and5, 0
  br i1 %cmp6.not, label %if.end.if.end33_crit_edge, label %if.then8

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then8:                                         ; preds = %if.end
  %dig_conn = getelementptr inbounds %struct.context, ptr %info, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %dig_conn to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dig_conn, align 1
  %call = tail call zeroext i8 @mxm_sor_map(ptr noundef %3, i8 noundef zeroext %13) #4
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %conv13 = zext i8 %call to i32
  %and14 = shl nuw i32 %conv13, 24
  %18 = xor i32 %17, %and14
  %19 = and i32 %18, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp15.not = icmp eq i32 %19, 0
  br i1 %cmp15.not, label %if.end18, label %if.then8.cleanup59_crit_edge

if.then8.cleanup59_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup59

if.end18:                                         ; preds = %if.then8
  %and20 = lshr i8 %call, 4
  %20 = and i8 %and20, 3
  %conv22 = zext i8 %20 to i32
  %arrayidx24 = getelementptr i32, ptr %15, i32 1
  %21 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx24, align 4
  %and25 = lshr i32 %22, 4
  %and27 = and i32 %and25, %conv22
  call void @__sanitizer_cov_trace_cmp4(i32 %and27, i32 %conv22)
  %cmp29.not = icmp eq i32 %and27, %conv22
  br i1 %cmp29.not, label %if.end18.if.end33_crit_edge, label %if.end18.cleanup59_crit_edge

if.end18.cleanup59_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup59

if.end18.if.end33_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.end33:                                         ; preds = %if.end18.if.end33_crit_edge, %if.end.if.end33_crit_edge
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data, align 1
  %25 = and i8 %24, 15
  store i8 %25, ptr %data, align 1
  %26 = ptrtoint ptr %desc2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %desc2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %27)
  %cmp41 = icmp eq i8 %27, 6
  br i1 %cmp41, label %land.lhs.true, label %if.end33.if.else_crit_edge

if.end33.if.else_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %if.end33
  %conn_type = getelementptr inbounds %struct.context, ptr %info, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %conn_type to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %conn_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %29)
  %cmp45 = icmp eq i8 %29, 6
  br i1 %cmp45, label %land.lhs.true47, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true47:                                  ; preds = %land.lhs.true
  %call48 = tail call zeroext i1 @mxms_foreach(ptr noundef %mxm, i8 noundef zeroext 1, ptr noundef nonnull @mxm_match_tmds_partner, ptr noundef %info) #4
  br i1 %call48, label %land.lhs.true47.if.end58_crit_edge, label %land.lhs.true47.if.else_crit_edge

land.lhs.true47.if.else_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true47.if.end58_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.else:                                          ; preds = %land.lhs.true47.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end33.if.else_crit_edge
  br label %if.end58

if.end58:                                         ; preds = %if.else, %land.lhs.true47.if.end58_crit_edge
  %.sink79 = phi i8 [ -16, %if.else ], [ 32, %land.lhs.true47.if.end58_crit_edge ]
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %data, align 1
  %32 = or i8 %31, %.sink79
  store i8 %32, ptr %data, align 1
  br label %cleanup59

cleanup59:                                        ; preds = %if.end58, %if.end18.cleanup59_crit_edge, %if.then8.cleanup59_crit_edge, %entry.cleanup59_crit_edge
  %retval.1 = phi i1 [ false, %if.end58 ], [ true, %if.end18.cleanup59_crit_edge ], [ true, %entry.cleanup59_crit_edge ], [ true, %if.then8.cleanup59_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mxm_ddc_map(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mxm_sor_map(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_connEe(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mxms_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxms_output_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mxm_match_tmds_partner(ptr noundef %mxm, ptr noundef %data, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %desc = alloca %struct.mxms_odev, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc) #4
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %desc, align 4
  call void @mxms_output_device(ptr noundef %mxm, ptr noundef %data, ptr noundef nonnull %desc) #4
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp = icmp eq i8 %2, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = getelementptr inbounds %struct.mxms_odev, ptr %desc, i32 0, i32 3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %dig_conn4 = getelementptr inbounds %struct.context, ptr %info, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %dig_conn4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dig_conn4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp6 = icmp eq i8 %5, %7
  br i1 %cmp6, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end ], [ false, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc) #4
  ret i1 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/nv50.c", i32 195, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mxm_dcb_sanitise._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mxm_dcb_sanitise._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/nv50.c", i32 106, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mxm_dcb_sanitise_entry._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @mxm_dcb_sanitise_entry._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/nv50.c", i32 183, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mxm_show_unmatched._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @mxm_show_unmatched._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}

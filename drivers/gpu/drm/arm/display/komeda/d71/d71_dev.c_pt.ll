; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c_pt.bc'
source_filename = "../drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.komeda_dev_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.komeda_format_caps = type { i32, i32, i32, i32, i32, i64 }
%struct.komeda_pipeline_funcs = type { ptr, ptr }
%struct.block_header = type { i32, i32, [9 x i32], [5 x i32] }
%struct.komeda_chip_info = type { i32, i32, i32, i32 }
%struct.komeda_dev = type { ptr, ptr, %struct.komeda_chip_info, %struct.komeda_format_caps_table, ptr, i32, %struct.mutex, i32, i32, [2 x ptr], ptr, ptr, ptr, ptr, i16 }
%struct.komeda_format_caps_table = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.d71_dev = type { ptr, i32, i32, i32, i32, i32, i8, ptr, [4 x ptr], ptr, [2 x ptr] }
%struct.komeda_pipeline = type { %struct.drm_private_obj, ptr, ptr, i32, i32, i32, i32, [4 x ptr], i32, [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.d71_pipeline = type { %struct.komeda_pipeline, ptr, ptr, ptr, ptr }
%struct.komeda_events = type { i64, [2 x i64] }

@d71_chip_funcs = internal constant { %struct.komeda_dev_funcs, [48 x i8] } { %struct.komeda_dev_funcs { ptr @d71_init_fmt_tbl, ptr @d71_enum_resources, ptr @d71_cleanup, ptr @d71_connect_iommu, ptr @d71_disconnect_iommu, ptr @d71_irq_handler, ptr @d71_enable_irq, ptr @d71_disable_irq, ptr @d71_on_off_vblank, ptr @d71_dump, ptr @d71_change_opmode, ptr @d71_flush }, [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported product: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@d71_format_caps_table = internal global { [33 x %struct.komeda_format_caps], [256 x i8] } { [33 x %struct.komeda_format_caps] [%struct.komeda_format_caps { i32 0, i32 808669761, i32 7, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 1, i32 808665665, i32 7, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 1, i32 808665665, i32 3, i32 63, i32 6, i64 576460752303424368 }, %struct.komeda_format_caps { i32 2, i32 808665426, i32 7, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 3, i32 808665410, i32 7, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 8, i32 875713089, i32 7, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 9, i32 875708993, i32 7, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 9, i32 875708993, i32 3, i32 63, i32 6, i64 576460752303424368 }, %struct.komeda_format_caps { i32 10, i32 875708754, i32 7, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 11, i32 875708738, i32 7, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 16, i32 875713112, i32 7, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 17, i32 875709016, i32 7, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 18, i32 875714642, i32 7, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 19, i32 875714626, i32 7, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 24, i32 875710290, i32 7, i32 1, i32 0, i64 0 }, %struct.komeda_format_caps { i32 25, i32 875710274, i32 7, i32 1, i32 0, i64 0 }, %struct.komeda_format_caps { i32 25, i32 875710274, i32 3, i32 63, i32 6, i64 576460752303424368 }, %struct.komeda_format_caps { i32 32, i32 892420434, i32 3, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 33, i32 892420673, i32 3, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 33, i32 892420673, i32 3, i32 63, i32 6, i64 576460752303424336 }, %struct.komeda_format_caps { i32 34, i32 909199186, i32 3, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 35, i32 909199170, i32 3, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 35, i32 909199170, i32 3, i32 63, i32 6, i64 576460752303424336 }, %struct.komeda_format_caps { i32 36, i32 538982482, i32 2, i32 1, i32 0, i64 0 }, %struct.komeda_format_caps { i32 41, i32 1448695129, i32 1, i32 63, i32 2, i64 576460752303423808 }, %struct.komeda_format_caps { i32 42, i32 1448695129, i32 1, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 43, i32 1498831189, i32 1, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 46, i32 842094158, i32 1, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 46, i32 942691673, i32 1, i32 63, i32 2, i64 576460752303423808 }, %struct.komeda_format_caps { i32 47, i32 842093913, i32 1, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 54, i32 843853912, i32 1, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 55, i32 808530000, i32 1, i32 49, i32 0, i64 0 }, %struct.komeda_format_caps { i32 55, i32 808539481, i32 1, i32 63, i32 2, i64 576460752303423808 }], [256 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"D71 doesn't support ROT90 for WB-AFBC.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Fail to reset d71 device.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"d71 supports %d pipelines, but got: %d.\0A\00", [55 x i8] zeroinitializer }, align 32
@d71_pipeline_funcs = external dso_local constant %struct.komeda_pipeline_funcs, align 4
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"total %d (out of %d) blocks are found.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"timed out connecting to TCU!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"timed out disconnecting from TCU!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown operation mode\00", [41 x i8] zeroinitializer }, align 32
@switch.table.d71_change_opmode = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 3, i32 4, i32 5], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 50, i64 113]
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"d71_chip_funcs\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 603, i32 38 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 634, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant [22 x i8] c"d71_format_caps_table\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 489, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 540, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 369, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 379, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 458, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 572, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 596, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [52 x i8] c"../drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 278, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [31 x i8] c"switch.table.d71_change_opmode\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @d71_chip_funcs, ptr @.str, ptr @d71_format_caps_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @switch.table.d71_change_opmode], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d71_chip_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d71_format_caps_table to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.d71_change_opmode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @d71_read_block_header(ptr noundef %reg, ptr nocapture noundef %blk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #5, !srcloc !30
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %2 = ptrtoint ptr %blk to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %blk, align 4
  %3 = and i32 %1, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %3)
  %cmp = icmp eq i32 %3, 65280
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i32, ptr %reg, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !30
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %pipeline_info = getelementptr inbounds %struct.block_header, ptr %blk, i32 0, i32 1
  %6 = ptrtoint ptr %pipeline_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pipeline_info, align 4
  %7 = and i32 %5, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp639.not = icmp eq i32 %7, 0
  br i1 %cmp639.not, label %if.end.for.cond8.preheader_crit_edge, label %for.body.preheader

if.end.for.cond8.preheader_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond8.preheader

for.body.preheader:                               ; preds = %if.end
  %add.ptr = getelementptr i32, ptr %reg, i32 8
  br label %for.body

for.cond8.preheader:                              ; preds = %for.body.for.cond8.preheader_crit_edge, %if.end.for.cond8.preheader_crit_edge
  %8 = ptrtoint ptr %pipeline_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipeline_info, align 4
  %and1041 = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1041)
  %cmp1142.not = icmp eq i32 %and1041, 0
  br i1 %cmp1142.not, label %for.cond8.preheader.cleanup_crit_edge, label %for.body12.preheader

for.cond8.preheader.cleanup_crit_edge:            ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body12.preheader:                             ; preds = %for.cond8.preheader
  %add.ptr13 = getelementptr i32, ptr %reg, i32 24
  br label %for.body12

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.040 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add.ptr.i35 = getelementptr i32, ptr %add.ptr, i32 %i.040
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #5, !srcloc !30
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %arrayidx = getelementptr %struct.block_header, ptr %blk, i32 0, i32 2, i32 %i.040
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.040, 1
  %13 = ptrtoint ptr %pipeline_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pipeline_info, align 4
  %and4 = lshr i32 %14, 8
  %shr5 = and i32 %and4, 15
  %cmp6 = icmp ult i32 %inc, %shr5
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.body.for.cond8.preheader_crit_edge

for.body.for.cond8.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond8.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body12.preheader
  %i.143 = phi i32 [ %inc17, %for.body12.for.body12_crit_edge ], [ 0, %for.body12.preheader ]
  %add.ptr.i36 = getelementptr i32, ptr %add.ptr13, i32 %i.143
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #5, !srcloc !30
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %arrayidx15 = getelementptr %struct.block_header, ptr %blk, i32 0, i32 3, i32 %i.143
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx15, align 4
  %inc17 = add nuw nsw i32 %i.143, 1
  %18 = ptrtoint ptr %pipeline_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pipeline_info, align 4
  %and10 = and i32 %19, 15
  %cmp11 = icmp ult i32 %inc17, %and10
  br i1 %cmp11, label %for.body12.for.body12_crit_edge, label %for.body12.cleanup_crit_edge

for.body12.cleanup_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body12

cleanup:                                          ; preds = %for.body12.cleanup_crit_edge, %for.cond8.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @d71_identify(ptr noundef %reg_base, ptr nocapture noundef writeonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i32, ptr %reg_base, i32 1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !30
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %core_id = getelementptr inbounds %struct.komeda_chip_info, ptr %chip, i32 0, i32 1
  %2 = ptrtoint ptr %core_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %core_id, align 4
  %shr = lshr i32 %1, 16
  %trunc = trunc i32 %shr to i16
  %3 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %sw.default [
    i16 113, label %entry.sw.bb_crit_edge
    i16 50, label %entry.sw.bb_crit_edge13
  ]

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge13
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg_base) #5, !srcloc !30
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %chip, align 4
  %add.ptr.i12 = getelementptr i32, ptr %reg_base, i32 2
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #5, !srcloc !30
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %core_info = getelementptr inbounds %struct.komeda_chip_info, ptr %chip, i32 0, i32 2
  %9 = ptrtoint ptr %core_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %core_info, align 4
  %bus_width = getelementptr inbounds %struct.komeda_chip_info, ptr %chip, i32 0, i32 3
  %10 = ptrtoint ptr %bus_width to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %bus_width, align 4
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %shr) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb
  %retval.0 = phi ptr [ null, %sw.default ], [ @d71_chip_funcs, %sw.bb ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @d71_init_fmt_tbl(ptr nocapture noundef writeonly %mdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt_tbl = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 3
  %format_caps = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %format_caps to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @d71_format_caps_table, ptr %format_caps, align 4
  %format_mod_supported = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 3, i32 2
  %1 = ptrtoint ptr %format_mod_supported to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @d71_format_mod_supported, ptr %format_mod_supported, align 4
  %2 = ptrtoint ptr %fmt_tbl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 33, ptr %fmt_tbl, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d71_enum_resources(ptr noundef %mdev) #0 align 64 {
entry:
  %blk = alloca %struct.block_header, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %blk) #5
  %0 = call ptr @memset(ptr %blk, i32 255, i32 64)
  %1 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 60, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip_data = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 11
  %3 = ptrtoint ptr %chip_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %chip_data, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mdev, ptr %call.i, align 4
  %reg_base = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 1
  %5 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base, align 4
  %gcu_addr = getelementptr inbounds %struct.d71_dev, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %gcu_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %gcu_addr, align 4
  %add.ptr = getelementptr i32, ptr %6, i32 16256
  %periph_addr = getelementptr inbounds %struct.d71_dev, ptr %call.i, i32 0, i32 9
  %8 = ptrtoint ptr %periph_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %periph_addr, align 4
  %add.ptr.i.i.i = getelementptr i32, ptr %6, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %10 = or i32 %9, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %10) #5, !srcloc !33
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %12 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not8.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not8.not.i, label %if.end.d71_reset.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.d71_reset.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %d71_reset.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %num_tries.09.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 100, %if.end.while.body.i_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #5
  %dec.i = add nsw i32 %num_tries.09.i, -1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %14 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_tries.09.i)
  %cmp.i = icmp ugt i32 %num_tries.09.i, 1
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.d71_reset.exit_crit_edge

while.body.i.d71_reset.exit_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %d71_reset.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

d71_reset.exit:                                   ; preds = %while.body.i.d71_reset.exit_crit_edge, %if.end.d71_reset.exit_crit_edge
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %16 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not.i = icmp eq i32 %16, 0
  br i1 %tobool3.not.i, label %if.end6, label %if.then5

if.then5:                                         ; preds = %d71_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #5
  br label %err_cleanup

if.end6:                                          ; preds = %d71_reset.exit
  %17 = ptrtoint ptr %gcu_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gcu_addr, align 4
  %add.ptr.i = getelementptr i32, ptr %18, i32 2
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !30
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and = and i32 %20, 255
  %num_blocks = getelementptr inbounds %struct.d71_dev, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %num_blocks to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and, ptr %num_blocks, align 4
  %shr = lshr i32 %20, 8
  %and9 = and i32 %shr, 7
  %num_pipelines = getelementptr inbounds %struct.d71_dev, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %num_pipelines to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and9, ptr %num_pipelines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and9)
  %cmp = icmp ugt i32 %and9, 2
  br i1 %cmp, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef %and9) #5
  br label %err_cleanup

if.end13:                                         ; preds = %if.end6
  %23 = ptrtoint ptr %periph_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %periph_addr, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %26 = and i32 %25, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %26)
  %cmp18.not = icmp eq i32 %26, 524288
  br i1 %cmp18.not, label %if.end21, label %if.end21.thread

if.end21.thread:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %periph_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %periph_addr, align 4
  br label %if.else

if.end21:                                         ; preds = %if.end13
  %28 = ptrtoint ptr %periph_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load ptr, ptr %periph_addr, align 4
  %tobool23.not = icmp eq ptr %.pr, null
  br i1 %tobool23.not, label %if.end21.if.else_crit_edge, label %if.then24

if.end21.if.else_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i176 = getelementptr i32, ptr %.pr, i32 117
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i176) #5, !srcloc !30
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and27 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %cond = select i1 %tobool28.not, i32 2048, i32 4096
  %max_line_size = getelementptr inbounds %struct.d71_dev, ptr %call.i, i32 0, i32 4
  %31 = ptrtoint ptr %max_line_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond, ptr %max_line_size, align 4
  %max_vsize = getelementptr inbounds %struct.d71_dev, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %max_vsize to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4096, ptr %max_vsize, align 4
  %and29 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %cond31 = select i1 %tobool30.not, i32 1, i32 2
  %num_rich_layers = getelementptr inbounds %struct.d71_dev, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %num_rich_layers to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond31, ptr %num_rich_layers, align 4
  %supports_dual_link = getelementptr inbounds %struct.d71_dev, ptr %call.i, i32 0, i32 6
  %34 = ptrtoint ptr %supports_dual_link to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %supports_dual_link, align 4
  %sh.diff172 = lshr i32 %30, 1
  %tr.sh.diff173 = trunc i32 %sh.diff172 to i8
  %bf.shl = and i8 %tr.sh.diff173, -128
  %bf.clear = and i8 %bf.load, 63
  %sh.diff174 = lshr i32 %30, 6
  %tr.sh.diff175 = trunc i32 %sh.diff174 to i8
  %bf.shl43 = and i8 %tr.sh.diff175, 64
  %bf.set = or i8 %bf.shl43, %bf.shl
  %bf.set45 = or i8 %bf.set, %bf.clear
  store i8 %bf.set45, ptr %supports_dual_link, align 4
  br label %if.end75

if.else:                                          ; preds = %if.end21.if.else_crit_edge, %if.end21.thread
  %35 = ptrtoint ptr %gcu_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gcu_addr, align 4
  %add.ptr.i177 = getelementptr i32, ptr %36, i32 64
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i177) #5, !srcloc !30
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and49 = and i32 %38, 65535
  %max_line_size50 = getelementptr inbounds %struct.d71_dev, ptr %call.i, i32 0, i32 4
  %39 = ptrtoint ptr %max_line_size50 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and49, ptr %max_line_size50, align 4
  %shr51 = lshr i32 %38, 16
  %max_vsize52 = getelementptr inbounds %struct.d71_dev, ptr %call.i, i32 0, i32 5
  %40 = ptrtoint ptr %max_vsize52 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shr51, ptr %max_vsize52, align 4
  %41 = ptrtoint ptr %gcu_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gcu_addr, align 4
  %add.ptr.i178 = getelementptr i32, ptr %42, i32 65
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i178) #5, !srcloc !30
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and55 = and i32 %44, 7
  %num_rich_layers56 = getelementptr inbounds %struct.d71_dev, ptr %call.i, i32 0, i32 3
  %45 = ptrtoint ptr %num_rich_layers56 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and55, ptr %num_rich_layers56, align 4
  %supports_dual_link59 = getelementptr inbounds %struct.d71_dev, ptr %call.i, i32 0, i32 6
  %46 = ptrtoint ptr %supports_dual_link59 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load60 = load i8, ptr %supports_dual_link59, align 4
  %sh.diff = lshr i32 %44, 9
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %bf.shl62 = and i8 %tr.sh.diff, -128
  %bf.clear63 = and i8 %bf.load60, 63
  %bf.set64 = or i8 %bf.clear63, %bf.shl62
  %sh.diff170 = lshr i32 %44, 11
  %tr.sh.diff171 = trunc i32 %sh.diff170 to i8
  %bf.shl71 = and i8 %tr.sh.diff171, 64
  %bf.set73 = or i8 %bf.set64, %bf.shl71
  store i8 %bf.set73, ptr %supports_dual_link59, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.else, %if.then24
  %47 = ptrtoint ptr %num_pipelines to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_pipelines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp77187.not = icmp eq i32 %48, 0
  br i1 %cmp77187.not, label %if.end75.while.cond.preheader_crit_edge, label %if.end75.for.body_crit_edge

if.end75.for.body_crit_edge:                      ; preds = %if.end75
  br label %for.body

if.end75.while.cond.preheader_crit_edge:          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end82.while.cond.preheader_crit_edge, %if.end75.while.cond.preheader_crit_edge
  %49 = ptrtoint ptr %num_blocks to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp85189 = icmp ugt i32 %50, 1
  br i1 %cmp85189, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %pipeline_info.i = getelementptr inbounds %struct.block_header, ptr %blk, i32 0, i32 1
  br label %while.body

for.body:                                         ; preds = %if.end82.for.body_crit_edge, %if.end75.for.body_crit_edge
  %i.0188 = phi i32 [ %inc, %if.end82.for.body_crit_edge ], [ 0, %if.end75.for.body_crit_edge ]
  %call78 = tail call ptr @komeda_pipeline_add(ptr noundef %mdev, i32 noundef 240, ptr noundef nonnull @d71_pipeline_funcs) #5
  %cmp.i179 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179, label %if.then80, label %if.end82

if.then80:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %call78 to i32
  br label %err_cleanup

if.end82:                                         ; preds = %for.body
  %standalone_disabled_comps = getelementptr inbounds %struct.komeda_pipeline, ptr %call78, i32 0, i32 5
  %52 = ptrtoint ptr %standalone_disabled_comps to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 7340032, ptr %standalone_disabled_comps, align 4
  %arrayidx = getelementptr %struct.d71_dev, ptr %call.i, i32 0, i32 10, i32 %i.0188
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call78, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0188, 1
  %54 = ptrtoint ptr %num_pipelines to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_pipelines, align 4
  %cmp77 = icmp ult i32 %inc, %55
  br i1 %cmp77, label %if.end82.for.body_crit_edge, label %if.end82.while.cond.preheader_crit_edge

if.end82.while.cond.preheader_crit_edge:          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader

if.end82.for.body_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

while.body:                                       ; preds = %if.end97.while.body_crit_edge, %while.body.lr.ph
  %offset.0191 = phi i32 [ 512, %while.body.lr.ph ], [ %add, %if.end97.while.body_crit_edge ]
  %i.1190 = phi i32 [ 1, %while.body.lr.ph ], [ %inc98, %if.end97.while.body_crit_edge ]
  %56 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_base, align 4
  %shr87 = lshr exact i32 %offset.0191, 2
  %add.ptr88 = getelementptr i32, ptr %57, i32 %shr87
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88) #5, !srcloc !30
  %59 = call i32 @llvm.bswap.i32(i32 %58) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %60 = ptrtoint ptr %blk to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %blk, align 4
  %61 = and i32 %59, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %61)
  %cmp.i180 = icmp eq i32 %61, 65280
  br i1 %cmp.i180, label %while.body.d71_read_block_header.exit_crit_edge, label %if.end.i

while.body.d71_read_block_header.exit_crit_edge:  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %d71_read_block_header.exit

if.end.i:                                         ; preds = %while.body
  %add.ptr.i.i = getelementptr i32, ptr %add.ptr88, i32 1
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !30
  %63 = call i32 @llvm.bswap.i32(i32 %62) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %64 = ptrtoint ptr %pipeline_info.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %pipeline_info.i, align 4
  %65 = and i32 %63, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp639.not.i = icmp eq i32 %65, 0
  br i1 %cmp639.not.i, label %if.end.i.for.cond8.preheader.i_crit_edge, label %for.body.preheader.i

if.end.i.for.cond8.preheader.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond8.preheader.i

for.body.preheader.i:                             ; preds = %if.end.i
  %add.ptr.i181 = getelementptr i32, ptr %add.ptr88, i32 8
  br label %for.body.i

for.cond8.preheader.i:                            ; preds = %for.body.i.for.cond8.preheader.i_crit_edge, %if.end.i.for.cond8.preheader.i_crit_edge
  %66 = ptrtoint ptr %pipeline_info.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pipeline_info.i, align 4
  %and1041.i = and i32 %67, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1041.i)
  %cmp1142.not.i = icmp eq i32 %and1041.i, 0
  br i1 %cmp1142.not.i, label %for.cond8.preheader.i.d71_read_block_header.exit_crit_edge, label %for.body12.preheader.i

for.cond8.preheader.i.d71_read_block_header.exit_crit_edge: ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %d71_read_block_header.exit

for.body12.preheader.i:                           ; preds = %for.cond8.preheader.i
  %add.ptr13.i = getelementptr i32, ptr %add.ptr88, i32 24
  br label %for.body12.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.040.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %add.ptr.i35.i = getelementptr i32, ptr %add.ptr.i181, i32 %i.040.i
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.i) #5, !srcloc !30
  %69 = call i32 @llvm.bswap.i32(i32 %68) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %arrayidx.i = getelementptr %struct.block_header, ptr %blk, i32 0, i32 2, i32 %i.040.i
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.040.i, 1
  %71 = ptrtoint ptr %pipeline_info.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pipeline_info.i, align 4
  %and4.i = lshr i32 %72, 8
  %shr5.i = and i32 %and4.i, 15
  %cmp6.i = icmp ult i32 %inc.i, %shr5.i
  br i1 %cmp6.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond8.preheader.i_crit_edge

for.body.i.for.cond8.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond8.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.body12.preheader.i
  %i.143.i = phi i32 [ %inc17.i, %for.body12.i.for.body12.i_crit_edge ], [ 0, %for.body12.preheader.i ]
  %add.ptr.i36.i = getelementptr i32, ptr %add.ptr13.i, i32 %i.143.i
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36.i) #5, !srcloc !30
  %74 = call i32 @llvm.bswap.i32(i32 %73) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %arrayidx15.i = getelementptr %struct.block_header, ptr %blk, i32 0, i32 3, i32 %i.143.i
  %75 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx15.i, align 4
  %inc17.i = add nuw nsw i32 %i.143.i, 1
  %76 = ptrtoint ptr %pipeline_info.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pipeline_info.i, align 4
  %and10.i = and i32 %77, 15
  %cmp11.i = icmp ult i32 %inc17.i, %and10.i
  br i1 %cmp11.i, label %for.body12.i.for.body12.i_crit_edge, label %for.body12.i.d71_read_block_header.exit_crit_edge

for.body12.i.d71_read_block_header.exit_crit_edge: ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %d71_read_block_header.exit

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body12.i

d71_read_block_header.exit:                       ; preds = %for.body12.i.d71_read_block_header.exit_crit_edge, %for.cond8.preheader.i.d71_read_block_header.exit_crit_edge, %while.body.d71_read_block_header.exit_crit_edge
  %78 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %blk, align 4
  %80 = and i32 %79, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %80)
  %cmp91.not = icmp eq i32 %80, 65280
  br i1 %cmp91.not, label %d71_read_block_header.exit.if.end97_crit_edge, label %if.then92

d71_read_block_header.exit.if.end97_crit_edge:    ; preds = %d71_read_block_header.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.then92:                                        ; preds = %d71_read_block_header.exit
  %call93 = call i32 @d71_probe_block(ptr noundef nonnull %call.i, ptr noundef nonnull %blk, ptr noundef %add.ptr88) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then92.if.end97_crit_edge, label %if.then92.err_cleanup_crit_edge

if.then92.err_cleanup_crit_edge:                  ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_cleanup

if.then92.if.end97_crit_edge:                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.end97:                                         ; preds = %if.then92.if.end97_crit_edge, %d71_read_block_header.exit.if.end97_crit_edge
  %inc98 = add nuw i32 %i.1190, 1
  %add = add i32 %offset.0191, 512
  %81 = ptrtoint ptr %num_blocks to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_blocks, align 4
  %cmp85 = icmp ult i32 %inc98, %82
  br i1 %cmp85, label %if.end97.while.body_crit_edge, label %if.end97.while.end_crit_edge

if.end97.while.end_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end97.while.body_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %if.end97.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %i.1.lcssa = phi i32 [ 1, %while.cond.preheader.while.end_crit_edge ], [ %inc98, %if.end97.while.end_crit_edge ]
  %.lcssa = phi i32 [ %50, %while.cond.preheader.while.end_crit_edge ], [ %82, %if.end97.while.end_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %i.1.lcssa, i32 noundef %.lcssa) #5
  br label %cleanup

err_cleanup:                                      ; preds = %if.then92.err_cleanup_crit_edge, %if.then80, %if.then11, %if.then5
  %err.0 = phi i32 [ -110, %if.then5 ], [ -22, %if.then11 ], [ %51, %if.then80 ], [ %call93, %if.then92.err_cleanup_crit_edge ]
  %83 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %chip_data, align 4
  %tobool.not.i182 = icmp eq ptr %84, null
  br i1 %tobool.not.i182, label %err_cleanup.cleanup_crit_edge, label %if.end.i183

err_cleanup.cleanup_crit_edge:                    ; preds = %err_cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i183:                                      ; preds = %err_cleanup
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mdev, align 4
  call void @devm_kfree(ptr noundef %86, ptr noundef nonnull %84) #5
  %87 = ptrtoint ptr %chip_data to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %chip_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i183, %err_cleanup.cleanup_crit_edge, %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -12, %entry.cleanup_crit_edge ], [ %err.0, %err_cleanup.cleanup_crit_edge ], [ %err.0, %if.end.i183 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %blk) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_cleanup(ptr nocapture noundef %mdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 11
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 4
  tail call void @devm_kfree(ptr noundef %3, ptr noundef nonnull %1) #5
  %4 = ptrtoint ptr %chip_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %chip_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d71_connect_iommu(ptr nocapture noundef readonly %mdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 11
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  %num_pipelines = getelementptr inbounds %struct.d71_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_pipelines to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pipelines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %cond = select i1 %cmp, i32 768, i32 256
  %integrates_tbu = getelementptr inbounds %struct.d71_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %integrates_tbu to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %integrates_tbu, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %gcu_addr = getelementptr inbounds %struct.d71_dev, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %gcu_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gcu_addr, align 4
  %add.ptr.i.i = getelementptr i32, ptr %7, i32 52
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %9 = and i32 %8, -117440513
  %10 = or i32 %9, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #5, !srcloc !33
  %add.ptr.i = getelementptr i32, ptr %7, i32 44
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !30
  %12 = lshr i32 %11, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and36 = and i32 %12, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %and36, i32 %cond)
  %cmp137.not = icmp eq i32 %and36, %cond
  br i1 %cmp137.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %num_tries.038 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %if.end.while.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1000, i32 noundef 2) #5
  %dec = add nsw i32 %num_tries.038, -1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !30
  %14 = lshr i32 %13, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and = and i32 %14, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %cond)
  %cmp1 = icmp ne i32 %and, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_tries.038)
  %cmp2 = icmp ugt i32 %num_tries.038, 1
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !30
  %16 = lshr i32 %15, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and4 = and i32 %16, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %and4, i32 %cond)
  %cmp5 = icmp eq i32 %and4, %cond
  br i1 %cmp5, label %for.cond.preheader, label %if.then8

for.cond.preheader:                               ; preds = %while.end
  %17 = ptrtoint ptr %num_pipelines to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_pipelines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1139 = icmp sgt i32 %18, 0
  br i1 %cmp1139, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then8:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #5
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %20 = and i32 %19, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %20) #5, !srcloc !33
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.d71_dev, ptr %1, i32 0, i32 10, i32 %i.040
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %lpu_addr = getelementptr inbounds %struct.d71_pipeline, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %lpu_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lpu_addr, align 4
  %add.ptr.i.i33 = getelementptr i32, ptr %24, i32 54
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %26 = or i32 %25, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i33, i32 %26) #5, !srcloc !33
  %inc = add nuw nsw i32 %i.040, 1
  %27 = ptrtoint ptr %num_pipelines to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_pipelines, align 4
  %cmp11 = icmp slt i32 %inc, %28
  br i1 %cmp11, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.then8, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then8 ], [ -1, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d71_disconnect_iommu(ptr nocapture noundef readonly %mdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 11
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  %gcu_addr = getelementptr inbounds %struct.d71_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %gcu_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gcu_addr, align 4
  %num_pipelines = getelementptr inbounds %struct.d71_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %num_pipelines to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pipelines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  %cond = select i1 %cmp, i32 768, i32 256
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 52
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %7 = and i32 %6, -117440513
  %8 = or i32 %7, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #5, !srcloc !33
  %add.ptr.i = getelementptr i32, ptr %3, i32 44
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !30
  %10 = lshr i32 %9, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and18 = and i32 %10, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %cmp119.not = icmp eq i32 %and18, 0
  br i1 %cmp119.not, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %num_tries.020 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %entry.while.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1000, i32 noundef 2) #5
  %dec = add nsw i32 %num_tries.020, -1
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !30
  %12 = lshr i32 %11, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and = and i32 %12, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1 = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_tries.020)
  %cmp2 = icmp ugt i32 %num_tries.020, 1
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !30
  %14 = lshr i32 %13, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and4 = and i32 %14, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp5 = icmp eq i32 %and4, 0
  br i1 %cmp5, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #5
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %16 = and i32 %15, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #5, !srcloc !33
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  %cond6 = phi i32 [ -110, %if.then ], [ 0, %while.end.if.end_crit_edge ]
  ret i32 %cond6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d71_irq_handler(ptr nocapture noundef readonly %mdev, ptr nocapture noundef %evts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 11
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  %gcu_addr = getelementptr inbounds %struct.d71_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %gcu_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gcu_addr, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !30
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %gcu_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gcu_addr, align 4
  %add.ptr.i66 = getelementptr i32, ptr %7, i32 40
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #5, !srcloc !30
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and3 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %pipes = getelementptr inbounds %struct.komeda_events, ptr %evts, i32 0, i32 1
  %10 = ptrtoint ptr %pipes to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pipes, align 8
  %or = or i64 %11, 2
  store i64 %or, ptr %pipes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %and6 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx10 = getelementptr %struct.komeda_events, ptr %evts, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx10, align 8
  %or11 = or i64 %13, 2
  store i64 %or11, ptr %arrayidx10, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  %and13 = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end24_crit_edge, label %if.then15

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then15:                                        ; preds = %if.end12
  %14 = ptrtoint ptr %gcu_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gcu_addr, align 4
  %add.ptr.i67 = getelementptr i32, ptr %15, i32 44
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %17 = and i32 %16, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool19.not = icmp eq i32 %17, 0
  br i1 %tobool19.not, label %if.then15.if.end24_crit_edge, label %if.then20

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %evts to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %evts, align 8
  %or21 = or i64 %19, 268435456
  store i64 %or21, ptr %evts, align 8
  %20 = ptrtoint ptr %gcu_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gcu_addr, align 4
  %add.ptr.i.i = getelementptr i32, ptr %21, i32 44
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %23 = and i32 %22, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %23) #5, !srcloc !33
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.then15.if.end24_crit_edge, %if.end12.if.end24_crit_edge
  %24 = ptrtoint ptr %gcu_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gcu_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %add.ptr.i68 = getelementptr i32, ptr %25, i32 41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %8) #5, !srcloc !33
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %entry.if.end26_crit_edge
  %and27 = and i32 %5, 16846080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end36_crit_edge, label %if.then29

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %pipes30 = getelementptr inbounds %struct.d71_dev, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %pipes30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pipes30, align 4
  %call32 = tail call fastcc i64 @get_pipeline_event(ptr noundef %27, i32 noundef %5)
  %pipes33 = getelementptr inbounds %struct.komeda_events, ptr %evts, i32 0, i32 1
  %28 = ptrtoint ptr %pipes33 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %pipes33, align 8
  %or35 = or i64 %29, %call32
  store i64 %or35, ptr %pipes33, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then29, %if.end26.if.end36_crit_edge
  %and37 = and i32 %5, 33698304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end46_crit_edge, label %if.then39

if.end36.if.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx41 = getelementptr %struct.d71_dev, ptr %1, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx41, align 4
  %call42 = tail call fastcc i64 @get_pipeline_event(ptr noundef %31, i32 noundef %5)
  %arrayidx44 = getelementptr %struct.komeda_events, ptr %evts, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx44, align 8
  %or45 = or i64 %33, %call42
  store i64 %or45, ptr %arrayidx44, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then39, %if.end36.if.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool47.not = icmp ne i32 %4, 0
  %cond = zext i1 %tobool47.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d71_enable_irq(ptr nocapture noundef readonly %mdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 11
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  %gcu_addr = getelementptr inbounds %struct.d71_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %gcu_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gcu_addr, align 4
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 42
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %5 = or i32 %4, 319291392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #5, !srcloc !33
  %num_pipelines = getelementptr inbounds %struct.d71_dev, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %num_pipelines to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pipelines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp16.not = icmp eq i32 %7, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.d71_dev, ptr %1, i32 0, i32 10, i32 %i.017
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cu_addr = getelementptr inbounds %struct.d71_pipeline, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %cu_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cu_addr, align 4
  %add.ptr.i.i7 = getelementptr i32, ptr %11, i32 42
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %13 = or i32 %12, 655360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7, i32 %13) #5, !srcloc !33
  %lpu_addr = getelementptr inbounds %struct.d71_pipeline, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %lpu_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lpu_addr, align 4
  %add.ptr.i.i10 = getelementptr i32, ptr %15, i32 42
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %17 = or i32 %16, 1835008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10, i32 %17) #5, !srcloc !33
  %dou_addr = getelementptr inbounds %struct.d71_pipeline, ptr %9, i32 0, i32 3
  %18 = ptrtoint ptr %dou_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dou_addr, align 4
  %add.ptr.i.i13 = getelementptr i32, ptr %19, i32 42
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %21 = or i32 %20, 589824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13, i32 %21) #5, !srcloc !33
  %inc = add nuw i32 %i.017, 1
  %22 = ptrtoint ptr %num_pipelines to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_pipelines, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d71_disable_irq(ptr nocapture noundef readonly %mdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 11
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  %gcu_addr = getelementptr inbounds %struct.d71_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %gcu_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gcu_addr, align 4
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 42
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %5 = and i32 %4, -319291393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #5, !srcloc !33
  %num_pipelines = getelementptr inbounds %struct.d71_dev, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %num_pipelines to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pipelines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.not = icmp eq i32 %7, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.d71_dev, ptr %1, i32 0, i32 10, i32 %i.014
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cu_addr = getelementptr inbounds %struct.d71_pipeline, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %cu_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cu_addr, align 4
  %add.ptr.i.i7 = getelementptr i32, ptr %11, i32 42
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %13 = and i32 %12, -655361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7, i32 %13) #5, !srcloc !33
  %lpu_addr = getelementptr inbounds %struct.d71_pipeline, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %lpu_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lpu_addr, align 4
  %add.ptr.i.i9 = getelementptr i32, ptr %15, i32 42
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %17 = and i32 %16, -1835009
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9, i32 %17) #5, !srcloc !33
  %dou_addr = getelementptr inbounds %struct.d71_pipeline, ptr %9, i32 0, i32 3
  %18 = ptrtoint ptr %dou_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dou_addr, align 4
  %add.ptr.i.i11 = getelementptr i32, ptr %19, i32 42
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i11) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %21 = and i32 %20, -589825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i11, i32 %21) #5, !srcloc !33
  %inc = add nuw i32 %i.014, 1
  %22 = ptrtoint ptr %num_pipelines to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_pipelines, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_on_off_vblank(ptr nocapture noundef readonly %mdev, i32 noundef %master_pipe, i1 noundef zeroext %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 11
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  %arrayidx = getelementptr %struct.d71_dev, ptr %1, i32 0, i32 10, i32 %master_pipe
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %dou_addr = getelementptr inbounds %struct.d71_pipeline, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dou_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dou_addr, align 4
  %cond = select i1 %on, i32 8192, i32 0
  %add.ptr.i.i = getelementptr i32, ptr %5, i32 42
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %7 = and i32 %6, -2097153
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %or.i = or i32 %8, %cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #5, !srcloc !33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d71_dump(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d71_change_opmode(ptr nocapture noundef readonly %mdev, i32 noundef %new_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 11
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %new_mode)
  %2 = icmp ult i32 %new_mode, 4
  br i1 %2, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 278, i32 noundef 9, ptr noundef nonnull @.str.8) #5
  br label %to_d71_opmode.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.d71_change_opmode, i32 0, i32 %new_mode
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %to_d71_opmode.exit

to_d71_opmode.exit:                               ; preds = %switch.lookup, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %switch.load, %switch.lookup ]
  %gcu_addr = getelementptr inbounds %struct.d71_dev, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %gcu_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gcu_addr, align 4
  %add.ptr.i.i = getelementptr i32, ptr %5, i32 52
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %7 = and i32 %6, -117440513
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %or.i = or i32 %8, %retval.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #5, !srcloc !33
  %10 = ptrtoint ptr %gcu_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gcu_addr, align 4
  %add.ptr.i14 = getelementptr i32, ptr %11, i32 52
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #5, !srcloc !30
  %13 = lshr i32 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and15 = and i32 %13, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %and15, i32 %retval.0.i)
  %cmp16.not = icmp eq i32 %and15, %retval.0.i
  br i1 %cmp16.not, label %to_d71_opmode.exit.while.end_crit_edge, label %to_d71_opmode.exit.while.body_crit_edge

to_d71_opmode.exit.while.body_crit_edge:          ; preds = %to_d71_opmode.exit
  br label %while.body

to_d71_opmode.exit.while.end_crit_edge:           ; preds = %to_d71_opmode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %to_d71_opmode.exit.while.body_crit_edge
  %num_tries.017 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %to_d71_opmode.exit.while.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #5
  %dec = add nsw i32 %num_tries.017, -1
  %14 = ptrtoint ptr %gcu_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gcu_addr, align 4
  %add.ptr.i = getelementptr i32, ptr %15, i32 52
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !30
  %17 = lshr i32 %16, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and = and i32 %17, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %retval.0.i)
  %cmp = icmp ne i32 %and, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_tries.017)
  %cmp3 = icmp ugt i32 %num_tries.017, 1
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %to_d71_opmode.exit.while.end_crit_edge
  %18 = ptrtoint ptr %gcu_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gcu_addr, align 4
  %add.ptr.i13 = getelementptr i32, ptr %19, i32 52
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #5, !srcloc !30
  %21 = lshr i32 %20, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and6 = and i32 %21, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %and6, i32 %retval.0.i)
  %cmp7 = icmp eq i32 %and6, %retval.0.i
  %cond = select i1 %cmp7, i32 0, i32 -110
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_flush(ptr nocapture noundef readonly %mdev, i32 noundef %master_pipe, i32 noundef %active_pipes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 11
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %master_pipe)
  %cmp = icmp eq i32 %master_pipe, 0
  %cond = select i1 %cmp, i32 53, i32 54
  %gcu_addr = getelementptr inbounds %struct.d71_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %gcu_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gcu_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %add.ptr.i = getelementptr i32, ptr %3, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #5, !srcloc !33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @d71_format_mod_supported(ptr nocapture noundef readnone %caps, i32 noundef %layer_type, i64 noundef %modifier, i32 noundef %rot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %modifier, 15
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %and)
  %cmp = icmp eq i64 %and, 2
  %and.i = and i32 %rot, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %or.cond = and i1 %cmp, %tobool.i
  br i1 %or.cond, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %.demorgan = and i1 %cmp, %tobool.i
  %0 = xor i1 %.demorgan, true
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @komeda_pipeline_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @d71_probe_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @get_pipeline_event(ptr nocapture noundef readonly %d71_pipeline, i32 noundef %gcu_status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %gcu_status, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %lpu_addr.i = getelementptr inbounds %struct.d71_pipeline, ptr %d71_pipeline, i32 0, i32 1
  %0 = ptrtoint ptr %lpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lpu_addr.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !30
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and.i = lshr i32 %3, 7
  %4 = and i32 %and.i, 40
  %and6.i = lshr i32 %3, 5
  %5 = and i32 %and6.i, 16
  %6 = or i32 %4, %5
  %and11.i = and i32 %3, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.then.get_lpu_event.exit_crit_edge, label %if.then13.i

if.then.get_lpu_event.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_lpu_event.exit

if.then13.i:                                      ; preds = %if.then
  %add.ptr.i147.i = getelementptr i32, ptr %1, i32 44
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i147.i) #5, !srcloc !30
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and15.i = shl i32 %8, 15
  %9 = and i32 %and15.i, 524288
  %10 = or i32 %9, %6
  %and21.i = shl i32 %8, 4
  %11 = and i32 %and21.i, 1048576
  %12 = or i32 %10, %11
  %13 = and i32 %and21.i, 2097152
  %14 = or i32 %12, %13
  %15 = and i32 %and21.i, 4194304
  %16 = or i32 %14, %15
  %17 = and i32 %and21.i, 8388608
  %18 = or i32 %16, %17
  %and45.i = lshr i32 %8, 3
  %19 = and i32 %and45.i, 256
  %20 = or i32 %18, %19
  %and51.i = lshr i32 %8, 7
  %21 = and i32 %and51.i, 128
  %22 = or i32 %20, %21
  %23 = and i32 %8, 1001488
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not.i = icmp eq i32 %23, 0
  br i1 %cmp.not.i, label %if.then13.i.if.end58.i_crit_edge, label %if.then57.i

if.then13.i.if.end58.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i

if.then57.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i147.i) #5, !srcloc !30
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %neg.i.i = xor i32 %23, -1
  %and.i.i = and i32 %25, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %26 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147.i, i32 %26) #5, !srcloc !33
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then57.i, %if.then13.i.if.end58.i_crit_edge
  %add.ptr.i148.i = getelementptr i32, ptr %1, i32 45
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148.i) #5, !srcloc !30
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and60.i = shl i32 %28, 28
  %29 = and i32 %and60.i, 536870912
  %30 = or i32 %22, %29
  %31 = and i32 %and60.i, 1073741824
  %32 = or i32 %30, %31
  %and72.i = shl i32 %28, 8
  %33 = and i32 %and72.i, 65536
  %34 = or i32 %32, %33
  %and78.i = lshr i32 %28, 1
  %35 = and i32 %and78.i, 32768
  %36 = or i32 %34, %35
  %37 = and i32 %28, 65798
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %tobool85.not.i = icmp sgt i32 %28, -1
  %or87.i = or i32 %37, -2147483648
  %or88.i = or i32 %36, -2147483648
  %evts.14.i = select i1 %tobool85.not.i, i32 %36, i32 %or88.i
  %restore.11.i = select i1 %tobool85.not.i, i32 %37, i32 %or87.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %restore.11.i)
  %cmp90.not.i = icmp eq i32 %restore.11.i, 0
  br i1 %cmp90.not.i, label %if.end58.i.get_lpu_event.exit_crit_edge, label %if.then91.i

if.end58.i.get_lpu_event.exit_crit_edge:          ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_lpu_event.exit

if.then91.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148.i) #5, !srcloc !30
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %neg.i150.i = xor i32 %restore.11.i, -1
  %and.i151.i = and i32 %39, %neg.i150.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %40 = tail call i32 @llvm.bswap.i32(i32 %and.i151.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148.i, i32 %40) #5, !srcloc !33
  br label %get_lpu_event.exit

get_lpu_event.exit:                               ; preds = %if.then91.i, %if.end58.i.get_lpu_event.exit_crit_edge, %if.then.get_lpu_event.exit_crit_edge
  %evts.15.i.off0 = phi i32 [ %6, %if.then.get_lpu_event.exit_crit_edge ], [ %evts.14.i, %if.then91.i ], [ %evts.14.i, %if.end58.i.get_lpu_event.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %add.ptr.i152.i = getelementptr i32, ptr %1, i32 41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152.i, i32 %2) #5, !srcloc !33
  br label %if.end

if.end:                                           ; preds = %get_lpu_event.exit, %entry.if.end_crit_edge
  %evts.0 = phi i32 [ %evts.15.i.off0, %get_lpu_event.exit ], [ 0, %entry.if.end_crit_edge ]
  %and2 = and i32 %gcu_status, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then4:                                         ; preds = %if.end
  %cu_addr.i = getelementptr inbounds %struct.d71_pipeline, ptr %d71_pipeline, i32 0, i32 2
  %41 = ptrtoint ptr %cu_addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cu_addr.i, align 4
  %add.ptr.i.i26 = getelementptr i32, ptr %42, i32 40
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i26) #5, !srcloc !30
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and.i27 = lshr i32 %44, 5
  %45 = and i32 %and.i27, 16
  %and1.i = and i32 %44, 2560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then4.get_cu_event.exit_crit_edge, label %if.then3.i

if.then4.get_cu_event.exit_crit_edge:             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_cu_event.exit

if.then3.i:                                       ; preds = %if.then4
  %add.ptr.i39.i = getelementptr i32, ptr %42, i32 44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i) #5, !srcloc !30
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and5.i = and i32 %47, 2147483647
  %and6.i28 = shl i32 %47, 17
  %48 = and i32 %and6.i28, 131072
  %49 = or i32 %48, %45
  %and11.i29 = shl i32 %47, 26
  %50 = and i32 %and11.i29, 134217728
  %51 = or i32 %49, %50
  %and16.i = shl i32 %47, 16
  %52 = and i32 %and16.i, 262144
  %53 = or i32 %51, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool21.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool21.not.i, label %if.then3.i.get_cu_event.exit_crit_edge, label %if.then22.i

if.then3.i.get_cu_event.exit_crit_edge:           ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_cu_event.exit

if.then22.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i) #5, !srcloc !30
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %neg.i.i30 = xor i32 %and5.i, -1
  %and.i.i31 = and i32 %55, %neg.i.i30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %56 = tail call i32 @llvm.bswap.i32(i32 %and.i.i31) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 %56) #5, !srcloc !33
  br label %get_cu_event.exit

get_cu_event.exit:                                ; preds = %if.then22.i, %if.then3.i.get_cu_event.exit_crit_edge, %if.then4.get_cu_event.exit_crit_edge
  %evts.4.in.i = phi i32 [ %53, %if.then22.i ], [ %53, %if.then3.i.get_cu_event.exit_crit_edge ], [ %45, %if.then4.get_cu_event.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %add.ptr.i40.i = getelementptr i32, ptr %42, i32 41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 %43) #5, !srcloc !33
  %conv8 = or i32 %evts.4.in.i, %evts.0
  br label %if.end9

if.end9:                                          ; preds = %get_cu_event.exit, %if.end.if.end9_crit_edge
  %evts.1 = phi i32 [ %conv8, %get_cu_event.exit ], [ %evts.0, %if.end.if.end9_crit_edge ]
  %and10 = and i32 %gcu_status, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end17_crit_edge, label %if.then12

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then12:                                        ; preds = %if.end9
  %dou_addr.i = getelementptr inbounds %struct.d71_pipeline, ptr %d71_pipeline, i32 0, i32 3
  %57 = ptrtoint ptr %dou_addr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dou_addr.i, align 4
  %add.ptr.i.i32 = getelementptr i32, ptr %58, i32 40
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i32) #5, !srcloc !30
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and.i33 = lshr i32 %60, 13
  %and.lobit.i = and i32 %and.i33, 1
  %and1.i34 = lshr i32 %60, 6
  %61 = and i32 %and1.i34, 4
  %62 = or i32 %61, %and.lobit.i
  %and6.i35 = and i32 %60, 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i35)
  %tobool7.not.i = icmp eq i32 %and6.i35, 0
  br i1 %tobool7.not.i, label %if.then12.get_dou_event.exit_crit_edge, label %if.then8.i

if.then12.get_dou_event.exit_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_dou_event.exit

if.then8.i:                                       ; preds = %if.then12
  %add.ptr.i59.i = getelementptr i32, ptr %58, i32 44
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i) #5, !srcloc !30
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and10.i = shl i32 %64, 24
  %65 = and i32 %and10.i, 16777216
  %66 = or i32 %65, %62
  %and16.i36 = shl i32 %64, 24
  %67 = and i32 %and16.i36, 33554432
  %68 = or i32 %66, %67
  %and22.i = shl i32 %64, 12
  %69 = and i32 %and22.i, 16384
  %70 = or i32 %68, %69
  %and28.i = shl i32 %64, 18
  %71 = and i32 %and28.i, 67108864
  %72 = or i32 %70, %71
  %73 = and i32 %64, 263
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.not.i37 = icmp eq i32 %73, 0
  br i1 %cmp.not.i37, label %if.then8.i.get_dou_event.exit_crit_edge, label %if.then34.i

if.then8.i.get_dou_event.exit_crit_edge:          ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_dou_event.exit

if.then34.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i) #5, !srcloc !30
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %neg.i.i38 = xor i32 %73, -1
  %and.i.i39 = and i32 %75, %neg.i.i38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %76 = tail call i32 @llvm.bswap.i32(i32 %and.i.i39) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 %76) #5, !srcloc !33
  br label %get_dou_event.exit

get_dou_event.exit:                               ; preds = %if.then34.i, %if.then8.i.get_dou_event.exit_crit_edge, %if.then12.get_dou_event.exit_crit_edge
  %evts.6.i.off0 = phi i32 [ %62, %if.then12.get_dou_event.exit_crit_edge ], [ %72, %if.then34.i ], [ %72, %if.then8.i.get_dou_event.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %add.ptr.i60.i = getelementptr i32, ptr %58, i32 41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 %59) #5, !srcloc !33
  %conv16 = or i32 %evts.6.i.off0, %evts.1
  br label %if.end17

if.end17:                                         ; preds = %get_dou_event.exit, %if.end9.if.end17_crit_edge
  %evts.2 = phi i32 [ %conv16, %get_dou_event.exit ], [ %evts.1, %if.end9.if.end17_crit_edge ]
  %conv18 = zext i32 %evts.2 to i64
  ret i64 %conv18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c", i32 634, i32 3}
!2 = !{ptr @d71_chip_funcs, !3, !"d71_chip_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c", i32 603, i32 38}
!4 = !{ptr @d71_format_caps_table, !5, !"d71_format_caps_table", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c", i32 489, i32 34}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c", i32 540, i32 3}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c", i32 369, i32 3}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c", i32 379, i32 3}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c", i32 458, i32 2}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c", i32 572, i32 3}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c", i32 596, i32 3}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c", i32 278, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 7130447}
!31 = !{i64 2156620403}
!32 = !{i64 2156620789}
!33 = !{i64 7130029}

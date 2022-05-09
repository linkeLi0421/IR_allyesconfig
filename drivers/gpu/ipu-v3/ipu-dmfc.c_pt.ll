; ModuleID = '/llk/IR_all_yes/drivers/gpu/ipu-v3/ipu-dmfc.c_pt.bc'
source_filename = "../drivers/gpu/ipu-v3/ipu-dmfc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ipu_dmfc_enable_channel\22, \22a\22\09"
module asm "\09.weak\09__crc_ipu_dmfc_enable_channel\09\09\09\09"
module asm "\09.long\09__crc_ipu_dmfc_enable_channel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dmfc_enable_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dmfc_enable_channel\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dmfc_enable_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipu_dmfc_disable_channel\22, \22a\22\09"
module asm "\09.weak\09__crc_ipu_dmfc_disable_channel\09\09\09\09"
module asm "\09.long\09__crc_ipu_dmfc_disable_channel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dmfc_disable_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dmfc_disable_channel\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dmfc_disable_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipu_dmfc_config_wait4eot\22, \22a\22\09"
module asm "\09.weak\09__crc_ipu_dmfc_config_wait4eot\09\09\09\09"
module asm "\09.long\09__crc_ipu_dmfc_config_wait4eot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dmfc_config_wait4eot:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dmfc_config_wait4eot\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dmfc_config_wait4eot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipu_dmfc_get\22, \22a\22\09"
module asm "\09.weak\09__crc_ipu_dmfc_get\09\09\09\09"
module asm "\09.long\09__crc_ipu_dmfc_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dmfc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dmfc_get\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dmfc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipu_dmfc_put\22, \22a\22\09"
module asm "\09.weak\09__crc_ipu_dmfc_put\09\09\09\09"
module asm "\09.long\09__crc_ipu_dmfc_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dmfc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dmfc_put\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dmfc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dmfc_channel_data = type { i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dmfc_channel = type { i32, ptr, ptr, ptr }
%struct.ipu_dmfc_priv = type { ptr, ptr, [5 x %struct.dmfc_channel], %struct.mutex, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ipu_soc = type { ptr, ptr, i32, %struct.spinlock, %struct.mutex, %struct.list_head, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }

@__kstrtab_ipu_dmfc_enable_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dmfc_enable_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dmfc_enable_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dmfc_enable_channel to i32), ptr @__kstrtab_ipu_dmfc_enable_channel, ptr @__kstrtabns_ipu_dmfc_enable_channel }, section "___ksymtab_gpl+ipu_dmfc_enable_channel", align 4
@__kstrtab_ipu_dmfc_disable_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dmfc_disable_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dmfc_disable_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dmfc_disable_channel to i32), ptr @__kstrtab_ipu_dmfc_disable_channel, ptr @__kstrtabns_ipu_dmfc_disable_channel }, section "___ksymtab_gpl+ipu_dmfc_disable_channel", align 4
@__kstrtab_ipu_dmfc_config_wait4eot = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dmfc_config_wait4eot = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dmfc_config_wait4eot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dmfc_config_wait4eot to i32), ptr @__kstrtab_ipu_dmfc_config_wait4eot, ptr @__kstrtabns_ipu_dmfc_config_wait4eot }, section "___ksymtab_gpl+ipu_dmfc_config_wait4eot", align 4
@dmfcdata = internal constant { [5 x %struct.dmfc_channel_data], [60 x i8] } { [5 x %struct.dmfc_channel_data] [%struct.dmfc_channel_data { i32 23, i32 12, i32 0, i32 20, i32 3 }, %struct.dmfc_channel_data { i32 24, i32 12, i32 16, i32 22, i32 1 }, %struct.dmfc_channel_data { i32 27, i32 12, i32 8, i32 21, i32 2 }, %struct.dmfc_channel_data { i32 28, i32 4, i32 0, i32 16, i32 2 }, %struct.dmfc_channel_data { i32 29, i32 12, i32 24, i32 23, i32 1 }], [60 x i8] zeroinitializer }, align 32
@__kstrtab_ipu_dmfc_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dmfc_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dmfc_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dmfc_get to i32), ptr @__kstrtab_ipu_dmfc_get, ptr @__kstrtabns_ipu_dmfc_get }, section "___ksymtab_gpl+ipu_dmfc_get", align 4
@__kstrtab_ipu_dmfc_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dmfc_put = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dmfc_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dmfc_put to i32), ptr @__kstrtab_ipu_dmfc_put, ptr @__kstrtabns_ipu_dmfc_put }, section "___ksymtab_gpl+ipu_dmfc_put", align 4
@ipu_dmfc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&priv->mutex\00", [19 x i8] zeroinitializer }, align 32
@switch.table.ipu_dmfc_get = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 0, i32 0, i32 2, i32 3, i32 4], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [9 x i8] c"dmfcdata\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 47, i32 39 }
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [33 x i8] c"../drivers/gpu/ipu-v3/ipu-dmfc.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 188, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [26 x i8] c"switch.table.ipu_dmfc_get\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_ipu_dmfc_config_wait4eot, ptr @__ksymtab_ipu_dmfc_disable_channel, ptr @__ksymtab_ipu_dmfc_enable_channel, ptr @__ksymtab_ipu_dmfc_get, ptr @__ksymtab_ipu_dmfc_put, ptr @dmfcdata, ptr @ipu_dmfc_init.__key, ptr @.str, ptr @switch.table.ipu_dmfc_get], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfcdata to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_dmfc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ipu_dmfc_get to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipu_dmfc_enable_channel(ptr nocapture noundef readonly %dmfc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dmfc_channel, ptr %dmfc, i32 0, i32 2
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %mutex = getelementptr inbounds %struct.ipu_dmfc_priv, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %use_count = getelementptr inbounds %struct.ipu_dmfc_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call = tail call i32 @ipu_module_enable(ptr noundef %5, i32 noundef 1024) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %use_count, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %use_count, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_module_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipu_dmfc_disable_channel(ptr nocapture noundef readonly %dmfc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dmfc_channel, ptr %dmfc, i32 0, i32 2
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %mutex = getelementptr inbounds %struct.ipu_dmfc_priv, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %use_count = getelementptr inbounds %struct.ipu_dmfc_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use_count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %use_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call = tail call i32 @ipu_module_disable(ptr noundef %5, i32 noundef 1024) #5
  %6 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %use_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = phi i32 [ %.pr, %if.then ], [ %dec, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %use_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %use_count, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_module_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipu_dmfc_config_wait4eot(ptr nocapture noundef readonly %dmfc, i32 noundef %width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dmfc_channel, ptr %dmfc, i32 0, i32 2
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %mutex = getelementptr inbounds %struct.ipu_dmfc_priv, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.ipu_dmfc_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !24
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  %6 = ptrtoint ptr %dmfc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dmfc, align 4
  %mul3 = shl i32 %7, 8
  %div = udiv i32 %mul3, %width
  %data = getelementptr inbounds %struct.dmfc_channel, ptr %dmfc, i32 0, i32 3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %max_fifo_lines = getelementptr inbounds %struct.dmfc_channel_data, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %max_fifo_lines to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_fifo_lines, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %11)
  %cmp = icmp ugt i32 %div, %11
  %eot_shift = getelementptr inbounds %struct.dmfc_channel_data, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %eot_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eot_shift, align 4
  %shl = shl nuw i32 1, %13
  %or = or i32 %shl, %5
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  %dmfc_gen1.0 = select i1 %cmp, i32 %or, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %dmfc_gen1.0)
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %14) #5, !srcloc !27
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipu_dmfc_get(ptr nocapture noundef readonly %ipu, i32 noundef %ipu_channel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dmfc_priv = getelementptr inbounds %struct.ipu_soc, ptr %ipu, i32 0, i32 17
  %0 = ptrtoint ptr %dmfc_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmfc_priv, align 4
  %switch.tableidx = add i32 %ipu_channel, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 7
  br i1 %2, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 115, %switch.maskindex
  %3 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %switch.lobit.not = icmp eq i8 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.ipu_dmfc_get, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx3 = getelementptr %struct.ipu_dmfc_priv, ptr %1, i32 0, i32 2, i32 %switch.load
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx3, %switch.lookup ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %switch.hole_check.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ipu_dmfc_put(ptr nocapture %dmfc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipu_dmfc_init(ptr noundef %ipu, ptr noundef %dev, i32 noundef %base, ptr nocapture noundef readnone %ipu_clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 188, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %base, i32 noundef 4096) #5
  %base2 = getelementptr inbounds %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %base2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %base2, align 4
  %tobool4.not = icmp eq ptr %call1, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %for.inc.4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.4:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev7 = getelementptr inbounds %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev7, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ipu, ptr %call.i, align 4
  %mutex = getelementptr inbounds %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @ipu_dmfc_init.__key) #5
  %dmfc_priv = getelementptr inbounds %struct.ipu_soc, ptr %ipu, i32 0, i32 17
  %3 = ptrtoint ptr %dmfc_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %dmfc_priv, align 4
  %priv9 = getelementptr %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %4 = ptrtoint ptr %priv9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %priv9, align 4
  %ipu12 = getelementptr %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %5 = ptrtoint ptr %ipu12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ipu, ptr %ipu12, align 4
  %data = getelementptr %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dmfcdata, ptr %data, align 4
  %arrayidx = getelementptr %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 2, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %arrayidx, align 4
  %priv9.1 = getelementptr %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 2, i32 1, i32 2
  %8 = ptrtoint ptr %priv9.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %priv9.1, align 4
  %ipu12.1 = getelementptr %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %9 = ptrtoint ptr %ipu12.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ipu, ptr %ipu12.1, align 4
  %data.1 = getelementptr %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 2, i32 1, i32 3
  %10 = ptrtoint ptr %data.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr getelementptr inbounds ([5 x %struct.dmfc_channel_data], ptr @dmfcdata, i32 0, i32 1), ptr %data.1, align 4
  %priv9.2 = getelementptr %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 2, i32 2, i32 2
  %11 = ptrtoint ptr %priv9.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %priv9.2, align 4
  %ipu12.2 = getelementptr %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 2, i32 2, i32 1
  %12 = ptrtoint ptr %ipu12.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ipu, ptr %ipu12.2, align 4
  %data.2 = getelementptr %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 2, i32 2, i32 3
  %13 = ptrtoint ptr %data.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr getelementptr inbounds ([5 x %struct.dmfc_channel_data], ptr @dmfcdata, i32 0, i32 2), ptr %data.2, align 4
  %arrayidx.2 = getelementptr %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %arrayidx.2, align 4
  %priv9.3 = getelementptr %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 2, i32 3, i32 2
  %15 = ptrtoint ptr %priv9.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %priv9.3, align 4
  %ipu12.3 = getelementptr %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 2, i32 3, i32 1
  %16 = ptrtoint ptr %ipu12.3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ipu, ptr %ipu12.3, align 4
  %data.3 = getelementptr %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 2, i32 3, i32 3
  %17 = ptrtoint ptr %data.3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr getelementptr inbounds ([5 x %struct.dmfc_channel_data], ptr @dmfcdata, i32 0, i32 3), ptr %data.3, align 4
  %arrayidx.3 = getelementptr %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %arrayidx.3, align 4
  %priv9.4 = getelementptr %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 2, i32 4, i32 2
  %19 = ptrtoint ptr %priv9.4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %priv9.4, align 4
  %ipu12.4 = getelementptr %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 2, i32 4, i32 1
  %20 = ptrtoint ptr %ipu12.4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ipu, ptr %ipu12.4, align 4
  %data.4 = getelementptr %struct.ipu_dmfc_priv, ptr %call.i, i32 0, i32 2, i32 4, i32 3
  %21 = ptrtoint ptr %data.4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr getelementptr inbounds ([5 x %struct.dmfc_channel_data], ptr @dmfcdata, i32 0, i32 4), ptr %data.4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base2, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1342177280) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base2, align 4
  %add.ptr37 = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 1414922240) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base2, align 4
  %add.ptr42 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 -165666784) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base2, align 4
  %add.ptr47 = getelementptr i8, ptr %29, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 -151642080) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base2, align 4
  %add.ptr52 = getelementptr i8, ptr %31, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 50331648) #5, !srcloc !27
  br label %cleanup

cleanup:                                          ; preds = %for.inc.4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.4 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ipu_dmfc_exit(ptr nocapture noundef %ipu) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__ksymtab_ipu_dmfc_enable_channel, !1, !"__ksymtab_ipu_dmfc_enable_channel", i1 false, i1 false}
!1 = !{!"../drivers/gpu/ipu-v3/ipu-dmfc.c", i32 115, i32 1}
!2 = !{ptr @__ksymtab_ipu_dmfc_disable_channel, !3, !"__ksymtab_ipu_dmfc_disable_channel", i1 false, i1 false}
!3 = !{!"../drivers/gpu/ipu-v3/ipu-dmfc.c", i32 133, i32 1}
!4 = !{ptr @__ksymtab_ipu_dmfc_config_wait4eot, !5, !"__ksymtab_ipu_dmfc_config_wait4eot", i1 false, i1 false}
!5 = !{!"../drivers/gpu/ipu-v3/ipu-dmfc.c", i32 153, i32 1}
!6 = !{ptr @__ksymtab_ipu_dmfc_get, !7, !"__ksymtab_ipu_dmfc_get", i1 false, i1 false}
!7 = !{!"../drivers/gpu/ipu-v3/ipu-dmfc.c", i32 165, i32 1}
!8 = !{ptr @__ksymtab_ipu_dmfc_put, !9, !"__ksymtab_ipu_dmfc_put", i1 false, i1 false}
!9 = !{!"../drivers/gpu/ipu-v3/ipu-dmfc.c", i32 170, i32 1}
!10 = !{ptr @ipu_dmfc_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/gpu/ipu-v3/ipu-dmfc.c", i32 188, i32 2}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @dmfcdata, !14, !"dmfcdata", i1 false, i1 false}
!14 = !{!"../drivers/gpu/ipu-v3/ipu-dmfc.c", i32 47, i32 39}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 690067}
!25 = !{i64 2156276423}
!26 = !{i64 2156276652}
!27 = !{i64 689649}
!28 = !{i64 2156282643}
!29 = !{i64 2156283071}
!30 = !{i64 2156283499}
!31 = !{i64 2156283927}
!32 = !{i64 2156284355}

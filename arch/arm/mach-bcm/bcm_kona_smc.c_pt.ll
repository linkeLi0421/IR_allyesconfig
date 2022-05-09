; ModuleID = '/llk/IR_all_yes/arch/arm/mach-bcm/bcm_kona_smc.c_pt.bc'
source_filename = "../arch/arm/mach-bcm/bcm_kona_smc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcm_kona_smc_data = type { i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@bcm_kona_smc_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,kona-smc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"bcm,kona-smc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@bcm_smc_buffer = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bcm_smc_buffer_phys = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bcm_kona_smc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016Kona Secure API initialized\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm_kona_smc_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"arch/arm/mach-bcm/bcm_kona_smc.c\00", [63 x i8] zeroinitializer }, align 32
@bcm_kona_smc_init._entry_ptr = internal global ptr @bcm_kona_smc_init._entry, section ".printk_index", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@___asan_gen_.3 = private unnamed_addr constant [15 x i8] c"bcm_smc_buffer\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 23, i32 22 }
@___asan_gen_.6 = private unnamed_addr constant [20 x i8] c"bcm_smc_buffer_phys\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 22, i32 13 }
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [36 x i8] c"../arch/arm/mach-bcm/bcm_kona_smc.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 72, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @bcm_kona_smc_init._entry, ptr @bcm_kona_smc_init._entry_ptr, ptr @bcm_smc_buffer, ptr @bcm_smc_buffer_phys, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_smc_buffer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_smc_buffer_phys to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_smc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_kona_smc_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %prop_size = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prop_size) #7
  %0 = ptrtoint ptr %prop_size to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %prop_size, align 8
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @bcm_kona_smc_ids, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i25 = call ptr @__of_get_address(ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %prop_size, ptr noundef null) #7
  %tobool2.not = icmp eq ptr %call.i25, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %prop_size to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %prop_size, align 8
  %3 = add i64 %2, -4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967280, i64 %3)
  %4 = icmp ult i64 %3, -4294967280
  br i1 %4, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %5 = ptrtoint ptr %call.i25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %conv = trunc i64 %2 to i32
  %call12 = call ptr @ioremap(i32 noundef %6, i32 noundef %conv) #7
  store ptr %call12, ptr @bcm_smc_buffer, align 4
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  store i32 %6, ptr @bcm_smc_buffer_phys, align 4
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prop_size) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_kona_smc(i32 noundef %service_id, i32 noundef %arg0, i32 noundef %arg1, i32 noundef %arg2, i32 noundef %arg3) local_unnamed_addr #4 align 64 {
entry:
  %data = alloca %struct.bcm_kona_smc_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data) #7
  %0 = getelementptr inbounds %struct.bcm_kona_smc_data, ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds %struct.bcm_kona_smc_data, ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds %struct.bcm_kona_smc_data, ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds %struct.bcm_kona_smc_data, ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds %struct.bcm_kona_smc_data, ptr %data, i32 0, i32 5
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %service_id, ptr %data, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %arg0, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %arg1, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %arg2, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %arg3, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %4, align 4
  %call = call i32 @smp_call_function_single(i32 noundef 0, ptr noundef nonnull @__bcm_kona_smc, ptr noundef nonnull %data, i32 noundef 1) #7
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data) #7
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bcm_kona_smc(ptr nocapture noundef %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @bcm_smc_buffer, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !12) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %do.body8, label %do.body2, !prof !22

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-bcm/bcm_kona_smc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 143, 0\0A.popsection", ""() #7, !srcloc !23
  unreachable

do.body8:                                         ; preds = %entry
  %tobool9.not = icmp eq ptr %0, null
  br i1 %tobool9.not, label %do.body19, label %do.end27, !prof !24

do.body19:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-bcm/bcm_kona_smc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !25
  unreachable

do.end27:                                         ; preds = %do.body8
  %arg0 = getelementptr inbounds %struct.bcm_kona_smc_data, ptr %info, i32 0, i32 1
  %5 = ptrtoint ptr %arg0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arg0, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %incdec.ptr = getelementptr i32, ptr %0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %0, i32 %7) #7, !srcloc !26
  %arg1 = getelementptr inbounds %struct.bcm_kona_smc_data, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %arg1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arg1, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %incdec.ptr28 = getelementptr i32, ptr %0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr, i32 %10) #7, !srcloc !26
  %arg2 = getelementptr inbounds %struct.bcm_kona_smc_data, ptr %info, i32 0, i32 3
  %11 = ptrtoint ptr %arg2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arg2, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %incdec.ptr29 = getelementptr i32, ptr %0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr28, i32 %13) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %arg3 = getelementptr inbounds %struct.bcm_kona_smc_data, ptr %info, i32 0, i32 4
  %14 = ptrtoint ptr %arg3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arg3, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr29, i32 %16) #7, !srcloc !26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %17() #7
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %info, align 4
  %20 = load i32, ptr @bcm_smc_buffer_phys, align 4
  %21 = tail call { i32, i32 } asm sideeffect ".ifnc $0,ip; .ifnc $0ip,fpr11; .ifnc $0ip,r11fp; .ifnc $0ip,ipr12; .ifnc $0ip,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r0; .ifnc $1r0,fpr11; .ifnc $1r0,r11fp; .ifnc $1r0,ipr12; .ifnc $1r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r5; .ifnc $3r5,fpr11; .ifnc $3r5,r11fp; .ifnc $3r5,ipr12; .ifnc $3r5,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $4,r6; .ifnc $4r6,fpr11; .ifnc $4r6,r11fp; .ifnc $4r6,ipr12; .ifnc $4r6,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.arch_extension sec\0A\09smc    #0\0A", "={r12},={r0},{r4},{r5},{r6},~{r1},~{r2},~{r3},~{r7},~{lr}"(i32 %19, i32 3, i32 %20) #7, !srcloc !28
  %asmresult.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i)
  %cmp.not.i = icmp eq i32 %asmresult.i, 1
  br i1 %cmp.not.i, label %bcm_kona_do_smc.exit, label %do.body3.i, !prof !22

do.body3.i:                                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-bcm/bcm_kona_smc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #7, !srcloc !29
  unreachable

bcm_kona_do_smc.exit:                             ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  %asmresult1.i = extractvalue { i32, i32 } %21, 1
  %result = getelementptr inbounds %struct.bcm_kona_smc_data, ptr %info, i32 0, i32 5
  %22 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %asmresult1.i, ptr %result, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10}
!llvm.named.register.sp = !{!12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-bcm/bcm_kona_smc.c", i32 72, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @bcm_kona_smc_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @bcm_kona_smc_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @bcm_smc_buffer_phys, !7, !"bcm_smc_buffer_phys", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-bcm/bcm_kona_smc.c", i32 22, i32 13}
!8 = !{ptr @bcm_smc_buffer, !9, !"bcm_smc_buffer", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-bcm/bcm_kona_smc.c", i32 23, i32 22}
!10 = !{ptr @bcm_kona_smc_ids, !11, !"bcm_kona_smc_ids", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-bcm/bcm_kona_smc.c", i32 34, i32 34}
!12 = !{!"sp"}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2153561693, i64 2153562190, i64 2153561730, i64 2153561786, i64 2153561820, i64 2153561844, i64 2153561885, i64 2153561906, i64 2153561934, i64 2153561968}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 2153563298, i64 2153563795, i64 2153563335, i64 2153563391, i64 2153563425, i64 2153563449, i64 2153563490, i64 2153563511, i64 2153563539, i64 2153563573}
!26 = !{i64 1591056}
!27 = !{i64 2153565318}
!28 = !{i64 2153557991, i64 2153558271, i64 2153558605, i64 2153558939, i64 2153559273, i64 2153559607, i64 3754}
!29 = !{i64 2153559958, i64 2153560455, i64 2153559995, i64 2153560051, i64 2153560085, i64 2153560109, i64 2153560150, i64 2153560171, i64 2153560199, i64 2153560233}

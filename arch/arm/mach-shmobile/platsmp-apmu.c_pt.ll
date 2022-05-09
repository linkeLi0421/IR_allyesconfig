; ModuleID = '/llk/IR_all_yes/arch/arm/mach-shmobile/platsmp-apmu.c_pt.bc'
source_filename = "../arch/arm/mach-shmobile/platsmp-apmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.anon.84 = type { ptr, i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@shmobile_suspend_ops = external dso_local local_unnamed_addr global %struct.platform_suspend_ops, align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"renesas,apmu\00", [19 x i8] zeroinitializer }, align 32
@apmu_smp_ops = internal global %struct.smp_operations { ptr null, ptr @shmobile_smp_apmu_prepare_cpus_dt, ptr null, ptr @shmobile_smp_apmu_boot_secondary, ptr @shmobile_smp_apmu_cpu_kill, ptr @shmobile_smp_apmu_cpu_die, ptr @shmobile_smp_cpu_can_disable, ptr null }, section ".init.data", align 4
@__cpu_method_of_table_shmobile_smp_apmu = internal constant %struct.of_cpu_method { ptr @.str, ptr @apmu_smp_ops }, section "__cpu_method_of_table", align 4
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@apmu_cpus = internal global { [4 x %struct.anon.84], [32 x i8] } zeroinitializer, align 32
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@shmobile_boot_fn = external dso_local local_unnamed_addr global i32, align 4
@shmobile_boot_fn_gen2 = external dso_local local_unnamed_addr global i32, align 4
@apmu_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,apmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpus\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@apmu_init_cpu.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"platsmp_apmu\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apmu_init_cpu\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"arch/arm/mach-shmobile/platsmp-apmu.c\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"apmu ioremap %d %d %pr\0A\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 285, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"apmu_cpus\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 28, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant [9 x i8] c"apmu_ids\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 203, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 220, i32 39 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 222, i32 39 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [41 x i8] c"../arch/arm/mach-shmobile/platsmp-apmu.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 195, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__cpu_method_of_table_shmobile_smp_apmu, ptr @.str, ptr @apmu_cpus, ptr @apmu_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apmu_cpus to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apmu_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @shmobile_smp_apmu_suspend_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.platform_suspend_ops, ptr @shmobile_suspend_ops, i32 0, i32 4) to i32))
  store ptr @shmobile_smp_apmu_enter_suspend, ptr getelementptr inbounds (%struct.platform_suspend_ops, ptr @shmobile_suspend_ops, i32 0, i32 4), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmobile_smp_apmu_enter_suspend(i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !19) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %call1 = tail call i32 @cpu_suspend(i32 noundef %3, ptr noundef nonnull @shmobile_smp_apmu_do_suspend) #7
  %4 = tail call i32 asm sideeffect "mrc    p15, 0, $0, c1, c0, 0\0A       orr     $0, $0, $1\0A       mcr     p15, 0, $0, c1, c0, 0\0A       mrc     p15, 0, $0, c1, c0, 1\0A       orr     $0, $0, $2\0A       mcr     p15, 0, $0, c1, c0, 1\0A", "=&r,Ir,Ir,~{cc}"(i32 4, i32 64) #7, !srcloc !29
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmobile_smp_apmu_do_suspend(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @cpu_resume to i32)) #7
  tail call void @shmobile_smp_hook(i32 noundef %cpu, i32 noundef %call, i32 noundef 0) #7
  %arrayidx.i.i = getelementptr [4 x %struct.anon.84], ptr @apmu_cpus, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.shmobile_smp_apmu_cpu_shutdown.exit_crit_edge, label %cond.true.i.i

entry.shmobile_smp_apmu_cpu_shutdown.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %shmobile_smp_apmu_cpu_shutdown.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bit.i.i = getelementptr [4 x %struct.anon.84], ptr @apmu_cpus, i32 0, i32 %cpu, i32 1
  %2 = ptrtoint ptr %bit.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit.i.i, align 4
  %mul.i.i = shl i32 %3, 4
  %add.i.i = add i32 %mul.i.i, 256
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 50331648) #7, !srcloc !30
  br label %shmobile_smp_apmu_cpu_shutdown.exit

shmobile_smp_apmu_cpu_shutdown.exit:              ; preds = %cond.true.i.i, %entry.shmobile_smp_apmu_cpu_shutdown.exit_crit_edge
  %4 = tail call i32 asm sideeffect "       mrc     p15, 0, $0, c1, c0, 0\0A       bic     $0, $0, $1\0A       mcr     p15, 0, $0, c1, c0, 0\0A", "=&r,Ir,~{cc}"(i32 4) #7, !srcloc !31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 2), align 4
  tail call void %5() #7
  %6 = tail call i32 asm sideeffect "       mrc     p15, 0, $0, c1, c0, 1\0A       bic     $0, $0, $1\0A       mcr     p15, 0, $0, c1, c0, 1\0A", "=&r,Ir,~{cc}"(i32 64) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  %7 = tail call i32 @llvm.read_register.i32(metadata !19) #7
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu2, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %_do_idle = getelementptr inbounds %struct.processor, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %_do_idle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_do_idle, align 4
  %call3 = tail call i32 %14() #7
  ret i32 1
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmobile_smp_hook(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_resume() #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @shmobile_smp_apmu_prepare_cpus_dt(i32 noundef %max_cpus) #5 section ".init.text" align 64 {
entry:
  %args.i2.i = alloca %struct.of_phandle_args, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %res.i = alloca %struct.resource, align 4
  %id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @shmobile_smp_boot to i32)) #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @shmobile_boot_fn to i32))
  store i32 %call.i, ptr @shmobile_boot_fn, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @shmobile_boot_fn_gen2 to i32))
  store i32 %call.i, ptr @shmobile_boot_fn_gen2, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #7
  %0 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #7
  %1 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %id.i, align 4, !annotation !35
  %call.i.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @apmu_ids, ptr noundef null) #7
  %tobool.not24.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not24.i, label %entry.apmu_parse_dt.exit_crit_edge, label %entry.for.cond1.preheader.i_crit_edge

entry.for.cond1.preheader.i_crit_edge:            ; preds = %entry
  br label %for.cond1.preheader.i

entry.apmu_parse_dt.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %apmu_parse_dt.exit

for.cond1.preheader.i:                            ; preds = %cleanup.i.for.cond1.preheader.i_crit_edge, %entry.for.cond1.preheader.i_crit_edge
  %np_apmu.025.i = phi ptr [ %call.i10.i, %cleanup.i.for.cond1.preheader.i_crit_edge ], [ %call.i.i, %entry.for.cond1.preheader.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %2 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i1.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %np_apmu.025.i, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  br label %for.inc.i

of_parse_phandle.exit.i:                          ; preds = %for.cond1.preheader.i
  %3 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %tobool4.not.i = icmp eq ptr %4, null
  br i1 %tobool4.not.i, label %of_parse_phandle.exit.i.for.inc.i_crit_edge, label %if.then.i

of_parse_phandle.exit.i.for.inc.i_crit_edge:      ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %of_parse_phandle.exit.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.2, ptr noundef nonnull %id.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool6.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool6.not.i, label %if.then7.i, label %if.then.i.if.end10.i_crit_edge

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.then.i
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__cpu_logical_map to i32))
  %7 = load i32, ptr @__cpu_logical_map, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %7)
  %cmp8.i = icmp eq i32 %6, %7
  br i1 %cmp8.i, label %if.then7.i.if.then9.i_crit_edge, label %if.then7.i.if.end10.i_crit_edge

if.then7.i.if.end10.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then7.i.if.then9.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i

if.then9.i:                                       ; preds = %if.then7.3.i.if.then9.i_crit_edge, %if.then7.2.i.if.then9.i_crit_edge, %if.then7.1.i.if.then9.i_crit_edge, %if.then7.i.if.then9.i_crit_edge
  %.lcssa.i = phi ptr [ %4, %if.then7.i.if.then9.i_crit_edge ], [ %10, %if.then7.1.i.if.then9.i_crit_edge ], [ %16, %if.then7.2.i.if.then9.i_crit_edge ], [ %22, %if.then7.3.i.if.then9.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %.lcssa.i) #7
  br label %for.body17.i

if.end10.i:                                       ; preds = %if.then7.i.if.end10.i_crit_edge, %if.then.i.if.end10.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %4) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i, %of_parse_phandle.exit.i.for.inc.i_crit_edge, %of_parse_phandle.exit.thread.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %8 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i1.1.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %np_apmu.025.i, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.1.i)
  %tobool.not.i.1.i = icmp eq i32 %call.i1.1.i, 0
  br i1 %tobool.not.i.1.i, label %of_parse_phandle.exit.1.i, label %of_parse_phandle.exit.thread.1.i

of_parse_phandle.exit.thread.1.i:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  br label %for.inc.1.i

of_parse_phandle.exit.1.i:                        ; preds = %for.inc.i
  %9 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %tobool4.not.1.i = icmp eq ptr %10, null
  br i1 %tobool4.not.1.i, label %of_parse_phandle.exit.1.i.for.inc.1.i_crit_edge, label %if.then.1.i

of_parse_phandle.exit.1.i.for.inc.1.i_crit_edge:  ; preds = %of_parse_phandle.exit.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %of_parse_phandle.exit.1.i
  %call.i.i.1.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.2, ptr noundef nonnull %id.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.1.i)
  %tobool6.not.1.i = icmp sgt i32 %call.i.i.1.i, -1
  br i1 %tobool6.not.1.i, label %if.then7.1.i, label %if.then.1.i.if.end10.1.i_crit_edge

if.then.1.i.if.end10.1.i_crit_edge:               ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.1.i

if.then7.1.i:                                     ; preds = %if.then.1.i
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__cpu_logical_map to i32))
  %13 = load i32, ptr @__cpu_logical_map, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp8.1.i = icmp eq i32 %12, %13
  br i1 %cmp8.1.i, label %if.then7.1.i.if.then9.i_crit_edge, label %if.then7.1.i.if.end10.1.i_crit_edge

if.then7.1.i.if.end10.1.i_crit_edge:              ; preds = %if.then7.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.1.i

if.then7.1.i.if.then9.i_crit_edge:                ; preds = %if.then7.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i

if.end10.1.i:                                     ; preds = %if.then7.1.i.if.end10.1.i_crit_edge, %if.then.1.i.if.end10.1.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %10) #7
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end10.1.i, %of_parse_phandle.exit.1.i.for.inc.1.i_crit_edge, %of_parse_phandle.exit.thread.1.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %14 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i1.2.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %np_apmu.025.i, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.2.i)
  %tobool.not.i.2.i = icmp eq i32 %call.i1.2.i, 0
  br i1 %tobool.not.i.2.i, label %of_parse_phandle.exit.2.i, label %of_parse_phandle.exit.thread.2.i

of_parse_phandle.exit.thread.2.i:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  br label %for.inc.2.i

of_parse_phandle.exit.2.i:                        ; preds = %for.inc.1.i
  %15 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %tobool4.not.2.i = icmp eq ptr %16, null
  br i1 %tobool4.not.2.i, label %of_parse_phandle.exit.2.i.for.inc.2.i_crit_edge, label %if.then.2.i

of_parse_phandle.exit.2.i.for.inc.2.i_crit_edge:  ; preds = %of_parse_phandle.exit.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %of_parse_phandle.exit.2.i
  %call.i.i.2.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %16, ptr noundef nonnull @.str.2, ptr noundef nonnull %id.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.2.i)
  %tobool6.not.2.i = icmp sgt i32 %call.i.i.2.i, -1
  br i1 %tobool6.not.2.i, label %if.then7.2.i, label %if.then.2.i.if.end10.2.i_crit_edge

if.then.2.i.if.end10.2.i_crit_edge:               ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.2.i

if.then7.2.i:                                     ; preds = %if.then.2.i
  %17 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__cpu_logical_map to i32))
  %19 = load i32, ptr @__cpu_logical_map, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %19)
  %cmp8.2.i = icmp eq i32 %18, %19
  br i1 %cmp8.2.i, label %if.then7.2.i.if.then9.i_crit_edge, label %if.then7.2.i.if.end10.2.i_crit_edge

if.then7.2.i.if.end10.2.i_crit_edge:              ; preds = %if.then7.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.2.i

if.then7.2.i.if.then9.i_crit_edge:                ; preds = %if.then7.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i

if.end10.2.i:                                     ; preds = %if.then7.2.i.if.end10.2.i_crit_edge, %if.then.2.i.if.end10.2.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %16) #7
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end10.2.i, %of_parse_phandle.exit.2.i.for.inc.2.i_crit_edge, %of_parse_phandle.exit.thread.2.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %20 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i1.3.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %np_apmu.025.i, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 3, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.3.i)
  %tobool.not.i.3.i = icmp eq i32 %call.i1.3.i, 0
  br i1 %tobool.not.i.3.i, label %of_parse_phandle.exit.3.i, label %of_parse_phandle.exit.thread.3.i

of_parse_phandle.exit.thread.3.i:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  br label %cleanup.i

of_parse_phandle.exit.3.i:                        ; preds = %for.inc.2.i
  %21 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %tobool4.not.3.i = icmp eq ptr %22, null
  br i1 %tobool4.not.3.i, label %of_parse_phandle.exit.3.i.cleanup.i_crit_edge, label %if.then.3.i

of_parse_phandle.exit.3.i.cleanup.i_crit_edge:    ; preds = %of_parse_phandle.exit.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.then.3.i:                                      ; preds = %of_parse_phandle.exit.3.i
  %call.i.i.3.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %22, ptr noundef nonnull @.str.2, ptr noundef nonnull %id.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.3.i)
  %tobool6.not.3.i = icmp sgt i32 %call.i.i.3.i, -1
  br i1 %tobool6.not.3.i, label %if.then7.3.i, label %if.then.3.i.if.end10.3.i_crit_edge

if.then.3.i.if.end10.3.i_crit_edge:               ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.3.i

if.then7.3.i:                                     ; preds = %if.then.3.i
  %23 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__cpu_logical_map to i32))
  %25 = load i32, ptr @__cpu_logical_map, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %25)
  %cmp8.3.i = icmp eq i32 %24, %25
  br i1 %cmp8.3.i, label %if.then7.3.i.if.then9.i_crit_edge, label %if.then7.3.i.if.end10.3.i_crit_edge

if.then7.3.i.if.end10.3.i_crit_edge:              ; preds = %if.then7.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.3.i

if.then7.3.i.if.then9.i_crit_edge:                ; preds = %if.then7.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i

if.end10.3.i:                                     ; preds = %if.then7.3.i.if.end10.3.i_crit_edge, %if.then.3.i.if.end10.3.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %22) #7
  br label %cleanup.i

for.body17.i:                                     ; preds = %for.inc32.i.for.body17.i_crit_edge, %if.then9.i
  %bit.121.i = phi i32 [ 0, %if.then9.i ], [ %inc33.i, %for.inc32.i.for.body17.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i2.i) #7
  %26 = call ptr @memset(ptr %args.i2.i, i32 255, i32 72)
  %call.i3.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %np_apmu.025.i, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef %bit.121.i, ptr noundef nonnull %args.i2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool.not.i4.i, label %of_parse_phandle.exit7.i, label %of_parse_phandle.exit7.thread.i

of_parse_phandle.exit7.thread.i:                  ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i2.i) #7
  br label %for.inc32.i

of_parse_phandle.exit7.i:                         ; preds = %for.body17.i
  %27 = ptrtoint ptr %args.i2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %args.i2.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i2.i) #7
  %tobool19.not.i = icmp eq ptr %28, null
  br i1 %tobool19.not.i, label %of_parse_phandle.exit7.i.for.inc32.i_crit_edge, label %if.then20.i

of_parse_phandle.exit7.i.for.inc32.i_crit_edge:   ; preds = %of_parse_phandle.exit7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc32.i

if.then20.i:                                      ; preds = %of_parse_phandle.exit7.i
  %call.i.i8.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %28, ptr noundef nonnull @.str.2, ptr noundef nonnull %id.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i8.i)
  %tobool22.not.i = icmp sgt i32 %call.i.i8.i, -1
  br i1 %tobool22.not.i, label %if.then23.i, label %if.then20.i.if.end30.i_crit_edge

if.then20.i.if.end30.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then23.i:                                      ; preds = %if.then20.i
  %29 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %31 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp5.not.i.i = icmp eq i32 %31, 0
  br i1 %cmp5.not.i.i, label %if.then23.i.if.end30.i_crit_edge, label %if.then23.i.for.body.i.i_crit_edge

if.then23.i.for.body.i.i_crit_edge:               ; preds = %if.then23.i
  br label %for.body.i.i

if.then23.i.if.end30.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then23.i.for.body.i.i_crit_edge
  %cpu.06.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then23.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu.06.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %30)
  %cmp1.i.i = icmp eq i32 %33, %30
  br i1 %cmp1.i.i, label %get_logical_index.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %cpu.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %31
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end30.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.if.end30.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

get_logical_index.exit.i:                         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cpu.06.i.i)
  %cmp25.i = icmp sgt i32 %cpu.06.i.i, -1
  br i1 %cmp25.i, label %land.lhs.true.i, label %get_logical_index.exit.i.if.end30.i_crit_edge

get_logical_index.exit.i.if.end30.i_crit_edge:    ; preds = %get_logical_index.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

land.lhs.true.i:                                  ; preds = %get_logical_index.exit.i
  %call26.i = call i32 @of_address_to_resource(ptr noundef nonnull %np_apmu.025.i, i32 noundef 0, ptr noundef nonnull %res.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.then28.i, label %land.lhs.true.i.if.end30.i_crit_edge

land.lhs.true.i.if.end30.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then28.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @apmu_init_cpu(ptr noundef nonnull %res.i, i32 noundef %cpu.06.i.i, i32 noundef %bit.121.i) #7
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then28.i, %land.lhs.true.i.if.end30.i_crit_edge, %get_logical_index.exit.i.if.end30.i_crit_edge, %for.inc.i.i.if.end30.i_crit_edge, %if.then23.i.if.end30.i_crit_edge, %if.then20.i.if.end30.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %28) #7
  br label %for.inc32.i

for.inc32.i:                                      ; preds = %if.end30.i, %of_parse_phandle.exit7.i.for.inc32.i_crit_edge, %of_parse_phandle.exit7.thread.i
  %inc33.i = add nuw nsw i32 %bit.121.i, 1
  %exitcond.not.i = icmp eq i32 %inc33.i, 4
  br i1 %exitcond.not.i, label %for.inc32.i.cleanup.i_crit_edge, label %for.inc32.i.for.body17.i_crit_edge

for.inc32.i.for.body17.i_crit_edge:               ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body17.i

for.inc32.i.cleanup.i_crit_edge:                  ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.inc32.i.cleanup.i_crit_edge, %if.end10.3.i, %of_parse_phandle.exit.3.i.cleanup.i_crit_edge, %of_parse_phandle.exit.thread.3.i
  %call.i10.i = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np_apmu.025.i, ptr noundef nonnull @apmu_ids, ptr noundef null) #7
  %tobool.not.i = icmp eq ptr %call.i10.i, null
  br i1 %tobool.not.i, label %cleanup.i.apmu_parse_dt.exit_crit_edge, label %cleanup.i.for.cond1.preheader.i_crit_edge

cleanup.i.for.cond1.preheader.i_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.i

cleanup.i.apmu_parse_dt.exit_crit_edge:           ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %apmu_parse_dt.exit

apmu_parse_dt.exit:                               ; preds = %cleanup.i.apmu_parse_dt.exit_crit_edge, %entry.apmu_parse_dt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #7
  call void @rcar_gen2_pm_init() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmobile_smp_apmu_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @shmobile_boot_apmu to i32)) #7
  tail call void @shmobile_smp_hook(i32 noundef %cpu, i32 noundef %call, i32 noundef 0) #7
  %arrayidx.i = getelementptr [4 x %struct.anon.84], ptr @apmu_cpus, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.apmu_wrap.exit_crit_edge, label %cond.true.i

entry.apmu_wrap.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %apmu_wrap.exit

cond.true.i:                                      ; preds = %entry
  %bit.i = getelementptr [4 x %struct.anon.84], ptr @apmu_cpus, i32 0, i32 %cpu, i32 1
  %2 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit.i, align 4
  %shl.i = shl nuw i32 1, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !30
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %cond.true.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !36
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %while.cond.i.apmu_wrap.exit_crit_edge, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.cond.i.apmu_wrap.exit_crit_edge:            ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %apmu_wrap.exit

apmu_wrap.exit:                                   ; preds = %while.cond.i.apmu_wrap.exit_crit_edge, %entry.apmu_wrap.exit_crit_edge
  %cond.i = phi i32 [ -22, %entry.apmu_wrap.exit_crit_edge ], [ 0, %while.cond.i.apmu_wrap.exit_crit_edge ]
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmobile_smp_apmu_cpu_kill(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [4 x %struct.anon.84], ptr @apmu_cpus, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.apmu_wrap.exit_crit_edge, label %cond.true.i

entry.apmu_wrap.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %apmu_wrap.exit

cond.true.i:                                      ; preds = %entry
  %bit.i = getelementptr [4 x %struct.anon.84], ptr @apmu_cpus, i32 0, i32 %cpu, i32 1
  %2 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  %mul.i = shl i32 %3, 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %cond.true.i
  %k.03.i = phi i32 [ 0, %cond.true.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !36
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  %shr.i = lshr i32 %5, %mul.i
  %and.i = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 3
  br i1 %cmp1.i, label %for.body.i.apmu_wrap.exit_crit_edge, label %if.end.i

for.body.i.apmu_wrap.exit_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %apmu_wrap.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #7
  %inc.i = add nuw nsw i32 %k.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %if.end.i.apmu_wrap.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end.i.apmu_wrap.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %apmu_wrap.exit

apmu_wrap.exit:                                   ; preds = %if.end.i.apmu_wrap.exit_crit_edge, %for.body.i.apmu_wrap.exit_crit_edge, %entry.apmu_wrap.exit_crit_edge
  %cond.i = phi i32 [ -22, %entry.apmu_wrap.exit_crit_edge ], [ 0, %if.end.i.apmu_wrap.exit_crit_edge ], [ 1, %for.body.i.apmu_wrap.exit_crit_edge ]
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shmobile_smp_apmu_cpu_die(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @shmobile_smp_hook(i32 noundef %cpu, i32 noundef 0, i32 noundef 0) #7
  %arrayidx.i.i = getelementptr [4 x %struct.anon.84], ptr @apmu_cpus, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.shmobile_smp_apmu_cpu_shutdown.exit_crit_edge, label %cond.true.i.i

entry.shmobile_smp_apmu_cpu_shutdown.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %shmobile_smp_apmu_cpu_shutdown.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bit.i.i = getelementptr [4 x %struct.anon.84], ptr @apmu_cpus, i32 0, i32 %cpu, i32 1
  %2 = ptrtoint ptr %bit.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit.i.i, align 4
  %mul.i.i = shl i32 %3, 4
  %add.i.i = add i32 %mul.i.i, 256
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 50331648) #7, !srcloc !30
  br label %shmobile_smp_apmu_cpu_shutdown.exit

shmobile_smp_apmu_cpu_shutdown.exit:              ; preds = %cond.true.i.i, %entry.shmobile_smp_apmu_cpu_shutdown.exit_crit_edge
  %4 = tail call i32 asm sideeffect "       mrc     p15, 0, $0, c1, c0, 0\0A       bic     $0, $0, $1\0A       mcr     p15, 0, $0, c1, c0, 0\0A", "=&r,Ir,~{cc}"(i32 4) #7, !srcloc !31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 2), align 4
  tail call void %5() #7
  %6 = tail call i32 asm sideeffect "       mrc     p15, 0, $0, c1, c0, 1\0A       bic     $0, $0, $1\0A       mcr     p15, 0, $0, c1, c0, 1\0A", "=&r,Ir,~{cc}"(i32 64) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @shmobile_smp_sleep() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @shmobile_smp_cpu_can_disable(i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apmu_init_cpu(ptr noundef %res, i32 noundef %cpu, i32 noundef %bit) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cpu)
  %cmp = icmp ugt i32 %cpu, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr [4 x %struct.anon.84], ptr @apmu_cpus, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %res, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %call1 = tail call ptr @ioremap(i32 noundef %3, i32 noundef %add.i) #7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %arrayidx, align 4
  %bit5 = getelementptr [4 x %struct.anon.84], ptr @apmu_cpus, i32 0, i32 %cpu, i32 1
  %7 = ptrtoint ptr %bit5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bit, ptr %bit5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apmu_init_cpu.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@apmu_init_cpu, %if.then10)) #7
          to label %do.end [label %if.then10], !srcloc !37

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @apmu_init_cpu.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.6, i32 noundef %cpu, i32 noundef %bit, ptr noundef %res) #7
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.end
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 384
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !36
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  %add = add i32 %bit, 20
  %shl = shl nuw i32 1, %add
  %or17 = or i32 %shl, %11
  %or18 = or i32 %or17, 17301504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %add.ptr24 = getelementptr i8, ptr %14, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %12) #7, !srcloc !30
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_gen2_pm_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmobile_smp_boot() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmobile_boot_apmu() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmobile_smp_sleep() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !18}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-shmobile/platsmp-apmu.c", i32 285, i32 1}
!2 = !{ptr @__cpu_method_of_table_shmobile_smp_apmu, !1, !"__cpu_method_of_table_shmobile_smp_apmu", i1 false, i1 false}
!3 = !{ptr @apmu_cpus, !4, !"apmu_cpus", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-shmobile/platsmp-apmu.c", i32 28, i32 3}
!5 = !{ptr @apmu_smp_ops, !6, !"apmu_smp_ops", i1 false, i1 false}
!6 = !{!"../arch/arm/mach-shmobile/platsmp-apmu.c", i32 275, i32 30}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../arch/arm/mach-shmobile/platsmp-apmu.c", i32 220, i32 39}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-shmobile/platsmp-apmu.c", i32 222, i32 39}
!11 = !{ptr @apmu_ids, !12, !"apmu_ids", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-shmobile/platsmp-apmu.c", i32 203, i32 34}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-shmobile/platsmp-apmu.c", i32 195, i32 2}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @apmu_init_cpu.__UNIQUE_ID_ddebug288, !14, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 3698, i64 3739, i64 3776, i64 3824, i64 3872, i64 3909}
!30 = !{i64 3045403}
!31 = !{i64 2327, i64 2370, i64 2401}
!32 = !{i64 2554, i64 2597, i64 2628}
!33 = !{i64 2155003037}
!34 = !{i64 2155003121}
!35 = !{!"auto-init"}
!36 = !{i64 3045821}
!37 = !{i64 2148699032, i64 2148699037, i64 2148699050, i64 2148699094, i64 2148699128, i64 2148699149}
!38 = !{i64 2155007135}
!39 = !{i64 2155007636}

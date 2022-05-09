; ModuleID = '/llk/IR_all_yes/arch/arm/mach-shmobile/pm-rcar-gen2.c_pt.bc'
source_filename = "../arch/arm/mach-shmobile/pm-rcar-gen2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@rcar_gen2_pm_init.once = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arm,cortex-a15\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"arm,cortex-a7\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"renesas,smp-sram\00", [47 x i8] zeroinitializer }, align 32
@shmobile_boot_size = external dso_local local_unnamed_addr global i32, align 4
@rcar_gen2_pm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Failed to get smp-sram address: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rcar_gen2_pm_init\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"arch/arm/mach-shmobile/pm-rcar-gen2.c\00", [58 x i8] zeroinitializer }, align 32
@rcar_gen2_pm_init._entry_ptr = internal global ptr @rcar_gen2_pm_init._entry, section ".printk_index", align 4
@rcar_gen2_pm_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Invalid smp-sram region\0A\00", [37 x i8] zeroinitializer }, align 32
@rcar_gen2_pm_init._entry_ptr.8 = internal global ptr @rcar_gen2_pm_init._entry.6, section ".printk_index", align 4
@shmobile_boot_size_gen2 = external dso_local local_unnamed_addr global i32, align 4
@shmobile_boot_cpu_gen2 = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.9 = private unnamed_addr constant [5 x i8] c"once\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 49, i32 13 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 60, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 62, i32 40 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 66, i32 43 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 77, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [41 x i8] c"../arch/arm/mach-shmobile/pm-rcar-gen2.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 85, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @rcar_gen2_pm_init._entry, ptr @rcar_gen2_pm_init._entry.6, ptr @rcar_gen2_pm_init._entry_ptr, ptr @rcar_gen2_pm_init._entry_ptr.8, ptr @rcar_gen2_pm_init.once, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_pm_init.once to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_pm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_pm_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @rcar_gen2_pm_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #5
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %1 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 2
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %3 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 4
  %4 = call ptr @memset(ptr %res, i32 255, i32 32)
  %5 = load i32, ptr @rcar_gen2_pm_init.once, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr @rcar_gen2_pm_init.once, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_get_next_cpu_node(ptr noundef null) #5
  %cmp.not107 = icmp eq ptr %call, null
  br i1 %cmp.not107, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %np.0110 = phi ptr [ %call9, %for.inc.for.body_crit_edge ], [ %call, %if.end.for.body_crit_edge ]
  %has_a7.0.off0109 = phi i1 [ %has_a7.1.off0, %for.inc.for.body_crit_edge ], [ false, %if.end.for.body_crit_edge ]
  %has_a15.0.off0108 = phi i1 [ %has_a15.1.off0, %for.inc.for.body_crit_edge ], [ false, %if.end.for.body_crit_edge ]
  %call1 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %np.0110, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %np.0110, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp ne i32 %call4, 0
  %spec.select = select i1 %tobool5.not, i1 true, i1 %has_a7.0.off0109
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.for.inc_crit_edge
  %has_a15.1.off0 = phi i1 [ true, %for.body.for.inc_crit_edge ], [ %has_a15.0.off0108, %if.else ]
  %has_a7.1.off0 = phi i1 [ %has_a7.0.off0109, %for.body.for.inc_crit_edge ], [ %spec.select, %if.else ]
  %call9 = tail call ptr @of_get_next_cpu_node(ptr noundef nonnull %np.0110) #5
  %cmp.not = icmp eq ptr %call9, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %has_a15.0.off0.lcssa = phi i1 [ false, %if.end.for.end_crit_edge ], [ %has_a15.1.off0, %for.inc.for.end_crit_edge ]
  %has_a7.0.off0.lcssa = phi i1 [ false, %if.end.for.end_crit_edge ], [ %has_a7.1.off0, %for.inc.for.end_crit_edge ]
  %call10 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2) #5
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @shmobile_boot_size to i32))
  %6 = load i32, ptr @shmobile_boot_size, align 4
  %sub = add i32 %6, -432275457
  %7 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -432275456, ptr %res, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 512, ptr %2, align 4
  %11 = call ptr @memset(ptr %3, i32 0, i32 16)
  br label %map

if.end13:                                         ; preds = %for.end
  %call14 = call i32 @of_address_to_resource(ptr noundef nonnull %call10, i32 noundef 0, ptr noundef nonnull %res) #5
  call void @of_node_put(ptr noundef nonnull %call10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.map_crit_edge, label %do.end

if.end13.map_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %map

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %call14) #8
  br label %cleanup

map:                                              ; preds = %if.end13.map_crit_edge, %if.then12
  %12 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %res, align 4
  %and = and i32 %13, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %map.do.end26_crit_edge

map.do.end26_crit_edge:                           ; preds = %map
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

lor.lhs.false:                                    ; preds = %map
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %0, align 4
  %sub.i = sub i32 1, %13
  %add.i = add i32 %sub.i, %15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @shmobile_boot_size to i32))
  %16 = load i32, ptr @shmobile_boot_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %16)
  %cmp22 = icmp ult i32 %add.i, %16
  br i1 %cmp22, label %lor.lhs.false.do.end26_crit_edge, label %if.end29

lor.lhs.false.do.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

do.end26:                                         ; preds = %lor.lhs.false.do.end26_crit_edge, %map.do.end26_crit_edge
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false
  %call32 = call ptr @ioremap(i32 noundef %13, i32 noundef %add.i) #5
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end29.cleanup_crit_edge, label %if.end35

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %0, align 4
  %19 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %res, align 4
  %sub.i104 = add i32 %18, 1
  %add.i105 = sub i32 %sub.i104, %20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @shmobile_boot_size_gen2 to i32))
  %21 = load i32, ptr @shmobile_boot_size_gen2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i105, i32 %21)
  %cmp37.not = icmp ult i32 %add.i105, %21
  br i1 %cmp37.not, label %if.else40, label %if.then38

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #9, !srcloc !27
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @shmobile_boot_cpu_gen2 to i32))
  store i32 %22, ptr @shmobile_boot_cpu_gen2, align 4
  call void @mmiocpy(ptr noundef nonnull %call32, ptr noundef nonnull @shmobile_boot_vector_gen2, i32 noundef %21) #5
  br label %if.end41

if.else40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @shmobile_boot_size to i32))
  %23 = load i32, ptr @shmobile_boot_size, align 4
  call void @mmiocpy(ptr noundef nonnull %call32, ptr noundef nonnull @shmobile_boot_vector, i32 noundef %23) #5
  br label %if.end41

if.end41:                                         ; preds = %if.else40, %if.then38
  call void @iounmap(ptr noundef nonnull %call32) #5
  %call42 = call ptr @ioremap(i32 noundef -434765824, i32 noundef 99) #5
  %24 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %res, align 4
  %shr.i = lshr i32 %25, 8
  %and.i = and i32 %shr.i, 16776192
  br i1 %has_a15.0.off0.lcssa, label %if.then46, label %if.end41.if.end54_crit_edge

if.end41.if.end54_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %26 = call i32 @llvm.bswap.i32(i32 %and.i)
  %add.ptr = getelementptr i8, ptr %call42, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %26) #5, !srcloc !28
  %or = or i32 %and.i, 16
  %27 = call i32 @llvm.bswap.i32(i32 %or)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %27) #5, !srcloc !28
  %add.ptr48 = getelementptr i8, ptr %call42, i32 64
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #5, !srcloc !29
  %29 = and i32 %28, -251700646
  %30 = or i32 %29, 42405
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %30) #5, !srcloc !28
  br label %if.end54

if.end54:                                         ; preds = %if.then46, %if.end41.if.end54_crit_edge
  br i1 %has_a7.0.off0.lcssa, label %if.then56, label %if.end54.if.end67_crit_edge

if.end54.if.end67_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %31 = call i32 @llvm.bswap.i32(i32 %and.i)
  %add.ptr57 = getelementptr i8, ptr %call42, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %31) #5, !srcloc !28
  %or58 = or i32 %and.i, 16
  %32 = call i32 @llvm.bswap.i32(i32 %or58)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %32) #5, !srcloc !28
  %add.ptr61 = getelementptr i8, ptr %call42, i32 68
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #5, !srcloc !29
  %34 = and i32 %33, -251681371
  %35 = or i32 %34, 23130
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %35) #5, !srcloc !28
  br label %if.end67

if.end67:                                         ; preds = %if.then56, %if.end54.if.end67_crit_edge
  call void @iounmap(ptr noundef %call42) #5
  call void @shmobile_smp_apmu_suspend_init() #5
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.end29.cleanup_crit_edge, %do.end26, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_cpu_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmobile_boot_vector_gen2() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmobile_boot_vector() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmobile_smp_apmu_suspend_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @rcar_gen2_pm_init.once, !1, !"once", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-shmobile/pm-rcar-gen2.c", i32 49, i32 13}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-shmobile/pm-rcar-gen2.c", i32 60, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-shmobile/pm-rcar-gen2.c", i32 62, i32 40}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-shmobile/pm-rcar-gen2.c", i32 66, i32 43}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-shmobile/pm-rcar-gen2.c", i32 77, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rcar_gen2_pm_init._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @rcar_gen2_pm_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-shmobile/pm-rcar-gen2.c", i32 85, i32 3}
!16 = !{ptr @rcar_gen2_pm_init._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rcar_gen2_pm_init._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2151562652}
!28 = !{i64 3991469}
!29 = !{i64 3991887}

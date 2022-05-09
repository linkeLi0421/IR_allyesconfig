; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/topology.c_pt.bc'
source_filename = "../arch/arm/kernel/topology.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_topology = type { i32, i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_efficiency = type { ptr, i32 }

@cpu_topology = external dso_local local_unnamed_addr global [4 x %struct.cpu_topology], align 4
@store_cpu_topology._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016CPU%u: thread %d, cpu %d, socket %d, mpidr %x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"store_cpu_topology\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"arch/arm/kernel/topology.c\00", [37 x i8] zeroinitializer }, align 32
@store_cpu_topology._entry_ptr = internal global ptr @store_cpu_topology._entry, section ".printk_index", align 4
@__cpu_capacity = internal unnamed_addr global ptr null, align 4
@cap_from_dt = internal global { i1, [31 x i8] } zeroinitializer, align 32
@middle_capacity = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@update_cpu_capacity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016CPU%u: update cpu_capacity %lu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"update_cpu_capacity\00", [44 x i8] zeroinitializer }, align 32
@update_cpu_capacity._entry_ptr = internal global ptr @update_cpu_capacity._entry, section ".printk_index", align 4
@cpu_scale = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@parse_dt_topology._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013missing device node for CPU %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"parse_dt_topology\00", [46 x i8] zeroinitializer }, align 32
@parse_dt_topology._entry_ptr = internal global ptr @parse_dt_topology._entry, section ".printk_index", align 4
@table_efficiency = internal constant { [3 x %struct.cpu_efficiency], [40 x i8] } { [3 x %struct.cpu_efficiency] [%struct.cpu_efficiency { ptr @.str.11, i32 3891 }, %struct.cpu_efficiency { ptr @.str.12, i32 2048 }, %struct.cpu_efficiency zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@parse_dt_topology._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%pOF missing clock-frequency property\0A\00", [55 x i8] zeroinitializer }, align 32
@parse_dt_topology._entry_ptr.10 = internal global ptr @parse_dt_topology._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arm,cortex-a15\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"arm,cortex-a7\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 226, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"cap_from_dt\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"middle_capacity\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 74, i32 22 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 171, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 104, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"table_efficiency\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 65, i32 36 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 122, i32 30 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 124, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 66, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [30 x i8] c"../arch/arm/kernel/topology.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 67, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @parse_dt_topology._entry, ptr @parse_dt_topology._entry.8, ptr @parse_dt_topology._entry_ptr, ptr @parse_dt_topology._entry_ptr.10, ptr @store_cpu_topology._entry, ptr @store_cpu_topology._entry_ptr, ptr @update_cpu_capacity._entry, ptr @update_cpu_capacity._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cap_from_dt, ptr @middle_capacity, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @table_efficiency, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_cpu_topology._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap_from_dt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @middle_capacity to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_cpu_capacity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_dt_topology._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_efficiency to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_dt_topology._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @store_cpu_topology(i32 noundef %cpuid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpuid
  %package_id = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpuid, i32 3
  %0 = ptrtoint ptr %package_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %package_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %if.end, label %entry.topology_populated_crit_edge

entry.topology_populated_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %topology_populated

if.end:                                           ; preds = %entry
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #11, !srcloc !43
  %and = and i32 %2, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and)
  %cmp1 = icmp eq i32 %and, -2147483648
  br i1 %cmp1, label %if.then2, label %if.else19

if.then2:                                         ; preds = %if.end
  %and3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %and5 = and i32 %2, 255
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and5, ptr %arrayidx, align 4
  %shr6 = lshr i32 %2, 8
  %and7 = and i32 %shr6, 255
  %core_id = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpuid, i32 1
  %4 = ptrtoint ptr %core_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and7, ptr %core_id, align 4
  %shr8 = lshr i32 %2, 16
  %and9 = and i32 %shr8, 255
  br label %if.end23

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %arrayidx, align 4
  %and13 = and i32 %2, 255
  %core_id14 = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpuid, i32 1
  %6 = ptrtoint ptr %core_id14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and13, ptr %core_id14, align 4
  %shr15 = lshr i32 %2, 8
  %and16 = and i32 %shr15, 255
  br label %if.end23

if.else19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %arrayidx, align 4
  %core_id21 = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpuid, i32 1
  %8 = ptrtoint ptr %core_id21 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %core_id21, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else19, %if.else, %if.then4
  %and9.sink = phi i32 [ %and9, %if.then4 ], [ %and16, %if.else ], [ -1, %if.else19 ]
  %9 = ptrtoint ptr %package_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and9.sink, ptr %package_id, align 4
  %10 = load ptr, ptr @__cpu_capacity, align 4
  %arrayidx.i = getelementptr i32, ptr %10, i32 %cpuid
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end23.update_cpu_capacity.exit_crit_edge, label %lor.lhs.false.i

if.end23.update_cpu_capacity.exit_crit_edge:      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_cpu_capacity.exit

lor.lhs.false.i:                                  ; preds = %if.end23
  %.b.i = load i1, ptr @cap_from_dt, align 1
  br i1 %.b.i, label %if.end.i, label %lor.lhs.false.i.update_cpu_capacity.exit_crit_edge

lor.lhs.false.i.update_cpu_capacity.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_cpu_capacity.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = load i32, ptr @middle_capacity, align 4
  %div.i = udiv i32 %12, %13
  tail call void @topology_set_cpu_scale(i32 noundef %cpuid, i32 noundef %div.i) #8
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpuid
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %15, ptrtoint (ptr @cpu_scale to i32)
  %16 = inttoptr i32 %add.i.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cpuid, i32 noundef %18) #12
  br label %update_cpu_capacity.exit

update_cpu_capacity.exit:                         ; preds = %if.end.i, %lor.lhs.false.i.update_cpu_capacity.exit_crit_edge, %if.end23.update_cpu_capacity.exit_crit_edge
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %core_id27 = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpuid, i32 1
  %21 = ptrtoint ptr %core_id27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %core_id27, align 4
  %23 = ptrtoint ptr %package_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %package_id, align 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cpuid, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %2) #12
  br label %topology_populated

topology_populated:                               ; preds = %update_cpu_capacity.exit, %entry.topology_populated_crit_edge
  tail call void @update_siblings_masks(i32 noundef %cpuid) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_siblings_masks(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @init_cpu_topology() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @reset_cpu_topology() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !44
  tail call fastcc void @parse_dt_topology() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_cpu_topology() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @parse_dt_topology() unnamed_addr #4 section ".init.text" align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 4) #8
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %entry.kcalloc.exit_crit_edge, label %if.end7.i.i, !prof !45

entry.kcalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %kcalloc.exit

if.end7.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 2304) #14
  br label %kcalloc.exit

kcalloc.exit:                                     ; preds = %if.end7.i.i, %entry.kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %entry.kcalloc.exit_crit_edge ]
  store ptr %retval.0.i.i, ptr @__cpu_capacity, align 4
  %call178 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call178, i32 %4)
  %cmp79 = icmp ult i32 %call178, %4
  br i1 %cmp79, label %kcalloc.exit.for.body_crit_edge, label %kcalloc.exit.for.end37_crit_edge

kcalloc.exit.for.end37_crit_edge:                 ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end37

kcalloc.exit.for.body_crit_edge:                  ; preds = %kcalloc.exit
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %kcalloc.exit.for.body_crit_edge
  %call184 = phi i32 [ %call1, %cleanup.for.body_crit_edge ], [ %call178, %kcalloc.exit.for.body_crit_edge ]
  %max_capacity.082 = phi i32 [ %max_capacity.2, %cleanup.for.body_crit_edge ], [ 0, %kcalloc.exit.for.body_crit_edge ]
  %min_capacity.080 = phi i32 [ %min_capacity.2, %cleanup.for.body_crit_edge ], [ -1, %kcalloc.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #8
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %len, align 4, !annotation !46
  %call2 = call ptr @of_get_cpu_node(i32 noundef %call184, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call184) #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call4 = call zeroext i1 @topology_parse_cpu_capacity(ptr noundef nonnull %call2, i32 noundef %call184) #8
  br i1 %call4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %call2) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  store i1 true, ptr @cap_from_dt, align 1
  br label %for.body9

for.body9:                                        ; preds = %for.inc.for.body9_crit_edge, %if.end6
  %6 = phi ptr [ @.str.11, %if.end6 ], [ %8, %for.inc.for.body9_crit_edge ]
  %cpu_eff.077 = phi ptr [ @table_efficiency, %if.end6 ], [ %incdec.ptr, %for.inc.for.body9_crit_edge ]
  %call11 = call i32 @of_device_is_compatible(ptr noundef nonnull %call2, ptr noundef nonnull %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body9
  %incdec.ptr = getelementptr %struct.cpu_efficiency, ptr %cpu_eff.077, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %incdec.ptr, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body9_crit_edge

for.inc.for.body9_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %for.body9
  %9 = ptrtoint ptr %cpu_eff.077 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load ptr, ptr %cpu_eff.077, align 4
  %cmp16 = icmp eq ptr %.pr, null
  br i1 %cmp16, label %for.end.cleanup_crit_edge, label %if.end18

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %for.end
  %call19 = call ptr @of_get_property(ptr noundef nonnull %call2, ptr noundef nonnull @.str.7, ptr noundef nonnull %len) #8
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end18.do.end25_crit_edge, label %lor.lhs.false

if.end18.do.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

lor.lhs.false:                                    ; preds = %if.end18
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp21.not = icmp eq i32 %11, 4
  br i1 %cmp21.not, label %if.end28, label %lor.lhs.false.do.end25_crit_edge

lor.lhs.false.do.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

do.end25:                                         ; preds = %lor.lhs.false.do.end25_crit_edge, %if.end18.do.end25_crit_edge
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %call2) #12
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call19, align 4
  %shr = lshr i32 %13, 20
  %efficiency = getelementptr inbounds %struct.cpu_efficiency, ptr %cpu_eff.077, i32 0, i32 1
  %14 = ptrtoint ptr %efficiency to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %efficiency, align 4
  %mul = mul i32 %shr, %15
  %16 = call i32 @llvm.umin.i32(i32 %mul, i32 %min_capacity.080)
  %17 = call i32 @llvm.umax.i32(i32 %mul, i32 %max_capacity.082)
  %18 = load ptr, ptr @__cpu_capacity, align 4
  %arrayidx = getelementptr i32, ptr %18, i32 %call184
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end25, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.then5, %do.end
  %min_capacity.2 = phi i32 [ %min_capacity.080, %if.then5 ], [ %min_capacity.080, %do.end25 ], [ %16, %if.end28 ], [ %min_capacity.080, %do.end ], [ %min_capacity.080, %for.end.cleanup_crit_edge ], [ %min_capacity.080, %for.inc.cleanup_crit_edge ]
  %max_capacity.2 = phi i32 [ %max_capacity.082, %if.then5 ], [ %max_capacity.082, %do.end25 ], [ %17, %if.end28 ], [ %max_capacity.082, %do.end ], [ %max_capacity.082, %for.end.cleanup_crit_edge ], [ %max_capacity.082, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #8
  %call1 = call i32 @cpumask_next(i32 noundef %call184, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %20
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end37_crit_edge

cleanup.for.end37_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end37

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end37:                                        ; preds = %cleanup.for.end37_crit_edge, %kcalloc.exit.for.end37_crit_edge
  %min_capacity.0.lcssa = phi i32 [ -1, %kcalloc.exit.for.end37_crit_edge ], [ %min_capacity.2, %cleanup.for.end37_crit_edge ]
  %max_capacity.0.lcssa = phi i32 [ 0, %kcalloc.exit.for.end37_crit_edge ], [ %max_capacity.2, %cleanup.for.end37_crit_edge ]
  %mul38 = shl i32 %max_capacity.0.lcssa, 2
  %add = add i32 %max_capacity.0.lcssa, %min_capacity.0.lcssa
  %mul39 = mul i32 %add, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul38, i32 %mul39)
  %cmp40 = icmp ult i32 %mul38, %mul39
  %div = udiv i32 %max_capacity.0.lcssa, 3
  %shr44 = lshr i32 %div, 9
  %add45 = add nuw nsw i32 %shr44, 1
  %shr43 = lshr i32 %add, 11
  %storemerge = select i1 %cmp40, i32 %shr43, i32 %add45
  store i32 %storemerge, ptr @middle_capacity, align 4
  %.b = load i1, ptr @cap_from_dt, align 1
  br i1 %.b, label %for.end37.if.end49_crit_edge, label %if.then48

for.end37.if.end49_crit_edge:                     ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then48:                                        ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #10
  call void @topology_normalize_cpu_scale() #8
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %for.end37.if.end49_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @topology_set_cpu_scale(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @topology_parse_cpu_capacity(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @topology_normalize_cpu_scale() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nounwind }
attributes #13 = { cold }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/topology.c", i32 226, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @store_cpu_topology._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @store_cpu_topology._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/kernel/topology.c", i32 171, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @update_cpu_capacity._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @update_cpu_capacity._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__cpu_capacity, !12, !"__cpu_capacity", i1 false, i1 false}
!12 = !{!"../arch/arm/kernel/topology.c", i32 71, i32 23}
!13 = distinct !{null, !14, !"cap_from_dt", i1 false, i1 false}
!14 = !{!"../arch/arm/kernel/topology.c", i32 75, i32 13}
!15 = !{ptr @middle_capacity, !16, !"middle_capacity", i1 false, i1 false}
!16 = !{!"../arch/arm/kernel/topology.c", i32 74, i32 22}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../arch/arm/kernel/topology.c", i32 104, i32 4}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @parse_dt_topology._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @parse_dt_topology._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/kernel/topology.c", i32 122, i32 30}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/kernel/topology.c", i32 124, i32 4}
!26 = !{ptr @parse_dt_topology._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @parse_dt_topology._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/kernel/topology.c", i32 66, i32 3}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/kernel/topology.c", i32 67, i32 3}
!32 = !{ptr @table_efficiency, !33, !"table_efficiency", i1 false, i1 false}
!33 = !{!"../arch/arm/kernel/topology.c", i32 65, i32 36}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 2152989511}
!44 = !{i64 2153002568}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{!"auto-init"}

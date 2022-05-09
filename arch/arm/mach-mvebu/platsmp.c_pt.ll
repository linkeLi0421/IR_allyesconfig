; ModuleID = '/llk/IR_all_yes/arch/arm/mach-mvebu/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-mvebu/platsmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }

@armada_xp_smp_ops = dso_local constant %struct.smp_operations { ptr @armada_xp_smp_init_cpus, ptr @armada_xp_smp_prepare_cpus, ptr @armada_xp_secondary_init, ptr @armada_xp_boot_secondary, ptr @armada_xp_cpu_kill, ptr @armada_xp_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"marvell,armada-xp-smp\00", [42 x i8] zeroinitializer }, align 32
@__cpu_method_of_table_armada_xp_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @armada_xp_smp_ops }, section "__cpu_method_of_table", align 4
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"marvell,98dx3236-smp\00", [43 x i8] zeroinitializer }, align 32
@mv98dx3236_smp_ops = internal constant %struct.smp_operations { ptr @armada_xp_smp_init_cpus, ptr @armada_xp_smp_prepare_cpus, ptr @armada_xp_secondary_init, ptr @mv98dx3236_boot_secondary, ptr @armada_xp_cpu_kill, ptr @armada_xp_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_mv98dx3236_smp = internal constant %struct.of_cpu_method { ptr @.str.1, ptr @mv98dx3236_smp_ops }, section "__cpu_method_of_table", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid number of CPUs in DT\0A\00", [34 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@boot_cpu_clk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arm/mvebu/sync_clocks:online\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"marvell,bootrom\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Cannot find 'marvell,bootrom' compatible node\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot get 'bootrom' node address\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"The address for the BootROM is incorrect\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"arch/arm/mach-mvebu/platsmp.c\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"missing cpu node\0A\00", [46 x i8] zeroinitializer }, align 32
@armada_xp_boot_secondary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.8, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016Booting CPU %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"armada_xp_boot_secondary\00", [39 x i8] zeroinitializer }, align 32
@armada_xp_boot_secondary._entry_ptr = internal global ptr @armada_xp_boot_secondary._entry, section ".printk_index", align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@armada_xp_boot_secondary._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.8, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014unable to boot CPU: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@armada_xp_boot_secondary._entry_ptr.14 = internal global ptr @armada_xp_boot_secondary._entry.12, section ".printk_index", align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@mv98dx3236_boot_secondary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.15, ptr @.str.8, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mv98dx3236_boot_secondary\00", [38 x i8] zeroinitializer }, align 32
@mv98dx3236_boot_secondary._entry_ptr = internal global ptr @mv98dx3236_boot_secondary._entry, section ".printk_index", align 4
@of_mv98dx3236_resume_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,98dx3336-resume-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 183, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 257, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 99, i32 9 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"boot_cpu_clk\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 38, i32 20 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 128, i32 8 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 136, i32 45 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 138, i32 9 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 143, i32 9 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 147, i32 9 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 45, i32 6 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 57, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 74, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 239, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [27 x i8] c"of_mv98dx3236_resume_table\00", align 1
@___asan_gen_.72 = private constant [33 x i8] c"../arch/arm/mach-mvebu/platsmp.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 189, i32 34 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__cpu_method_of_table_armada_xp_smp, ptr @__cpu_method_of_table_mv98dx3236_smp, ptr @armada_xp_boot_secondary._entry, ptr @armada_xp_boot_secondary._entry.12, ptr @armada_xp_boot_secondary._entry_ptr, ptr @armada_xp_boot_secondary._entry_ptr.14, ptr @mv98dx3236_boot_secondary._entry, ptr @mv98dx3236_boot_secondary._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @boot_cpu_clk, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @of_mv98dx3236_resume_table], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_cpu_clk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_xp_boot_secondary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_xp_boot_secondary._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv98dx3236_boot_secondary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_mv98dx3236_resume_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @armada_xp_smp_init_cpus() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %0) #9
  %1 = add i32 %call4.i.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %1)
  %2 = icmp ult i32 %1, -4
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.2) #12
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @armada_xp_smp_prepare_cpus(i32 noundef %max_cpus) #0 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #9
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %1 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %2() #9
  %call = tail call i32 @set_cpu_coherent() #9
  %3 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %call.i = tail call ptr @of_get_cpu_node(i32 noundef %6, ptr noundef null) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !54

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.9) #9
  br label %get_cpu_clk.exit.thread

if.end23.i:                                       ; preds = %entry
  %call24.i = tail call ptr @of_clk_get(ptr noundef nonnull %call.i, i32 noundef 0) #9
  %cmp.i.i = icmp ugt ptr %call24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end42.i, label %get_cpu_clk.exit, !prof !54

do.end42.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 48, i32 noundef 9, ptr noundef null) #9
  br label %get_cpu_clk.exit.thread

get_cpu_clk.exit.thread:                          ; preds = %do.end42.i, %do.end.i
  store ptr null, ptr @boot_cpu_clk, align 4
  br label %if.end

get_cpu_clk.exit:                                 ; preds = %if.end23.i
  store ptr %call24.i, ptr @boot_cpu_clk, align 4
  %tobool.not = icmp eq ptr %call24.i, null
  br i1 %tobool.not, label %get_cpu_clk.exit.if.end_crit_edge, label %if.then

get_cpu_clk.exit.if.end_crit_edge:                ; preds = %get_cpu_clk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %get_cpu_clk.exit
  %call.i19 = tail call i32 @clk_prepare(ptr noundef nonnull %call24.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not.i20 = icmp eq i32 %call.i19, 0
  br i1 %tobool.not.i20, label %if.end.i, label %if.then.clk_prepare_enable.exit_crit_edge

if.then.clk_prepare_enable.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %call24.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef nonnull %call24.i) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then.clk_prepare_enable.exit_crit_edge
  %call.i21 = tail call i32 @__cpuhp_setup_state(i32 noundef 157, ptr noundef nonnull @.str.3, i1 noundef zeroext false, ptr noundef nonnull @armada_xp_sync_secondary_clk, ptr noundef null, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %clk_prepare_enable.exit, %get_cpu_clk.exit.if.end_crit_edge, %get_cpu_clk.exit.thread
  %call5 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.4) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.5) #12
  unreachable

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @of_address_to_resource(ptr noundef nonnull %call5, i32 noundef 0, ptr noundef nonnull %res) #9
  call void @of_node_put(ptr noundef nonnull %call5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.6) #12
  unreachable

if.end11:                                         ; preds = %if.end8
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048576, i32 %8)
  %cmp12.not = icmp eq i32 %8, -1048576
  br i1 %cmp12.not, label %lor.lhs.false, label %if.end11.if.then15_crit_edge

if.end11.if.then15_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end11
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp14.not = icmp eq i32 %10, -1
  br i1 %cmp14.not, label %if.end16, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.end11.if.then15_crit_edge
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.7) #12
  unreachable

if.end16:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_xp_secondary_init(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mvebu_v7_pmsu_idle_exit() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_xp_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %cpu) #13
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  tail call void @mvebu_pmsu_set_cpu_boot_addr(i32 noundef %1, ptr noundef nonnull @armada_xp_secondary_startup) #9
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %add.ptr.i) #9
  %call2 = tail call i32 @mvebu_cpu_reset_deassert(i32 noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call2) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end5, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @armada_xp_cpu_kill(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_xp_cpu_die(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @armada_370_xp_pmsu_idle_enter(i32 noundef 1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpu_coherent() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_xp_sync_secondary_clk(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_get_cpu_node(i32 noundef %cpu, ptr noundef null) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !54

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end23.i:                                       ; preds = %entry
  %call24.i = tail call ptr @of_clk_get(ptr noundef nonnull %call.i, i32 noundef 0) #9
  %cmp.i.i = icmp ugt ptr %call24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end42.i, label %get_cpu_clk.exit, !prof !54

do.end42.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 48, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

get_cpu_clk.exit:                                 ; preds = %if.end23.i
  %tobool.not = icmp eq ptr %call24.i, null
  br i1 %tobool.not, label %get_cpu_clk.exit.cleanup_crit_edge, label %lor.lhs.false

get_cpu_clk.exit.cleanup_crit_edge:               ; preds = %get_cpu_clk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %get_cpu_clk.exit
  %0 = load ptr, ptr @boot_cpu_clk, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i7 = tail call i32 @clk_prepare(ptr noundef nonnull %call24.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool.not.i8 = icmp eq i32 %call.i7, 0
  br i1 %tobool.not.i8, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %call24.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef nonnull %call24.i) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end.clk_prepare_enable.exit_crit_edge
  %1 = load ptr, ptr @boot_cpu_clk, align 4
  %call3 = tail call i32 @clk_get_rate(ptr noundef %1) #9
  %call4 = tail call i32 @clk_set_rate(ptr noundef nonnull %call24.i, i32 noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %clk_prepare_enable.exit, %lor.lhs.false.cleanup_crit_edge, %get_cpu_clk.exit.cleanup_crit_edge, %do.end42.i, %do.end.i
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvebu_v7_pmsu_idle_exit() local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvebu_pmsu_set_cpu_boot_addr(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @armada_xp_secondary_startup() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_cpu_reset_deassert(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @armada_370_xp_pmsu_idle_enter(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv98dx3236_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !55

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 200, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %call.i.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @of_mv98dx3236_resume_table, ptr noundef null) #9
  %tobool19.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool19.not.i, label %if.end.i.mv98dx3236_resume_set_cpu_boot_addr.exit_crit_edge, label %of_node_full_name.exit.i

if.end.i.mv98dx3236_resume_set_cpu_boot_addr.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv98dx3236_resume_set_cpu_boot_addr.exit

of_node_full_name.exit.i:                         ; preds = %if.end.i
  %full_name.i.i = getelementptr inbounds %struct.device_node, ptr %call.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %full_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %full_name.i.i, align 4
  %call23.i = tail call ptr @of_io_request_and_map(ptr noundef nonnull %call.i.i, i32 noundef 0, ptr noundef %3) #9
  tail call void @of_node_put(ptr noundef nonnull %call.i.i) #9
  %cmp.i.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %of_node_full_name.exit.i.mv98dx3236_resume_set_cpu_boot_addr.exit_crit_edge, label %do.body28.i

of_node_full_name.exit.i.mv98dx3236_resume_set_cpu_boot_addr.exit_crit_edge: ; preds = %of_node_full_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv98dx3236_resume_set_cpu_boot_addr.exit

do.body28.i:                                      ; preds = %of_node_full_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !56
  tail call void @arm_heavy_mb() #9
  %add.ptr.i = getelementptr i8, ptr %call23.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  tail call void @arm_heavy_mb() #9
  %call35.i = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @armada_xp_secondary_startup to i32)) #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %call35.i) #9
  %add.ptr36.i = getelementptr i8, ptr %call23.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %4) #9, !srcloc !57
  tail call void @iounmap(ptr noundef %call23.i) #9
  br label %mv98dx3236_resume_set_cpu_boot_addr.exit

mv98dx3236_resume_set_cpu_boot_addr.exit:         ; preds = %do.body28.i, %of_node_full_name.exit.i.mv98dx3236_resume_set_cpu_boot_addr.exit_crit_edge, %if.end.i.mv98dx3236_resume_set_cpu_boot_addr.exit_crit_edge
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i9 = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %add.ptr.i9) #9
  %call2 = tail call i32 @mvebu_cpu_reset_deassert(i32 noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %mv98dx3236_resume_set_cpu_boot_addr.exit.cleanup_crit_edge, label %do.end

mv98dx3236_resume_set_cpu_boot_addr.exit.cleanup_crit_edge: ; preds = %mv98dx3236_resume_set_cpu_boot_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %mv98dx3236_resume_set_cpu_boot_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call2) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %mv98dx3236_resume_set_cpu_boot_addr.exit.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42}
!llvm.named.register.sp = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @armada_xp_smp_ops, !1, !"armada_xp_smp_ops", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-mvebu/platsmp.c", i32 172, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-mvebu/platsmp.c", i32 183, i32 1}
!4 = !{ptr @__cpu_method_of_table_armada_xp_smp, !3, !"__cpu_method_of_table_armada_xp_smp", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../arch/arm/mach-mvebu/platsmp.c", i32 257, i32 1}
!7 = !{ptr @__cpu_method_of_table_mv98dx3236_smp, !6, !"__cpu_method_of_table_mv98dx3236_smp", i1 false, i1 false}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-mvebu/platsmp.c", i32 99, i32 9}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-mvebu/platsmp.c", i32 128, i32 8}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-mvebu/platsmp.c", i32 136, i32 45}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-mvebu/platsmp.c", i32 138, i32 9}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-mvebu/platsmp.c", i32 143, i32 9}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-mvebu/platsmp.c", i32 147, i32 9}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-mvebu/platsmp.c", i32 45, i32 6}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @boot_cpu_clk, !24, !"boot_cpu_clk", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-mvebu/platsmp.c", i32 38, i32 20}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-mvebu/platsmp.c", i32 57, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @armada_xp_boot_secondary._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @armada_xp_boot_secondary._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-mvebu/platsmp.c", i32 74, i32 3}
!32 = !{ptr @armada_xp_boot_secondary._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @armada_xp_boot_secondary._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @mv98dx3236_smp_ops, !35, !"mv98dx3236_smp_ops", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-mvebu/platsmp.c", i32 246, i32 36}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-mvebu/platsmp.c", i32 239, i32 3}
!38 = !{ptr @mv98dx3236_boot_secondary._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mv98dx3236_boot_secondary._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @of_mv98dx3236_resume_table, !41, !"of_mv98dx3236_resume_table", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-mvebu/platsmp.c", i32 189, i32 34}
!42 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/of.h", i32 261, i32 30}
!44 = !{!"sp"}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i64 2153985446}
!57 = !{i64 4026373}
!58 = !{i64 2153986236}

; ModuleID = '/llk/IR_all_yes/drivers/clk/renesas/clk-r8a7779.c_pt.bc'
source_filename = "../drivers/clk/renesas/clk-r8a7779.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpg_clk_config = type { i32, i32, i32, i32, i32, i32 }
%struct.r8a7779_cpg = type { %struct.clk_onecell_data, %struct.spinlock, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@__of_table_r8a7779_cpg_clks = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7779-cpg-clocks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7779_cpg_clocks_init }, section "__clk_of_table", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@r8a7779_cpg_clocks_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: failed to count clocks\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"r8a7779_cpg_clocks_init\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/renesas/clk-r8a7779.c\00", [62 x i8] zeroinitializer }, align 32
@r8a7779_cpg_clocks_init._entry_ptr = internal global ptr @r8a7779_cpg_clocks_init._entry, section ".printk_index", align 4
@r8a7779_cpg_clocks_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&cpg->lock\00", [21 x i8] zeroinitializer }, align 32
@cpg_clk_configs = internal constant [4 x %struct.cpg_clk_config] [%struct.cpg_clk_config { i32 1, i32 2, i32 8, i32 16, i32 32, i32 24 }, %struct.cpg_clk_config { i32 2, i32 3, i32 6, i32 12, i32 24, i32 24 }, %struct.cpg_clk_config { i32 1, i32 2, i32 8, i32 16, i32 32, i32 32 }, %struct.cpg_clk_config { i32 2, i32 3, i32 6, i32 12, i32 24, i32 36 }], section ".init.rodata", align 4
@cpg_plla_mult = internal unnamed_addr constant [4 x i32] [i32 42, i32 48, i32 56, i32 64], section ".init.rodata", align 4
@r8a7779_cpg_clocks_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: failed to register %pOFn %s clock (%ld)\0A\00", [49 x i8] zeroinitializer }, align 32
@r8a7779_cpg_clocks_init._entry_ptr.7 = internal global ptr @r8a7779_cpg_clocks_init._entry.5, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"plla\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"z\00", [30 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"zs\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s1\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"p\00", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"b\00", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 131, i32 43 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 133, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 146, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 164, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 94, i32 28 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 101, i32 27 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 104, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 104, i32 50 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 106, i32 27 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 108, i32 27 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 110, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [37 x i8] c"../drivers/clk/renesas/clk-r8a7779.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 110, i32 49 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__of_table_r8a7779_cpg_clks, ptr @r8a7779_cpg_clocks_init._entry, ptr @r8a7779_cpg_clocks_init._entry.5, ptr @r8a7779_cpg_clocks_init._entry_ptr, ptr @r8a7779_cpg_clocks_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @r8a7779_cpg_clocks_init.__key, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a7779_cpg_clocks_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a7779_cpg_clocks_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a7779_cpg_clocks_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @r8a7779_cpg_clocks_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %mode = alloca i32, align 4
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #6
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mode, align 4, !annotation !46
  %call = call i32 @rcar_rst_read_mode_pins(ptr noundef nonnull %mode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 56) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 32) #10
  %cmp7 = icmp eq ptr %call7.i.i, null
  %cmp8 = icmp eq ptr %call7.i.i.i, null
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.end4.cleanup_crit_edge, label %do.body11

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body11:                                        ; preds = %if.end4
  %lock = getelementptr inbounds %struct.r8a7779_cpg, ptr %call7.i.i, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @r8a7779_cpg_clocks_init.__key, i16 noundef signext 3) #6
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i, ptr %call7.i.i, align 8
  %clk_num = getelementptr inbounds %struct.clk_onecell_data, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call.i, ptr %clk_num, align 4
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  %and = lshr i32 %6, 1
  %shr = and i32 %and, 3
  %arrayidx = getelementptr [4 x %struct.cpg_clk_config], ptr @cpg_clk_configs, i32 0, i32 %shr
  %and17 = lshr i32 %6, 11
  %shr18 = and i32 %and17, 3
  %arrayidx19 = getelementptr [4 x i32], ptr @cpg_plla_mult, i32 0, i32 %shr18
  %7 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2063.not = icmp eq i32 %call.i, 0
  br i1 %cmp2063.not, label %do.body11.for.end_crit_edge, label %do.body11.for.body_crit_edge

do.body11.for.body_crit_edge:                     ; preds = %do.body11
  br label %for.body

do.body11.for.end_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end34.for.body_crit_edge, %do.body11.for.body_crit_edge
  %i.064 = phi i32 [ %inc, %if.end34.for.body_crit_edge ], [ 0, %do.body11.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #6
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !46
  %call.i62 = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull %name, i32 noundef 1, i32 noundef %i.064) #6
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %call22 = call fastcc ptr @r8a7779_cpg_register_clock(ptr noundef %np, ptr noundef %arrayidx, i32 noundef %8, ptr noundef %11) #11
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end27, label %if.else

do.end27:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %14 = ptrtoint ptr %call22 to i32
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, ptr noundef %np, ptr noundef %13, i32 noundef %14) #9
  br label %if.end34

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  %arrayidx33 = getelementptr ptr, ptr %16, i32 %i.064
  %17 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call22, ptr %arrayidx33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else, %do.end27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #6
  %inc = add nuw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %if.end34.for.end_crit_edge, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end34.for.end_crit_edge, %do.body11.for.end_crit_edge
  %call36 = call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call7.i.i) #6
  call void @cpg_mstp_add_clk_domain(ptr noundef %np) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_rst_read_mode_pins(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @r8a7779_cpg_register_clock(ptr noundef %np, ptr nocapture noundef readonly %config, i32 noundef %plla_mult, ptr noundef %name) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #6
  br label %if.end32

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(2) @.str.9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %z_div = getelementptr inbounds %struct.cpg_clk_config, ptr %config, i32 0, i32 1
  %0 = ptrtoint ptr %z_div to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %z_div, align 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config, align 4
  br label %if.end32

if.else5:                                         ; preds = %if.else
  %call6 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(3) @.str.10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else5.if.then10_crit_edge, label %lor.lhs.false

if.else5.if.then10_crit_edge:                     ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.else5
  %call8 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(2) @.str.11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.then10_crit_edge, label %if.else11

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.else5.if.then10_crit_edge
  %zs_and_s_div = getelementptr inbounds %struct.cpg_clk_config, ptr %config, i32 0, i32 2
  %4 = ptrtoint ptr %zs_and_s_div to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zs_and_s_div, align 4
  br label %if.end32

if.else11:                                        ; preds = %lor.lhs.false
  %call12 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(3) @.str.12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #8
  %s1_div = getelementptr inbounds %struct.cpg_clk_config, ptr %config, i32 0, i32 3
  %6 = ptrtoint ptr %s1_div to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s1_div, align 4
  br label %if.end32

if.else15:                                        ; preds = %if.else11
  %call16 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(2) @.str.13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  %p_div = getelementptr inbounds %struct.cpg_clk_config, ptr %config, i32 0, i32 4
  %8 = ptrtoint ptr %p_div to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p_div, align 4
  br label %if.end32

if.else19:                                        ; preds = %if.else15
  %call20 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(2) @.str.14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.else19.if.then25_crit_edge, label %lor.lhs.false22

if.else19.if.then25_crit_edge:                    ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25

lor.lhs.false22:                                  ; preds = %if.else19
  %call23 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(4) @.str.15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %lor.lhs.false22.if.then25_crit_edge, label %lor.lhs.false22.cleanup_crit_edge

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false22.if.then25_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false22.if.then25_crit_edge, %if.else19.if.then25_crit_edge
  %b_and_out_div = getelementptr inbounds %struct.cpg_clk_config, ptr %config, i32 0, i32 5
  %10 = ptrtoint ptr %b_and_out_div to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %b_and_out_div, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %if.then18, %if.then14, %if.then10, %if.then4, %if.then
  %parent_name.0 = phi ptr [ @.str.8, %if.then25 ], [ @.str.8, %if.then18 ], [ @.str.8, %if.then14 ], [ @.str.8, %if.then10 ], [ @.str.8, %if.then4 ], [ %call1, %if.then ]
  %mult.0 = phi i32 [ 1, %if.then25 ], [ 1, %if.then18 ], [ 1, %if.then14 ], [ 1, %if.then10 ], [ %3, %if.then4 ], [ %plla_mult, %if.then ]
  %div.0 = phi i32 [ %11, %if.then25 ], [ %9, %if.then18 ], [ %7, %if.then14 ], [ %5, %if.then10 ], [ %1, %if.then4 ], [ 1, %if.then ]
  %call33 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %name, ptr noundef %parent_name.0, i32 noundef 0, i32 noundef %mult.0, i32 noundef %div.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %lor.lhs.false22.cleanup_crit_edge
  %retval.0 = phi ptr [ %call33, %if.end32 ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false22.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpg_mstp_add_clk_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__of_table_r8a7779_cpg_clks, !1, !"__of_table_r8a7779_cpg_clks", i1 false, i1 false}
!1 = !{!"../drivers/clk/renesas/clk-r8a7779.c", i32 174, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/renesas/clk-r8a7779.c", i32 131, i32 43}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/renesas/clk-r8a7779.c", i32 133, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @r8a7779_cpg_clocks_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @r8a7779_cpg_clocks_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @r8a7779_cpg_clocks_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/clk/renesas/clk-r8a7779.c", i32 146, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/renesas/clk-r8a7779.c", i32 164, i32 4}
!15 = !{ptr @r8a7779_cpg_clocks_init._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @r8a7779_cpg_clocks_init._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @cpg_clk_configs, !18, !"cpg_clk_configs", i1 false, i1 false}
!18 = !{!"../drivers/clk/renesas/clk-r8a7779.c", i32 64, i32 36}
!19 = !{ptr @cpg_plla_mult, !20, !"cpg_plla_mult", i1 false, i1 false}
!20 = !{!"../drivers/clk/renesas/clk-r8a7779.c", i32 83, i32 27}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/renesas/clk-r8a7779.c", i32 94, i32 28}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/renesas/clk-r8a7779.c", i32 101, i32 27}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/renesas/clk-r8a7779.c", i32 104, i32 27}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/renesas/clk-r8a7779.c", i32 104, i32 50}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/renesas/clk-r8a7779.c", i32 106, i32 27}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/renesas/clk-r8a7779.c", i32 108, i32 27}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/renesas/clk-r8a7779.c", i32 110, i32 27}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/renesas/clk-r8a7779.c", i32 110, i32 49}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"auto-init"}

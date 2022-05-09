; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/devtree.c_pt.bc'
source_filename = "../arch/arm/kernel/devtree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }

@__const.arm_dt_init_cpu_maps.tmp_map = private unnamed_addr constant [4 x i32] [i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216], align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"/cpus\00", [26 x i8] zeroinitializer }, align 32
@arm_dt_init_cpu_maps.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devtree\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"arm_dt_init_cpu_maps\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"arch/arm/kernel/devtree.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" * %pOF...\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Duplicate /cpu reg properties in the DT\0A\00", [55 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"DT /cpu %u nodes greater than max cores %u, capping them\0A\00", [38 x i8] zeroinitializer }, align 32
@arm_dt_init_cpu_maps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014DT missing boot CPU MPIDR[23:0], fall back to default cpu_logical_map\0A\00", [55 x i8] zeroinitializer }, align 32
@arm_dt_init_cpu_maps._entry_ptr = internal global ptr @arm_dt_init_cpu_maps._entry, section ".printk_index", align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@arm_dt_init_cpu_maps.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cpu logical map 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@setup_machine_fdt.__mach_desc_GENERIC_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.9, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 -1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Generic DT based system\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\0AError: unrecognized/unsupported device tree compatible list:\0A[ \00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"'%s' \00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"]\0A\0A\00", [28 x i8] zeroinitializer }, align 32
@__machine_arch_type = external dso_local local_unnamed_addr global i32, align 4
@__cpu_method_of_table_sentinel = internal constant %struct.of_cpu_method zeroinitializer, section "__cpu_method_of_table_end", align 4
@smp_on_up = external dso_local local_unnamed_addr global i32, align 4
@__cpu_method_of_table = external dso_local local_unnamed_addr global [0 x %struct.of_cpu_method], align 4
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enable-method\00", [18 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@arch_get_next_mach.mdesc = internal global { ptr, [28 x i8] } { ptr @__arch_info_begin, [28 x i8] zeroinitializer }, align 32
@__arch_info_begin = external dso_local constant [0 x %struct.machine_desc], align 4
@__arch_info_end = external dso_local constant [0 x %struct.machine_desc], align 4
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 81, i32 30 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 89, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 108, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 130, i32 7 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 152, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 164, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 198, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 216, i32 15 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 220, i32 39 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 222, i32 16 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 226, i32 15 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 40, i32 36 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 108, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"mdesc\00", align 1
@___asan_gen_.68 = private constant [29 x i8] c"../arch/arm/kernel/devtree.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 175, i32 36 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__cpu_method_of_table_sentinel, ptr @arm_dt_init_cpu_maps._entry, ptr @arm_dt_init_cpu_maps._entry_ptr, ptr @setup_machine_fdt.__mach_desc_GENERIC_DT, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @arch_get_next_mach.mdesc], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_dt_init_cpu_maps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_get_next_mach.mdesc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @arm_dt_init_cpu_maps() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %tmp_map = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %0 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i.not = icmp eq i32 %0, 0
  br i1 %tobool.i.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #10, !srcloc !48
  %and = and i32 %1, 16777215
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %and, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp_map) #7
  %2 = call ptr @memcpy(ptr %tmp_map, ptr @__const.arm_dt_init_cpu_maps.tmp_map, i32 16)
  %call.i = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %cond.end.cleanup139_crit_edge, label %if.end

cond.end.cleanup139_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup139

if.end:                                           ; preds = %cond.end
  %call3 = tail call ptr @of_get_next_cpu_node(ptr noundef null) #7
  %cmp.not216 = icmp eq ptr %call3, null
  br i1 %cmp.not216, label %if.then102.thread, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.then102.thread:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call103247 = tail call fastcc i32 @set_smp_ops_by_method(ptr noundef nonnull %call.i) #11
  br label %do.end109

for.body:                                         ; preds = %for.inc98.for.body_crit_edge, %if.end.for.body_crit_edge
  %cpu.0220 = phi ptr [ %call99, %for.inc98.for.body_crit_edge ], [ %call3, %if.end.for.body_crit_edge ]
  %found_method.0219 = phi i32 [ %found_method.2.ph, %for.inc98.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %cpuidx.0218 = phi i32 [ %cpuidx.1, %for.inc98.for.body_crit_edge ], [ 1, %if.end.for.body_crit_edge ]
  %bootcpu_valid.0.off0217 = phi i1 [ %bootcpu_valid.1.off0, %for.inc98.for.body_crit_edge ], [ false, %if.end.for.body_crit_edge ]
  %call4 = tail call i64 @of_get_cpu_hwid(ptr noundef nonnull %cpu.0220, i32 noundef 0) #7
  %conv = trunc i64 %call4 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_dt_init_cpu_maps.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_dt_init_cpu_maps, %if.then9)) #7
          to label %do.end [label %if.then9], !srcloc !49

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arm_dt_init_cpu_maps.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.4, ptr noundef nonnull %cpu.0220) #7
  br label %do.end

do.end:                                           ; preds = %if.then9, %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %conv)
  %tobool12.not = icmp ult i32 %conv, 16777216
  br i1 %tobool12.not, label %for.cond15.preheader, label %if.then13

for.cond15.preheader:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpuidx.0218)
  %cmp16214.not = icmp eq i32 %cpuidx.0218, 0
  br i1 %cmp16214.not, label %for.cond15.preheader.for.end_crit_edge, label %for.cond15.preheader.for.body18_crit_edge

for.cond15.preheader.for.body18_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body18

for.cond15.preheader.for.end_crit_edge:           ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %cpu.0220) #7
  br label %cleanup139

for.cond15:                                       ; preds = %for.body18
  %inc = add nuw i32 %j.0215, 1
  %exitcond.not = icmp eq i32 %inc, %cpuidx.0218
  br i1 %exitcond.not, label %for.cond15.for.end_crit_edge, label %for.cond15.for.body18_crit_edge

for.cond15.for.body18_crit_edge:                  ; preds = %for.cond15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18

for.cond15.for.end_crit_edge:                     ; preds = %for.cond15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body18:                                       ; preds = %for.cond15.for.body18_crit_edge, %for.cond15.preheader.for.body18_crit_edge
  %j.0215 = phi i32 [ %inc, %for.cond15.for.body18_crit_edge ], [ 0, %for.cond15.preheader.for.body18_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr %tmp_map, i32 0, i32 %j.0215
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp19 = icmp eq i32 %4, %conv
  br i1 %cmp19, label %do.end36, label %for.cond15, !prof !50

do.end36:                                         ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 109, i32 noundef 9, ptr noundef nonnull @.str.5) #7
  tail call void @of_node_put(ptr noundef nonnull %cpu.0220) #7
  br label %cleanup139

for.end:                                          ; preds = %for.cond15.for.end_crit_edge, %for.cond15.preheader.for.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv)
  %cmp53 = icmp eq i32 %cond, %conv
  %bootcpu_valid.1.off0 = select i1 %cmp53, i1 true, i1 %bootcpu_valid.0.off0217
  %not.cmp53 = xor i1 %cmp53, true
  %inc56 = zext i1 %not.cmp53 to i32
  %cpuidx.1 = add i32 %cpuidx.0218, %inc56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cpuidx.1, i32 %5)
  %cmp59 = icmp ugt i32 %cpuidx.1, %5
  br i1 %cmp59, label %cleanup, label %if.end92, !prof !50

if.end92:                                         ; preds = %for.end
  %i.0 = select i1 %cmp53, i32 0, i32 %cpuidx.0218
  %arrayidx93 = getelementptr [4 x i32], ptr %tmp_map, i32 0, i32 %i.0
  %6 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %arrayidx93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found_method.0219)
  %tobool94.not = icmp eq i32 %found_method.0219, 0
  br i1 %tobool94.not, label %if.then95, label %if.end92.for.inc98_crit_edge

if.end92.for.inc98_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc98

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %call96 = tail call fastcc i32 @set_smp_ops_by_method(ptr noundef nonnull %cpu.0220) #11
  br label %for.inc98

cleanup:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 132, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %cpuidx.1, i32 noundef %5) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  tail call void @of_node_put(ptr noundef nonnull %cpu.0220) #7
  br label %for.end100

for.inc98:                                        ; preds = %if.then95, %if.end92.for.inc98_crit_edge
  %found_method.2.ph = phi i32 [ %call96, %if.then95 ], [ 1, %if.end92.for.inc98_crit_edge ]
  %call99 = tail call ptr @of_get_next_cpu_node(ptr noundef nonnull %cpu.0220) #7
  %cmp.not = icmp eq ptr %call99, null
  br i1 %cmp.not, label %for.inc98.for.end100_crit_edge, label %for.inc98.for.body_crit_edge

for.inc98.for.body_crit_edge:                     ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc98.for.end100_crit_edge:                   ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end100

for.end100:                                       ; preds = %for.inc98.for.end100_crit_edge, %cleanup
  %found_method.0207 = phi i32 [ %found_method.0219, %cleanup ], [ %found_method.2.ph, %for.inc98.for.end100_crit_edge ]
  %cpuidx.3 = phi i32 [ %7, %cleanup ], [ %cpuidx.1, %for.inc98.for.end100_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found_method.0207)
  %tobool101.not = icmp eq i32 %found_method.0207, 0
  br i1 %tobool101.not, label %if.then102, label %if.end104

if.then102:                                       ; preds = %for.end100
  %call103 = tail call fastcc i32 @set_smp_ops_by_method(ptr noundef nonnull %call.i) #11
  br i1 %bootcpu_valid.1.off0, label %if.then102.for.cond113.preheader_crit_edge, label %if.then102.do.end109_crit_edge

if.then102.do.end109_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end109

if.then102.for.cond113.preheader_crit_edge:       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond113.preheader

if.end104:                                        ; preds = %for.end100
  br i1 %bootcpu_valid.1.off0, label %if.end104.for.cond113.preheader_crit_edge, label %if.end104.do.end109_crit_edge

if.end104.do.end109_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end109

if.end104.for.cond113.preheader_crit_edge:        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond113.preheader

for.cond113.preheader:                            ; preds = %if.end104.for.cond113.preheader_crit_edge, %if.then102.for.cond113.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpuidx.3)
  %cmp114224.not = icmp eq i32 %cpuidx.3, 0
  br i1 %cmp114224.not, label %for.cond113.preheader.cleanup139_crit_edge, label %for.cond113.preheader.for.body116_crit_edge

for.cond113.preheader.for.body116_crit_edge:      ; preds = %for.cond113.preheader
  br label %for.body116

for.cond113.preheader.cleanup139_crit_edge:       ; preds = %for.cond113.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup139

do.end109:                                        ; preds = %if.end104.do.end109_crit_edge, %if.then102.do.end109_crit_edge, %if.then102.thread
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %cleanup139

for.body116:                                      ; preds = %for.inc136.for.body116_crit_edge, %for.cond113.preheader.for.body116_crit_edge
  %i.1225 = phi i32 [ %inc137, %for.inc136.for.body116_crit_edge ], [ 0, %for.cond113.preheader.for.body116_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %i.1225)
  %cmp.not.i.i.i.i = icmp ugt i32 %8, %i.1225
  br i1 %cmp.not.i.i.i.i, label %for.body116.set_cpu_possible.exit_crit_edge, label %land.rhs.i.i.i.i

for.body116.set_cpu_possible.exit_crit_edge:      ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_cpu_possible.exit

land.rhs.i.i.i.i:                                 ; preds = %for.body116
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.set_cpu_possible.exit_crit_edge, label %if.then.i.i.i.i, !prof !51

land.rhs.i.i.i.i.set_cpu_possible.exit_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_cpu_possible.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %set_cpu_possible.exit

set_cpu_possible.exit:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.set_cpu_possible.exit_crit_edge, %for.body116.set_cpu_possible.exit_crit_edge
  tail call void @_set_bit(i32 noundef %i.1225, ptr noundef nonnull @__cpu_possible_mask) #7
  %arrayidx117 = getelementptr [4 x i32], ptr %tmp_map, i32 0, i32 %i.1225
  %9 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx117, align 4
  %arrayidx118 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %i.1225
  %11 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx118, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_dt_init_cpu_maps.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_dt_init_cpu_maps, %if.then131)) #7
          to label %for.inc136 [label %if.then131], !srcloc !49

if.then131:                                       ; preds = %set_cpu_possible.exit
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx118, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arm_dt_init_cpu_maps.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.8, i32 noundef %13) #7
  br label %for.inc136

for.inc136:                                       ; preds = %if.then131, %set_cpu_possible.exit
  %inc137 = add nuw i32 %i.1225, 1
  %exitcond235.not = icmp eq i32 %inc137, %cpuidx.3
  br i1 %exitcond235.not, label %for.inc136.cleanup139_crit_edge, label %for.inc136.for.body116_crit_edge

for.inc136.for.body116_crit_edge:                 ; preds = %for.inc136
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body116

for.inc136.cleanup139_crit_edge:                  ; preds = %for.inc136
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup139

cleanup139:                                       ; preds = %for.inc136.cleanup139_crit_edge, %do.end109, %for.cond113.preheader.cleanup139_crit_edge, %do.end36, %if.then13, %cond.end.cleanup139_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp_map) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_cpu_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_get_cpu_hwid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_smp_ops_by_method(ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %method = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %method) #7
  %0 = ptrtoint ptr %method to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %method, align 4, !annotation !52
  %call = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str.14, ptr noundef nonnull %method) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__cpu_method_of_table to i32))
  %1 = load ptr, ptr @__cpu_method_of_table, align 4
  %tobool2.not13 = icmp eq ptr %1, null
  br i1 %tobool2.not13, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %2 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %method, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %4 = phi ptr [ %1, %for.body.lr.ph ], [ %8, %for.inc.for.body_crit_edge ]
  %m.014 = phi ptr [ @__cpu_method_of_table, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %call4 = call i32 @strcmp(ptr noundef nonnull %4, ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %ops = getelementptr inbounds %struct.of_cpu_method, ptr %m.014, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  call void @smp_set_ops(ptr noundef %6) #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.of_cpu_method, ptr %m.014, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %incdec.ptr, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then6, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %method) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @arch_match_cpu_phys_id(i32 noundef %cpu, i64 noundef %phys_id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %phys_id)
  %cmp = icmp eq i64 %conv, %phys_id
  ret i1 %cmp
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @setup_machine_fdt(ptr noundef %dt_virt) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dt_virt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = tail call zeroext i1 @early_init_dt_verify(ptr noundef nonnull %dt_virt) #7
  br i1 %call, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call1 = tail call ptr @of_flat_dt_match_machine(ptr noundef nonnull @setup_machine_fdt.__mach_desc_GENERIC_DT, ptr noundef nonnull @arch_get_next_mach) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %size, align 4, !annotation !52
  tail call void (ptr, ...) @early_print(ptr noundef nonnull @.str.10) #7
  %call4 = tail call i32 @of_get_flat_dt_root() #7
  %call5 = call ptr @of_get_flat_dt_prop(i32 noundef %call4, ptr noundef nonnull @.str.11, ptr noundef nonnull %size) #7
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pr = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp23 = icmp sgt i32 %.pr, 0
  br i1 %cmp23, label %if.then3.while.body_crit_edge, label %if.then3.while.end_crit_edge

if.then3.while.end_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.then3.while.body_crit_edge:                    ; preds = %if.then3
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then3.while.body_crit_edge
  %prop.024 = phi ptr [ %add.ptr, %while.body.while.body_crit_edge ], [ %call5, %if.then3.while.body_crit_edge ]
  call void (ptr, ...) @early_print(ptr noundef nonnull @.str.12, ptr noundef %prop.024) #7
  %call6 = call i32 @strlen(ptr noundef %prop.024) #13
  %add.neg = xor i32 %call6, -1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %sub = add i32 %3, %add.neg
  store i32 %sub, ptr %size, align 4
  %call7 = call i32 @strlen(ptr noundef %prop.024) #13
  %add8 = add i32 %call7, 1
  %add.ptr = getelementptr i8, ptr %prop.024, i32 %add8
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then3.while.end_crit_edge
  call void (ptr, ...) @early_print(ptr noundef nonnull @.str.13) #7
  call void @dump_machine_table() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #7
  br label %if.end9

if.end9:                                          ; preds = %while.end, %if.end.if.end9_crit_edge
  %dt_fixup = getelementptr inbounds %struct.machine_desc, ptr %call1, i32 0, i32 16
  %4 = ptrtoint ptr %dt_fixup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dt_fixup, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void %5() #7
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  call void @early_init_dt_scan_nodes() #7
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call1, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @__machine_arch_type to i32))
  store i32 %7, ptr @__machine_arch_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end13 ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @early_init_dt_verify(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_flat_dt_match_machine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @arch_get_next_mach(ptr nocapture noundef writeonly %match) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @arch_get_next_mach.mdesc, align 4
  %cmp.not = icmp ult ptr %0, @__arch_info_end
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr = getelementptr %struct.machine_desc, ptr %0, i32 1
  store ptr %incdec.ptr, ptr @arch_get_next_mach.mdesc, align 4
  %dt_compat = getelementptr inbounds %struct.machine_desc, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %dt_compat to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dt_compat, align 4
  %3 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %match, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %0, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_print(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_flat_dt_root() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_flat_dt_prop(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_machine_table() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_init_dt_scan_nodes() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_set_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !18, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/devtree.c", i32 81, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/kernel/devtree.c", i32 89, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @arm_dt_init_cpu_maps.__UNIQUE_ID_ddebug228, !3, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/kernel/devtree.c", i32 108, i32 8}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/kernel/devtree.c", i32 130, i32 7}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/kernel/devtree.c", i32 152, i32 3}
!14 = !{ptr @arm_dt_init_cpu_maps._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @arm_dt_init_cpu_maps._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/kernel/devtree.c", i32 164, i32 3}
!18 = !{ptr @arm_dt_init_cpu_maps.__UNIQUE_ID_ddebug229, !17, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/kernel/devtree.c", i32 198, i32 2}
!21 = !{ptr @setup_machine_fdt.__mach_desc_GENERIC_DT, !20, !"__mach_desc_GENERIC_DT", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/kernel/devtree.c", i32 216, i32 15}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/kernel/devtree.c", i32 220, i32 39}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/kernel/devtree.c", i32 222, i32 16}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/kernel/devtree.c", i32 226, i32 15}
!30 = !{ptr @__cpu_method_of_table_sentinel, !31, !"__cpu_method_of_table_sentinel", i1 false, i1 false}
!31 = !{!"../arch/arm/kernel/devtree.c", i32 31, i32 35}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/kernel/devtree.c", i32 40, i32 36}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @arch_get_next_mach.mdesc, !38, !"mdesc", i1 false, i1 false}
!38 = !{!"../arch/arm/kernel/devtree.c", i32 175, i32 36}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2154119975}
!49 = !{i64 2148290994, i64 2148290999, i64 2148291012, i64 2148291056, i64 2148291090, i64 2148291111}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{!"auto-init"}

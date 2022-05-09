; ModuleID = '/llk/IR_all_yes/arch/arm/mach-qcom/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-qcom/platsmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,gcc-msm8660\00", [47 x i8] zeroinitializer }, align 32
@smp_msm8660_ops = internal constant %struct.smp_operations { ptr null, ptr @qcom_smp_prepare_cpus, ptr null, ptr @msm8660_boot_secondary, ptr null, ptr @qcom_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_qcom_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @smp_msm8660_ops }, section "__cpu_method_of_table", align 4
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,msm8226-smp\00", [47 x i8] zeroinitializer }, align 32
@qcom_smp_cortex_a7_ops = internal constant %struct.smp_operations { ptr null, ptr @qcom_smp_prepare_cpus, ptr null, ptr @cortex_a7_boot_secondary, ptr null, ptr @qcom_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_qcom_smp_msm8226 = internal constant %struct.of_cpu_method { ptr @.str.1, ptr @qcom_smp_cortex_a7_ops }, section "__cpu_method_of_table", align 4
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,msm8916-smp\00", [47 x i8] zeroinitializer }, align 32
@__cpu_method_of_table_qcom_smp_msm8916 = internal constant %struct.of_cpu_method { ptr @.str.2, ptr @qcom_smp_cortex_a7_ops }, section "__cpu_method_of_table", align 4
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,kpss-acc-v1\00", [47 x i8] zeroinitializer }, align 32
@qcom_smp_kpssv1_ops = internal constant %struct.smp_operations { ptr null, ptr @qcom_smp_prepare_cpus, ptr null, ptr @kpssv1_boot_secondary, ptr null, ptr @qcom_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_qcom_smp_kpssv1 = internal constant %struct.of_cpu_method { ptr @.str.3, ptr @qcom_smp_kpssv1_ops }, section "__cpu_method_of_table", align 4
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,kpss-acc-v2\00", [47 x i8] zeroinitializer }, align 32
@qcom_smp_kpssv2_ops = internal constant %struct.smp_operations { ptr null, ptr @qcom_smp_prepare_cpus, ptr null, ptr @kpssv2_boot_secondary, ptr null, ptr @qcom_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_qcom_smp_kpssv2 = internal constant %struct.of_cpu_method { ptr @.str.4, ptr @qcom_smp_kpssv2_ops }, section "__cpu_method_of_table", align 4
@__pcpu_unique_cold_boot_done = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@cold_boot_done = weak dso_local global i32 0, section ".data..percpu", align 4
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@qcom_smp_prepare_cpus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014Failed to set CPU boot address, disabling SMP\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom_smp_prepare_cpus\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arch/arm/mach-qcom/platsmp.c\00", [35 x i8] zeroinitializer }, align 32
@qcom_smp_prepare_cpus._entry_ptr = internal global ptr @qcom_smp_prepare_cpus._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@scss_release_secondary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.7, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: can't find node\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"scss_release_secondary\00", [41 x i8] zeroinitializer }, align 32
@scss_release_secondary._entry_ptr = internal global ptr @scss_release_secondary._entry, section ".printk_index", align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcom,acc\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcom,saw\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"next-level-cache\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 378, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 387, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 388, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 397, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 406, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 367, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 61, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 90, i32 40 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 152, i32 40 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [32 x i8] c"../arch/arm/mach-qcom/platsmp.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 232, i32 39 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__cpu_method_of_table_qcom_smp, ptr @__cpu_method_of_table_qcom_smp_kpssv1, ptr @__cpu_method_of_table_qcom_smp_kpssv2, ptr @__cpu_method_of_table_qcom_smp_msm8226, ptr @__cpu_method_of_table_qcom_smp_msm8916, ptr @qcom_smp_prepare_cpus._entry, ptr @qcom_smp_prepare_cpus._entry_ptr, ptr @scss_release_secondary._entry, ptr @scss_release_secondary._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smp_prepare_cpus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scss_release_secondary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_smp_prepare_cpus(i32 noundef %max_cpus) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qcom_scm_set_cold_boot_addr(ptr noundef nonnull @secondary_startup_arm, ptr noundef nonnull @__cpu_present_mask) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %for.cond.preheader

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.cond.preheader:                               ; preds = %entry
  %call111 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call111, i32 %0)
  %cmp12 = icmp ult i32 %call111, %0
  br i1 %cmp12, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.do.end_crit_edge

for.cond.preheader.do.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call113 = phi i32 [ %call1, %for.cond.backedge.for.body_crit_edge ], [ %call111, %for.cond.preheader.for.body_crit_edge ]
  %1 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call113, i32 %4)
  %cmp4 = icmp eq i32 %call113, %4
  br i1 %cmp4, label %for.body.for.cond.backedge_crit_edge, label %set_cpu_present.exit

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

set_cpu_present.exit:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef %call113, ptr noundef nonnull @__cpu_present_mask) #7
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %set_cpu_present.exit, %for.body.for.cond.backedge_crit_edge
  %call1 = tail call i32 @cpumask_next(i32 noundef %call113, ptr noundef nonnull @__cpu_present_mask) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %5
  br i1 %cmp, label %for.cond.backedge.for.body_crit_edge, label %for.cond.backedge.do.end_crit_edge

for.cond.backedge.do.end_crit_edge:               ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end:                                           ; preds = %for.cond.backedge.do.end_crit_edge, %for.cond.preheader.do.end_crit_edge
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %if.end7

if.end7:                                          ; preds = %do.end, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm8660_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %1, ptrtoint (ptr @cold_boot_done to i32)
  %2 = inttoptr i32 %add.i to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.qcom_boot_secondary.exit_crit_edge

entry.qcom_boot_secondary.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_boot_secondary.exit

if.then.i:                                        ; preds = %entry
  %call.i1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #7
  %tobool.not.i2 = icmp eq ptr %call.i1, null
  br i1 %tobool.not.i2, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #11
  br label %qcom_boot_secondary.exit

if.end.i:                                         ; preds = %if.then.i
  %call2.i = tail call ptr @of_iomap(ptr noundef nonnull %call.i1, i32 noundef 0) #7
  tail call void @of_node_put(ptr noundef nonnull %call.i1) #7
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.qcom_boot_secondary.exit_crit_edge, label %do.body4.i

if.end.i.qcom_boot_secondary.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_boot_secondary.exit

do.body4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %call2.i, i32 13728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !56
  %add.ptr6.i = getelementptr i8, ptr %call2.i, i32 11648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #7, !srcloc !56
  %add.ptr7.i = getelementptr i8, ptr %call2.i, i32 11876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 50331648) #7, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  tail call void @iounmap(ptr noundef nonnull %call2.i) #7
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %add12.i = add i32 %6, ptrtoint (ptr @cold_boot_done to i32)
  %7 = inttoptr i32 %add12.i to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %7, align 4
  br label %qcom_boot_secondary.exit

qcom_boot_secondary.exit:                         ; preds = %do.body4.i, %if.end.i.qcom_boot_secondary.exit_crit_edge, %do.end.i, %entry.qcom_boot_secondary.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %entry.qcom_boot_secondary.exit_crit_edge ], [ 0, %do.body4.i ], [ -12, %if.end.i.qcom_boot_secondary.exit_crit_edge ], [ -6, %do.end.i ]
  %rem.i.i = and i32 %cpu, 31
  %add.i.i = add nuw nsw i32 %rem.i.i, 1
  %arrayidx.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i
  %div3.i.i = lshr i32 %cpu, 5
  %idx.neg.i.i = sub nsw i32 0, %div3.i.i
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 %idx.neg.i.i
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %add.ptr.i.i) #7
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_cpu_die(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "wfi", "~{memory}"() #7, !srcloc !58
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_set_cold_boot_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup_arm() #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cortex_a7_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #1 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %1, ptrtoint (ptr @cold_boot_done to i32)
  %2 = inttoptr i32 %add.i to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.qcom_boot_secondary.exit_crit_edge

entry.qcom_boot_secondary.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_boot_secondary.exit

if.then.i:                                        ; preds = %entry
  %call.i1 = tail call ptr @of_get_cpu_node(i32 noundef %cpu, ptr noundef null) #7
  %tobool.not.i2 = icmp eq ptr %call.i1, null
  br i1 %tobool.not.i2, label %if.then.i.qcom_boot_secondary.exit_crit_edge, label %if.end.i

if.then.i.qcom_boot_secondary.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_boot_secondary.exit

if.end.i:                                         ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %5 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call.i1, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  br label %cortex_a7_release_secondary.exit.thread7

of_parse_phandle.exit.i:                          ; preds = %if.end.i
  %6 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %tobool2.not.i3 = icmp eq ptr %7, null
  br i1 %tobool2.not.i3, label %of_parse_phandle.exit.i.cortex_a7_release_secondary.exit.thread7_crit_edge, label %if.end4.i

of_parse_phandle.exit.i.cortex_a7_release_secondary.exit.thread7_crit_edge: ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cortex_a7_release_secondary.exit.thread7

if.end4.i:                                        ; preds = %of_parse_phandle.exit.i
  %call5.i = call ptr @of_iomap(ptr noundef nonnull %7, i32 noundef 0) #7
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end4.i.cortex_a7_release_secondary.exit_crit_edge, label %if.end8.i

if.end4.i.cortex_a7_release_secondary.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cortex_a7_release_secondary.exit

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %call5.i, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 855638016) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  %add.ptr12.i = getelementptr i8, ptr %call5.i, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 16777232) #7, !srcloc !56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 429496) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 822083584) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 956301312) #7, !srcloc !56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 429496) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 939524608) #7, !srcloc !56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 429496) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 134218240) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -2013265408) #7, !srcloc !56
  call void @iounmap(ptr noundef nonnull %call5.i) #7
  br label %cortex_a7_release_secondary.exit

cortex_a7_release_secondary.exit.thread7:         ; preds = %of_parse_phandle.exit.i.cortex_a7_release_secondary.exit.thread7_crit_edge, %of_parse_phandle.exit.thread.i
  call void @of_node_put(ptr noundef nonnull %call.i1) #7
  br label %qcom_boot_secondary.exit

cortex_a7_release_secondary.exit:                 ; preds = %if.end8.i, %if.end4.i.cortex_a7_release_secondary.exit_crit_edge
  %ret.0.i4 = phi i32 [ 0, %if.end8.i ], [ -12, %if.end4.i.cortex_a7_release_secondary.exit_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %7) #7
  call void @of_node_put(ptr noundef nonnull %call.i1) #7
  br i1 %tobool6.not.i, label %cortex_a7_release_secondary.exit.qcom_boot_secondary.exit_crit_edge, label %do.body4.i

cortex_a7_release_secondary.exit.qcom_boot_secondary.exit_crit_edge: ; preds = %cortex_a7_release_secondary.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_boot_secondary.exit

do.body4.i:                                       ; preds = %cortex_a7_release_secondary.exit
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add12.i = add i32 %12, ptrtoint (ptr @cold_boot_done to i32)
  %13 = inttoptr i32 %add12.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %13, align 4
  br label %qcom_boot_secondary.exit

qcom_boot_secondary.exit:                         ; preds = %do.body4.i, %cortex_a7_release_secondary.exit.qcom_boot_secondary.exit_crit_edge, %cortex_a7_release_secondary.exit.thread7, %if.then.i.qcom_boot_secondary.exit_crit_edge, %entry.qcom_boot_secondary.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %entry.qcom_boot_secondary.exit_crit_edge ], [ %ret.0.i4, %cortex_a7_release_secondary.exit.qcom_boot_secondary.exit_crit_edge ], [ 0, %do.body4.i ], [ -19, %cortex_a7_release_secondary.exit.thread7 ], [ -19, %if.then.i.qcom_boot_secondary.exit_crit_edge ]
  %rem.i.i = and i32 %cpu, 31
  %add.i.i = add nuw nsw i32 %rem.i.i, 1
  %arrayidx.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i
  %div3.i.i = lshr i32 %cpu, 5
  %idx.neg.i.i = sub nsw i32 0, %div3.i.i
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 %idx.neg.i.i
  call void @arch_send_wakeup_ipi_mask(ptr noundef %add.ptr.i.i) #7
  ret i32 %ret.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kpssv1_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #1 align 64 {
entry:
  %args.i73.i = alloca %struct.of_phandle_args, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %1, ptrtoint (ptr @cold_boot_done to i32)
  %2 = inttoptr i32 %add.i to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.qcom_boot_secondary.exit_crit_edge

entry.qcom_boot_secondary.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_boot_secondary.exit

if.then.i:                                        ; preds = %entry
  %call.i1 = tail call ptr @of_get_cpu_node(i32 noundef %cpu, ptr noundef null) #7
  %tobool.not.i2 = icmp eq ptr %call.i1, null
  br i1 %tobool.not.i2, label %if.then.i.qcom_boot_secondary.exit_crit_edge, label %if.end.i

if.then.i.qcom_boot_secondary.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_boot_secondary.exit

if.end.i:                                         ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %5 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call.i1, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  br label %kpssv1_release_secondary.exit.thread7

of_parse_phandle.exit.i:                          ; preds = %if.end.i
  %6 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %tobool2.not.i3 = icmp eq ptr %7, null
  br i1 %tobool2.not.i3, label %of_parse_phandle.exit.i.kpssv1_release_secondary.exit.thread7_crit_edge, label %if.end4.i

of_parse_phandle.exit.i.kpssv1_release_secondary.exit.thread7_crit_edge: ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kpssv1_release_secondary.exit.thread7

if.end4.i:                                        ; preds = %of_parse_phandle.exit.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i73.i) #7
  %8 = call ptr @memset(ptr %args.i73.i, i32 255, i32 72)
  %call.i74.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call.i1, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i73.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i)
  %tobool.not.i75.i = icmp eq i32 %call.i74.i, 0
  br i1 %tobool.not.i75.i, label %of_parse_phandle.exit78.i, label %of_parse_phandle.exit78.thread.i

of_parse_phandle.exit78.thread.i:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i73.i) #7
  br label %kpssv1_release_secondary.exit

of_parse_phandle.exit78.i:                        ; preds = %if.end4.i
  %9 = ptrtoint ptr %args.i73.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args.i73.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i73.i) #7
  %tobool6.not.i = icmp eq ptr %10, null
  br i1 %tobool6.not.i, label %of_parse_phandle.exit78.i.kpssv1_release_secondary.exit_crit_edge, label %if.end8.i

of_parse_phandle.exit78.i.kpssv1_release_secondary.exit_crit_edge: ; preds = %of_parse_phandle.exit78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kpssv1_release_secondary.exit

if.end8.i:                                        ; preds = %of_parse_phandle.exit78.i
  %call9.i = call ptr @of_iomap(ptr noundef nonnull %7, i32 noundef 0) #7
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end8.i.out_acc_map.i_crit_edge, label %if.end12.i

if.end8.i.out_acc_map.i_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_acc_map.i

if.end12.i:                                       ; preds = %if.end8.i
  %call13.i = call ptr @of_iomap(ptr noundef nonnull %10, i32 noundef 0) #7
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %if.end12.i.out_saw_map.i_crit_edge, label %if.end16.i

if.end12.i.out_saw_map.i_crit_edge:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_saw_map.i

if.end16.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %call13.i, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1543503872) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  call void @arm_heavy_mb() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 109950976) #7
  %add.ptr17.i = getelementptr i8, ptr %call9.i, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 151060480) #7, !srcloc !56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 16842752) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  call void @arm_heavy_mb() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 553713664) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  call void @arm_heavy_mb() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 429496) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 536936448) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  call void @arm_heavy_mb() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 429496) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 65536) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  call void @arm_heavy_mb() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 21474800) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 -2147418112) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  call void @arm_heavy_mb() #7
  call void @iounmap(ptr noundef nonnull %call13.i) #7
  br label %out_saw_map.i

out_saw_map.i:                                    ; preds = %if.end16.i, %if.end12.i.out_saw_map.i_crit_edge
  %ret.0.i4 = phi i32 [ 0, %if.end16.i ], [ -12, %if.end12.i.out_saw_map.i_crit_edge ]
  call void @iounmap(ptr noundef nonnull %call9.i) #7
  br label %out_acc_map.i

out_acc_map.i:                                    ; preds = %out_saw_map.i, %if.end8.i.out_acc_map.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i4, %out_saw_map.i ], [ -12, %if.end8.i.out_acc_map.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %10) #7
  br label %kpssv1_release_secondary.exit

kpssv1_release_secondary.exit.thread7:            ; preds = %of_parse_phandle.exit.i.kpssv1_release_secondary.exit.thread7_crit_edge, %of_parse_phandle.exit.thread.i
  call void @of_node_put(ptr noundef nonnull %call.i1) #7
  br label %qcom_boot_secondary.exit

kpssv1_release_secondary.exit:                    ; preds = %out_acc_map.i, %of_parse_phandle.exit78.i.kpssv1_release_secondary.exit_crit_edge, %of_parse_phandle.exit78.thread.i
  %ret.2.i = phi i32 [ %ret.1.i, %out_acc_map.i ], [ -19, %of_parse_phandle.exit78.i.kpssv1_release_secondary.exit_crit_edge ], [ -19, %of_parse_phandle.exit78.thread.i ]
  call void @of_node_put(ptr noundef nonnull %7) #7
  call void @of_node_put(ptr noundef nonnull %call.i1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %tobool2.not.i = icmp eq i32 %ret.2.i, 0
  br i1 %tobool2.not.i, label %do.body4.i, label %kpssv1_release_secondary.exit.qcom_boot_secondary.exit_crit_edge

kpssv1_release_secondary.exit.qcom_boot_secondary.exit_crit_edge: ; preds = %kpssv1_release_secondary.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_boot_secondary.exit

do.body4.i:                                       ; preds = %kpssv1_release_secondary.exit
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add12.i = add i32 %17, ptrtoint (ptr @cold_boot_done to i32)
  %18 = inttoptr i32 %add12.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %18, align 4
  br label %qcom_boot_secondary.exit

qcom_boot_secondary.exit:                         ; preds = %do.body4.i, %kpssv1_release_secondary.exit.qcom_boot_secondary.exit_crit_edge, %kpssv1_release_secondary.exit.thread7, %if.then.i.qcom_boot_secondary.exit_crit_edge, %entry.qcom_boot_secondary.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %entry.qcom_boot_secondary.exit_crit_edge ], [ %ret.2.i, %kpssv1_release_secondary.exit.qcom_boot_secondary.exit_crit_edge ], [ 0, %do.body4.i ], [ -19, %kpssv1_release_secondary.exit.thread7 ], [ -19, %if.then.i.qcom_boot_secondary.exit_crit_edge ]
  %rem.i.i = and i32 %cpu, 31
  %add.i.i = add nuw nsw i32 %rem.i.i, 1
  %arrayidx.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i
  %div3.i.i = lshr i32 %cpu, 5
  %idx.neg.i.i = sub nsw i32 0, %div3.i.i
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 %idx.neg.i.i
  call void @arch_send_wakeup_ipi_mask(ptr noundef %add.ptr.i.i) #7
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kpssv2_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #1 align 64 {
entry:
  %args.i92.i = alloca %struct.of_phandle_args, align 4
  %args.i86.i = alloca %struct.of_phandle_args, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %1, ptrtoint (ptr @cold_boot_done to i32)
  %2 = inttoptr i32 %add.i to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.qcom_boot_secondary.exit_crit_edge

entry.qcom_boot_secondary.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_boot_secondary.exit

if.then.i:                                        ; preds = %entry
  %call.i1 = tail call ptr @of_get_cpu_node(i32 noundef %cpu, ptr noundef null) #7
  %tobool.not.i2 = icmp eq ptr %call.i1, null
  br i1 %tobool.not.i2, label %if.then.i.qcom_boot_secondary.exit_crit_edge, label %if.end.i

if.then.i.qcom_boot_secondary.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_boot_secondary.exit

if.end.i:                                         ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %5 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call.i1, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  br label %kpssv2_release_secondary.exit.thread7

of_parse_phandle.exit.i:                          ; preds = %if.end.i
  %6 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %tobool2.not.i3 = icmp eq ptr %7, null
  br i1 %tobool2.not.i3, label %of_parse_phandle.exit.i.kpssv2_release_secondary.exit.thread7_crit_edge, label %if.end4.i

of_parse_phandle.exit.i.kpssv2_release_secondary.exit.thread7_crit_edge: ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kpssv2_release_secondary.exit.thread7

if.end4.i:                                        ; preds = %of_parse_phandle.exit.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i86.i) #7
  %8 = call ptr @memset(ptr %args.i86.i, i32 255, i32 72)
  %call.i87.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call.i1, ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i86.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87.i)
  %tobool.not.i88.i = icmp eq i32 %call.i87.i, 0
  br i1 %tobool.not.i88.i, label %of_parse_phandle.exit91.i, label %of_parse_phandle.exit91.thread.i

of_parse_phandle.exit91.thread.i:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i86.i) #7
  br label %kpssv2_release_secondary.exit

of_parse_phandle.exit91.i:                        ; preds = %if.end4.i
  %9 = ptrtoint ptr %args.i86.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args.i86.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i86.i) #7
  %tobool6.not.i = icmp eq ptr %10, null
  br i1 %tobool6.not.i, label %of_parse_phandle.exit91.i.kpssv2_release_secondary.exit_crit_edge, label %if.end8.i

of_parse_phandle.exit91.i.kpssv2_release_secondary.exit_crit_edge: ; preds = %of_parse_phandle.exit91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kpssv2_release_secondary.exit

if.end8.i:                                        ; preds = %of_parse_phandle.exit91.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i92.i) #7
  %11 = call ptr @memset(ptr %args.i92.i, i32 255, i32 72)
  %call.i93.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %10, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i92.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i)
  %tobool.not.i94.i = icmp eq i32 %call.i93.i, 0
  br i1 %tobool.not.i94.i, label %of_parse_phandle.exit97.i, label %of_parse_phandle.exit97.thread.i

of_parse_phandle.exit97.thread.i:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i92.i) #7
  br label %out_saw.i

of_parse_phandle.exit97.i:                        ; preds = %if.end8.i
  %12 = ptrtoint ptr %args.i92.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %args.i92.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i92.i) #7
  %tobool10.not.i = icmp eq ptr %13, null
  br i1 %tobool10.not.i, label %of_parse_phandle.exit97.i.out_saw.i_crit_edge, label %if.end12.i

of_parse_phandle.exit97.i.out_saw.i_crit_edge:    ; preds = %of_parse_phandle.exit97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_saw.i

if.end12.i:                                       ; preds = %of_parse_phandle.exit97.i
  %call13.i = call ptr @of_iomap(ptr noundef nonnull %7, i32 noundef 0) #7
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %if.end12.i.out_map.i_crit_edge, label %if.end16.i

if.end12.i.out_map.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_map.i

if.end16.i:                                       ; preds = %if.end12.i
  %call17.i = call ptr @of_iomap(ptr noundef nonnull %13, i32 noundef 0) #7
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %if.end16.i.out_saw_map.i_crit_edge, label %if.end20.i

if.end16.i.out_saw_map.i_crit_edge:               ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_saw_map.i

if.end20.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %call13.i, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16793408) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  call void @arm_heavy_mb() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2130722624) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  call void @arm_heavy_mb() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2134851392) #7, !srcloc !56
  %add.ptr27.i = getelementptr i8, ptr %call17.i, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 50331904) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  call void @arm_heavy_mb() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 10737400) #7
  %add.ptr31.i = getelementptr i8, ptr %call13.i, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 553648128) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  call void @arm_heavy_mb() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 429496) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 536870912) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  call void @arm_heavy_mb() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 429496) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 0) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 -2147483648) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  call void @arm_heavy_mb() #7
  call void @iounmap(ptr noundef nonnull %call17.i) #7
  br label %out_saw_map.i

out_saw_map.i:                                    ; preds = %if.end20.i, %if.end16.i.out_saw_map.i_crit_edge
  %ret.0.i4 = phi i32 [ 0, %if.end20.i ], [ -12, %if.end16.i.out_saw_map.i_crit_edge ]
  call void @iounmap(ptr noundef nonnull %call13.i) #7
  br label %out_map.i

out_map.i:                                        ; preds = %out_saw_map.i, %if.end12.i.out_map.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i4, %out_saw_map.i ], [ -12, %if.end12.i.out_map.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %13) #7
  br label %out_saw.i

out_saw.i:                                        ; preds = %out_map.i, %of_parse_phandle.exit97.i.out_saw.i_crit_edge, %of_parse_phandle.exit97.thread.i
  %ret.2.i = phi i32 [ %ret.1.i, %out_map.i ], [ -19, %of_parse_phandle.exit97.i.out_saw.i_crit_edge ], [ -19, %of_parse_phandle.exit97.thread.i ]
  call void @of_node_put(ptr noundef nonnull %10) #7
  br label %kpssv2_release_secondary.exit

kpssv2_release_secondary.exit.thread7:            ; preds = %of_parse_phandle.exit.i.kpssv2_release_secondary.exit.thread7_crit_edge, %of_parse_phandle.exit.thread.i
  call void @of_node_put(ptr noundef nonnull %call.i1) #7
  br label %qcom_boot_secondary.exit

kpssv2_release_secondary.exit:                    ; preds = %out_saw.i, %of_parse_phandle.exit91.i.kpssv2_release_secondary.exit_crit_edge, %of_parse_phandle.exit91.thread.i
  %ret.3.i = phi i32 [ %ret.2.i, %out_saw.i ], [ -19, %of_parse_phandle.exit91.i.kpssv2_release_secondary.exit_crit_edge ], [ -19, %of_parse_phandle.exit91.thread.i ]
  call void @of_node_put(ptr noundef nonnull %7) #7
  call void @of_node_put(ptr noundef nonnull %call.i1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool2.not.i = icmp eq i32 %ret.3.i, 0
  br i1 %tobool2.not.i, label %do.body4.i, label %kpssv2_release_secondary.exit.qcom_boot_secondary.exit_crit_edge

kpssv2_release_secondary.exit.qcom_boot_secondary.exit_crit_edge: ; preds = %kpssv2_release_secondary.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_boot_secondary.exit

do.body4.i:                                       ; preds = %kpssv2_release_secondary.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %add12.i = add i32 %20, ptrtoint (ptr @cold_boot_done to i32)
  %21 = inttoptr i32 %add12.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %21, align 4
  br label %qcom_boot_secondary.exit

qcom_boot_secondary.exit:                         ; preds = %do.body4.i, %kpssv2_release_secondary.exit.qcom_boot_secondary.exit_crit_edge, %kpssv2_release_secondary.exit.thread7, %if.then.i.qcom_boot_secondary.exit_crit_edge, %entry.qcom_boot_secondary.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %entry.qcom_boot_secondary.exit_crit_edge ], [ %ret.3.i, %kpssv2_release_secondary.exit.qcom_boot_secondary.exit_crit_edge ], [ 0, %do.body4.i ], [ -19, %kpssv2_release_secondary.exit.thread7 ], [ -19, %if.then.i.qcom_boot_secondary.exit_crit_edge ]
  %rem.i.i = and i32 %cpu, 31
  %add.i.i = add nuw nsw i32 %rem.i.i, 1
  %arrayidx.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i
  %div3.i.i = lshr i32 %cpu, 5
  %idx.neg.i.i = sub nsw i32 0, %div3.i.i
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 %idx.neg.i.i
  call void @arch_send_wakeup_ipi_mask(ptr noundef %add.ptr.i.i) #7
  ret i32 %ret.0.i
}

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !22, !23, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !38, !40, !42, !44}
!llvm.named.register.sp = !{!46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-qcom/platsmp.c", i32 378, i32 1}
!2 = !{ptr @__cpu_method_of_table_qcom_smp, !1, !"__cpu_method_of_table_qcom_smp", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-qcom/platsmp.c", i32 387, i32 1}
!5 = !{ptr @__cpu_method_of_table_qcom_smp_msm8226, !4, !"__cpu_method_of_table_qcom_smp_msm8226", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-qcom/platsmp.c", i32 388, i32 1}
!8 = !{ptr @__cpu_method_of_table_qcom_smp_msm8916, !7, !"__cpu_method_of_table_qcom_smp_msm8916", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-qcom/platsmp.c", i32 397, i32 1}
!11 = !{ptr @__cpu_method_of_table_qcom_smp_kpssv1, !10, !"__cpu_method_of_table_qcom_smp_kpssv1", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-qcom/platsmp.c", i32 406, i32 1}
!14 = !{ptr @__cpu_method_of_table_qcom_smp_kpssv2, !13, !"__cpu_method_of_table_qcom_smp_kpssv2", i1 false, i1 false}
!15 = !{ptr @__pcpu_unique_cold_boot_done, !16, !"__pcpu_unique_cold_boot_done", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-qcom/platsmp.c", i32 314, i32 8}
!17 = !{ptr @cold_boot_done, !16, !"cold_boot_done", i1 false, i1 false}
!18 = !{ptr @smp_msm8660_ops, !19, !"smp_msm8660_ops", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-qcom/platsmp.c", i32 371, i32 36}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-qcom/platsmp.c", i32 367, i32 3}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @qcom_smp_prepare_cpus._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @qcom_smp_prepare_cpus._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!28 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-qcom/platsmp.c", i32 61, i32 3}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @scss_release_secondary._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @scss_release_secondary._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @qcom_smp_cortex_a7_ops, !35, !"qcom_smp_cortex_a7_ops", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-qcom/platsmp.c", i32 380, i32 36}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-qcom/platsmp.c", i32 90, i32 40}
!38 = !{ptr @qcom_smp_kpssv1_ops, !39, !"qcom_smp_kpssv1_ops", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-qcom/platsmp.c", i32 390, i32 36}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-qcom/platsmp.c", i32 152, i32 40}
!42 = !{ptr @qcom_smp_kpssv2_ops, !43, !"qcom_smp_kpssv2_ops", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-qcom/platsmp.c", i32 399, i32 36}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-qcom/platsmp.c", i32 232, i32 39}
!46 = !{!"sp"}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 4904230}
!57 = !{i64 2152514502}
!58 = !{i64 2152512338}
!59 = !{i64 2152515075}
!60 = !{i64 2152515592}
!61 = !{i64 2152516714}
!62 = !{i64 2152517192}
!63 = !{i64 2152518282}
!64 = !{i64 2152519378}
!65 = !{i64 2152519856}
!66 = !{i64 2152520394}
!67 = !{i64 2152521759}
!68 = !{i64 2152522171}
!69 = !{i64 2152523105}
!70 = !{i64 2152524039}
!71 = !{i64 2152524985}
!72 = !{i64 2152525447}
!73 = !{i64 2152526313}
!74 = !{i64 2152527372}
!75 = !{i64 2152528406}
!76 = !{i64 2152529352}
!77 = !{i64 2152530298}
!78 = !{i64 2152530708}

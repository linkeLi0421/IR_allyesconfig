; ModuleID = '/llk/IR_all_yes/arch/arm/mach-mediatek/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-mediatek/platsmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_smp_boot_info = type { i32, i32, [7 x i32], [7 x i32] }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mediatek,mt81xx-tz-smp\00", [41 x i8] zeroinitializer }, align 32
@mt81xx_tz_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @mtk_tz_smp_prepare_cpus, ptr null, ptr @mtk_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_mt81xx_tz_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @mt81xx_tz_smp_ops }, section "__cpu_method_of_table", align 4
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek,mt6589-smp\00", [44 x i8] zeroinitializer }, align 32
@mt6589_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @mtk_smp_prepare_cpus, ptr null, ptr @mtk_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_mt6589_smp = internal constant %struct.of_cpu_method { ptr @.str.1, ptr @mt6589_smp_ops }, section "__cpu_method_of_table", align 4
@mtk_tz_smp_boot_infos = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8135\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_mt8135_tz_boot }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_mt8135_tz_boot }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_mt8135_tz_boot }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@mtk_smp_boot_infos = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6589\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_mt6589_boot }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7623\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_mt7623_boot }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7629\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_mt7623_boot }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@mtk_smp_info = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__mtk_smp_prepare_cpus._entry = internal constant %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 99, ptr null, ptr null }, align 1
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Device is not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__mtk_smp_prepare_cpus\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"arch/arm/mach-mediatek/platsmp.c\00", [63 x i8] zeroinitializer }, align 32
@__mtk_smp_prepare_cpus._entry_ptr = internal global ptr @__mtk_smp_prepare_cpus._entry, section ".printk_index", align 4
@mtk_smp_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__mtk_smp_prepare_cpus._entry.5 = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 110, ptr null, ptr null }, align 1
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: Can't remap %lx\0A\00", [41 x i8] zeroinitializer }, align 32
@__mtk_smp_prepare_cpus._entry_ptr.7 = internal global ptr @__mtk_smp_prepare_cpus._entry.5, section ".printk_index", align 4
@mtk_mt8135_tz_boot = internal constant { %struct.mtk_smp_boot_info, [32 x i8] } { %struct.mtk_smp_boot_info { i32 -2147475456, i32 1020, [7 x i32] [i32 1397506353, i32 1279349554, i32 1095978035, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 1016, i32 1016, i32 1016, i32 0, i32 0, i32 0, i32 0] }, [32 x i8] zeroinitializer }, align 32
@mtk_mt6589_boot = internal constant { %struct.mtk_smp_boot_info, [32 x i8] } { %struct.mtk_smp_boot_info { i32 268443648, i32 52, [7 x i32] [i32 1397506353, i32 1279349554, i32 1095978035, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 56, i32 60, i32 64, i32 0, i32 0, i32 0, i32 0] }, [32 x i8] zeroinitializer }, align 32
@mtk_mt7623_boot = internal constant { %struct.mtk_smp_boot_info, [32 x i8] } { %struct.mtk_smp_boot_info { i32 270540800, i32 52, [7 x i32] [i32 1397506353, i32 1279349554, i32 1095978035, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 56, i32 60, i32 64, i32 0, i32 0, i32 0, i32 0] }, [32 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 137, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 143, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [13 x i8] c"mtk_smp_info\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 59, i32 40 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 99, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"mtk_smp_base\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 58, i32 22 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 109, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"mtk_mt8135_tz_boot\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 26, i32 39 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"mtk_mt6589_boot\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 32, i32 39 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"mtk_mt7623_boot\00", align 1
@___asan_gen_.39 = private constant [36 x i8] c"../arch/arm/mach-mediatek/platsmp.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 38, i32 39 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__cpu_method_of_table_mt6589_smp, ptr @__cpu_method_of_table_mt81xx_tz_smp, ptr @__mtk_smp_prepare_cpus._entry, ptr @__mtk_smp_prepare_cpus._entry.5, ptr @__mtk_smp_prepare_cpus._entry_ptr, ptr @__mtk_smp_prepare_cpus._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @mtk_smp_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mtk_smp_base, ptr @.str.6, ptr @mtk_mt8135_tz_boot, ptr @mtk_mt6589_boot, ptr @mtk_mt7623_boot], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smp_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smp_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mt8135_tz_boot to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mt6589_boot to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mt7623_boot to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_tz_smp_prepare_cpus(i32 noundef %max_cpus) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__mtk_smp_prepare_cpus(i32 noundef 1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mtk_smp_base, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @mtk_smp_info, align 4
  %sub = add i32 %cpu, -1
  %arrayidx = getelementptr %struct.mtk_smp_boot_info, ptr %1, i32 0, i32 2, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %arrayidx8 = getelementptr %struct.mtk_smp_boot_info, ptr %1, i32 0, i32 3, i32 %sub
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx8, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #5, !srcloc !43
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %add.ptr.i) #5
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mtk_smp_prepare_cpus(i32 noundef %trustzone) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trustzone)
  %tobool.not = icmp eq i32 %trustzone, 0
  %mtk_smp_boot_infos.mtk_tz_smp_boot_infos = select i1 %tobool.not, ptr @mtk_smp_boot_infos, ptr @mtk_tz_smp_boot_infos
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.02 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %compatible = getelementptr %struct.of_device_id, ptr %mtk_smp_boot_infos.mtk_tz_smp_boot_infos, i32 %i.02, i32 2
  %call = tail call i32 @of_machine_is_compatible(ptr noundef %compatible) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.inc, label %if.then2

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr %struct.of_device_id, ptr %mtk_smp_boot_infos.mtk_tz_smp_boot_infos, i32 %i.02, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  store ptr %1, ptr @mtk_smp_info, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.endthread-pre-split, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.endthread-pre-split:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %.pr = load ptr, ptr @mtk_smp_info, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %if.then2
  %2 = phi ptr [ %.pr, %for.endthread-pre-split ], [ %1, %if.then2 ]
  %tobool5.not = icmp eq ptr %2, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end8:                                          ; preds = %for.end
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  br i1 %tobool.not, label %if.else12, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %5 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %4, i32 -2130706432, i32 8454144) #10, !srcloc !44
  %6 = inttoptr i32 %5 to ptr
  store ptr %6, ptr @mtk_smp_base, align 4
  br label %if.end24

if.else12:                                        ; preds = %if.end8
  %call14 = tail call ptr @ioremap(i32 noundef %4, i32 noundef 4096) #5
  store ptr %call14, ptr @mtk_smp_base, align 4
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end19, label %if.else12.if.end24_crit_edge

if.else12.if.end24_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

do.end19:                                         ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #7
  %7 = load ptr, ptr @mtk_smp_info, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef %9) #9
  br label %cleanup

if.end24:                                         ; preds = %if.else12.if.end24_crit_edge, %if.then10
  %call26 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @secondary_startup_arm to i32)) #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %call26)
  %11 = load ptr, ptr @mtk_smp_base, align 4
  %12 = load ptr, ptr @mtk_smp_info, align 4
  %jump_reg = getelementptr inbounds %struct.mtk_smp_boot_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %jump_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %jump_reg, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #5, !srcloc !43
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end19, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup_arm() #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_smp_prepare_cpus(i32 noundef %max_cpus) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__mtk_smp_prepare_cpus(i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-mediatek/platsmp.c", i32 137, i32 1}
!2 = !{ptr @__cpu_method_of_table_mt81xx_tz_smp, !1, !"__cpu_method_of_table_mt81xx_tz_smp", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-mediatek/platsmp.c", i32 143, i32 1}
!5 = !{ptr @__cpu_method_of_table_mt6589_smp, !4, !"__cpu_method_of_table_mt6589_smp", i1 false, i1 false}
!6 = !{ptr @mt81xx_tz_smp_ops, !7, !"mt81xx_tz_smp_ops", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-mediatek/platsmp.c", i32 133, i32 36}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-mediatek/platsmp.c", i32 99, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__mtk_smp_prepare_cpus._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @__mtk_smp_prepare_cpus._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-mediatek/platsmp.c", i32 109, i32 4}
!16 = !{ptr @__mtk_smp_prepare_cpus._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @__mtk_smp_prepare_cpus._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @mtk_tz_smp_boot_infos, !19, !"mtk_tz_smp_boot_infos", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-mediatek/platsmp.c", i32 44, i32 34}
!20 = !{ptr @mtk_mt8135_tz_boot, !21, !"mtk_mt8135_tz_boot", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-mediatek/platsmp.c", i32 26, i32 39}
!22 = !{ptr @mtk_smp_boot_infos, !23, !"mtk_smp_boot_infos", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-mediatek/platsmp.c", i32 51, i32 34}
!24 = !{ptr @mtk_mt6589_boot, !25, !"mtk_mt6589_boot", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-mediatek/platsmp.c", i32 32, i32 39}
!26 = !{ptr @mtk_mt7623_boot, !27, !"mtk_mt7623_boot", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-mediatek/platsmp.c", i32 38, i32 39}
!28 = !{ptr @mtk_smp_info, !29, !"mtk_smp_info", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-mediatek/platsmp.c", i32 59, i32 40}
!30 = !{ptr @mtk_smp_base, !31, !"mtk_smp_base", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-mediatek/platsmp.c", i32 58, i32 22}
!32 = !{ptr @mt6589_smp_ops, !33, !"mt6589_smp_ops", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-mediatek/platsmp.c", i32 139, i32 36}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 686973}
!44 = !{i64 2148231332, i64 2148231355, i64 2148231387, i64 2148231419, i64 2148231457, i64 2148231487}

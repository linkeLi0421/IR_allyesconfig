; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mscc/ocelot_police.c_pt.bc'
source_filename = "../drivers/net/ethernet/mscc/ocelot_police.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ocelot_port_policer_add\22, \22a\22\09"
module asm "\09.weak\09__crc_ocelot_port_policer_add\09\09\09\09"
module asm "\09.long\09__crc_ocelot_port_policer_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocelot_port_policer_add:\09\09\09\09\09"
module asm "\09.asciz \09\22ocelot_port_policer_add\22\09\09\09\09\09"
module asm "__kstrtabns_ocelot_port_policer_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ocelot_port_policer_del\22, \22a\22\09"
module asm "\09.weak\09__crc_ocelot_port_policer_del\09\09\09\09"
module asm "\09.long\09__crc_ocelot_port_policer_del\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocelot_port_policer_del:\09\09\09\09\09"
module asm "\09.asciz \09\22ocelot_port_policer_del\22\09\09\09\09\09"
module asm "__kstrtabns_ocelot_port_policer_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.qos_policer_conf = type { i32, i8, i8, i32, i32, i32, i32, i8 }
%struct.ocelot_policer = type { i32, i32 }

@qos_policer_conf_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 106, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid pir for port %d: %u (max %lu)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qos_policer_conf_set\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/mscc/ocelot_police.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qos_policer_conf_set._entry_ptr = internal global ptr @qos_policer_conf_set._entry, section ".printk_index", align 4
@qos_policer_conf_set._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 112, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid cir for port %d: %u (max %lu)\0A\00", [57 x i8] zeroinitializer }, align 32
@qos_policer_conf_set._entry_ptr.7 = internal global ptr @qos_policer_conf_set._entry.5, section ".printk_index", align 4
@qos_policer_conf_set._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 118, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid pbs for port %d: %u (max %u)\0A\00", [58 x i8] zeroinitializer }, align 32
@qos_policer_conf_set._entry_ptr.10 = internal global ptr @qos_policer_conf_set._entry.8, section ".printk_index", align 4
@qos_policer_conf_set._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 124, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid cbs for port %d: %u (max %u)\0A\00", [58 x i8] zeroinitializer }, align 32
@qos_policer_conf_set._entry_ptr.13 = internal global ptr @qos_policer_conf_set._entry.11, section ".printk_index", align 4
@ocelot_port_policer_add.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mscc_ocelot_switch_lib\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ocelot_port_policer_add\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: port %u pir %u kbps, pbs %u bytes\0A\00", [57 x i8] zeroinitializer }, align 32
@__kstrtab_ocelot_port_policer_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocelot_port_policer_add = external dso_local constant [0 x i8], align 1
@__ksymtab_ocelot_port_policer_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocelot_port_policer_add to i32), ptr @__kstrtab_ocelot_port_policer_add, ptr @__kstrtabns_ocelot_port_policer_add }, section "___ksymtab+ocelot_port_policer_add", align 4
@ocelot_port_policer_del.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ocelot_port_policer_del\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: port %u\0A\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_ocelot_port_policer_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocelot_port_policer_del = external dso_local constant [0 x i8], align 1
@__ksymtab_ocelot_port_policer_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocelot_port_policer_del to i32), ptr @__kstrtab_ocelot_port_policer_del, ptr @__kstrtabns_ocelot_port_policer_del }, section "___ksymtab+ocelot_port_policer_del", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 105, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 111, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 117, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 123, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 170, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [45 x i8] c"../drivers/net/ethernet/mscc/ocelot_police.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 193, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab_ocelot_port_policer_add, ptr @__ksymtab_ocelot_port_policer_del, ptr @qos_policer_conf_set._entry, ptr @qos_policer_conf_set._entry.11, ptr @qos_policer_conf_set._entry.5, ptr @qos_policer_conf_set._entry.8, ptr @qos_policer_conf_set._entry_ptr, ptr @qos_policer_conf_set._entry_ptr.10, ptr @qos_policer_conf_set._entry_ptr.13, ptr @qos_policer_conf_set._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qos_policer_conf_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qos_policer_conf_set._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qos_policer_conf_set._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qos_policer_conf_set._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qos_policer_conf_set(ptr noundef %ocelot, i32 noundef %port, i32 noundef %pol_ix, ptr nocapture noundef readonly %conf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pir1 = getelementptr inbounds %struct.qos_policer_conf, ptr %conf, i32 0, i32 5
  %0 = ptrtoint ptr %pir1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pir1, align 4
  %pbs2 = getelementptr inbounds %struct.qos_policer_conf, ptr %conf, i32 0, i32 6
  %2 = ptrtoint ptr %pbs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pbs2, align 4
  %4 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %conf, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry..thread_crit_edge [
    i32 3, label %sw.bb58
    i32 1, label %if.then
    i32 2, label %entry.if.end_crit_edge
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry..thread_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %.thread

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ipg4 = getelementptr inbounds %struct.qos_policer_conf, ptr %conf, i32 0, i32 7
  %7 = ptrtoint ptr %ipg4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ipg4, align 4
  %9 = tail call i8 @llvm.umin.i8(i8 %8, i8 31)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %frm_mode.0 = phi i32 [ 0, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %ipg.0 = phi i8 [ %9, %if.then ], [ 20, %entry.if.end_crit_edge ]
  %dlb = getelementptr inbounds %struct.qos_policer_conf, ptr %conf, i32 0, i32 1
  %10 = ptrtoint ptr %dlb to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dlb, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end.if.end37_crit_edge, label %if.then11

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then11:                                        ; preds = %if.end
  %cir12 = getelementptr inbounds %struct.qos_policer_conf, ptr %conf, i32 0, i32 3
  %12 = ptrtoint ptr %cir12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cir12, align 4
  %cbs13 = getelementptr inbounds %struct.qos_policer_conf, ptr %conf, i32 0, i32 4
  %14 = ptrtoint ptr %cbs13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cbs13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp14 = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp16 = icmp eq i32 %15, 0
  %or.cond = select i1 %cmp14, i1 %cmp16, i1 false
  br i1 %or.cond, label %if.then11.if.end37_crit_edge, label %if.else19

if.then11.if.end37_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.else19:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %13, 99
  %div = udiv i32 %sub, 100
  %mul = mul nuw nsw i32 %div, 3
  %sub21 = add i32 %15, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub21)
  %tobool23.not = icmp ult i32 %sub21, 4096
  %div22230 = lshr i32 %sub21, 12
  %spec.select = select i1 %tobool23.not, i32 1, i32 %div22230
  %cf28 = getelementptr inbounds %struct.qos_policer_conf, ptr %conf, i32 0, i32 2
  %16 = ptrtoint ptr %cf28 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cf28, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool29 = icmp ne i8 %17, 0
  %add34 = select i1 %tobool29, i32 %13, i32 0
  %spec.select476 = add i32 %add34, %1
  br label %if.end37

if.end37:                                         ; preds = %if.else19, %if.then11.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %cf.0.shrunk = phi i1 [ false, %if.end.if.end37_crit_edge ], [ false, %if.then11.if.end37_crit_edge ], [ %tobool29, %if.else19 ]
  %cir_ena.0 = phi i32 [ 0, %if.end.if.end37_crit_edge ], [ 1, %if.then11.if.end37_crit_edge ], [ 1, %if.else19 ]
  %cir.0 = phi i32 [ 0, %if.end.if.end37_crit_edge ], [ 0, %if.then11.if.end37_crit_edge ], [ %mul, %if.else19 ]
  %cbs.0 = phi i32 [ 0, %if.end.if.end37_crit_edge ], [ 0, %if.then11.if.end37_crit_edge ], [ %spec.select, %if.else19 ]
  %pir.0 = phi i32 [ %1, %if.end.if.end37_crit_edge ], [ %1, %if.then11.if.end37_crit_edge ], [ %spec.select476, %if.else19 ]
  %cir_discard.0 = phi i1 [ false, %if.end.if.end37_crit_edge ], [ true, %if.then11.if.end37_crit_edge ], [ false, %if.else19 ]
  %cbs_max.0 = phi i32 [ 0, %if.end.if.end37_crit_edge ], [ 0, %if.then11.if.end37_crit_edge ], [ 60, %if.else19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pir.0)
  %cmp38 = icmp eq i32 %pir.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp41 = icmp eq i32 %3, 0
  %or.cond231 = select i1 %cmp38, i1 %cmp41, i1 false
  br i1 %or.cond231, label %if.end94.thread382, label %sw.epilog

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %1)
  %cmp59 = icmp ugt i32 %1, 99
  br i1 %cmp59, label %sw.epilog.thread435, label %if.else73

if.else73:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp74 = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp77 = icmp eq i32 %3, 0
  %or.cond234 = select i1 %cmp74, i1 %cmp77, i1 false
  br i1 %or.cond234, label %if.else73..thread_crit_edge, label %if.end102.thread

if.else73..thread_crit_edge:                      ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #7
  br label %.thread

sw.epilog:                                        ; preds = %if.end37
  %sub46 = add i32 %pir.0, 99
  %div47 = udiv i32 %sub46, 100
  %mul48 = mul nuw nsw i32 %div47, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %mul48)
  %cmp91 = icmp ugt i32 %mul48, 65535
  br i1 %cmp91, label %sw.epilog.do.end_crit_edge, label %if.end94

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

sw.epilog.thread435:                              ; preds = %sw.bb58
  %sub63 = add i32 %1, 99
  %div64 = udiv i32 %sub63, 100
  %mul65 = mul nuw nsw i32 %div64, 3
  %mul66 = mul i32 %3, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 328, i32 %mul66)
  %18 = icmp ult i32 %mul66, 328
  %div67 = udiv i32 %mul66, 328
  %spec.select233 = select i1 %18, i32 1, i32 %div67
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %mul65)
  %cmp91448 = icmp ugt i32 %mul65, 65535
  br i1 %cmp91448, label %sw.epilog.thread435.do.end_crit_edge, label %sw.epilog.thread435.if.end102_crit_edge

sw.epilog.thread435.if.end102_crit_edge:          ; preds = %sw.epilog.thread435
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

sw.epilog.thread435.do.end_crit_edge:             ; preds = %sw.epilog.thread435
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %sw.epilog.thread435.do.end_crit_edge, %sw.epilog.do.end_crit_edge
  %pir.1454 = phi i32 [ %mul65, %sw.epilog.thread435.do.end_crit_edge ], [ %mul48, %sw.epilog.do.end_crit_edge ]
  %19 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ocelot, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str, i32 noundef %port, i32 noundef %pir.1454, i32 noundef 65535) #8
  br label %cleanup

if.end94:                                         ; preds = %sw.epilog
  %sub50 = add i32 %3, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub50)
  %tobool52.not = icmp ult i32 %sub50, 4096
  %div51229 = lshr i32 %sub50, 12
  %spec.select232 = select i1 %tobool52.not, i32 1, i32 %div51229
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %cir.0)
  %cmp95 = icmp ugt i32 %cir.0, 65535
  br i1 %cmp95, label %if.end94.do.end100_crit_edge, label %if.end94.if.end102_crit_edge

if.end94.if.end102_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

if.end94.do.end100_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end100

if.end94.thread382:                               ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %cir.0)
  %cmp95395 = icmp ugt i32 %cir.0, 65535
  br i1 %cmp95395, label %if.end94.thread382.do.end100_crit_edge, label %if.end94.thread382.if.end110_crit_edge

if.end94.thread382.if.end110_crit_edge:           ; preds = %if.end94.thread382
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

if.end94.thread382.do.end100_crit_edge:           ; preds = %if.end94.thread382
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end100

do.end100:                                        ; preds = %if.end94.thread382.do.end100_crit_edge, %if.end94.do.end100_crit_edge
  %21 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ocelot, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.6, i32 noundef %port, i32 noundef %cir.0, i32 noundef 65535) #8
  br label %cleanup

if.end102:                                        ; preds = %if.end94.if.end102_crit_edge, %sw.epilog.thread435.if.end102_crit_edge
  %cf.1.shrunk249408 = phi i1 [ %cf.0.shrunk, %if.end94.if.end102_crit_edge ], [ false, %sw.epilog.thread435.if.end102_crit_edge ]
  %cir_ena.1250407 = phi i32 [ %cir_ena.0, %if.end94.if.end102_crit_edge ], [ 0, %sw.epilog.thread435.if.end102_crit_edge ]
  %frm_mode.1251406 = phi i32 [ %frm_mode.0, %if.end94.if.end102_crit_edge ], [ 2, %sw.epilog.thread435.if.end102_crit_edge ]
  %cir.1252405 = phi i32 [ %cir.0, %if.end94.if.end102_crit_edge ], [ 0, %sw.epilog.thread435.if.end102_crit_edge ]
  %cbs.1253403 = phi i32 [ %cbs.0, %if.end94.if.end102_crit_edge ], [ 0, %sw.epilog.thread435.if.end102_crit_edge ]
  %pir.1254402 = phi i32 [ %mul48, %if.end94.if.end102_crit_edge ], [ %mul65, %sw.epilog.thread435.if.end102_crit_edge ]
  %pbs.0255401 = phi i32 [ %spec.select232, %if.end94.if.end102_crit_edge ], [ %spec.select233, %sw.epilog.thread435.if.end102_crit_edge ]
  %cir_discard.1.off0256400 = phi i1 [ %cir_discard.0, %if.end94.if.end102_crit_edge ], [ false, %sw.epilog.thread435.if.end102_crit_edge ]
  %pbs_max.0258398 = phi i32 [ 60, %if.end94.if.end102_crit_edge ], [ 127, %sw.epilog.thread435.if.end102_crit_edge ]
  %cbs_max.1259397 = phi i32 [ %cbs_max.0, %if.end94.if.end102_crit_edge ], [ 0, %sw.epilog.thread435.if.end102_crit_edge ]
  %ipg.1260396 = phi i8 [ %ipg.0, %if.end94.if.end102_crit_edge ], [ 20, %sw.epilog.thread435.if.end102_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pbs.0255401, i32 %pbs_max.0258398)
  %cmp103 = icmp ugt i32 %pbs.0255401, %pbs_max.0258398
  br i1 %cmp103, label %if.end102.do.end108_crit_edge, label %if.end102.if.end110_crit_edge

if.end102.if.end110_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

if.end102.do.end108_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end108

if.end102.thread:                                 ; preds = %if.else73
  %mul81 = mul nuw nsw i32 %1, 3
  %mul82 = mul i32 %3, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mul82)
  %23 = icmp ult i32 %mul82, 3
  %div83 = udiv i32 %mul82, 3
  %spec.select235 = select i1 %23, i32 1, i32 %div83
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %spec.select235)
  %cmp103298 = icmp ugt i32 %spec.select235, 61
  br i1 %cmp103298, label %if.end102.thread.do.end108_crit_edge, label %if.end102.thread..thread_crit_edge

if.end102.thread..thread_crit_edge:               ; preds = %if.end102.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %.thread

if.end102.thread.do.end108_crit_edge:             ; preds = %if.end102.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end108

do.end108:                                        ; preds = %if.end102.thread.do.end108_crit_edge, %if.end102.do.end108_crit_edge
  %pbs_max.0258276309 = phi i32 [ 61, %if.end102.thread.do.end108_crit_edge ], [ %pbs_max.0258398, %if.end102.do.end108_crit_edge ]
  %pbs.0255279305 = phi i32 [ %div83, %if.end102.thread.do.end108_crit_edge ], [ %pbs.0255401, %if.end102.do.end108_crit_edge ]
  %24 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ocelot, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.9, i32 noundef %port, i32 noundef %pbs.0255279305, i32 noundef %pbs_max.0258276309) #8
  br label %cleanup

if.end110:                                        ; preds = %if.end102.if.end110_crit_edge, %if.end94.thread382.if.end110_crit_edge
  %ipg.1260274311 = phi i8 [ %ipg.1260396, %if.end102.if.end110_crit_edge ], [ %ipg.0, %if.end94.thread382.if.end110_crit_edge ]
  %cbs_max.1259275310 = phi i32 [ %cbs_max.1259397, %if.end102.if.end110_crit_edge ], [ %cbs_max.0, %if.end94.thread382.if.end110_crit_edge ]
  %pir_discard.0.off0257277308 = phi i32 [ 0, %if.end102.if.end110_crit_edge ], [ 8388607, %if.end94.thread382.if.end110_crit_edge ]
  %cir_discard.1.off0256278307 = phi i1 [ %cir_discard.1.off0256400, %if.end102.if.end110_crit_edge ], [ %cir_discard.0, %if.end94.thread382.if.end110_crit_edge ]
  %pbs.0255279306 = phi i32 [ %pbs.0255401, %if.end102.if.end110_crit_edge ], [ 0, %if.end94.thread382.if.end110_crit_edge ]
  %pir.1254280304 = phi i32 [ %pir.1254402, %if.end102.if.end110_crit_edge ], [ 0, %if.end94.thread382.if.end110_crit_edge ]
  %cbs.1253281303 = phi i32 [ %cbs.1253403, %if.end102.if.end110_crit_edge ], [ %cbs.0, %if.end94.thread382.if.end110_crit_edge ]
  %cir.1252282302 = phi i32 [ %cir.1252405, %if.end102.if.end110_crit_edge ], [ %cir.0, %if.end94.thread382.if.end110_crit_edge ]
  %frm_mode.1251283301 = phi i32 [ %frm_mode.1251406, %if.end102.if.end110_crit_edge ], [ %frm_mode.0, %if.end94.thread382.if.end110_crit_edge ]
  %cir_ena.1250284300 = phi i32 [ %cir_ena.1250407, %if.end102.if.end110_crit_edge ], [ %cir_ena.0, %if.end94.thread382.if.end110_crit_edge ]
  %cf.1.shrunk249285299 = phi i1 [ %cf.1.shrunk249408, %if.end102.if.end110_crit_edge ], [ %cf.0.shrunk, %if.end94.thread382.if.end110_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cbs.1253281303, i32 %cbs_max.1259275310)
  %cmp111 = icmp ugt i32 %cbs.1253281303, %cbs_max.1259275310
  br i1 %cmp111, label %do.end116, label %if.end118

do.end116:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ocelot, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.12, i32 noundef %port, i32 noundef %cbs.1253281303, i32 noundef %cbs_max.1259275310) #8
  br label %cleanup

if.end118:                                        ; preds = %if.end110
  %conv119 = zext i8 %ipg.1260274311 to i32
  %shl = shl nuw nsw i32 %conv119, 5
  %and = and i32 %shl, 992
  %shl120 = shl nuw nsw i32 %frm_mode.1251283301, 3
  %and121 = and i32 %shl120, 24
  %or = or i32 %and121, %and
  %spec.select477 = select i1 %cf.1.shrunk249285299, i32 4, i32 0
  %or124 = or i32 %or, %spec.select477
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cir_ena.1250284300)
  %tobool125.not = icmp eq i32 %cir_ena.1250284300, 0
  br i1 %tobool125.not, label %if.end118..thread_crit_edge, label %if.end118._crit_edge

if.end118._crit_edge:                             ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %28

if.end118..thread_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %.thread

.thread:                                          ; preds = %if.end118..thread_crit_edge, %if.end102.thread..thread_crit_edge, %if.else73..thread_crit_edge, %entry..thread_crit_edge
  %or124381 = phi i32 [ %or124, %if.end118..thread_crit_edge ], [ 664, %if.end102.thread..thread_crit_edge ], [ 640, %entry..thread_crit_edge ], [ 664, %if.else73..thread_crit_edge ]
  %cir.1252282302330351379 = phi i32 [ %cir.1252282302, %if.end118..thread_crit_edge ], [ 0, %if.end102.thread..thread_crit_edge ], [ 0, %entry..thread_crit_edge ], [ 0, %if.else73..thread_crit_edge ]
  %cbs.1253281303329352377 = phi i32 [ %cbs.1253281303, %if.end118..thread_crit_edge ], [ 0, %if.end102.thread..thread_crit_edge ], [ 0, %entry..thread_crit_edge ], [ 0, %if.else73..thread_crit_edge ]
  %pir.1254280304328353375 = phi i32 [ %pir.1254280304, %if.end118..thread_crit_edge ], [ %mul81, %if.end102.thread..thread_crit_edge ], [ 65535, %entry..thread_crit_edge ], [ 0, %if.else73..thread_crit_edge ]
  %pbs.0255279306327354373 = phi i32 [ %pbs.0255279306, %if.end118..thread_crit_edge ], [ %spec.select235, %if.end102.thread..thread_crit_edge ], [ 0, %entry..thread_crit_edge ], [ 0, %if.else73..thread_crit_edge ]
  %cir_discard.1.off0256278307326355371 = phi i1 [ %cir_discard.1.off0256278307, %if.end118..thread_crit_edge ], [ false, %if.end102.thread..thread_crit_edge ], [ false, %entry..thread_crit_edge ], [ true, %if.else73..thread_crit_edge ]
  %pir_discard.0.off0257277308325356369 = phi i32 [ %pir_discard.0.off0257277308, %if.end118..thread_crit_edge ], [ 0, %if.end102.thread..thread_crit_edge ], [ 0, %entry..thread_crit_edge ], [ 8388607, %if.else73..thread_crit_edge ]
  br label %28

28:                                               ; preds = %.thread, %if.end118._crit_edge
  %or124380 = phi i32 [ %or124381, %.thread ], [ %or124, %if.end118._crit_edge ]
  %cir.1252282302330351378 = phi i32 [ %cir.1252282302330351379, %.thread ], [ %cir.1252282302, %if.end118._crit_edge ]
  %cbs.1253281303329352376 = phi i32 [ %cbs.1253281303329352377, %.thread ], [ %cbs.1253281303, %if.end118._crit_edge ]
  %pir.1254280304328353374 = phi i32 [ %pir.1254280304328353375, %.thread ], [ %pir.1254280304, %if.end118._crit_edge ]
  %pbs.0255279306327354372 = phi i32 [ %pbs.0255279306327354373, %.thread ], [ %pbs.0255279306, %if.end118._crit_edge ]
  %cir_discard.1.off0256278307326355370 = phi i1 [ %cir_discard.1.off0256278307326355371, %.thread ], [ %cir_discard.1.off0256278307, %if.end118._crit_edge ]
  %pir_discard.0.off0257277308325356368 = phi i32 [ %pir_discard.0.off0257277308325356369, %.thread ], [ %pir_discard.0.off0257277308, %if.end118._crit_edge ]
  %29 = phi i32 [ 0, %.thread ], [ 2, %if.end118._crit_edge ]
  %or127 = or i32 %or124380, %29
  %or128 = or i32 %or127, 1
  %mul129 = shl i32 %pol_ix, 5
  tail call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef %or128, i32 noundef 16777308, i32 noundef %mul129) #5
  %shl130 = shl nuw nsw i32 %pir.1254280304328353374, 6
  %and131 = and i32 %shl130, 2097088
  %and132 = and i32 %pbs.0255279306327354372, 63
  %or133 = or i32 %and131, %and132
  tail call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef %or133, i32 noundef 16777306, i32 noundef %mul129) #5
  tail call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef %pir_discard.0.off0257277308325356368, i32 noundef 16777309, i32 noundef %mul129) #5
  %shl139 = shl nuw nsw i32 %cir.1252282302330351378, 6
  %and140 = and i32 %shl139, 2097088
  %and141 = and i32 %cbs.1253281303329352376, 63
  %or142 = or i32 %and140, %and141
  tail call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef %or142, i32 noundef 16777307, i32 noundef %mul129) #5
  %cond146 = select i1 %cir_discard.1.off0256278307326355370, i32 8388607, i32 0
  tail call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef %cond146, i32 noundef 16777310, i32 noundef %mul129) #5
  br label %cleanup

cleanup:                                          ; preds = %28, %do.end116, %do.end108, %do.end100, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end100 ], [ -22, %do.end108 ], [ -22, %do.end116 ], [ 0, %28 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ocelot_write_ix(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocelot_port_policer_add(ptr noundef %ocelot, i32 noundef %port, ptr noundef readonly %pol) #0 align 64 {
entry:
  %pp = alloca %struct.qos_policer_conf, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pp) #5
  %0 = getelementptr inbounds i8, ptr %pp, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %tobool.not = icmp eq ptr %pol, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %pp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %pp, align 4
  %3 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pol, align 4
  %pir = getelementptr inbounds %struct.qos_policer_conf, ptr %pp, i32 0, i32 5
  %5 = ptrtoint ptr %pir to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pir, align 4
  %burst = getelementptr inbounds %struct.ocelot_policer, ptr %pol, i32 0, i32 1
  %6 = ptrtoint ptr %burst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %burst, align 4
  %pbs = getelementptr inbounds %struct.qos_policer_conf, ptr %pp, i32 0, i32 6
  %8 = ptrtoint ptr %pbs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pbs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ocelot_port_policer_add.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ocelot_port_policer_add, %if.then4)) #5
          to label %do.end [label %if.then4], !srcloc !43

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ocelot, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ocelot_port_policer_add.__UNIQUE_ID_ddebug499, ptr noundef %10, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %port, i32 noundef %4, i32 noundef %7) #5
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.end
  %call8 = call i32 @qos_policer_conf_set(ptr noundef %ocelot, i32 noundef %port, i32 noundef %port, ptr noundef nonnull %pp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl i32 %port, 8
  tail call void @__ocelot_rmw_ix(ptr noundef %ocelot, i32 noundef 131539, i32 noundef 131583, i32 noundef 16777282, i32 noundef %mul) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ %call8, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pp) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ocelot_rmw_ix(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocelot_port_policer_del(ptr noundef %ocelot, i32 noundef %port) #0 align 64 {
entry:
  %pp = alloca %struct.qos_policer_conf, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pp) #5
  %0 = getelementptr inbounds i8, ptr %pp, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ocelot_port_policer_del.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ocelot_port_policer_del, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !43

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ocelot, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ocelot_port_policer_del.__UNIQUE_ID_ddebug500, ptr noundef %3, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef %port) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %pp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pp, align 4
  %call3 = call i32 @qos_policer_conf_set(ptr noundef %ocelot, i32 noundef %port, i32 noundef %port, ptr noundef nonnull %pp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl i32 %port, 8
  tail call void @__ocelot_rmw_ix(ptr noundef %ocelot, i32 noundef 467, i32 noundef 131583, i32 noundef 16777282, i32 noundef %mul) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pp) #5
  ret i32 %call3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !29, !30, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mscc/ocelot_police.c", i32 105, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qos_policer_conf_set._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @qos_policer_conf_set._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mscc/ocelot_police.c", i32 111, i32 3}
!10 = !{ptr @qos_policer_conf_set._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @qos_policer_conf_set._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mscc/ocelot_police.c", i32 117, i32 3}
!14 = !{ptr @qos_policer_conf_set._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @qos_policer_conf_set._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mscc/ocelot_police.c", i32 123, i32 3}
!18 = !{ptr @qos_policer_conf_set._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @qos_policer_conf_set._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mscc/ocelot_police.c", i32 170, i32 2}
!22 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.16, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ocelot_port_policer_add.__UNIQUE_ID_ddebug499, !21, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!25 = !{ptr @__ksymtab_ocelot_port_policer_add, !26, !"__ksymtab_ocelot_port_policer_add", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mscc/ocelot_police.c", i32 186, i32 1}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mscc/ocelot_police.c", i32 193, i32 2}
!29 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ocelot_port_policer_del.__UNIQUE_ID_ddebug500, !28, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!31 = !{ptr @__ksymtab_ocelot_port_policer_del, !32, !"__ksymtab_ocelot_port_policer_del", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mscc/ocelot_police.c", i32 209, i32 1}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i8 0, i8 2}
!43 = !{i64 2148322867, i64 2148322872, i64 2148322885, i64 2148322929, i64 2148322963, i64 2148322984}

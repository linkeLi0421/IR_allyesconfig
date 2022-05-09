; ModuleID = '/llk/IR_all_yes/arch/arm/mm/proc-v7-bugs.c_pt.bc'
source_filename = "../arch/arm/mm/proc-v7-bugs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@spectre_warned = weak dso_local global i8 0, section ".data..percpu", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__pcpu_scope_harden_branch_predictor_fn = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_harden_branch_predictor_fn = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@harden_branch_predictor_fn = weak dso_local global ptr null, section ".data..percpu", align 4
@__pcpu_unique_spectre_warned = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@.str = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"Spectre v2: firmware did not set auxiliary control register IBE bit, system vulnerable\0A\00", [40 x i8] zeroinitializer }, align 32
@cpu_v7_check_auxcr_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\013CPU%u: %s\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cpu_v7_check_auxcr_set\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"arch/arm/mm/proc-v7-bugs.c\00", [37 x i8] zeroinitializer }, align 32
@cpu_v7_check_auxcr_set._entry_ptr = internal global ptr @cpu_v7_check_auxcr_set._entry, section ".printk_index", align 4
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BPIALL\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ICIALLU\00", [24 x i8] zeroinitializer }, align 32
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hypervisor\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firmware\00", [23 x i8] zeroinitializer }, align 32
@spectre_v2_install_workaround._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016CPU%u: Spectre v2: using %s workaround\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"spectre_v2_install_workaround\00", [34 x i8] zeroinitializer }, align 32
@spectre_v2_install_workaround._entry_ptr = internal global ptr @spectre_v2_install_workaround._entry, section ".printk_index", align 4
@spectre_bhb_method = internal global { i32, [28 x i8] } zeroinitializer, align 32
@spectre_bhb_install_workaround._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013CPU%u: Spectre BHB: method disagreement, system vulnerable\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"spectre_bhb_install_workaround\00", [33 x i8] zeroinitializer }, align 32
@spectre_bhb_install_workaround._entry_ptr = internal global ptr @spectre_bhb_install_workaround._entry, section ".printk_index", align 4
@spectre_bhb_install_workaround._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016CPU%u: Spectre BHB: using %s workaround\0A\00", [53 x i8] zeroinitializer }, align 32
@spectre_bhb_install_workaround._entry_ptr.14 = internal global ptr @spectre_bhb_install_workaround._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"loop\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 1090568320, i64 1090568336, i64 1090568400, i64 1090568416, i64 1090568432, i64 1090572400, i64 1090572416, i64 1090572432, i64 1090572448, i64 1107296496, i64 1107300352]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.21 = internal global [8 x i64] [i64 6, i64 32, i64 1090568432, i64 1090572400, i64 1090572416, i64 1090572432, i64 1090572448, i64 1107296496]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 278, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 265, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 78, i32 23 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 84, i32 23 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 91, i32 23 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 98, i32 23 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 103, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c"spectre_bhb_method\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 182, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 202, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 214, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [30 x i8] c"../arch/arm/mm/proc-v7-bugs.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 188, i32 10 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @cpu_v7_check_auxcr_set._entry, ptr @cpu_v7_check_auxcr_set._entry_ptr, ptr @spectre_bhb_install_workaround._entry, ptr @spectre_bhb_install_workaround._entry.12, ptr @spectre_bhb_install_workaround._entry_ptr, ptr @spectre_bhb_install_workaround._entry_ptr.14, ptr @spectre_v2_install_workaround._entry, ptr @spectre_v2_install_workaround._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @spectre_bhb_method, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_v7_check_auxcr_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spectre_v2_install_workaround._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spectre_bhb_method to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spectre_bhb_install_workaround._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spectre_bhb_install_workaround._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpu_v7_ca8_ibe() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !43) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @spectre_warned to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 1", "=r"() #7, !srcloc !53
  %and.i.i = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i.i.not, label %if.then.i.i, label %if.then

if.then.i.i:                                      ; preds = %entry
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %6, align 1, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.then.i.i.check_spectre_auxcr.exit_crit_edge

if.then.i.i.check_spectre_auxcr.exit_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %check_spectre_auxcr.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %3, ptr noundef nonnull @.str) #8
  br label %check_spectre_auxcr.exit

check_spectre_auxcr.exit:                         ; preds = %do.end.i.i, %if.then.i.i.check_spectre_auxcr.exit_crit_edge
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %6, align 1
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @cpu_v7_spectre_v2_init()
  br label %if.end

if.end:                                           ; preds = %if.then, %check_spectre_auxcr.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpu_v7_spectre_v2_init() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #7, !srcloc !55
  %and.i = and i32 %0, -16711696
  %1 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %sw.default [
    i32 1090568320, label %entry.if.then15_crit_edge
    i32 1090568336, label %entry.if.then15_crit_edge32
    i32 1090568400, label %entry.if.then15_crit_edge33
    i32 1090568416, label %entry.if.then15_crit_edge34
    i32 1090572432, label %entry.if.then15_crit_edge35
    i32 1090572448, label %entry.if.then15_crit_edge36
    i32 1090568432, label %entry.sw.bb1_crit_edge
    i32 1107296496, label %entry.sw.bb1_crit_edge37
    i32 1107300352, label %entry.if.end17_crit_edge
    i32 1090572400, label %entry.sw.bb4_crit_edge
    i32 1090572416, label %entry.sw.bb4_crit_edge38
  ]

entry.sw.bb4_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

entry.sw.bb1_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1

entry.if.then15_crit_edge36:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

entry.if.then15_crit_edge35:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

entry.if.then15_crit_edge34:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

entry.if.then15_crit_edge33:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

entry.if.then15_crit_edge32:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

entry.if.then15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge37
  br label %if.then15

sw.default:                                       ; preds = %entry
  %shr.i.mask = and i32 %0, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090519040, i32 %shr.i.mask)
  %cmp = icmp eq i32 %shr.i.mask, 1090519040
  br i1 %cmp, label %sw.default.if.end17_crit_edge, label %sw.default.sw.bb4_crit_edge

sw.default.sw.bb4_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4

sw.default.if.end17_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

sw.bb4:                                           ; preds = %sw.default.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge38
  %call.i = tail call i32 @arm_smccc_1_1_get_conduit() #4
  %2 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call.i, label %sw.epilog.thread.i [
    i32 2, label %do.body.i
    i32 1, label %do.body5.i
  ]

do.body.i:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  %3 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ( (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) << 24) & 0xFF000000) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) << 8) & 0x00FF0000) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) >> 8) & 0x0000FF00) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) >> 24) & 0x000000FF) )\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2147483647, i32 -2147450880) #4, !srcloc !56
  br label %sw.epilog.i

do.body5.i:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  %4 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ( (((0xE1600070 | (((0) & 0xF) << 0)) << 24) & 0xFF000000) | (((0xE1600070 | (((0) & 0xF) << 0)) << 8) & 0x00FF0000) | (((0xE1600070 | (((0) & 0xF) << 0)) >> 8) & 0x0000FF00) | (((0xE1600070 | (((0) & 0xF) << 0)) >> 24) & 0x000000FF) )\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2147483647, i32 -2147450880) #4, !srcloc !57
  br label %sw.epilog.i

sw.epilog.thread.i:                               ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "", "{r0},{r1},~{memory}"(i32 -2147483647, i32 -2147450880) #4, !srcloc !58
  br label %if.end17

sw.epilog.i:                                      ; preds = %do.body5.i, %do.body.i
  %.pn.i = phi { i32, i32, i32, i32 } [ %4, %do.body5.i ], [ %3, %do.body.i ]
  %res.sroa.0.0.i = extractvalue { i32, i32, i32, i32 } %.pn.i, 0
  %5 = zext i32 %res.sroa.0.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %res.sroa.0.0.i, label %if.end17.fold.split [
    i32 1, label %sw.epilog.i.if.end17_crit_edge
    i32 0, label %if.end8
  ]

sw.epilog.i.if.end17_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.end8:                                          ; preds = %sw.epilog.i
  %call9 = tail call i32 @arm_smccc_1_1_get_conduit() #4
  %6 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %call9, label %if.end8.if.end17_crit_edge [
    i32 2, label %if.end8.if.then15_crit_edge
    i32 1, label %sw.bb11
  ]

if.end8.if.then15_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

sw.bb11:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.then15:                                        ; preds = %sw.bb11, %if.end8.if.then15_crit_edge, %sw.bb1, %entry.if.then15_crit_edge, %entry.if.then15_crit_edge32, %entry.if.then15_crit_edge33, %entry.if.then15_crit_edge34, %entry.if.then15_crit_edge35, %entry.if.then15_crit_edge36
  %method.0.ph = phi i32 [ 8, %if.end8.if.then15_crit_edge ], [ 1, %entry.if.then15_crit_edge ], [ 1, %entry.if.then15_crit_edge32 ], [ 1, %entry.if.then15_crit_edge33 ], [ 1, %entry.if.then15_crit_edge34 ], [ 1, %entry.if.then15_crit_edge35 ], [ 1, %entry.if.then15_crit_edge36 ], [ 2, %sw.bb1 ], [ 4, %sw.bb11 ]
  %7 = tail call i32 @llvm.read_register.i32(metadata !43) #4
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu1.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, ptrtoint (ptr @harden_branch_predictor_fn to i32)
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then15.if.end17_crit_edge

if.then15.if.end17_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.end.i:                                         ; preds = %if.then15
  %16 = zext i32 %method.0.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %method.0.ph, label %if.end.i.if.end17_crit_edge [
    i32 1, label %do.body3.i
    i32 2, label %do.body13.i
    i32 8, label %do.body23.i
    i32 4, label %do.body36.i
  ]

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @harden_branch_predictor_bpiall, ptr %13, align 4
  br label %do.end53.i

do.body13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @harden_branch_predictor_iciallu, ptr %13, align 4
  br label %do.end53.i

do.body23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @call_hvc_arch_workaround_1, ptr %13, align 4
  %20 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu1.i, align 4
  %arrayidx34.i = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx34.i, align 4
  %switch_mm.i = getelementptr inbounds %struct.processor, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %switch_mm.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @cpu_v7_hvc_switch_mm, ptr %switch_mm.i, align 4
  br label %do.end53.i

do.body36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @call_smc_arch_workaround_1, ptr %13, align 4
  %26 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu1.i, align 4
  %arrayidx47.i = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx47.i, align 4
  %switch_mm48.i = getelementptr inbounds %struct.processor, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %switch_mm48.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @cpu_v7_smc_switch_mm, ptr %switch_mm48.i, align 4
  br label %do.end53.i

do.end53.i:                                       ; preds = %do.body36.i, %do.body23.i, %do.body13.i, %do.body3.i
  %spectre_v2_method.0.ph.i = phi ptr [ @.str.4, %do.body3.i ], [ @.str.5, %do.body13.i ], [ @.str.6, %do.body23.i ], [ @.str.7, %do.body36.i ]
  %31 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu1.i, align 4
  %call57.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %32, ptr noundef nonnull %spectre_v2_method.0.ph.i) #8
  br label %if.end17

if.end17.fold.split:                              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.end17:                                         ; preds = %if.end17.fold.split, %do.end53.i, %if.end.i.if.end17_crit_edge, %if.then15.if.end17_crit_edge, %if.end8.if.end17_crit_edge, %sw.epilog.i.if.end17_crit_edge, %sw.epilog.thread.i, %sw.default.if.end17_crit_edge, %entry.if.end17_crit_edge
  %method.025 = phi i32 [ %method.0.ph, %if.then15.if.end17_crit_edge ], [ %method.0.ph, %if.end.i.if.end17_crit_edge ], [ %method.0.ph, %do.end53.i ], [ 0, %sw.default.if.end17_crit_edge ], [ 0, %entry.if.end17_crit_edge ], [ 0, %sw.epilog.thread.i ], [ 0, %sw.epilog.i.if.end17_crit_edge ], [ 0, %if.end8.if.end17_crit_edge ], [ 0, %if.end17.fold.split ]
  %state.1 = phi i32 [ 1, %if.then15.if.end17_crit_edge ], [ 1, %if.end.i.if.end17_crit_edge ], [ 1, %do.end53.i ], [ 0, %sw.default.if.end17_crit_edge ], [ 0, %entry.if.end17_crit_edge ], [ 2, %sw.epilog.thread.i ], [ 0, %sw.epilog.i.if.end17_crit_edge ], [ 2, %if.end8.if.end17_crit_edge ], [ 2, %if.end17.fold.split ]
  tail call void @spectre_v2_update_state(i32 noundef %state.1, i32 noundef %method.025) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpu_v7_ca15_ibe() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !43) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @spectre_warned to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 1", "=r"() #7, !srcloc !53
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i.i.not, label %if.then.i.i, label %if.then

if.then.i.i:                                      ; preds = %entry
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %6, align 1, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.then.i.i.check_spectre_auxcr.exit_crit_edge

if.then.i.i.check_spectre_auxcr.exit_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %check_spectre_auxcr.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %3, ptr noundef nonnull @.str) #8
  br label %check_spectre_auxcr.exit

check_spectre_auxcr.exit:                         ; preds = %do.end.i.i, %if.then.i.i.check_spectre_auxcr.exit_crit_edge
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %6, align 1
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @cpu_v7_spectre_v2_init()
  br label %if.end

if.end:                                           ; preds = %if.then, %check_spectre_auxcr.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpu_v7_bugs_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @cpu_v7_spectre_v2_init()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #7, !srcloc !55
  %and.i.i = and i32 %0, -16711696
  %1 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %and.i.i, label %entry.cpu_v7_spectre_bhb_init.exit_crit_edge [
    i32 1090568432, label %entry.if.then.i_crit_edge
    i32 1107296496, label %entry.if.then.i_crit_edge1
    i32 1090572400, label %entry.if.then.i_crit_edge2
    i32 1090572416, label %entry.if.then.i_crit_edge3
    i32 1090572432, label %entry.sw.bb1.i_crit_edge
    i32 1090572448, label %entry.sw.bb1.i_crit_edge4
  ]

entry.sw.bb1.i_crit_edge4:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1.i

entry.if.then.i_crit_edge3:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

entry.if.then.i_crit_edge2:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

entry.if.then.i_crit_edge1:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

entry.cpu_v7_spectre_bhb_init.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_v7_spectre_bhb_init.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge4
  br label %if.then.i

if.then.i:                                        ; preds = %sw.bb1.i, %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge1, %entry.if.then.i_crit_edge2, %entry.if.then.i_crit_edge3
  %switch.selectcmp2.i.i.i = phi ptr [ @.str.4, %sw.bb1.i ], [ @.str.15, %entry.if.then.i_crit_edge ], [ @.str.15, %entry.if.then.i_crit_edge1 ], [ @.str.15, %entry.if.then.i_crit_edge2 ], [ @.str.15, %entry.if.then.i_crit_edge3 ]
  %method.0.ph.i = phi i32 [ 1, %sw.bb1.i ], [ 16, %entry.if.then.i_crit_edge ], [ 16, %entry.if.then.i_crit_edge1 ], [ 16, %entry.if.then.i_crit_edge2 ], [ 16, %entry.if.then.i_crit_edge3 ]
  %2 = load i32, ptr @spectre_bhb_method, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %method.0.ph.i)
  %cmp.not.i.i = icmp eq i32 %2, %method.0.ph.i
  br i1 %cmp.not.i.i, label %if.then.i.do.end9.i.i_crit_edge, label %if.then.i.i

if.then.i.do.end9.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end9.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %3 = tail call i32 @llvm.read_register.i32(metadata !43) #4
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu.i.i, align 4
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %6) #8
  br label %cpu_v7_spectre_bhb_init.exit

if.end.i.i:                                       ; preds = %if.then.i.i
  %call3.i.i = tail call i32 @spectre_bhb_update_vectors(i32 noundef %method.0.ph.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3.i.i)
  %cmp4.i.i = icmp eq i32 %call3.i.i, 2
  br i1 %cmp4.i.i, label %if.end.i.i.cpu_v7_spectre_bhb_init.exit_crit_edge, label %if.end6.i.i

if.end.i.i.cpu_v7_spectre_bhb_init.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_v7_spectre_bhb_init.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i32 %method.0.ph.i, ptr @spectre_bhb_method, align 4
  br label %do.end9.i.i

do.end9.i.i:                                      ; preds = %if.end6.i.i, %if.then.i.do.end9.i.i_crit_edge
  %7 = tail call i32 @llvm.read_register.i32(metadata !43) #4
  %and.i18.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i18.i.i to ptr
  %cpu12.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu12.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu12.i.i, align 4
  %call14.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %10, ptr noundef nonnull %switch.selectcmp2.i.i.i) #8
  br label %cpu_v7_spectre_bhb_init.exit

cpu_v7_spectre_bhb_init.exit:                     ; preds = %do.end9.i.i, %if.end.i.i.cpu_v7_spectre_bhb_init.exit_crit_edge, %do.end.i.i, %entry.cpu_v7_spectre_bhb_init.exit_crit_edge
  %method.07.i = phi i32 [ 0, %entry.cpu_v7_spectre_bhb_init.exit_crit_edge ], [ %method.0.ph.i, %do.end.i.i ], [ %method.0.ph.i, %if.end.i.i.cpu_v7_spectre_bhb_init.exit_crit_edge ], [ %method.0.ph.i, %do.end9.i.i ]
  %state.1.i = phi i32 [ 0, %entry.cpu_v7_spectre_bhb_init.exit_crit_edge ], [ 2, %do.end.i.i ], [ 2, %if.end.i.i.cpu_v7_spectre_bhb_init.exit_crit_edge ], [ 1, %do.end9.i.i ]
  tail call void @spectre_v2_update_state(i32 noundef %state.1.i, i32 noundef %method.07.i) #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_smccc_1_1_get_conduit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spectre_v2_update_state(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @harden_branch_predictor_bpiall() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #4, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @harden_branch_predictor_iciallu() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 0", "r"(i32 0) #4, !srcloc !60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @call_hvc_arch_workaround_1() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ( (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) << 24) & 0xFF000000) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) << 8) & 0x00FF0000) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) >> 8) & 0x0000FF00) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) >> 24) & 0x000000FF) )\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},~{memory}"(i32 -2147450880) #4, !srcloc !61
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_v7_hvc_switch_mm(i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @call_smc_arch_workaround_1() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ( (((0xE1600070 | (((0) & 0xF) << 0)) << 24) & 0xFF000000) | (((0xE1600070 | (((0) & 0xF) << 0)) << 8) & 0x00FF0000) | (((0xE1600070 | (((0) & 0xF) << 0)) >> 8) & 0x0000FF00) | (((0xE1600070 | (((0) & 0xF) << 0)) >> 24) & 0x000000FF) )\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},~{memory}"(i32 -2147450880) #4, !srcloc !62
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_v7_smc_switch_mm(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spectre_bhb_update_vectors(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind readonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !12, !13, !14, !15, !17, !19, !21, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !41}
!llvm.named.register.sp = !{!43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__pcpu_scope_harden_branch_predictor_fn, !1, !"__pcpu_scope_harden_branch_predictor_fn", i1 false, i1 false}
!1 = !{!"../arch/arm/mm/proc-v7-bugs.c", i32 39, i32 1}
!2 = !{ptr @__pcpu_unique_harden_branch_predictor_fn, !1, !"__pcpu_unique_harden_branch_predictor_fn", i1 false, i1 false}
!3 = !{ptr @harden_branch_predictor_fn, !1, !"harden_branch_predictor_fn", i1 false, i1 false}
!4 = !{ptr @__pcpu_unique_spectre_warned, !5, !"__pcpu_unique_spectre_warned", i1 false, i1 false}
!5 = !{!"../arch/arm/mm/proc-v7-bugs.c", i32 272, i32 8}
!6 = !{ptr @spectre_warned, !5, !"spectre_warned", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../arch/arm/mm/proc-v7-bugs.c", i32 278, i32 12}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../arch/arm/mm/proc-v7-bugs.c", i32 265, i32 4}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cpu_v7_check_auxcr_set._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @cpu_v7_check_auxcr_set._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/mm/proc-v7-bugs.c", i32 78, i32 23}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../arch/arm/mm/proc-v7-bugs.c", i32 84, i32 23}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mm/proc-v7-bugs.c", i32 91, i32 23}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../arch/arm/mm/proc-v7-bugs.c", i32 98, i32 23}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/mm/proc-v7-bugs.c", i32 103, i32 3}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @spectre_v2_install_workaround._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @spectre_v2_install_workaround._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mm/proc-v7-bugs.c", i32 202, i32 4}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @spectre_bhb_install_workaround._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @spectre_bhb_install_workaround._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/mm/proc-v7-bugs.c", i32 214, i32 2}
!35 = !{ptr @spectre_bhb_install_workaround._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @spectre_bhb_install_workaround._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @spectre_bhb_method, !38, !"spectre_bhb_method", i1 false, i1 false}
!38 = !{!"../arch/arm/mm/proc-v7-bugs.c", i32 182, i32 12}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../arch/arm/mm/proc-v7-bugs.c", i32 188, i32 10}
!41 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../arch/arm/mm/proc-v7-bugs.c", i32 194, i32 10}
!43 = !{!"sp"}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 5937}
!54 = !{i8 0, i8 2}
!55 = !{i64 2149101810}
!56 = !{i64 2149548568, i64 2149548898}
!57 = !{i64 2149553420, i64 2149553670}
!58 = !{i64 2149555704}
!59 = !{i64 2149559666}
!60 = !{i64 2149559985}
!61 = !{i64 2149567242, i64 2149567572}
!62 = !{i64 2149562726, i64 2149562976}

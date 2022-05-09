; ModuleID = '/llk/IR_all_yes/drivers/block/paride/kbic.c_pt.bc'
source_filename = "../drivers/block/paride/kbic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_protocol = type { [8 x i8], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pi_adapter = type { ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }

@k951 = internal global { %struct.pi_protocol, [48 x i8] } { %struct.pi_protocol { [8 x i8] c"k951\00\00\00\00", i32 0, i32 6, i32 3, i32 1, i32 1, ptr @kbic_write_regr, ptr @kbic_read_regr, ptr @kbic_write_block, ptr @kbic_read_block, ptr @k951_connect, ptr @k951_disconnect, ptr null, ptr null, ptr null, ptr @k951_log_adapter, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@k971 = internal global { %struct.pi_protocol, [48 x i8] } { %struct.pi_protocol { [8 x i8] c"k971\00\00\00\00", i32 0, i32 6, i32 3, i32 1, i32 1, ptr @kbic_write_regr, ptr @kbic_read_regr, ptr @kbic_write_block, ptr @kbic_read_block, ptr @k971_connect, ptr @k971_disconnect, ptr null, ptr null, ptr null, ptr @k971_log_adapter, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file160 = internal constant [36 x i8] c"kbic.file=drivers/block/paride/kbic\00", section ".modinfo", align 1
@__UNIQUE_ID_license161 = internal constant [17 x i8] c"kbic.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_kbic__162_304_kbic_init6 = internal global ptr @kbic_init, section ".initcall6.init", align 4
@__exitcall_kbic_exit = internal global ptr @kbic_exit, section ".exitcall.exit", align 4
@cont_map = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 128, i32 64], [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"KBIC-951A\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"5/3\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EPP-8\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EPP_16\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EPP-32\00", [25 x i8] zeroinitializer }, align 32
@__const.kbic_log_adapter.mode_string = private unnamed_addr constant [6 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 4
@kbic_log_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: kbic %s, KingByte %s at 0x%x, \00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kbic_log_adapter\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/block/paride/kbic.c\00", [36 x i8] zeroinitializer }, align 32
@kbic_log_adapter._entry_ptr = internal global ptr @kbic_log_adapter._entry, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.01\00", [27 x i8] zeroinitializer }, align 32
@kbic_log_adapter._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.9, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mode %d (%s), delay %d\0A\00", [40 x i8] zeroinitializer }, align 32
@kbic_log_adapter._entry_ptr.13 = internal global ptr @kbic_log_adapter._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"KBIC-971A\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.15 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.16 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.17 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.18 = private unnamed_addr constant [5 x i8] c"k951\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 252, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant [5 x i8] c"k971\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 268, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant [9 x i8] c"cont_map\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 43, i32 13 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 244, i32 39 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 232, i32 36 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 232, i32 44 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 232, i32 50 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 233, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 233, i32 16 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 233, i32 25 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 235, i32 9 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 237, i32 9 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [31 x i8] c"../drivers/block/paride/kbic.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 249, i32 45 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_file160, ptr @__UNIQUE_ID_license161, ptr @__exitcall_kbic_exit, ptr @__initcall__kmod_kbic__162_304_kbic_init6, ptr @kbic_exit, ptr @kbic_log_adapter._entry, ptr @kbic_log_adapter._entry.11, ptr @kbic_log_adapter._entry_ptr, ptr @kbic_log_adapter._entry_ptr.13, ptr @k951, ptr @k971, ptr @cont_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k951 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k971 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cont_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbic_log_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbic_log_adapter._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kbic_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @paride_unregister(ptr noundef nonnull @k951) #5
  tail call void @paride_unregister(ptr noundef nonnull @k971) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @paride_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kbic_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @paride_register(ptr noundef nonnull @k951) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @paride_register(ptr noundef nonnull @k971) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @paride_unregister(ptr noundef nonnull @k951) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kbic_write_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %regr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x i32], ptr @cont_map, i32 0, i32 %cont
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.do.body_crit_edge
    i32 1, label %entry.do.body_crit_edge560
    i32 2, label %entry.do.body_crit_edge561
    i32 3, label %entry.do.body172_crit_edge
    i32 4, label %entry.do.body172_crit_edge562
    i32 5, label %entry.do.body172_crit_edge563
  ]

entry.do.body172_crit_edge563:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body172

entry.do.body172_crit_edge562:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body172

entry.do.body172_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body172

entry.do.body_crit_edge561:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge560:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge560, %entry.do.body_crit_edge561
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %or = or i32 %1, %regr
  %5 = trunc i32 %or to i8
  %conv = or i8 %5, 16
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %and = and i32 %7, 1048575
  %add2 = or i32 %and, -18874368
  %8 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv) #5, !srcloc !50
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %do.body.do.body14_crit_edge, label %cond.false9

do.body.do.body14_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14

cond.false9:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #5
  br label %do.body14

do.body14:                                        ; preds = %cond.false9, %do.body.do.body14_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add18 = add i32 %13, 2
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %14 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 4) #5, !srcloc !50
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool23.not = icmp eq i32 %16, 0
  br i1 %tobool23.not, label %do.body14.do.body40_crit_edge, label %cond.false35

do.body14.do.body40_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body40

cond.false35:                                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #5
  br label %do.body40

do.body40:                                        ; preds = %cond.false35, %do.body14.do.body40_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add44 = add i32 %19, 2
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %20 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 6) #5, !srcloc !50
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool49.not = icmp eq i32 %22, 0
  br i1 %tobool49.not, label %do.body40.do.body66_crit_edge, label %cond.false61

do.body40.do.body66_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body66

cond.false61:                                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %22) #5
  br label %do.body66

do.body66:                                        ; preds = %cond.false61, %do.body40.do.body66_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add70 = add i32 %25, 2
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %26 = inttoptr i32 %add72 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 4) #5, !srcloc !50
  %27 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool75.not = icmp eq i32 %28, 0
  br i1 %tobool75.not, label %do.body66.do.body92_crit_edge, label %cond.false87

do.body66.do.body92_crit_edge:                    ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body92

cond.false87:                                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %28) #5
  br label %do.body92

do.body92:                                        ; preds = %cond.false87, %do.body66.do.body92_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %conv95 = trunc i32 %val to i8
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %and98 = and i32 %31, 1048575
  %add99 = or i32 %and98, -18874368
  %32 = inttoptr i32 %add99 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %conv95) #5, !srcloc !50
  %33 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool102.not = icmp eq i32 %34, 0
  br i1 %tobool102.not, label %do.body92.do.body119_crit_edge, label %cond.false114

do.body92.do.body119_crit_edge:                   ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body119

cond.false114:                                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %35(i32 noundef %34) #5
  br label %do.body119

do.body119:                                       ; preds = %cond.false114, %do.body92.do.body119_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add123 = add i32 %37, 2
  %and124 = and i32 %add123, 1048575
  %add125 = or i32 %and124, -18874368
  %38 = inttoptr i32 %add125 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 5) #5, !srcloc !50
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool128.not = icmp eq i32 %40, 0
  br i1 %tobool128.not, label %do.body119.do.body145_crit_edge, label %cond.false140

do.body119.do.body145_crit_edge:                  ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body145

cond.false140:                                    ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #5
  br label %do.body145

do.body145:                                       ; preds = %cond.false140, %do.body119.do.body145_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %add149 = add i32 %43, 2
  %and150 = and i32 %add149, 1048575
  %add151 = or i32 %and150, -18874368
  %44 = inttoptr i32 %add151 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 4) #5, !srcloc !50
  %45 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool154.not = icmp eq i32 %46, 0
  br i1 %tobool154.not, label %do.body145.sw.epilog_crit_edge, label %do.body145.sw.epilog.sink.split_crit_edge

do.body145.sw.epilog.sink.split_crit_edge:        ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body145.sw.epilog_crit_edge:                   ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body172:                                       ; preds = %entry.do.body172_crit_edge, %entry.do.body172_crit_edge562, %entry.do.body172_crit_edge563
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %47 = trunc i32 %1 to i8
  %conv176 = or i8 %47, 32
  %port177 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %48 = ptrtoint ptr %port177 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port177, align 4
  %and179 = and i32 %49, 1048575
  %add180 = or i32 %and179, -18874368
  %50 = inttoptr i32 %add180 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 %conv176) #5, !srcloc !50
  %delay182 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %51 = ptrtoint ptr %delay182 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delay182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool183.not = icmp eq i32 %52, 0
  br i1 %tobool183.not, label %do.body172.do.body200_crit_edge, label %cond.false195

do.body172.do.body200_crit_edge:                  ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body200

cond.false195:                                    ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #5
  br label %do.body200

do.body200:                                       ; preds = %cond.false195, %do.body172.do.body200_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %port177 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port177, align 4
  %add204 = add i32 %55, 2
  %and205 = and i32 %add204, 1048575
  %add206 = or i32 %and205, -18874368
  %56 = inttoptr i32 %add206 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 4) #5, !srcloc !50
  %57 = ptrtoint ptr %delay182 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %delay182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool209.not = icmp eq i32 %58, 0
  br i1 %tobool209.not, label %do.body200.do.body226_crit_edge, label %cond.false221

do.body200.do.body226_crit_edge:                  ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body226

cond.false221:                                    ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %59(i32 noundef %58) #5
  br label %do.body226

do.body226:                                       ; preds = %cond.false221, %do.body200.do.body226_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %port177 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port177, align 4
  %add230 = add i32 %61, 2
  %and231 = and i32 %add230, 1048575
  %add232 = or i32 %and231, -18874368
  %62 = inttoptr i32 %add232 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 6) #5, !srcloc !50
  %63 = ptrtoint ptr %delay182 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %delay182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool235.not = icmp eq i32 %64, 0
  br i1 %tobool235.not, label %do.body226.do.body252_crit_edge, label %cond.false247

do.body226.do.body252_crit_edge:                  ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body252

cond.false247:                                    ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %65(i32 noundef %64) #5
  br label %do.body252

do.body252:                                       ; preds = %cond.false247, %do.body226.do.body252_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %66 = ptrtoint ptr %port177 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port177, align 4
  %add256 = add i32 %67, 2
  %and257 = and i32 %add256, 1048575
  %add258 = or i32 %and257, -18874368
  %68 = inttoptr i32 %add258 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 4) #5, !srcloc !50
  %69 = ptrtoint ptr %delay182 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %delay182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool261.not = icmp eq i32 %70, 0
  br i1 %tobool261.not, label %do.body252.do.body278_crit_edge, label %cond.false273

do.body252.do.body278_crit_edge:                  ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body278

cond.false273:                                    ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %71(i32 noundef %70) #5
  br label %do.body278

do.body278:                                       ; preds = %cond.false273, %do.body252.do.body278_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %conv281 = trunc i32 %regr to i8
  %72 = ptrtoint ptr %port177 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port177, align 4
  %add283 = add i32 %73, 3
  %and284 = and i32 %add283, 1048575
  %add285 = or i32 %and284, -18874368
  %74 = inttoptr i32 %add285 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 %conv281) #5, !srcloc !50
  %75 = ptrtoint ptr %delay182 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %delay182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool288.not = icmp eq i32 %76, 0
  br i1 %tobool288.not, label %do.body278.do.body305_crit_edge, label %cond.false300

do.body278.do.body305_crit_edge:                  ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body305

cond.false300:                                    ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %77(i32 noundef %76) #5
  br label %do.body305

do.body305:                                       ; preds = %cond.false300, %do.body278.do.body305_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %conv308 = trunc i32 %val to i8
  %78 = ptrtoint ptr %port177 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port177, align 4
  %add310 = add i32 %79, 4
  %and311 = and i32 %add310, 1048575
  %add312 = or i32 %and311, -18874368
  %80 = inttoptr i32 %add312 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 %conv308) #5, !srcloc !50
  %81 = ptrtoint ptr %delay182 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %delay182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool315.not = icmp eq i32 %82, 0
  br i1 %tobool315.not, label %do.body305.do.body332_crit_edge, label %cond.false327

do.body305.do.body332_crit_edge:                  ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body332

cond.false327:                                    ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %83(i32 noundef %82) #5
  br label %do.body332

do.body332:                                       ; preds = %cond.false327, %do.body305.do.body332_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %84 = ptrtoint ptr %port177 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port177, align 4
  %add337 = add i32 %85, 4
  %and338 = and i32 %add337, 1048575
  %add339 = or i32 %and338, -18874368
  %86 = inttoptr i32 %add339 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 %conv308) #5, !srcloc !50
  %87 = ptrtoint ptr %delay182 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %delay182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool342.not = icmp eq i32 %88, 0
  br i1 %tobool342.not, label %do.body332.do.body359_crit_edge, label %cond.false354

do.body332.do.body359_crit_edge:                  ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body359

cond.false354:                                    ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %89(i32 noundef %88) #5
  br label %do.body359

do.body359:                                       ; preds = %cond.false354, %do.body332.do.body359_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %port177 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port177, align 4
  %add363 = add i32 %91, 2
  %and364 = and i32 %add363, 1048575
  %add365 = or i32 %and364, -18874368
  %92 = inttoptr i32 %add365 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 4) #5, !srcloc !50
  %93 = ptrtoint ptr %delay182 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %delay182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool368.not = icmp eq i32 %94, 0
  br i1 %tobool368.not, label %do.body359.do.body385_crit_edge, label %cond.false380

do.body359.do.body385_crit_edge:                  ; preds = %do.body359
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body385

cond.false380:                                    ; preds = %do.body359
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %95(i32 noundef %94) #5
  br label %do.body385

do.body385:                                       ; preds = %cond.false380, %do.body359.do.body385_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %96 = ptrtoint ptr %port177 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port177, align 4
  %add389 = add i32 %97, 2
  %and390 = and i32 %add389, 1048575
  %add391 = or i32 %and390, -18874368
  %98 = inttoptr i32 %add391 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 0) #5, !srcloc !50
  %99 = ptrtoint ptr %delay182 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %delay182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool394.not = icmp eq i32 %100, 0
  br i1 %tobool394.not, label %do.body385.do.body411_crit_edge, label %cond.false406

do.body385.do.body411_crit_edge:                  ; preds = %do.body385
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body411

cond.false406:                                    ; preds = %do.body385
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %101(i32 noundef %100) #5
  br label %do.body411

do.body411:                                       ; preds = %cond.false406, %do.body385.do.body411_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %102 = ptrtoint ptr %port177 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %port177, align 4
  %add415 = add i32 %103, 2
  %and416 = and i32 %add415, 1048575
  %add417 = or i32 %and416, -18874368
  %104 = inttoptr i32 %add417 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %104, i8 4) #5, !srcloc !50
  %105 = ptrtoint ptr %delay182 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %delay182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool420.not = icmp eq i32 %106, 0
  br i1 %tobool420.not, label %do.body411.sw.epilog_crit_edge, label %do.body411.sw.epilog.sink.split_crit_edge

do.body411.sw.epilog.sink.split_crit_edge:        ; preds = %do.body411
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body411.sw.epilog_crit_edge:                   ; preds = %do.body411
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body411.sw.epilog.sink.split_crit_edge, %do.body145.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %46, %do.body145.sw.epilog.sink.split_crit_edge ], [ %106, %do.body411.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %107(i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body411.sw.epilog_crit_edge, %do.body145.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kbic_read_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %regr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x i32], ptr @cont_map, i32 0, i32 %cont
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body254
    i32 2, label %do.body473
    i32 3, label %entry.do.body687_crit_edge
    i32 4, label %entry.do.body687_crit_edge1227
    i32 5, label %entry.do.body687_crit_edge1228
  ]

entry.do.body687_crit_edge1228:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body687

entry.do.body687_crit_edge1227:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body687

entry.do.body687_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body687

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %or = or i32 %1, %regr
  %5 = trunc i32 %or to i8
  %conv = or i8 %5, 24
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %and = and i32 %7, 1048575
  %add2 = or i32 %and, -18874368
  %8 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv) #5, !srcloc !50
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %do.body.do.body14_crit_edge, label %cond.false9

do.body.do.body14_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14

cond.false9:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #5
  br label %do.body14

do.body14:                                        ; preds = %cond.false9, %do.body.do.body14_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add18 = add i32 %13, 2
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %14 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 4) #5, !srcloc !50
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool23.not = icmp eq i32 %16, 0
  br i1 %tobool23.not, label %do.body14.do.body40_crit_edge, label %cond.false35

do.body14.do.body40_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body40

cond.false35:                                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #5
  br label %do.body40

do.body40:                                        ; preds = %cond.false35, %do.body14.do.body40_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add44 = add i32 %19, 2
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %20 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 6) #5, !srcloc !50
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool49.not = icmp eq i32 %22, 0
  br i1 %tobool49.not, label %do.body40.do.body66_crit_edge, label %cond.false61

do.body40.do.body66_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body66

cond.false61:                                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %22) #5
  br label %do.body66

do.body66:                                        ; preds = %cond.false61, %do.body40.do.body66_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add70 = add i32 %25, 2
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %26 = inttoptr i32 %add72 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 4) #5, !srcloc !50
  %27 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool75.not = icmp eq i32 %28, 0
  br i1 %tobool75.not, label %do.body66.do.body92_crit_edge, label %cond.false87

do.body66.do.body92_crit_edge:                    ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body92

cond.false87:                                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %28) #5
  br label %do.body92

do.body92:                                        ; preds = %cond.false87, %do.body66.do.body92_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %add96 = add i32 %31, 2
  %and97 = and i32 %add96, 1048575
  %add98 = or i32 %and97, -18874368
  %32 = inttoptr i32 %add98 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 1) #5, !srcloc !50
  %33 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool101.not = icmp eq i32 %34, 0
  br i1 %tobool101.not, label %do.body92.do.body118_crit_edge, label %cond.false113

do.body92.do.body118_crit_edge:                   ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body118

cond.false113:                                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %35(i32 noundef %34) #5
  br label %do.body118

do.body118:                                       ; preds = %cond.false113, %do.body92.do.body118_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %and123 = and i32 %37, 1048575
  %add124 = or i32 %and123, -18874368
  %38 = inttoptr i32 %add124 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 8) #5, !srcloc !50
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool127.not = icmp eq i32 %40, 0
  br i1 %tobool127.not, label %do.body118.cond.end161_crit_edge, label %cond.false139

do.body118.cond.end161_crit_edge:                 ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end161

cond.false139:                                    ; preds = %do.body118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #5
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool145.not = icmp eq i32 %.pr, 0
  br i1 %tobool145.not, label %cond.false139.cond.end161_crit_edge, label %cond.false157

cond.false139.cond.end161_crit_edge:              ; preds = %cond.false139
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end161

cond.false157:                                    ; preds = %cond.false139
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %43(i32 noundef %.pr) #5
  br label %cond.end161

cond.end161:                                      ; preds = %cond.false157, %cond.false139.cond.end161_crit_edge, %do.body118.cond.end161_crit_edge
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port, align 4
  %add163 = add i32 %45, 1
  %and164 = and i32 %add163, 1048575
  %add165 = or i32 %and164, -18874368
  %46 = inttoptr i32 %add165 to ptr
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %and175 = and i32 %49, 1048575
  %add176 = or i32 %and175, -18874368
  %50 = inttoptr i32 %add176 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 40) #5, !srcloc !50
  %51 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool179.not = icmp eq i32 %52, 0
  br i1 %tobool179.not, label %cond.end161.cond.end213_crit_edge, label %cond.false191

cond.end161.cond.end213_crit_edge:                ; preds = %cond.end161
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end213

cond.false191:                                    ; preds = %cond.end161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #5
  %54 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr1219 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1219)
  %tobool197.not = icmp eq i32 %.pr1219, 0
  br i1 %tobool197.not, label %cond.false191.cond.end213_crit_edge, label %cond.false209

cond.false191.cond.end213_crit_edge:              ; preds = %cond.false191
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end213

cond.false209:                                    ; preds = %cond.false191
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %55(i32 noundef %.pr1219) #5
  br label %cond.end213

cond.end213:                                      ; preds = %cond.false209, %cond.false191.cond.end213_crit_edge, %cond.end161.cond.end213_crit_edge
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port, align 4
  %add216 = add i32 %57, 1
  %and217 = and i32 %add216, 1048575
  %add218 = or i32 %and217, -18874368
  %58 = inttoptr i32 %add218 to ptr
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %58) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port, align 4
  %add228 = add i32 %61, 2
  %and229 = and i32 %add228, 1048575
  %add230 = or i32 %and229, -18874368
  %62 = inttoptr i32 %add230 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 4) #5, !srcloc !50
  %63 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool233.not = icmp eq i32 %64, 0
  br i1 %tobool233.not, label %cond.end213.cond.end249_crit_edge, label %cond.false245

cond.end213.cond.end249_crit_edge:                ; preds = %cond.end213
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end249

cond.false245:                                    ; preds = %cond.end213
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %65(i32 noundef %64) #5
  br label %cond.end249

cond.end249:                                      ; preds = %cond.false245, %cond.end213.cond.end249_crit_edge
  %66 = lshr i8 %47, 4
  %67 = and i8 %59, -16
  %or2521217 = or i8 %67, %66
  %68 = xor i8 %or2521217, -120
  %xor = zext i8 %68 to i32
  br label %cleanup

do.body254:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %or257 = or i32 %1, %regr
  %69 = trunc i32 %or257 to i8
  %conv259 = or i8 %69, 56
  %port260 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %70 = ptrtoint ptr %port260 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port260, align 4
  %and262 = and i32 %71, 1048575
  %add263 = or i32 %and262, -18874368
  %72 = inttoptr i32 %add263 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 %conv259) #5, !srcloc !50
  %delay265 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %73 = ptrtoint ptr %delay265 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %delay265, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool266.not = icmp eq i32 %74, 0
  br i1 %tobool266.not, label %do.body254.do.body283_crit_edge, label %cond.false278

do.body254.do.body283_crit_edge:                  ; preds = %do.body254
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body283

cond.false278:                                    ; preds = %do.body254
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %75(i32 noundef %74) #5
  br label %do.body283

do.body283:                                       ; preds = %cond.false278, %do.body254.do.body283_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %76 = ptrtoint ptr %port260 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port260, align 4
  %add287 = add i32 %77, 2
  %and288 = and i32 %add287, 1048575
  %add289 = or i32 %and288, -18874368
  %78 = inttoptr i32 %add289 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 4) #5, !srcloc !50
  %79 = ptrtoint ptr %delay265 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %delay265, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool292.not = icmp eq i32 %80, 0
  br i1 %tobool292.not, label %do.body283.do.body309_crit_edge, label %cond.false304

do.body283.do.body309_crit_edge:                  ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body309

cond.false304:                                    ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %81(i32 noundef %80) #5
  br label %do.body309

do.body309:                                       ; preds = %cond.false304, %do.body283.do.body309_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %82 = ptrtoint ptr %port260 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port260, align 4
  %add313 = add i32 %83, 2
  %and314 = and i32 %add313, 1048575
  %add315 = or i32 %and314, -18874368
  %84 = inttoptr i32 %add315 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 6) #5, !srcloc !50
  %85 = ptrtoint ptr %delay265 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %delay265, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool318.not = icmp eq i32 %86, 0
  br i1 %tobool318.not, label %do.body309.do.body335_crit_edge, label %cond.false330

do.body309.do.body335_crit_edge:                  ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body335

cond.false330:                                    ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %87(i32 noundef %86) #5
  br label %do.body335

do.body335:                                       ; preds = %cond.false330, %do.body309.do.body335_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %88 = ptrtoint ptr %port260 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port260, align 4
  %add339 = add i32 %89, 2
  %and340 = and i32 %add339, 1048575
  %add341 = or i32 %and340, -18874368
  %90 = inttoptr i32 %add341 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 4) #5, !srcloc !50
  %91 = ptrtoint ptr %delay265 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %delay265, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool344.not = icmp eq i32 %92, 0
  br i1 %tobool344.not, label %do.body335.do.body361_crit_edge, label %cond.false356

do.body335.do.body361_crit_edge:                  ; preds = %do.body335
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body361

cond.false356:                                    ; preds = %do.body335
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %93(i32 noundef %92) #5
  br label %do.body361

do.body361:                                       ; preds = %cond.false356, %do.body335.do.body361_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %94 = ptrtoint ptr %port260 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %port260, align 4
  %add365 = add i32 %95, 2
  %and366 = and i32 %add365, 1048575
  %add367 = or i32 %and366, -18874368
  %96 = inttoptr i32 %add367 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 5) #5, !srcloc !50
  %97 = ptrtoint ptr %delay265 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %delay265, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool370.not = icmp eq i32 %98, 0
  br i1 %tobool370.not, label %do.body361.do.body387_crit_edge, label %cond.false382

do.body361.do.body387_crit_edge:                  ; preds = %do.body361
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body387

cond.false382:                                    ; preds = %do.body361
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %99(i32 noundef %98) #5
  br label %do.body387

do.body387:                                       ; preds = %cond.false382, %do.body361.do.body387_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %100 = ptrtoint ptr %port260 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %port260, align 4
  %and392 = and i32 %101, 1048575
  %add393 = or i32 %and392, -18874368
  %102 = inttoptr i32 %add393 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 8) #5, !srcloc !50
  %103 = ptrtoint ptr %delay265 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %delay265, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool396.not = icmp eq i32 %104, 0
  br i1 %tobool396.not, label %do.body387.cond.end430_crit_edge, label %cond.false408

do.body387.cond.end430_crit_edge:                 ; preds = %do.body387
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end430

cond.false408:                                    ; preds = %do.body387
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %105(i32 noundef %104) #5
  %106 = ptrtoint ptr %delay265 to i32
  call void @__asan_load4_noabort(i32 %106)
  %.pr1221 = load i32, ptr %delay265, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1221)
  %tobool414.not = icmp eq i32 %.pr1221, 0
  br i1 %tobool414.not, label %cond.false408.cond.end430_crit_edge, label %cond.false426

cond.false408.cond.end430_crit_edge:              ; preds = %cond.false408
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end430

cond.false426:                                    ; preds = %cond.false408
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %107(i32 noundef %.pr1221) #5
  br label %cond.end430

cond.end430:                                      ; preds = %cond.false426, %cond.false408.cond.end430_crit_edge, %do.body387.cond.end430_crit_edge
  %108 = ptrtoint ptr %port260 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %port260, align 4
  %add433 = add i32 %109, 1
  %and434 = and i32 %add433, 1048575
  %add435 = or i32 %and434, -18874368
  %110 = inttoptr i32 %add435 to ptr
  %111 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %110) #5, !srcloc !84
  %112 = tail call i16 @llvm.bswap.i16(i16 %111)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %conv439 = zext i16 %112 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %113 = ptrtoint ptr %port260 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %port260, align 4
  %add445 = add i32 %114, 2
  %and446 = and i32 %add445, 1048575
  %add447 = or i32 %and446, -18874368
  %115 = inttoptr i32 %add447 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %115, i8 4) #5, !srcloc !50
  %116 = ptrtoint ptr %delay265 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %delay265, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool450.not = icmp eq i32 %117, 0
  br i1 %tobool450.not, label %cond.end430.cond.end466_crit_edge, label %cond.false462

cond.end430.cond.end466_crit_edge:                ; preds = %cond.end430
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end466

cond.false462:                                    ; preds = %cond.end430
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %118(i32 noundef %117) #5
  br label %cond.end466

cond.end466:                                      ; preds = %cond.false462, %cond.end430.cond.end466_crit_edge
  %119 = lshr i32 %conv439, 3
  %and468 = and i32 %119, 31
  %120 = lshr i32 %conv439, 4
  %and470 = and i32 %120, 224
  %or471 = or i32 %and468, %and470
  br label %cleanup

do.body473:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %or476 = or i32 %1, %regr
  %121 = trunc i32 %or476 to i8
  %conv478 = or i8 %121, 8
  %port479 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %122 = ptrtoint ptr %port479 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %port479, align 4
  %and481 = and i32 %123, 1048575
  %add482 = or i32 %and481, -18874368
  %124 = inttoptr i32 %add482 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %124, i8 %conv478) #5, !srcloc !50
  %delay484 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %125 = ptrtoint ptr %delay484 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %delay484, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool485.not = icmp eq i32 %126, 0
  br i1 %tobool485.not, label %do.body473.do.body502_crit_edge, label %cond.false497

do.body473.do.body502_crit_edge:                  ; preds = %do.body473
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body502

cond.false497:                                    ; preds = %do.body473
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %127(i32 noundef %126) #5
  br label %do.body502

do.body502:                                       ; preds = %cond.false497, %do.body473.do.body502_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %128 = ptrtoint ptr %port479 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %port479, align 4
  %add506 = add i32 %129, 2
  %and507 = and i32 %add506, 1048575
  %add508 = or i32 %and507, -18874368
  %130 = inttoptr i32 %add508 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %130, i8 4) #5, !srcloc !50
  %131 = ptrtoint ptr %delay484 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %delay484, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool511.not = icmp eq i32 %132, 0
  br i1 %tobool511.not, label %do.body502.do.body528_crit_edge, label %cond.false523

do.body502.do.body528_crit_edge:                  ; preds = %do.body502
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body528

cond.false523:                                    ; preds = %do.body502
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %133(i32 noundef %132) #5
  br label %do.body528

do.body528:                                       ; preds = %cond.false523, %do.body502.do.body528_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %134 = ptrtoint ptr %port479 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %port479, align 4
  %add532 = add i32 %135, 2
  %and533 = and i32 %add532, 1048575
  %add534 = or i32 %and533, -18874368
  %136 = inttoptr i32 %add534 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %136, i8 6) #5, !srcloc !50
  %137 = ptrtoint ptr %delay484 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %delay484, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool537.not = icmp eq i32 %138, 0
  br i1 %tobool537.not, label %do.body528.do.body554_crit_edge, label %cond.false549

do.body528.do.body554_crit_edge:                  ; preds = %do.body528
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body554

cond.false549:                                    ; preds = %do.body528
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %139(i32 noundef %138) #5
  br label %do.body554

do.body554:                                       ; preds = %cond.false549, %do.body528.do.body554_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void @arm_heavy_mb() #5
  %140 = ptrtoint ptr %port479 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %port479, align 4
  %add558 = add i32 %141, 2
  %and559 = and i32 %add558, 1048575
  %add560 = or i32 %and559, -18874368
  %142 = inttoptr i32 %add560 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %142, i8 4) #5, !srcloc !50
  %143 = ptrtoint ptr %delay484 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %delay484, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool563.not = icmp eq i32 %144, 0
  br i1 %tobool563.not, label %do.body554.do.body580_crit_edge, label %cond.false575

do.body554.do.body580_crit_edge:                  ; preds = %do.body554
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body580

cond.false575:                                    ; preds = %do.body554
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %145(i32 noundef %144) #5
  br label %do.body580

do.body580:                                       ; preds = %cond.false575, %do.body554.do.body580_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %146 = ptrtoint ptr %port479 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %port479, align 4
  %add584 = add i32 %147, 2
  %and585 = and i32 %add584, 1048575
  %add586 = or i32 %and585, -18874368
  %148 = inttoptr i32 %add586 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %148, i8 -91) #5, !srcloc !50
  %149 = ptrtoint ptr %delay484 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %delay484, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool589.not = icmp eq i32 %150, 0
  br i1 %tobool589.not, label %do.body580.do.body606_crit_edge, label %cond.false601

do.body580.do.body606_crit_edge:                  ; preds = %do.body580
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body606

cond.false601:                                    ; preds = %do.body580
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %151(i32 noundef %150) #5
  br label %do.body606

do.body606:                                       ; preds = %cond.false601, %do.body580.do.body606_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %152 = ptrtoint ptr %port479 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %port479, align 4
  %add610 = add i32 %153, 2
  %and611 = and i32 %add610, 1048575
  %add612 = or i32 %and611, -18874368
  %154 = inttoptr i32 %add612 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %154, i8 -95) #5, !srcloc !50
  %155 = ptrtoint ptr %delay484 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %delay484, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool615.not = icmp eq i32 %156, 0
  br i1 %tobool615.not, label %do.body606.cond.end649_crit_edge, label %cond.false627

do.body606.cond.end649_crit_edge:                 ; preds = %do.body606
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end649

cond.false627:                                    ; preds = %do.body606
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %157(i32 noundef %156) #5
  %158 = ptrtoint ptr %delay484 to i32
  call void @__asan_load4_noabort(i32 %158)
  %.pr1223 = load i32, ptr %delay484, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1223)
  %tobool633.not = icmp eq i32 %.pr1223, 0
  br i1 %tobool633.not, label %cond.false627.cond.end649_crit_edge, label %cond.false645

cond.false627.cond.end649_crit_edge:              ; preds = %cond.false627
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end649

cond.false645:                                    ; preds = %cond.false627
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %159(i32 noundef %.pr1223) #5
  br label %cond.end649

cond.end649:                                      ; preds = %cond.false645, %cond.false627.cond.end649_crit_edge, %do.body606.cond.end649_crit_edge
  %160 = ptrtoint ptr %port479 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %port479, align 4
  %and653 = and i32 %161, 1048575
  %add654 = or i32 %and653, -18874368
  %162 = inttoptr i32 %add654 to ptr
  %163 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %162) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  %conv658 = zext i8 %163 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %164 = ptrtoint ptr %port479 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %port479, align 4
  %add664 = add i32 %165, 2
  %and665 = and i32 %add664, 1048575
  %add666 = or i32 %and665, -18874368
  %166 = inttoptr i32 %add666 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %166, i8 4) #5, !srcloc !50
  %167 = ptrtoint ptr %delay484 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %delay484, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool669.not = icmp eq i32 %168, 0
  br i1 %tobool669.not, label %cond.end649.cleanup_crit_edge, label %cond.false681

cond.end649.cleanup_crit_edge:                    ; preds = %cond.end649
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.false681:                                    ; preds = %cond.end649
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %169 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %169(i32 noundef %168) #5
  br label %cleanup

do.body687:                                       ; preds = %entry.do.body687_crit_edge, %entry.do.body687_crit_edge1227, %entry.do.body687_crit_edge1228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %170 = trunc i32 %1 to i8
  %conv691 = or i8 %170, 32
  %port692 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %171 = ptrtoint ptr %port692 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %port692, align 4
  %and694 = and i32 %172, 1048575
  %add695 = or i32 %and694, -18874368
  %173 = inttoptr i32 %add695 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %173, i8 %conv691) #5, !srcloc !50
  %delay697 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %174 = ptrtoint ptr %delay697 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %delay697, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool698.not = icmp eq i32 %175, 0
  br i1 %tobool698.not, label %do.body687.do.body715_crit_edge, label %cond.false710

do.body687.do.body715_crit_edge:                  ; preds = %do.body687
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body715

cond.false710:                                    ; preds = %do.body687
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %176(i32 noundef %175) #5
  br label %do.body715

do.body715:                                       ; preds = %cond.false710, %do.body687.do.body715_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %177 = ptrtoint ptr %port692 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %port692, align 4
  %add719 = add i32 %178, 2
  %and720 = and i32 %add719, 1048575
  %add721 = or i32 %and720, -18874368
  %179 = inttoptr i32 %add721 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %179, i8 4) #5, !srcloc !50
  %180 = ptrtoint ptr %delay697 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %delay697, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool724.not = icmp eq i32 %181, 0
  br i1 %tobool724.not, label %do.body715.do.body741_crit_edge, label %cond.false736

do.body715.do.body741_crit_edge:                  ; preds = %do.body715
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body741

cond.false736:                                    ; preds = %do.body715
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %182 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %182(i32 noundef %181) #5
  br label %do.body741

do.body741:                                       ; preds = %cond.false736, %do.body715.do.body741_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %183 = ptrtoint ptr %port692 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %port692, align 4
  %add745 = add i32 %184, 2
  %and746 = and i32 %add745, 1048575
  %add747 = or i32 %and746, -18874368
  %185 = inttoptr i32 %add747 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %185, i8 6) #5, !srcloc !50
  %186 = ptrtoint ptr %delay697 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %delay697, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool750.not = icmp eq i32 %187, 0
  br i1 %tobool750.not, label %do.body741.do.body767_crit_edge, label %cond.false762

do.body741.do.body767_crit_edge:                  ; preds = %do.body741
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body767

cond.false762:                                    ; preds = %do.body741
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %188 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %188(i32 noundef %187) #5
  br label %do.body767

do.body767:                                       ; preds = %cond.false762, %do.body741.do.body767_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %189 = ptrtoint ptr %port692 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %port692, align 4
  %add771 = add i32 %190, 2
  %and772 = and i32 %add771, 1048575
  %add773 = or i32 %and772, -18874368
  %191 = inttoptr i32 %add773 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %191, i8 4) #5, !srcloc !50
  %192 = ptrtoint ptr %delay697 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %delay697, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool776.not = icmp eq i32 %193, 0
  br i1 %tobool776.not, label %do.body767.do.body793_crit_edge, label %cond.false788

do.body767.do.body793_crit_edge:                  ; preds = %do.body767
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body793

cond.false788:                                    ; preds = %do.body767
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %194 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %194(i32 noundef %193) #5
  br label %do.body793

do.body793:                                       ; preds = %cond.false788, %do.body767.do.body793_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %conv796 = trunc i32 %regr to i8
  %195 = ptrtoint ptr %port692 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %port692, align 4
  %add798 = add i32 %196, 3
  %and799 = and i32 %add798, 1048575
  %add800 = or i32 %and799, -18874368
  %197 = inttoptr i32 %add800 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %197, i8 %conv796) #5, !srcloc !50
  %198 = ptrtoint ptr %delay697 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %delay697, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool803.not = icmp eq i32 %199, 0
  br i1 %tobool803.not, label %do.body793.cond.end837_crit_edge, label %cond.false815

do.body793.cond.end837_crit_edge:                 ; preds = %do.body793
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end837

cond.false815:                                    ; preds = %do.body793
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %200 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %200(i32 noundef %199) #5
  %201 = ptrtoint ptr %delay697 to i32
  call void @__asan_load4_noabort(i32 %201)
  %.pr1225 = load i32, ptr %delay697, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1225)
  %tobool821.not = icmp eq i32 %.pr1225, 0
  br i1 %tobool821.not, label %cond.false815.cond.end837_crit_edge, label %cond.false833

cond.false815.cond.end837_crit_edge:              ; preds = %cond.false815
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end837

cond.false833:                                    ; preds = %cond.false815
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %202 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %202(i32 noundef %.pr1225) #5
  br label %cond.end837

cond.end837:                                      ; preds = %cond.false833, %cond.false815.cond.end837_crit_edge, %do.body793.cond.end837_crit_edge
  %203 = ptrtoint ptr %port692 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %port692, align 4
  %add840 = add i32 %204, 4
  %and841 = and i32 %add840, 1048575
  %add842 = or i32 %and841, -18874368
  %205 = inttoptr i32 %add842 to ptr
  %206 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %205) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  %conv846 = zext i8 %206 to i32
  %207 = ptrtoint ptr %delay697 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %delay697, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool849.not = icmp eq i32 %208, 0
  br i1 %tobool849.not, label %cond.end837.cond.end865_crit_edge, label %cond.false861

cond.end837.cond.end865_crit_edge:                ; preds = %cond.end837
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end865

cond.false861:                                    ; preds = %cond.end837
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %209 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %209(i32 noundef %208) #5
  br label %cond.end865

cond.end865:                                      ; preds = %cond.false861, %cond.end837.cond.end865_crit_edge
  %210 = ptrtoint ptr %port692 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %port692, align 4
  %add868 = add i32 %211, 4
  %and869 = and i32 %add868, 1048575
  %add870 = or i32 %and869, -18874368
  %212 = inttoptr i32 %add870 to ptr
  %213 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %212) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %214 = ptrtoint ptr %port692 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %port692, align 4
  %add880 = add i32 %215, 2
  %and881 = and i32 %add880, 1048575
  %add882 = or i32 %and881, -18874368
  %216 = inttoptr i32 %add882 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %216, i8 4) #5, !srcloc !50
  %217 = ptrtoint ptr %delay697 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %delay697, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool885.not = icmp eq i32 %218, 0
  br i1 %tobool885.not, label %cond.end865.do.body902_crit_edge, label %cond.false897

cond.end865.do.body902_crit_edge:                 ; preds = %cond.end865
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body902

cond.false897:                                    ; preds = %cond.end865
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %219 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %219(i32 noundef %218) #5
  br label %do.body902

do.body902:                                       ; preds = %cond.false897, %cond.end865.do.body902_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %220 = ptrtoint ptr %port692 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %port692, align 4
  %add906 = add i32 %221, 2
  %and907 = and i32 %add906, 1048575
  %add908 = or i32 %and907, -18874368
  %222 = inttoptr i32 %add908 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %222, i8 0) #5, !srcloc !50
  %223 = ptrtoint ptr %delay697 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %delay697, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool911.not = icmp eq i32 %224, 0
  br i1 %tobool911.not, label %do.body902.do.body928_crit_edge, label %cond.false923

do.body902.do.body928_crit_edge:                  ; preds = %do.body902
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body928

cond.false923:                                    ; preds = %do.body902
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %225 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %225(i32 noundef %224) #5
  br label %do.body928

do.body928:                                       ; preds = %cond.false923, %do.body902.do.body928_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %226 = ptrtoint ptr %port692 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %port692, align 4
  %add932 = add i32 %227, 2
  %and933 = and i32 %add932, 1048575
  %add934 = or i32 %and933, -18874368
  %228 = inttoptr i32 %add934 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %228, i8 4) #5, !srcloc !50
  %229 = ptrtoint ptr %delay697 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %delay697, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool937.not = icmp eq i32 %230, 0
  br i1 %tobool937.not, label %do.body928.cleanup_crit_edge, label %cond.false949

do.body928.cleanup_crit_edge:                     ; preds = %do.body928
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.false949:                                    ; preds = %do.body928
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %231 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %231(i32 noundef %230) #5
  br label %cleanup

cleanup:                                          ; preds = %cond.false949, %do.body928.cleanup_crit_edge, %cond.false681, %cond.end649.cleanup_crit_edge, %cond.end466, %cond.end249, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or471, %cond.end466 ], [ %xor, %cond.end249 ], [ %conv658, %cond.end649.cleanup_crit_edge ], [ %conv658, %cond.false681 ], [ %conv846, %do.body928.cleanup_crit_edge ], [ %conv846, %cond.false949 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kbic_write_block(ptr nocapture noundef readonly %pi, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.do.body_crit_edge
    i32 1, label %entry.do.body_crit_edge1279
    i32 2, label %entry.do.body_crit_edge1280
    i32 3, label %do.body243
    i32 4, label %do.body506
    i32 5, label %do.body740
  ]

entry.do.body_crit_edge1280:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge1279:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge1279, %entry.do.body_crit_edge1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 -112) #5, !srcloc !50
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %6 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.do.body12_crit_edge, label %cond.false7

do.body.do.body12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12

cond.false7:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %7) #5
  br label %do.body12

do.body12:                                        ; preds = %cond.false7, %do.body.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add16 = add i32 %10, 2
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %11 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 4) #5, !srcloc !50
  %12 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %do.body12.do.body37_crit_edge, label %cond.false32

do.body12.do.body37_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body37

cond.false32:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %13) #5
  br label %do.body37

do.body37:                                        ; preds = %cond.false32, %do.body12.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add41 = add i32 %16, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %17 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 6) #5, !srcloc !50
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool46.not = icmp eq i32 %19, 0
  br i1 %tobool46.not, label %do.body37.do.body62_crit_edge, label %cond.false57

do.body37.do.body62_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body62

cond.false57:                                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #5
  br label %do.body62

do.body62:                                        ; preds = %cond.false57, %do.body37.do.body62_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %add66 = add i32 %22, 2
  %and67 = and i32 %add66, 1048575
  %add68 = or i32 %and67, -18874368
  %23 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 4) #5, !srcloc !50
  %24 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool71.not = icmp eq i32 %25, 0
  br i1 %tobool71.not, label %do.body62.cond.end86_crit_edge, label %cond.false82

do.body62.cond.end86_crit_edge:                   ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end86

cond.false82:                                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %26(i32 noundef %25) #5
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false82, %do.body62.cond.end86_crit_edge
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp871273 = icmp sgt i32 %count, 1
  br i1 %cmp871273, label %cond.end86.do.body88_crit_edge, label %cond.end86.sw.epilog_crit_edge

cond.end86.sw.epilog_crit_edge:                   ; preds = %cond.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

cond.end86.do.body88_crit_edge:                   ; preds = %cond.end86
  br label %do.body88

do.body88:                                        ; preds = %for.inc.do.body88_crit_edge, %cond.end86.do.body88_crit_edge
  %k.01274 = phi i32 [ %inc, %for.inc.do.body88_crit_edge ], [ 0, %cond.end86.do.body88_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %mul91 = shl nuw i32 %k.01274, 1
  %add92 = or i32 %mul91, 1
  %arrayidx = getelementptr i8, ptr %buf, i32 %add92
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port, align 4
  %and95 = and i32 %30, 1048575
  %add96 = or i32 %and95, -18874368
  %31 = inttoptr i32 %add96 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %28) #5, !srcloc !50
  %32 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool99.not = icmp eq i32 %33, 0
  br i1 %tobool99.not, label %do.body88.do.body115_crit_edge, label %cond.false110

do.body88.do.body115_crit_edge:                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body115

cond.false110:                                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %34(i32 noundef %33) #5
  br label %do.body115

do.body115:                                       ; preds = %cond.false110, %do.body88.do.body115_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port, align 4
  %add119 = add i32 %36, 2
  %and120 = and i32 %add119, 1048575
  %add121 = or i32 %and120, -18874368
  %37 = inttoptr i32 %add121 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 0) #5, !srcloc !50
  %38 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool124.not = icmp eq i32 %39, 0
  br i1 %tobool124.not, label %do.body115.do.body140_crit_edge, label %cond.false135

do.body115.do.body140_crit_edge:                  ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body140

cond.false135:                                    ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %40(i32 noundef %39) #5
  br label %do.body140

do.body140:                                       ; preds = %cond.false135, %do.body115.do.body140_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port, align 4
  %add144 = add i32 %42, 2
  %and145 = and i32 %add144, 1048575
  %add146 = or i32 %and145, -18874368
  %43 = inttoptr i32 %add146 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 4) #5, !srcloc !50
  %44 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool149.not = icmp eq i32 %45, 0
  br i1 %tobool149.not, label %do.body140.do.body165_crit_edge, label %cond.false160

do.body140.do.body165_crit_edge:                  ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body165

cond.false160:                                    ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %46(i32 noundef %45) #5
  br label %do.body165

do.body165:                                       ; preds = %cond.false160, %do.body140.do.body165_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %arrayidx169 = getelementptr i8, ptr %buf, i32 %mul91
  %47 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx169, align 1
  %49 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port, align 4
  %and172 = and i32 %50, 1048575
  %add173 = or i32 %and172, -18874368
  %51 = inttoptr i32 %add173 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %48) #5, !srcloc !50
  %52 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool176.not = icmp eq i32 %53, 0
  br i1 %tobool176.not, label %do.body165.do.body192_crit_edge, label %cond.false187

do.body165.do.body192_crit_edge:                  ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body192

cond.false187:                                    ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %54(i32 noundef %53) #5
  br label %do.body192

do.body192:                                       ; preds = %cond.false187, %do.body165.do.body192_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port, align 4
  %add196 = add i32 %56, 2
  %and197 = and i32 %add196, 1048575
  %add198 = or i32 %and197, -18874368
  %57 = inttoptr i32 %add198 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 5) #5, !srcloc !50
  %58 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool201.not = icmp eq i32 %59, 0
  br i1 %tobool201.not, label %do.body192.do.body217_crit_edge, label %cond.false212

do.body192.do.body217_crit_edge:                  ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body217

cond.false212:                                    ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %60(i32 noundef %59) #5
  br label %do.body217

do.body217:                                       ; preds = %cond.false212, %do.body192.do.body217_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void @arm_heavy_mb() #5
  %61 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port, align 4
  %add221 = add i32 %62, 2
  %and222 = and i32 %add221, 1048575
  %add223 = or i32 %and222, -18874368
  %63 = inttoptr i32 %add223 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 4) #5, !srcloc !50
  %64 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool226.not = icmp eq i32 %65, 0
  br i1 %tobool226.not, label %do.body217.for.inc_crit_edge, label %cond.false237

do.body217.for.inc_crit_edge:                     ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cond.false237:                                    ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %66(i32 noundef %65) #5
  br label %for.inc

for.inc:                                          ; preds = %cond.false237, %do.body217.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.01274, 1
  %exitcond1277.not = icmp eq i32 %inc, %div
  br i1 %exitcond1277.not, label %for.inc.sw.epilog_crit_edge, label %for.inc.do.body88_crit_edge

for.inc.do.body88_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body88

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body243:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %port246 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %67 = ptrtoint ptr %port246 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port246, align 4
  %and248 = and i32 %68, 1048575
  %add249 = or i32 %and248, -18874368
  %69 = inttoptr i32 %add249 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %69, i8 -96) #5, !srcloc !50
  %delay251 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %70 = ptrtoint ptr %delay251 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %delay251, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool252.not = icmp eq i32 %71, 0
  br i1 %tobool252.not, label %do.body243.do.body268_crit_edge, label %cond.false263

do.body243.do.body268_crit_edge:                  ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body268

cond.false263:                                    ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %72(i32 noundef %71) #5
  br label %do.body268

do.body268:                                       ; preds = %cond.false263, %do.body243.do.body268_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %73 = ptrtoint ptr %port246 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %port246, align 4
  %add272 = add i32 %74, 2
  %and273 = and i32 %add272, 1048575
  %add274 = or i32 %and273, -18874368
  %75 = inttoptr i32 %add274 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 4) #5, !srcloc !50
  %76 = ptrtoint ptr %delay251 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %delay251, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool277.not = icmp eq i32 %77, 0
  br i1 %tobool277.not, label %do.body268.do.body293_crit_edge, label %cond.false288

do.body268.do.body293_crit_edge:                  ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body293

cond.false288:                                    ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %78(i32 noundef %77) #5
  br label %do.body293

do.body293:                                       ; preds = %cond.false288, %do.body268.do.body293_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %79 = ptrtoint ptr %port246 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %port246, align 4
  %add297 = add i32 %80, 2
  %and298 = and i32 %add297, 1048575
  %add299 = or i32 %and298, -18874368
  %81 = inttoptr i32 %add299 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %81, i8 6) #5, !srcloc !50
  %82 = ptrtoint ptr %delay251 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %delay251, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool302.not = icmp eq i32 %83, 0
  br i1 %tobool302.not, label %do.body293.do.body318_crit_edge, label %cond.false313

do.body293.do.body318_crit_edge:                  ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body318

cond.false313:                                    ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %84(i32 noundef %83) #5
  br label %do.body318

do.body318:                                       ; preds = %cond.false313, %do.body293.do.body318_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  tail call void @arm_heavy_mb() #5
  %85 = ptrtoint ptr %port246 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %port246, align 4
  %add322 = add i32 %86, 2
  %and323 = and i32 %add322, 1048575
  %add324 = or i32 %and323, -18874368
  %87 = inttoptr i32 %add324 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %87, i8 4) #5, !srcloc !50
  %88 = ptrtoint ptr %delay251 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %delay251, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool327.not = icmp eq i32 %89, 0
  br i1 %tobool327.not, label %do.body318.do.body343_crit_edge, label %cond.false338

do.body318.do.body343_crit_edge:                  ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body343

cond.false338:                                    ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %90(i32 noundef %89) #5
  br label %do.body343

do.body343:                                       ; preds = %cond.false338, %do.body318.do.body343_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  tail call void @arm_heavy_mb() #5
  %91 = ptrtoint ptr %port246 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %port246, align 4
  %add347 = add i32 %92, 3
  %and348 = and i32 %add347, 1048575
  %add349 = or i32 %and348, -18874368
  %93 = inttoptr i32 %add349 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 0) #5, !srcloc !50
  %94 = ptrtoint ptr %delay251 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %delay251, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool352.not = icmp eq i32 %95, 0
  br i1 %tobool352.not, label %do.body343.cond.end367_crit_edge, label %cond.false363

do.body343.cond.end367_crit_edge:                 ; preds = %do.body343
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end367

cond.false363:                                    ; preds = %do.body343
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %96(i32 noundef %95) #5
  br label %cond.end367

cond.end367:                                      ; preds = %cond.false363, %do.body343.cond.end367_crit_edge
  %div369 = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp3701271 = icmp sgt i32 %count, 1
  br i1 %cmp3701271, label %cond.end367.do.body372_crit_edge, label %cond.end367.do.body430_crit_edge

cond.end367.do.body430_crit_edge:                 ; preds = %cond.end367
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body430

cond.end367.do.body372_crit_edge:                 ; preds = %cond.end367
  br label %do.body372

do.body372:                                       ; preds = %for.inc427.do.body372_crit_edge, %cond.end367.do.body372_crit_edge
  %k.11272 = phi i32 [ %inc428, %for.inc427.do.body372_crit_edge ], [ 0, %cond.end367.do.body372_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  tail call void @arm_heavy_mb() #5
  %mul375 = shl nuw i32 %k.11272, 1
  %add376 = or i32 %mul375, 1
  %arrayidx377 = getelementptr i8, ptr %buf, i32 %add376
  %97 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx377, align 1
  %99 = ptrtoint ptr %port246 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %port246, align 4
  %add379 = add i32 %100, 4
  %and380 = and i32 %add379, 1048575
  %add381 = or i32 %and380, -18874368
  %101 = inttoptr i32 %add381 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 %98) #5, !srcloc !50
  %102 = ptrtoint ptr %delay251 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %delay251, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool384.not = icmp eq i32 %103, 0
  br i1 %tobool384.not, label %do.body372.do.body400_crit_edge, label %cond.false395

do.body372.do.body400_crit_edge:                  ; preds = %do.body372
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body400

cond.false395:                                    ; preds = %do.body372
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %104(i32 noundef %103) #5
  br label %do.body400

do.body400:                                       ; preds = %cond.false395, %do.body372.do.body400_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  tail call void @arm_heavy_mb() #5
  %arrayidx404 = getelementptr i8, ptr %buf, i32 %mul375
  %105 = ptrtoint ptr %arrayidx404 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx404, align 1
  %107 = ptrtoint ptr %port246 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %port246, align 4
  %add406 = add i32 %108, 4
  %and407 = and i32 %add406, 1048575
  %add408 = or i32 %and407, -18874368
  %109 = inttoptr i32 %add408 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 %106) #5, !srcloc !50
  %110 = ptrtoint ptr %delay251 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %delay251, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool411.not = icmp eq i32 %111, 0
  br i1 %tobool411.not, label %do.body400.for.inc427_crit_edge, label %cond.false422

do.body400.for.inc427_crit_edge:                  ; preds = %do.body400
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc427

cond.false422:                                    ; preds = %do.body400
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %112(i32 noundef %111) #5
  br label %for.inc427

for.inc427:                                       ; preds = %cond.false422, %do.body400.for.inc427_crit_edge
  %inc428 = add nuw nsw i32 %k.11272, 1
  %exitcond1276.not = icmp eq i32 %inc428, %div369
  br i1 %exitcond1276.not, label %for.inc427.do.body430_crit_edge, label %for.inc427.do.body372_crit_edge

for.inc427.do.body372_crit_edge:                  ; preds = %for.inc427
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body372

for.inc427.do.body430_crit_edge:                  ; preds = %for.inc427
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body430

do.body430:                                       ; preds = %for.inc427.do.body430_crit_edge, %cond.end367.do.body430_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void @arm_heavy_mb() #5
  %113 = ptrtoint ptr %port246 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %port246, align 4
  %add434 = add i32 %114, 2
  %and435 = and i32 %add434, 1048575
  %add436 = or i32 %and435, -18874368
  %115 = inttoptr i32 %add436 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %115, i8 4) #5, !srcloc !50
  %116 = ptrtoint ptr %delay251 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %delay251, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool439.not = icmp eq i32 %117, 0
  br i1 %tobool439.not, label %do.body430.do.body455_crit_edge, label %cond.false450

do.body430.do.body455_crit_edge:                  ; preds = %do.body430
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body455

cond.false450:                                    ; preds = %do.body430
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %118(i32 noundef %117) #5
  br label %do.body455

do.body455:                                       ; preds = %cond.false450, %do.body430.do.body455_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @arm_heavy_mb() #5
  %119 = ptrtoint ptr %port246 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %port246, align 4
  %add459 = add i32 %120, 2
  %and460 = and i32 %add459, 1048575
  %add461 = or i32 %and460, -18874368
  %121 = inttoptr i32 %add461 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %121, i8 0) #5, !srcloc !50
  %122 = ptrtoint ptr %delay251 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %delay251, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool464.not = icmp eq i32 %123, 0
  br i1 %tobool464.not, label %do.body455.do.body480_crit_edge, label %cond.false475

do.body455.do.body480_crit_edge:                  ; preds = %do.body455
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body480

cond.false475:                                    ; preds = %do.body455
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %124(i32 noundef %123) #5
  br label %do.body480

do.body480:                                       ; preds = %cond.false475, %do.body455.do.body480_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %125 = ptrtoint ptr %port246 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %port246, align 4
  %add484 = add i32 %126, 2
  %and485 = and i32 %add484, 1048575
  %add486 = or i32 %and485, -18874368
  %127 = inttoptr i32 %add486 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %127, i8 4) #5, !srcloc !50
  %128 = ptrtoint ptr %delay251 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %delay251, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool489.not = icmp eq i32 %129, 0
  br i1 %tobool489.not, label %do.body480.sw.epilog_crit_edge, label %do.body480.sw.epilog.sink.split_crit_edge

do.body480.sw.epilog.sink.split_crit_edge:        ; preds = %do.body480
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body480.sw.epilog_crit_edge:                   ; preds = %do.body480
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body506:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  tail call void @arm_heavy_mb() #5
  %port509 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %130 = ptrtoint ptr %port509 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %port509, align 4
  %and511 = and i32 %131, 1048575
  %add512 = or i32 %and511, -18874368
  %132 = inttoptr i32 %add512 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %132, i8 -96) #5, !srcloc !50
  %delay514 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %133 = ptrtoint ptr %delay514 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %delay514, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool515.not = icmp eq i32 %134, 0
  br i1 %tobool515.not, label %do.body506.do.body531_crit_edge, label %cond.false526

do.body506.do.body531_crit_edge:                  ; preds = %do.body506
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body531

cond.false526:                                    ; preds = %do.body506
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %135(i32 noundef %134) #5
  br label %do.body531

do.body531:                                       ; preds = %cond.false526, %do.body506.do.body531_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void @arm_heavy_mb() #5
  %136 = ptrtoint ptr %port509 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %port509, align 4
  %add535 = add i32 %137, 2
  %and536 = and i32 %add535, 1048575
  %add537 = or i32 %and536, -18874368
  %138 = inttoptr i32 %add537 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %138, i8 4) #5, !srcloc !50
  %139 = ptrtoint ptr %delay514 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %delay514, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool540.not = icmp eq i32 %140, 0
  br i1 %tobool540.not, label %do.body531.do.body556_crit_edge, label %cond.false551

do.body531.do.body556_crit_edge:                  ; preds = %do.body531
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body556

cond.false551:                                    ; preds = %do.body531
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %141(i32 noundef %140) #5
  br label %do.body556

do.body556:                                       ; preds = %cond.false551, %do.body531.do.body556_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  tail call void @arm_heavy_mb() #5
  %142 = ptrtoint ptr %port509 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %port509, align 4
  %add560 = add i32 %143, 2
  %and561 = and i32 %add560, 1048575
  %add562 = or i32 %and561, -18874368
  %144 = inttoptr i32 %add562 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %144, i8 6) #5, !srcloc !50
  %145 = ptrtoint ptr %delay514 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %delay514, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool565.not = icmp eq i32 %146, 0
  br i1 %tobool565.not, label %do.body556.do.body581_crit_edge, label %cond.false576

do.body556.do.body581_crit_edge:                  ; preds = %do.body556
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body581

cond.false576:                                    ; preds = %do.body556
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %147(i32 noundef %146) #5
  br label %do.body581

do.body581:                                       ; preds = %cond.false576, %do.body556.do.body581_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  tail call void @arm_heavy_mb() #5
  %148 = ptrtoint ptr %port509 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %port509, align 4
  %add585 = add i32 %149, 2
  %and586 = and i32 %add585, 1048575
  %add587 = or i32 %and586, -18874368
  %150 = inttoptr i32 %add587 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %150, i8 4) #5, !srcloc !50
  %151 = ptrtoint ptr %delay514 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %delay514, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool590.not = icmp eq i32 %152, 0
  br i1 %tobool590.not, label %do.body581.do.body606_crit_edge, label %cond.false601

do.body581.do.body606_crit_edge:                  ; preds = %do.body581
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body606

cond.false601:                                    ; preds = %do.body581
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %153(i32 noundef %152) #5
  br label %do.body606

do.body606:                                       ; preds = %cond.false601, %do.body581.do.body606_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %154 = ptrtoint ptr %port509 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %port509, align 4
  %add610 = add i32 %155, 3
  %and611 = and i32 %add610, 1048575
  %add612 = or i32 %and611, -18874368
  %156 = inttoptr i32 %add612 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %156, i8 0) #5, !srcloc !50
  %157 = ptrtoint ptr %delay514 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %delay514, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool615.not = icmp eq i32 %158, 0
  br i1 %tobool615.not, label %do.body606.cond.end630_crit_edge, label %cond.false626

do.body606.cond.end630_crit_edge:                 ; preds = %do.body606
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end630

cond.false626:                                    ; preds = %do.body606
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %159(i32 noundef %158) #5
  br label %cond.end630

cond.end630:                                      ; preds = %cond.false626, %do.body606.cond.end630_crit_edge
  %div632 = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp6331269 = icmp sgt i32 %count, 1
  br i1 %cmp6331269, label %cond.end630.do.body635_crit_edge, label %cond.end630.do.body664_crit_edge

cond.end630.do.body664_crit_edge:                 ; preds = %cond.end630
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body664

cond.end630.do.body635_crit_edge:                 ; preds = %cond.end630
  br label %do.body635

do.body635:                                       ; preds = %for.inc661.do.body635_crit_edge, %cond.end630.do.body635_crit_edge
  %k.21270 = phi i32 [ %inc662, %for.inc661.do.body635_crit_edge ], [ 0, %cond.end630.do.body635_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void @arm_heavy_mb() #5
  %mul.i = shl nuw i32 %k.21270, 1
  %add.i = or i32 %mul.i, 1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %add.i
  %160 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %buf, i32 %mul.i
  %162 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx3.i, align 1
  %r.sroa.5.0.insert.ext.i = zext i8 %163 to i16
  %r.sroa.0.0.insert.ext.i = zext i8 %161 to i16
  %r.sroa.0.0.insert.shift.i = shl nuw i16 %r.sroa.0.0.insert.ext.i, 8
  %r.sroa.0.0.insert.insert.i = or i16 %r.sroa.0.0.insert.shift.i, %r.sroa.5.0.insert.ext.i
  %164 = tail call i16 @llvm.bswap.i16(i16 %r.sroa.0.0.insert.insert.i)
  %165 = ptrtoint ptr %port509 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %port509, align 4
  %add640 = add i32 %166, 4
  %and641 = and i32 %add640, 1048575
  %add642 = or i32 %and641, -18874368
  %167 = inttoptr i32 %add642 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %167, i16 %164) #5, !srcloc !131
  %168 = ptrtoint ptr %delay514 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %delay514, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool645.not = icmp eq i32 %169, 0
  br i1 %tobool645.not, label %do.body635.for.inc661_crit_edge, label %cond.false656

do.body635.for.inc661_crit_edge:                  ; preds = %do.body635
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc661

cond.false656:                                    ; preds = %do.body635
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %170 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %170(i32 noundef %169) #5
  br label %for.inc661

for.inc661:                                       ; preds = %cond.false656, %do.body635.for.inc661_crit_edge
  %inc662 = add nuw nsw i32 %k.21270, 1
  %exitcond1275.not = icmp eq i32 %inc662, %div632
  br i1 %exitcond1275.not, label %for.inc661.do.body664_crit_edge, label %for.inc661.do.body635_crit_edge

for.inc661.do.body635_crit_edge:                  ; preds = %for.inc661
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body635

for.inc661.do.body664_crit_edge:                  ; preds = %for.inc661
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body664

do.body664:                                       ; preds = %for.inc661.do.body664_crit_edge, %cond.end630.do.body664_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %171 = ptrtoint ptr %port509 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %port509, align 4
  %add668 = add i32 %172, 2
  %and669 = and i32 %add668, 1048575
  %add670 = or i32 %and669, -18874368
  %173 = inttoptr i32 %add670 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %173, i8 4) #5, !srcloc !50
  %174 = ptrtoint ptr %delay514 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %delay514, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool673.not = icmp eq i32 %175, 0
  br i1 %tobool673.not, label %do.body664.do.body689_crit_edge, label %cond.false684

do.body664.do.body689_crit_edge:                  ; preds = %do.body664
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body689

cond.false684:                                    ; preds = %do.body664
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %176(i32 noundef %175) #5
  br label %do.body689

do.body689:                                       ; preds = %cond.false684, %do.body664.do.body689_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %177 = ptrtoint ptr %port509 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %port509, align 4
  %add693 = add i32 %178, 2
  %and694 = and i32 %add693, 1048575
  %add695 = or i32 %and694, -18874368
  %179 = inttoptr i32 %add695 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %179, i8 0) #5, !srcloc !50
  %180 = ptrtoint ptr %delay514 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %delay514, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool698.not = icmp eq i32 %181, 0
  br i1 %tobool698.not, label %do.body689.do.body714_crit_edge, label %cond.false709

do.body689.do.body714_crit_edge:                  ; preds = %do.body689
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body714

cond.false709:                                    ; preds = %do.body689
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %182 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %182(i32 noundef %181) #5
  br label %do.body714

do.body714:                                       ; preds = %cond.false709, %do.body689.do.body714_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %183 = ptrtoint ptr %port509 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %port509, align 4
  %add718 = add i32 %184, 2
  %and719 = and i32 %add718, 1048575
  %add720 = or i32 %and719, -18874368
  %185 = inttoptr i32 %add720 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %185, i8 4) #5, !srcloc !50
  %186 = ptrtoint ptr %delay514 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %delay514, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool723.not = icmp eq i32 %187, 0
  br i1 %tobool723.not, label %do.body714.sw.epilog_crit_edge, label %do.body714.sw.epilog.sink.split_crit_edge

do.body714.sw.epilog.sink.split_crit_edge:        ; preds = %do.body714
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body714.sw.epilog_crit_edge:                   ; preds = %do.body714
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body740:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %port743 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %188 = ptrtoint ptr %port743 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %port743, align 4
  %and745 = and i32 %189, 1048575
  %add746 = or i32 %and745, -18874368
  %190 = inttoptr i32 %add746 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %190, i8 -96) #5, !srcloc !50
  %delay748 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %191 = ptrtoint ptr %delay748 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %delay748, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool749.not = icmp eq i32 %192, 0
  br i1 %tobool749.not, label %do.body740.do.body765_crit_edge, label %cond.false760

do.body740.do.body765_crit_edge:                  ; preds = %do.body740
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body765

cond.false760:                                    ; preds = %do.body740
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %193 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %193(i32 noundef %192) #5
  br label %do.body765

do.body765:                                       ; preds = %cond.false760, %do.body740.do.body765_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  tail call void @arm_heavy_mb() #5
  %194 = ptrtoint ptr %port743 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %port743, align 4
  %add769 = add i32 %195, 2
  %and770 = and i32 %add769, 1048575
  %add771 = or i32 %and770, -18874368
  %196 = inttoptr i32 %add771 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %196, i8 4) #5, !srcloc !50
  %197 = ptrtoint ptr %delay748 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %delay748, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool774.not = icmp eq i32 %198, 0
  br i1 %tobool774.not, label %do.body765.do.body790_crit_edge, label %cond.false785

do.body765.do.body790_crit_edge:                  ; preds = %do.body765
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body790

cond.false785:                                    ; preds = %do.body765
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %199 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %199(i32 noundef %198) #5
  br label %do.body790

do.body790:                                       ; preds = %cond.false785, %do.body765.do.body790_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %200 = ptrtoint ptr %port743 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %port743, align 4
  %add794 = add i32 %201, 2
  %and795 = and i32 %add794, 1048575
  %add796 = or i32 %and795, -18874368
  %202 = inttoptr i32 %add796 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %202, i8 6) #5, !srcloc !50
  %203 = ptrtoint ptr %delay748 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %delay748, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool799.not = icmp eq i32 %204, 0
  br i1 %tobool799.not, label %do.body790.do.body815_crit_edge, label %cond.false810

do.body790.do.body815_crit_edge:                  ; preds = %do.body790
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body815

cond.false810:                                    ; preds = %do.body790
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %205 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %205(i32 noundef %204) #5
  br label %do.body815

do.body815:                                       ; preds = %cond.false810, %do.body790.do.body815_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %206 = ptrtoint ptr %port743 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %port743, align 4
  %add819 = add i32 %207, 2
  %and820 = and i32 %add819, 1048575
  %add821 = or i32 %and820, -18874368
  %208 = inttoptr i32 %add821 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %208, i8 4) #5, !srcloc !50
  %209 = ptrtoint ptr %delay748 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %delay748, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool824.not = icmp eq i32 %210, 0
  br i1 %tobool824.not, label %do.body815.do.body840_crit_edge, label %cond.false835

do.body815.do.body840_crit_edge:                  ; preds = %do.body815
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body840

cond.false835:                                    ; preds = %do.body815
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %211 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %211(i32 noundef %210) #5
  br label %do.body840

do.body840:                                       ; preds = %cond.false835, %do.body815.do.body840_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %212 = ptrtoint ptr %port743 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %port743, align 4
  %add844 = add i32 %213, 3
  %and845 = and i32 %add844, 1048575
  %add846 = or i32 %and845, -18874368
  %214 = inttoptr i32 %add846 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %214, i8 0) #5, !srcloc !50
  %215 = ptrtoint ptr %delay748 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %delay748, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool849.not = icmp eq i32 %216, 0
  br i1 %tobool849.not, label %do.body840.cond.end864_crit_edge, label %cond.false860

do.body840.cond.end864_crit_edge:                 ; preds = %do.body840
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end864

cond.false860:                                    ; preds = %do.body840
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %217 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %217(i32 noundef %216) #5
  br label %cond.end864

cond.end864:                                      ; preds = %cond.false860, %do.body840.cond.end864_crit_edge
  %div866 = sdiv i32 %count, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp8671267 = icmp sgt i32 %count, 3
  br i1 %cmp8671267, label %cond.end864.do.body869_crit_edge, label %cond.end864.do.body898_crit_edge

cond.end864.do.body898_crit_edge:                 ; preds = %cond.end864
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body898

cond.end864.do.body869_crit_edge:                 ; preds = %cond.end864
  br label %do.body869

do.body869:                                       ; preds = %for.inc895.do.body869_crit_edge, %cond.end864.do.body869_crit_edge
  %k.31268 = phi i32 [ %inc896, %for.inc895.do.body869_crit_edge ], [ 0, %cond.end864.do.body869_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %mul.i1259 = shl i32 %k.31268, 2
  %add.i1260 = or i32 %mul.i1259, 1
  %arrayidx.i1261 = getelementptr i8, ptr %buf, i32 %add.i1260
  %218 = ptrtoint ptr %arrayidx.i1261 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx.i1261, align 1
  %arrayidx3.i1262 = getelementptr i8, ptr %buf, i32 %mul.i1259
  %220 = ptrtoint ptr %arrayidx3.i1262 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx3.i1262, align 1
  %add6.i = or i32 %mul.i1259, 3
  %arrayidx7.i = getelementptr i8, ptr %buf, i32 %add6.i
  %222 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx7.i, align 1
  %add10.i = or i32 %mul.i1259, 2
  %arrayidx11.i = getelementptr i8, ptr %buf, i32 %add10.i
  %224 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx11.i, align 1
  %r.sroa.7.0.insert.ext.i = zext i8 %225 to i32
  %r.sroa.6.0.insert.ext.i = zext i8 %223 to i32
  %r.sroa.6.0.insert.shift.i = shl nuw nsw i32 %r.sroa.6.0.insert.ext.i, 8
  %r.sroa.5.0.insert.ext.i1263 = zext i8 %221 to i32
  %r.sroa.5.0.insert.shift.i = shl nuw nsw i32 %r.sroa.5.0.insert.ext.i1263, 16
  %r.sroa.0.0.insert.ext.i1264 = zext i8 %219 to i32
  %r.sroa.0.0.insert.shift.i1265 = shl nuw i32 %r.sroa.0.0.insert.ext.i1264, 24
  %r.sroa.6.0.insert.insert.i = or i32 %r.sroa.5.0.insert.shift.i, %r.sroa.0.0.insert.shift.i1265
  %r.sroa.5.0.insert.insert.i = or i32 %r.sroa.6.0.insert.insert.i, %r.sroa.7.0.insert.ext.i
  %r.sroa.0.0.insert.insert.i1266 = or i32 %r.sroa.5.0.insert.insert.i, %r.sroa.6.0.insert.shift.i
  %226 = tail call i32 @llvm.bswap.i32(i32 %r.sroa.0.0.insert.insert.i1266)
  %227 = ptrtoint ptr %port743 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %port743, align 4
  %add874 = add i32 %228, 4
  %and875 = and i32 %add874, 1048575
  %add876 = or i32 %and875, -18874368
  %229 = inttoptr i32 %add876 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %229, i32 %226) #5, !srcloc !141
  %230 = ptrtoint ptr %delay748 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %delay748, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool879.not = icmp eq i32 %231, 0
  br i1 %tobool879.not, label %do.body869.for.inc895_crit_edge, label %cond.false890

do.body869.for.inc895_crit_edge:                  ; preds = %do.body869
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc895

cond.false890:                                    ; preds = %do.body869
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %232 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %232(i32 noundef %231) #5
  br label %for.inc895

for.inc895:                                       ; preds = %cond.false890, %do.body869.for.inc895_crit_edge
  %inc896 = add nuw nsw i32 %k.31268, 1
  %exitcond.not = icmp eq i32 %inc896, %div866
  br i1 %exitcond.not, label %for.inc895.do.body898_crit_edge, label %for.inc895.do.body869_crit_edge

for.inc895.do.body869_crit_edge:                  ; preds = %for.inc895
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body869

for.inc895.do.body898_crit_edge:                  ; preds = %for.inc895
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body898

do.body898:                                       ; preds = %for.inc895.do.body898_crit_edge, %cond.end864.do.body898_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %233 = ptrtoint ptr %port743 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %port743, align 4
  %add902 = add i32 %234, 2
  %and903 = and i32 %add902, 1048575
  %add904 = or i32 %and903, -18874368
  %235 = inttoptr i32 %add904 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %235, i8 4) #5, !srcloc !50
  %236 = ptrtoint ptr %delay748 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %delay748, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool907.not = icmp eq i32 %237, 0
  br i1 %tobool907.not, label %do.body898.do.body923_crit_edge, label %cond.false918

do.body898.do.body923_crit_edge:                  ; preds = %do.body898
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body923

cond.false918:                                    ; preds = %do.body898
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %238 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %238(i32 noundef %237) #5
  br label %do.body923

do.body923:                                       ; preds = %cond.false918, %do.body898.do.body923_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %239 = ptrtoint ptr %port743 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %port743, align 4
  %add927 = add i32 %240, 2
  %and928 = and i32 %add927, 1048575
  %add929 = or i32 %and928, -18874368
  %241 = inttoptr i32 %add929 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %241, i8 0) #5, !srcloc !50
  %242 = ptrtoint ptr %delay748 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %delay748, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool932.not = icmp eq i32 %243, 0
  br i1 %tobool932.not, label %do.body923.do.body948_crit_edge, label %cond.false943

do.body923.do.body948_crit_edge:                  ; preds = %do.body923
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body948

cond.false943:                                    ; preds = %do.body923
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %244 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %244(i32 noundef %243) #5
  br label %do.body948

do.body948:                                       ; preds = %cond.false943, %do.body923.do.body948_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %245 = ptrtoint ptr %port743 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %port743, align 4
  %add952 = add i32 %246, 2
  %and953 = and i32 %add952, 1048575
  %add954 = or i32 %and953, -18874368
  %247 = inttoptr i32 %add954 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %247, i8 4) #5, !srcloc !50
  %248 = ptrtoint ptr %delay748 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %delay748, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool957.not = icmp eq i32 %249, 0
  br i1 %tobool957.not, label %do.body948.sw.epilog_crit_edge, label %do.body948.sw.epilog.sink.split_crit_edge

do.body948.sw.epilog.sink.split_crit_edge:        ; preds = %do.body948
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body948.sw.epilog_crit_edge:                   ; preds = %do.body948
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body948.sw.epilog.sink.split_crit_edge, %do.body714.sw.epilog.sink.split_crit_edge, %do.body480.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %129, %do.body480.sw.epilog.sink.split_crit_edge ], [ %187, %do.body714.sw.epilog.sink.split_crit_edge ], [ %249, %do.body948.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %250 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %250(i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body948.sw.epilog_crit_edge, %do.body714.sw.epilog_crit_edge, %do.body480.sw.epilog_crit_edge, %for.inc.sw.epilog_crit_edge, %cond.end86.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kbic_read_block(ptr noundef readonly %pi, ptr nocapture noundef writeonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body364
    i32 2, label %do.body970
    i32 3, label %do.body1250
    i32 4, label %do.body1496
    i32 5, label %do.body1743
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 -104) #5, !srcloc !50
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %6 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.do.body12_crit_edge, label %cond.false7

do.body.do.body12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12

cond.false7:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %7) #5
  br label %do.body12

do.body12:                                        ; preds = %cond.false7, %do.body.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add16 = add i32 %10, 2
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %11 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 4) #5, !srcloc !50
  %12 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %do.body12.do.body37_crit_edge, label %cond.false32

do.body12.do.body37_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body37

cond.false32:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %13) #5
  br label %do.body37

do.body37:                                        ; preds = %cond.false32, %do.body12.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add41 = add i32 %16, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %17 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 6) #5, !srcloc !50
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool46.not = icmp eq i32 %19, 0
  br i1 %tobool46.not, label %do.body37.do.body62_crit_edge, label %cond.false57

do.body37.do.body62_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body62

cond.false57:                                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #5
  br label %do.body62

do.body62:                                        ; preds = %cond.false57, %do.body37.do.body62_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %add66 = add i32 %22, 2
  %and67 = and i32 %add66, 1048575
  %add68 = or i32 %and67, -18874368
  %23 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 4) #5, !srcloc !50
  %24 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool71.not = icmp eq i32 %25, 0
  br i1 %tobool71.not, label %do.body62.cond.end86_crit_edge, label %cond.false82

do.body62.cond.end86_crit_edge:                   ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end86

cond.false82:                                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %26(i32 noundef %25) #5
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false82, %do.body62.cond.end86_crit_edge
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp872564 = icmp sgt i32 %count, 1
  br i1 %cmp872564, label %cond.end86.do.body88_crit_edge, label %cond.end86.sw.epilog_crit_edge

cond.end86.sw.epilog_crit_edge:                   ; preds = %cond.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

cond.end86.do.body88_crit_edge:                   ; preds = %cond.end86
  br label %do.body88

do.body88:                                        ; preds = %for.inc.do.body88_crit_edge, %cond.end86.do.body88_crit_edge
  %k.02565 = phi i32 [ %inc, %for.inc.do.body88_crit_edge ], [ 0, %cond.end86.do.body88_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add92 = add i32 %28, 2
  %and93 = and i32 %add92, 1048575
  %add94 = or i32 %and93, -18874368
  %29 = inttoptr i32 %add94 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 1) #5, !srcloc !50
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool97.not = icmp eq i32 %31, 0
  br i1 %tobool97.not, label %do.body88.do.body113_crit_edge, label %cond.false108

do.body88.do.body113_crit_edge:                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body113

cond.false108:                                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %31) #5
  br label %do.body113

do.body113:                                       ; preds = %cond.false108, %do.body88.do.body113_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %and118 = and i32 %34, 1048575
  %add119 = or i32 %and118, -18874368
  %35 = inttoptr i32 %add119 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 8) #5, !srcloc !50
  %36 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool122.not = icmp eq i32 %37, 0
  br i1 %tobool122.not, label %do.body113.cond.end154_crit_edge, label %cond.false133

do.body113.cond.end154_crit_edge:                 ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end154

cond.false133:                                    ; preds = %do.body113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %38(i32 noundef %37) #5
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool139.not = icmp eq i32 %.pr, 0
  br i1 %tobool139.not, label %cond.false133.cond.end154_crit_edge, label %cond.false150

cond.false133.cond.end154_crit_edge:              ; preds = %cond.false133
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end154

cond.false150:                                    ; preds = %cond.false133
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %40(i32 noundef %.pr) #5
  br label %cond.end154

cond.end154:                                      ; preds = %cond.false150, %cond.false133.cond.end154_crit_edge, %do.body113.cond.end154_crit_edge
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port, align 4
  %add156 = add i32 %42, 1
  %and157 = and i32 %add156, 1048575
  %add158 = or i32 %and157, -18874368
  %43 = inttoptr i32 %add158 to ptr
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %43) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port, align 4
  %and167 = and i32 %46, 1048575
  %add168 = or i32 %and167, -18874368
  %47 = inttoptr i32 %add168 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 40) #5, !srcloc !50
  %48 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool171.not = icmp eq i32 %49, 0
  br i1 %tobool171.not, label %cond.end154.cond.end205_crit_edge, label %cond.false183

cond.end154.cond.end205_crit_edge:                ; preds = %cond.end154
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end205

cond.false183:                                    ; preds = %cond.end154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %50(i32 noundef %49) #5
  %51 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr2536 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2536)
  %tobool189.not = icmp eq i32 %.pr2536, 0
  br i1 %tobool189.not, label %cond.false183.cond.end205_crit_edge, label %cond.false201

cond.false183.cond.end205_crit_edge:              ; preds = %cond.false183
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end205

cond.false201:                                    ; preds = %cond.false183
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %52(i32 noundef %.pr2536) #5
  br label %cond.end205

cond.end205:                                      ; preds = %cond.false201, %cond.false183.cond.end205_crit_edge, %cond.end154.cond.end205_crit_edge
  %53 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port, align 4
  %add208 = add i32 %54, 1
  %and209 = and i32 %add208, 1048575
  %add210 = or i32 %and209, -18874368
  %55 = inttoptr i32 %add210 to ptr
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %55) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  %57 = lshr i8 %44, 4
  %58 = and i8 %56, -16
  %or2533 = or i8 %58, %57
  %59 = xor i8 %or2533, -120
  %mul219 = shl nuw i32 %k.02565, 1
  %arrayidx = getelementptr i8, ptr %buf, i32 %mul219
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  tail call void @arm_heavy_mb() #5
  %61 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port, align 4
  %add224 = add i32 %62, 2
  %and225 = and i32 %add224, 1048575
  %add226 = or i32 %and225, -18874368
  %63 = inttoptr i32 %add226 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 5) #5, !srcloc !50
  %64 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool229.not = icmp eq i32 %65, 0
  br i1 %tobool229.not, label %cond.end205.cond.end263_crit_edge, label %cond.false241

cond.end205.cond.end263_crit_edge:                ; preds = %cond.end205
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end263

cond.false241:                                    ; preds = %cond.end205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %66(i32 noundef %65) #5
  %67 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pr2538 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2538)
  %tobool247.not = icmp eq i32 %.pr2538, 0
  br i1 %tobool247.not, label %cond.false241.cond.end263_crit_edge, label %cond.false259

cond.false241.cond.end263_crit_edge:              ; preds = %cond.false241
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end263

cond.false259:                                    ; preds = %cond.false241
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %68(i32 noundef %.pr2538) #5
  br label %cond.end263

cond.end263:                                      ; preds = %cond.false259, %cond.false241.cond.end263_crit_edge, %cond.end205.cond.end263_crit_edge
  %69 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port, align 4
  %add266 = add i32 %70, 1
  %and267 = and i32 %add266, 1048575
  %add268 = or i32 %and267, -18874368
  %71 = inttoptr i32 %add268 to ptr
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %71) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !156
  tail call void @arm_heavy_mb() #5
  %73 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %port, align 4
  %and279 = and i32 %74, 1048575
  %add280 = or i32 %and279, -18874368
  %75 = inttoptr i32 %add280 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 8) #5, !srcloc !50
  %76 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool283.not = icmp eq i32 %77, 0
  br i1 %tobool283.not, label %cond.end263.cond.end317_crit_edge, label %cond.false295

cond.end263.cond.end317_crit_edge:                ; preds = %cond.end263
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end317

cond.false295:                                    ; preds = %cond.end263
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %78(i32 noundef %77) #5
  %79 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr2540 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2540)
  %tobool301.not = icmp eq i32 %.pr2540, 0
  br i1 %tobool301.not, label %cond.false295.cond.end317_crit_edge, label %cond.false313

cond.false295.cond.end317_crit_edge:              ; preds = %cond.false295
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end317

cond.false313:                                    ; preds = %cond.false295
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %80(i32 noundef %.pr2540) #5
  br label %cond.end317

cond.end317:                                      ; preds = %cond.false313, %cond.false295.cond.end317_crit_edge, %cond.end263.cond.end317_crit_edge
  %81 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %port, align 4
  %add320 = add i32 %82, 1
  %and321 = and i32 %add320, 1048575
  %add322 = or i32 %and321, -18874368
  %83 = inttoptr i32 %add322 to ptr
  %84 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %83) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  %85 = lshr i8 %84, 4
  %86 = and i8 %72, -16
  %or3312534 = or i8 %85, %86
  %87 = xor i8 %or3312534, -120
  %add335 = or i32 %mul219, 1
  %arrayidx336 = getelementptr i8, ptr %buf, i32 %add335
  %88 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %arrayidx336, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  tail call void @arm_heavy_mb() #5
  %89 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %port, align 4
  %add341 = add i32 %90, 2
  %and342 = and i32 %add341, 1048575
  %add343 = or i32 %and342, -18874368
  %91 = inttoptr i32 %add343 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 4) #5, !srcloc !50
  %92 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool346.not = icmp eq i32 %93, 0
  br i1 %tobool346.not, label %cond.end317.for.inc_crit_edge, label %cond.false358

cond.end317.for.inc_crit_edge:                    ; preds = %cond.end317
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cond.false358:                                    ; preds = %cond.end317
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %94(i32 noundef %93) #5
  br label %for.inc

for.inc:                                          ; preds = %cond.false358, %cond.end317.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.02565, 1
  %exitcond2570.not = icmp eq i32 %inc, %div
  br i1 %exitcond2570.not, label %for.inc.sw.epilog_crit_edge, label %for.inc.do.body88_crit_edge

for.inc.do.body88_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body88

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body364:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  tail call void @arm_heavy_mb() #5
  %port367 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %95 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %port367, align 4
  %and369 = and i32 %96, 1048575
  %add370 = or i32 %and369, -18874368
  %97 = inttoptr i32 %add370 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 -72) #5, !srcloc !50
  %delay372 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %98 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool373.not = icmp eq i32 %99, 0
  br i1 %tobool373.not, label %do.body364.do.body390_crit_edge, label %cond.false385

do.body364.do.body390_crit_edge:                  ; preds = %do.body364
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body390

cond.false385:                                    ; preds = %do.body364
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %100(i32 noundef %99) #5
  br label %do.body390

do.body390:                                       ; preds = %cond.false385, %do.body364.do.body390_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  tail call void @arm_heavy_mb() #5
  %101 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %port367, align 4
  %add394 = add i32 %102, 2
  %and395 = and i32 %add394, 1048575
  %add396 = or i32 %and395, -18874368
  %103 = inttoptr i32 %add396 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %103, i8 4) #5, !srcloc !50
  %104 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool399.not = icmp eq i32 %105, 0
  br i1 %tobool399.not, label %do.body390.do.body416_crit_edge, label %cond.false411

do.body390.do.body416_crit_edge:                  ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body416

cond.false411:                                    ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %106(i32 noundef %105) #5
  br label %do.body416

do.body416:                                       ; preds = %cond.false411, %do.body390.do.body416_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void @arm_heavy_mb() #5
  %107 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %port367, align 4
  %add420 = add i32 %108, 2
  %and421 = and i32 %add420, 1048575
  %add422 = or i32 %and421, -18874368
  %109 = inttoptr i32 %add422 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 6) #5, !srcloc !50
  %110 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool425.not = icmp eq i32 %111, 0
  br i1 %tobool425.not, label %do.body416.do.body442_crit_edge, label %cond.false437

do.body416.do.body442_crit_edge:                  ; preds = %do.body416
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body442

cond.false437:                                    ; preds = %do.body416
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %112(i32 noundef %111) #5
  br label %do.body442

do.body442:                                       ; preds = %cond.false437, %do.body416.do.body442_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void @arm_heavy_mb() #5
  %113 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %port367, align 4
  %add446 = add i32 %114, 2
  %and447 = and i32 %add446, 1048575
  %add448 = or i32 %and447, -18874368
  %115 = inttoptr i32 %add448 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %115, i8 4) #5, !srcloc !50
  %116 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool451.not = icmp eq i32 %117, 0
  br i1 %tobool451.not, label %do.body442.cond.end467_crit_edge, label %cond.false463

do.body442.cond.end467_crit_edge:                 ; preds = %do.body442
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end467

cond.false463:                                    ; preds = %do.body442
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %118(i32 noundef %117) #5
  br label %cond.end467

cond.end467:                                      ; preds = %cond.false463, %do.body442.cond.end467_crit_edge
  %div469 = sdiv i32 %count, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp4702562 = icmp sgt i32 %count, 3
  br i1 %cmp4702562, label %cond.end467.do.body473_crit_edge, label %cond.end467.do.body943_crit_edge

cond.end467.do.body943_crit_edge:                 ; preds = %cond.end467
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body943

cond.end467.do.body473_crit_edge:                 ; preds = %cond.end467
  br label %do.body473

do.body473:                                       ; preds = %cond.end922.do.body473_crit_edge, %cond.end467.do.body473_crit_edge
  %k.12563 = phi i32 [ %inc941, %cond.end922.do.body473_crit_edge ], [ 0, %cond.end467.do.body473_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  tail call void @arm_heavy_mb() #5
  %119 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %port367, align 4
  %and478 = and i32 %120, 1048575
  %add479 = or i32 %and478, -18874368
  %121 = inttoptr i32 %add479 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %121, i8 -72) #5, !srcloc !50
  %122 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool482.not = icmp eq i32 %123, 0
  br i1 %tobool482.not, label %do.body473.do.body499_crit_edge, label %cond.false494

do.body473.do.body499_crit_edge:                  ; preds = %do.body473
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body499

cond.false494:                                    ; preds = %do.body473
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %124(i32 noundef %123) #5
  br label %do.body499

do.body499:                                       ; preds = %cond.false494, %do.body473.do.body499_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %125 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %port367, align 4
  %add503 = add i32 %126, 2
  %and504 = and i32 %add503, 1048575
  %add505 = or i32 %and504, -18874368
  %127 = inttoptr i32 %add505 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %127, i8 4) #5, !srcloc !50
  %128 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool508.not = icmp eq i32 %129, 0
  br i1 %tobool508.not, label %do.body499.do.body525_crit_edge, label %cond.false520

do.body499.do.body525_crit_edge:                  ; preds = %do.body499
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body525

cond.false520:                                    ; preds = %do.body499
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %130(i32 noundef %129) #5
  br label %do.body525

do.body525:                                       ; preds = %cond.false520, %do.body499.do.body525_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  tail call void @arm_heavy_mb() #5
  %131 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %port367, align 4
  %add529 = add i32 %132, 2
  %and530 = and i32 %add529, 1048575
  %add531 = or i32 %and530, -18874368
  %133 = inttoptr i32 %add531 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %133, i8 5) #5, !srcloc !50
  %134 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool534.not = icmp eq i32 %135, 0
  br i1 %tobool534.not, label %do.body525.do.body551_crit_edge, label %cond.false546

do.body525.do.body551_crit_edge:                  ; preds = %do.body525
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body551

cond.false546:                                    ; preds = %do.body525
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %136(i32 noundef %135) #5
  br label %do.body551

do.body551:                                       ; preds = %cond.false546, %do.body525.do.body551_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  tail call void @arm_heavy_mb() #5
  %137 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %port367, align 4
  %and556 = and i32 %138, 1048575
  %add557 = or i32 %and556, -18874368
  %139 = inttoptr i32 %add557 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %139, i8 8) #5, !srcloc !50
  %140 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool560.not = icmp eq i32 %141, 0
  br i1 %tobool560.not, label %do.body551.cond.end594_crit_edge, label %cond.false572

do.body551.cond.end594_crit_edge:                 ; preds = %do.body551
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end594

cond.false572:                                    ; preds = %do.body551
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %142(i32 noundef %141) #5
  %143 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %143)
  %.pr2542 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2542)
  %tobool578.not = icmp eq i32 %.pr2542, 0
  br i1 %tobool578.not, label %cond.false572.cond.end594_crit_edge, label %cond.false590

cond.false572.cond.end594_crit_edge:              ; preds = %cond.false572
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end594

cond.false590:                                    ; preds = %cond.false572
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %144(i32 noundef %.pr2542) #5
  br label %cond.end594

cond.end594:                                      ; preds = %cond.false590, %cond.false572.cond.end594_crit_edge, %do.body551.cond.end594_crit_edge
  %145 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %port367, align 4
  %add597 = add i32 %146, 1
  %and598 = and i32 %add597, 1048575
  %add599 = or i32 %and598, -18874368
  %147 = inttoptr i32 %add599 to ptr
  %148 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %147) #5, !srcloc !84
  %149 = lshr i16 %148, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  %150 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool608.not = icmp eq i32 %151, 0
  br i1 %tobool608.not, label %cond.end594.cond.end624_crit_edge, label %cond.false620

cond.end594.cond.end624_crit_edge:                ; preds = %cond.end594
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end624

cond.false620:                                    ; preds = %cond.end594
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %152(i32 noundef %151) #5
  br label %cond.end624

cond.end624:                                      ; preds = %cond.false620, %cond.end594.cond.end624_crit_edge
  %153 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %port367, align 4
  %add627 = add i32 %154, 1
  %and628 = and i32 %add627, 1048575
  %add629 = or i32 %and628, -18874368
  %155 = inttoptr i32 %add629 to ptr
  %156 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %155) #5, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  %157 = shl i16 %156, 4
  %158 = and i16 %157, 224
  %or6372529 = or i16 %158, %149
  %conv638 = trunc i16 %or6372529 to i8
  %mul639 = shl i32 %k.12563, 2
  %arrayidx640 = getelementptr i8, ptr %buf, i32 %mul639
  %159 = ptrtoint ptr %arrayidx640 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv638, ptr %arrayidx640, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void @arm_heavy_mb() #5
  %160 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %port367, align 4
  %and646 = and i32 %161, 1048575
  %add647 = or i32 %and646, -18874368
  %162 = inttoptr i32 %add647 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %162, i8 -72) #5, !srcloc !50
  %163 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool650.not = icmp eq i32 %164, 0
  br i1 %tobool650.not, label %cond.end624.cond.end684_crit_edge, label %cond.false662

cond.end624.cond.end684_crit_edge:                ; preds = %cond.end624
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end684

cond.false662:                                    ; preds = %cond.end624
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %165 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %165(i32 noundef %164) #5
  %166 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %166)
  %.pr2544 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2544)
  %tobool668.not = icmp eq i32 %.pr2544, 0
  br i1 %tobool668.not, label %cond.false662.cond.end684_crit_edge, label %cond.false680

cond.false662.cond.end684_crit_edge:              ; preds = %cond.false662
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end684

cond.false680:                                    ; preds = %cond.false662
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %167(i32 noundef %.pr2544) #5
  br label %cond.end684

cond.end684:                                      ; preds = %cond.false680, %cond.false662.cond.end684_crit_edge, %cond.end624.cond.end684_crit_edge
  %168 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %port367, align 4
  %add687 = add i32 %169, 1
  %and688 = and i32 %add687, 1048575
  %add689 = or i32 %and688, -18874368
  %170 = inttoptr i32 %add689 to ptr
  %171 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %170) #5, !srcloc !84
  %172 = lshr i16 %171, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  %173 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool698.not = icmp eq i32 %174, 0
  br i1 %tobool698.not, label %cond.end684.cond.end714_crit_edge, label %cond.false710

cond.end684.cond.end714_crit_edge:                ; preds = %cond.end684
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end714

cond.false710:                                    ; preds = %cond.end684
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %175 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %175(i32 noundef %174) #5
  br label %cond.end714

cond.end714:                                      ; preds = %cond.false710, %cond.end684.cond.end714_crit_edge
  %176 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %port367, align 4
  %add717 = add i32 %177, 1
  %and718 = and i32 %add717, 1048575
  %add719 = or i32 %and718, -18874368
  %178 = inttoptr i32 %add719 to ptr
  %179 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %178) #5, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !171
  %180 = shl i16 %179, 4
  %181 = and i16 %180, 224
  %or7272530 = or i16 %181, %172
  %conv728 = trunc i16 %or7272530 to i8
  %add730 = or i32 %mul639, 1
  %arrayidx731 = getelementptr i8, ptr %buf, i32 %add730
  %182 = ptrtoint ptr %arrayidx731 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %conv728, ptr %arrayidx731, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !172
  tail call void @arm_heavy_mb() #5
  %183 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %port367, align 4
  %add736 = add i32 %184, 2
  %and737 = and i32 %add736, 1048575
  %add738 = or i32 %and737, -18874368
  %185 = inttoptr i32 %add738 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %185, i8 4) #5, !srcloc !50
  %186 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool741.not = icmp eq i32 %187, 0
  br i1 %tobool741.not, label %cond.end714.do.body758_crit_edge, label %cond.false753

cond.end714.do.body758_crit_edge:                 ; preds = %cond.end714
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body758

cond.false753:                                    ; preds = %cond.end714
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %188 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %188(i32 noundef %187) #5
  br label %do.body758

do.body758:                                       ; preds = %cond.false753, %cond.end714.do.body758_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  tail call void @arm_heavy_mb() #5
  %189 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %port367, align 4
  %add762 = add i32 %190, 2
  %and763 = and i32 %add762, 1048575
  %add764 = or i32 %and763, -18874368
  %191 = inttoptr i32 %add764 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %191, i8 5) #5, !srcloc !50
  %192 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool767.not = icmp eq i32 %193, 0
  br i1 %tobool767.not, label %do.body758.cond.end801_crit_edge, label %cond.false779

do.body758.cond.end801_crit_edge:                 ; preds = %do.body758
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end801

cond.false779:                                    ; preds = %do.body758
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %194 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %194(i32 noundef %193) #5
  %195 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %195)
  %.pr2546 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2546)
  %tobool785.not = icmp eq i32 %.pr2546, 0
  br i1 %tobool785.not, label %cond.false779.cond.end801_crit_edge, label %cond.false797

cond.false779.cond.end801_crit_edge:              ; preds = %cond.false779
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end801

cond.false797:                                    ; preds = %cond.false779
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %196 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %196(i32 noundef %.pr2546) #5
  br label %cond.end801

cond.end801:                                      ; preds = %cond.false797, %cond.false779.cond.end801_crit_edge, %do.body758.cond.end801_crit_edge
  %197 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %port367, align 4
  %add804 = add i32 %198, 1
  %and805 = and i32 %add804, 1048575
  %add806 = or i32 %and805, -18874368
  %199 = inttoptr i32 %add806 to ptr
  %200 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %199) #5, !srcloc !84
  %201 = lshr i16 %200, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !174
  %202 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool815.not = icmp eq i32 %203, 0
  br i1 %tobool815.not, label %cond.end801.cond.end831_crit_edge, label %cond.false827

cond.end801.cond.end831_crit_edge:                ; preds = %cond.end801
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end831

cond.false827:                                    ; preds = %cond.end801
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %204 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %204(i32 noundef %203) #5
  br label %cond.end831

cond.end831:                                      ; preds = %cond.false827, %cond.end801.cond.end831_crit_edge
  %205 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %port367, align 4
  %add834 = add i32 %206, 1
  %and835 = and i32 %add834, 1048575
  %add836 = or i32 %and835, -18874368
  %207 = inttoptr i32 %add836 to ptr
  %208 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %207) #5, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !175
  %209 = shl i16 %208, 4
  %210 = and i16 %209, 224
  %or8442531 = or i16 %210, %201
  %conv845 = trunc i16 %or8442531 to i8
  %add847 = or i32 %mul639, 3
  %arrayidx848 = getelementptr i8, ptr %buf, i32 %add847
  %211 = ptrtoint ptr %arrayidx848 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %conv845, ptr %arrayidx848, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !176
  tail call void @arm_heavy_mb() #5
  %212 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %port367, align 4
  %and854 = and i32 %213, 1048575
  %add855 = or i32 %and854, -18874368
  %214 = inttoptr i32 %add855 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %214, i8 8) #5, !srcloc !50
  %215 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool858.not = icmp eq i32 %216, 0
  br i1 %tobool858.not, label %cond.end831.cond.end892_crit_edge, label %cond.false870

cond.end831.cond.end892_crit_edge:                ; preds = %cond.end831
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end892

cond.false870:                                    ; preds = %cond.end831
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %217 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %217(i32 noundef %216) #5
  %218 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %218)
  %.pr2548 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2548)
  %tobool876.not = icmp eq i32 %.pr2548, 0
  br i1 %tobool876.not, label %cond.false870.cond.end892_crit_edge, label %cond.false888

cond.false870.cond.end892_crit_edge:              ; preds = %cond.false870
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end892

cond.false888:                                    ; preds = %cond.false870
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %219 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %219(i32 noundef %.pr2548) #5
  br label %cond.end892

cond.end892:                                      ; preds = %cond.false888, %cond.false870.cond.end892_crit_edge, %cond.end831.cond.end892_crit_edge
  %220 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %port367, align 4
  %add895 = add i32 %221, 1
  %and896 = and i32 %add895, 1048575
  %add897 = or i32 %and896, -18874368
  %222 = inttoptr i32 %add897 to ptr
  %223 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %222) #5, !srcloc !84
  %224 = lshr i16 %223, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !177
  %225 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool906.not = icmp eq i32 %226, 0
  br i1 %tobool906.not, label %cond.end892.cond.end922_crit_edge, label %cond.false918

cond.end892.cond.end922_crit_edge:                ; preds = %cond.end892
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end922

cond.false918:                                    ; preds = %cond.end892
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %227 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %227(i32 noundef %226) #5
  br label %cond.end922

cond.end922:                                      ; preds = %cond.false918, %cond.end892.cond.end922_crit_edge
  %228 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %port367, align 4
  %add925 = add i32 %229, 1
  %and926 = and i32 %add925, 1048575
  %add927 = or i32 %and926, -18874368
  %230 = inttoptr i32 %add927 to ptr
  %231 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %230) #5, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !178
  %232 = shl i16 %231, 4
  %233 = and i16 %232, 224
  %or9352532 = or i16 %233, %224
  %conv936 = trunc i16 %or9352532 to i8
  %add938 = or i32 %mul639, 2
  %arrayidx939 = getelementptr i8, ptr %buf, i32 %add938
  %234 = ptrtoint ptr %arrayidx939 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %conv936, ptr %arrayidx939, align 1
  %inc941 = add nuw nsw i32 %k.12563, 1
  %exitcond2569.not = icmp eq i32 %inc941, %div469
  br i1 %exitcond2569.not, label %cond.end922.do.body943_crit_edge, label %cond.end922.do.body473_crit_edge

cond.end922.do.body473_crit_edge:                 ; preds = %cond.end922
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body473

cond.end922.do.body943_crit_edge:                 ; preds = %cond.end922
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body943

do.body943:                                       ; preds = %cond.end922.do.body943_crit_edge, %cond.end467.do.body943_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !179
  tail call void @arm_heavy_mb() #5
  %235 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %port367, align 4
  %add947 = add i32 %236, 2
  %and948 = and i32 %add947, 1048575
  %add949 = or i32 %and948, -18874368
  %237 = inttoptr i32 %add949 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %237, i8 4) #5, !srcloc !50
  %238 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool952.not = icmp eq i32 %239, 0
  br i1 %tobool952.not, label %do.body943.sw.epilog_crit_edge, label %do.body943.sw.epilog.sink.split_crit_edge

do.body943.sw.epilog.sink.split_crit_edge:        ; preds = %do.body943
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body943.sw.epilog_crit_edge:                   ; preds = %do.body943
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body970:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !180
  tail call void @arm_heavy_mb() #5
  %port973 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %240 = ptrtoint ptr %port973 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %port973, align 4
  %and975 = and i32 %241, 1048575
  %add976 = or i32 %and975, -18874368
  %242 = inttoptr i32 %add976 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %242, i8 -120) #5, !srcloc !50
  %delay978 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %243 = ptrtoint ptr %delay978 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %delay978, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %tobool979.not = icmp eq i32 %244, 0
  br i1 %tobool979.not, label %do.body970.do.body996_crit_edge, label %cond.false991

do.body970.do.body996_crit_edge:                  ; preds = %do.body970
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body996

cond.false991:                                    ; preds = %do.body970
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %245 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %245(i32 noundef %244) #5
  br label %do.body996

do.body996:                                       ; preds = %cond.false991, %do.body970.do.body996_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %246 = ptrtoint ptr %port973 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %port973, align 4
  %add1000 = add i32 %247, 2
  %and1001 = and i32 %add1000, 1048575
  %add1002 = or i32 %and1001, -18874368
  %248 = inttoptr i32 %add1002 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %248, i8 4) #5, !srcloc !50
  %249 = ptrtoint ptr %delay978 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %delay978, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool1005.not = icmp eq i32 %250, 0
  br i1 %tobool1005.not, label %do.body996.do.body1022_crit_edge, label %cond.false1017

do.body996.do.body1022_crit_edge:                 ; preds = %do.body996
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1022

cond.false1017:                                   ; preds = %do.body996
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %251 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %251(i32 noundef %250) #5
  br label %do.body1022

do.body1022:                                      ; preds = %cond.false1017, %do.body996.do.body1022_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !182
  tail call void @arm_heavy_mb() #5
  %252 = ptrtoint ptr %port973 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %port973, align 4
  %add1026 = add i32 %253, 2
  %and1027 = and i32 %add1026, 1048575
  %add1028 = or i32 %and1027, -18874368
  %254 = inttoptr i32 %add1028 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %254, i8 6) #5, !srcloc !50
  %255 = ptrtoint ptr %delay978 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %delay978, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool1031.not = icmp eq i32 %256, 0
  br i1 %tobool1031.not, label %do.body1022.do.body1048_crit_edge, label %cond.false1043

do.body1022.do.body1048_crit_edge:                ; preds = %do.body1022
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1048

cond.false1043:                                   ; preds = %do.body1022
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %257 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %257(i32 noundef %256) #5
  br label %do.body1048

do.body1048:                                      ; preds = %cond.false1043, %do.body1022.do.body1048_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !183
  tail call void @arm_heavy_mb() #5
  %258 = ptrtoint ptr %port973 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %port973, align 4
  %add1052 = add i32 %259, 2
  %and1053 = and i32 %add1052, 1048575
  %add1054 = or i32 %and1053, -18874368
  %260 = inttoptr i32 %add1054 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %260, i8 4) #5, !srcloc !50
  %261 = ptrtoint ptr %delay978 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %delay978, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %tobool1057.not = icmp eq i32 %262, 0
  br i1 %tobool1057.not, label %do.body1048.cond.end1073_crit_edge, label %cond.false1069

do.body1048.cond.end1073_crit_edge:               ; preds = %do.body1048
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1073

cond.false1069:                                   ; preds = %do.body1048
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %263 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %263(i32 noundef %262) #5
  br label %cond.end1073

cond.end1073:                                     ; preds = %cond.false1069, %do.body1048.cond.end1073_crit_edge
  %div1075 = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp10762560 = icmp sgt i32 %count, 1
  br i1 %cmp10762560, label %cond.end1073.do.body1079_crit_edge, label %cond.end1073.do.body1223_crit_edge

cond.end1073.do.body1223_crit_edge:               ; preds = %cond.end1073
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1223

cond.end1073.do.body1079_crit_edge:               ; preds = %cond.end1073
  br label %do.body1079

do.body1079:                                      ; preds = %cond.end1205.do.body1079_crit_edge, %cond.end1073.do.body1079_crit_edge
  %k.22561 = phi i32 [ %inc1221, %cond.end1205.do.body1079_crit_edge ], [ 0, %cond.end1073.do.body1079_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !184
  tail call void @arm_heavy_mb() #5
  %264 = ptrtoint ptr %port973 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %port973, align 4
  %add1083 = add i32 %265, 2
  %and1084 = and i32 %add1083, 1048575
  %add1085 = or i32 %and1084, -18874368
  %266 = inttoptr i32 %add1085 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %266, i8 -96) #5, !srcloc !50
  %267 = ptrtoint ptr %delay978 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %delay978, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %tobool1088.not = icmp eq i32 %268, 0
  br i1 %tobool1088.not, label %do.body1079.do.body1105_crit_edge, label %cond.false1100

do.body1079.do.body1105_crit_edge:                ; preds = %do.body1079
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1105

cond.false1100:                                   ; preds = %do.body1079
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %269 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %269(i32 noundef %268) #5
  br label %do.body1105

do.body1105:                                      ; preds = %cond.false1100, %do.body1079.do.body1105_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !185
  tail call void @arm_heavy_mb() #5
  %270 = ptrtoint ptr %port973 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %port973, align 4
  %add1109 = add i32 %271, 2
  %and1110 = and i32 %add1109, 1048575
  %add1111 = or i32 %and1110, -18874368
  %272 = inttoptr i32 %add1111 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %272, i8 -95) #5, !srcloc !50
  %273 = ptrtoint ptr %delay978 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %delay978, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %tobool1114.not = icmp eq i32 %274, 0
  br i1 %tobool1114.not, label %do.body1105.cond.end1148_crit_edge, label %cond.false1126

do.body1105.cond.end1148_crit_edge:               ; preds = %do.body1105
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1148

cond.false1126:                                   ; preds = %do.body1105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %275 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %275(i32 noundef %274) #5
  %276 = ptrtoint ptr %delay978 to i32
  call void @__asan_load4_noabort(i32 %276)
  %.pr2550 = load i32, ptr %delay978, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2550)
  %tobool1132.not = icmp eq i32 %.pr2550, 0
  br i1 %tobool1132.not, label %cond.false1126.cond.end1148_crit_edge, label %cond.false1144

cond.false1126.cond.end1148_crit_edge:            ; preds = %cond.false1126
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1148

cond.false1144:                                   ; preds = %cond.false1126
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %277 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %277(i32 noundef %.pr2550) #5
  br label %cond.end1148

cond.end1148:                                     ; preds = %cond.false1144, %cond.false1126.cond.end1148_crit_edge, %do.body1105.cond.end1148_crit_edge
  %278 = ptrtoint ptr %port973 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %port973, align 4
  %and1152 = and i32 %279, 1048575
  %add1153 = or i32 %and1152, -18874368
  %280 = inttoptr i32 %add1153 to ptr
  %281 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %280) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !186
  %mul1160 = shl nuw i32 %k.22561, 1
  %arrayidx1161 = getelementptr i8, ptr %buf, i32 %mul1160
  %282 = ptrtoint ptr %arrayidx1161 to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 %281, ptr %arrayidx1161, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !187
  tail call void @arm_heavy_mb() #5
  %283 = ptrtoint ptr %port973 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %port973, align 4
  %add1166 = add i32 %284, 2
  %and1167 = and i32 %add1166, 1048575
  %add1168 = or i32 %and1167, -18874368
  %285 = inttoptr i32 %add1168 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %285, i8 -91) #5, !srcloc !50
  %286 = ptrtoint ptr %delay978 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %delay978, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %tobool1171.not = icmp eq i32 %287, 0
  br i1 %tobool1171.not, label %cond.end1148.cond.end1205_crit_edge, label %cond.false1183

cond.end1148.cond.end1205_crit_edge:              ; preds = %cond.end1148
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1205

cond.false1183:                                   ; preds = %cond.end1148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %288 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %288(i32 noundef %287) #5
  %289 = ptrtoint ptr %delay978 to i32
  call void @__asan_load4_noabort(i32 %289)
  %.pr2552 = load i32, ptr %delay978, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2552)
  %tobool1189.not = icmp eq i32 %.pr2552, 0
  br i1 %tobool1189.not, label %cond.false1183.cond.end1205_crit_edge, label %cond.false1201

cond.false1183.cond.end1205_crit_edge:            ; preds = %cond.false1183
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1205

cond.false1201:                                   ; preds = %cond.false1183
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %290 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %290(i32 noundef %.pr2552) #5
  br label %cond.end1205

cond.end1205:                                     ; preds = %cond.false1201, %cond.false1183.cond.end1205_crit_edge, %cond.end1148.cond.end1205_crit_edge
  %291 = ptrtoint ptr %port973 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %port973, align 4
  %and1209 = and i32 %292, 1048575
  %add1210 = or i32 %and1209, -18874368
  %293 = inttoptr i32 %add1210 to ptr
  %294 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %293) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !188
  %add1218 = or i32 %mul1160, 1
  %arrayidx1219 = getelementptr i8, ptr %buf, i32 %add1218
  %295 = ptrtoint ptr %arrayidx1219 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %294, ptr %arrayidx1219, align 1
  %inc1221 = add nuw nsw i32 %k.22561, 1
  %exitcond2568.not = icmp eq i32 %inc1221, %div1075
  br i1 %exitcond2568.not, label %cond.end1205.do.body1223_crit_edge, label %cond.end1205.do.body1079_crit_edge

cond.end1205.do.body1079_crit_edge:               ; preds = %cond.end1205
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1079

cond.end1205.do.body1223_crit_edge:               ; preds = %cond.end1205
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1223

do.body1223:                                      ; preds = %cond.end1205.do.body1223_crit_edge, %cond.end1073.do.body1223_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !189
  tail call void @arm_heavy_mb() #5
  %296 = ptrtoint ptr %port973 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %port973, align 4
  %add1227 = add i32 %297, 2
  %and1228 = and i32 %add1227, 1048575
  %add1229 = or i32 %and1228, -18874368
  %298 = inttoptr i32 %add1229 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %298, i8 4) #5, !srcloc !50
  %299 = ptrtoint ptr %delay978 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %delay978, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %300)
  %tobool1232.not = icmp eq i32 %300, 0
  br i1 %tobool1232.not, label %do.body1223.sw.epilog_crit_edge, label %do.body1223.sw.epilog.sink.split_crit_edge

do.body1223.sw.epilog.sink.split_crit_edge:       ; preds = %do.body1223
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body1223.sw.epilog_crit_edge:                  ; preds = %do.body1223
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body1250:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !190
  tail call void @arm_heavy_mb() #5
  %port1253 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %301 = ptrtoint ptr %port1253 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %port1253, align 4
  %and1255 = and i32 %302, 1048575
  %add1256 = or i32 %and1255, -18874368
  %303 = inttoptr i32 %add1256 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %303, i8 -96) #5, !srcloc !50
  %delay1258 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %304 = ptrtoint ptr %delay1258 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %delay1258, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %tobool1259.not = icmp eq i32 %305, 0
  br i1 %tobool1259.not, label %do.body1250.do.body1276_crit_edge, label %cond.false1271

do.body1250.do.body1276_crit_edge:                ; preds = %do.body1250
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1276

cond.false1271:                                   ; preds = %do.body1250
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %306 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %306(i32 noundef %305) #5
  br label %do.body1276

do.body1276:                                      ; preds = %cond.false1271, %do.body1250.do.body1276_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !191
  tail call void @arm_heavy_mb() #5
  %307 = ptrtoint ptr %port1253 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %port1253, align 4
  %add1280 = add i32 %308, 2
  %and1281 = and i32 %add1280, 1048575
  %add1282 = or i32 %and1281, -18874368
  %309 = inttoptr i32 %add1282 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %309, i8 4) #5, !srcloc !50
  %310 = ptrtoint ptr %delay1258 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %delay1258, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %tobool1285.not = icmp eq i32 %311, 0
  br i1 %tobool1285.not, label %do.body1276.do.body1302_crit_edge, label %cond.false1297

do.body1276.do.body1302_crit_edge:                ; preds = %do.body1276
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1302

cond.false1297:                                   ; preds = %do.body1276
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %312 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %312(i32 noundef %311) #5
  br label %do.body1302

do.body1302:                                      ; preds = %cond.false1297, %do.body1276.do.body1302_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !192
  tail call void @arm_heavy_mb() #5
  %313 = ptrtoint ptr %port1253 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %port1253, align 4
  %add1306 = add i32 %314, 2
  %and1307 = and i32 %add1306, 1048575
  %add1308 = or i32 %and1307, -18874368
  %315 = inttoptr i32 %add1308 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %315, i8 6) #5, !srcloc !50
  %316 = ptrtoint ptr %delay1258 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %delay1258, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %tobool1311.not = icmp eq i32 %317, 0
  br i1 %tobool1311.not, label %do.body1302.do.body1328_crit_edge, label %cond.false1323

do.body1302.do.body1328_crit_edge:                ; preds = %do.body1302
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1328

cond.false1323:                                   ; preds = %do.body1302
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %318 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %318(i32 noundef %317) #5
  br label %do.body1328

do.body1328:                                      ; preds = %cond.false1323, %do.body1302.do.body1328_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !193
  tail call void @arm_heavy_mb() #5
  %319 = ptrtoint ptr %port1253 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %port1253, align 4
  %add1332 = add i32 %320, 2
  %and1333 = and i32 %add1332, 1048575
  %add1334 = or i32 %and1333, -18874368
  %321 = inttoptr i32 %add1334 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %321, i8 4) #5, !srcloc !50
  %322 = ptrtoint ptr %delay1258 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %delay1258, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %tobool1337.not = icmp eq i32 %323, 0
  br i1 %tobool1337.not, label %do.body1328.do.body1354_crit_edge, label %cond.false1349

do.body1328.do.body1354_crit_edge:                ; preds = %do.body1328
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1354

cond.false1349:                                   ; preds = %do.body1328
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %324 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %324(i32 noundef %323) #5
  br label %do.body1354

do.body1354:                                      ; preds = %cond.false1349, %do.body1328.do.body1354_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !194
  tail call void @arm_heavy_mb() #5
  %325 = ptrtoint ptr %port1253 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %port1253, align 4
  %add1358 = add i32 %326, 3
  %and1359 = and i32 %add1358, 1048575
  %add1360 = or i32 %and1359, -18874368
  %327 = inttoptr i32 %add1360 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %327, i8 0) #5, !srcloc !50
  %328 = ptrtoint ptr %delay1258 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %delay1258, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %329)
  %tobool1363.not = icmp eq i32 %329, 0
  br i1 %tobool1363.not, label %do.body1354.cond.end1379_crit_edge, label %cond.false1375

do.body1354.cond.end1379_crit_edge:               ; preds = %do.body1354
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1379

cond.false1375:                                   ; preds = %do.body1354
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %330 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %330(i32 noundef %329) #5
  br label %cond.end1379

cond.end1379:                                     ; preds = %cond.false1375, %do.body1354.cond.end1379_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp13812558 = icmp sgt i32 %count, 0
  br i1 %cmp13812558, label %cond.end1379.for.body1383_crit_edge, label %cond.end1379.do.body1417_crit_edge

cond.end1379.do.body1417_crit_edge:               ; preds = %cond.end1379
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1417

cond.end1379.for.body1383_crit_edge:              ; preds = %cond.end1379
  br label %for.body1383

for.body1383:                                     ; preds = %cond.end1401.for.body1383_crit_edge, %cond.end1379.for.body1383_crit_edge
  %k.32559 = phi i32 [ %inc1415, %cond.end1401.for.body1383_crit_edge ], [ 0, %cond.end1379.for.body1383_crit_edge ]
  %331 = ptrtoint ptr %delay1258 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %delay1258, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %332)
  %tobool1385.not = icmp eq i32 %332, 0
  br i1 %tobool1385.not, label %for.body1383.cond.end1401_crit_edge, label %cond.false1397

for.body1383.cond.end1401_crit_edge:              ; preds = %for.body1383
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1401

cond.false1397:                                   ; preds = %for.body1383
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %333 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %333(i32 noundef %332) #5
  br label %cond.end1401

cond.end1401:                                     ; preds = %cond.false1397, %for.body1383.cond.end1401_crit_edge
  %334 = ptrtoint ptr %port1253 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %port1253, align 4
  %add1404 = add i32 %335, 4
  %and1405 = and i32 %add1404, 1048575
  %add1406 = or i32 %and1405, -18874368
  %336 = inttoptr i32 %add1406 to ptr
  %337 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %336) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !195
  %arrayidx1413 = getelementptr i8, ptr %buf, i32 %k.32559
  %338 = ptrtoint ptr %arrayidx1413 to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 %337, ptr %arrayidx1413, align 1
  %inc1415 = add nuw nsw i32 %k.32559, 1
  %exitcond2567.not = icmp eq i32 %inc1415, %count
  br i1 %exitcond2567.not, label %cond.end1401.do.body1417_crit_edge, label %cond.end1401.for.body1383_crit_edge

cond.end1401.for.body1383_crit_edge:              ; preds = %cond.end1401
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body1383

cond.end1401.do.body1417_crit_edge:               ; preds = %cond.end1401
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1417

do.body1417:                                      ; preds = %cond.end1401.do.body1417_crit_edge, %cond.end1379.do.body1417_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !196
  tail call void @arm_heavy_mb() #5
  %339 = ptrtoint ptr %port1253 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %port1253, align 4
  %add1421 = add i32 %340, 2
  %and1422 = and i32 %add1421, 1048575
  %add1423 = or i32 %and1422, -18874368
  %341 = inttoptr i32 %add1423 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %341, i8 4) #5, !srcloc !50
  %342 = ptrtoint ptr %delay1258 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %delay1258, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %343)
  %tobool1426.not = icmp eq i32 %343, 0
  br i1 %tobool1426.not, label %do.body1417.do.body1443_crit_edge, label %cond.false1438

do.body1417.do.body1443_crit_edge:                ; preds = %do.body1417
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1443

cond.false1438:                                   ; preds = %do.body1417
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %344 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %344(i32 noundef %343) #5
  br label %do.body1443

do.body1443:                                      ; preds = %cond.false1438, %do.body1417.do.body1443_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !197
  tail call void @arm_heavy_mb() #5
  %345 = ptrtoint ptr %port1253 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %port1253, align 4
  %add1447 = add i32 %346, 2
  %and1448 = and i32 %add1447, 1048575
  %add1449 = or i32 %and1448, -18874368
  %347 = inttoptr i32 %add1449 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %347, i8 0) #5, !srcloc !50
  %348 = ptrtoint ptr %delay1258 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %delay1258, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %349)
  %tobool1452.not = icmp eq i32 %349, 0
  br i1 %tobool1452.not, label %do.body1443.do.body1469_crit_edge, label %cond.false1464

do.body1443.do.body1469_crit_edge:                ; preds = %do.body1443
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1469

cond.false1464:                                   ; preds = %do.body1443
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %350 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %350(i32 noundef %349) #5
  br label %do.body1469

do.body1469:                                      ; preds = %cond.false1464, %do.body1443.do.body1469_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !198
  tail call void @arm_heavy_mb() #5
  %351 = ptrtoint ptr %port1253 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %port1253, align 4
  %add1473 = add i32 %352, 2
  %and1474 = and i32 %add1473, 1048575
  %add1475 = or i32 %and1474, -18874368
  %353 = inttoptr i32 %add1475 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %353, i8 4) #5, !srcloc !50
  %354 = ptrtoint ptr %delay1258 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %delay1258, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %355)
  %tobool1478.not = icmp eq i32 %355, 0
  br i1 %tobool1478.not, label %do.body1469.sw.epilog_crit_edge, label %do.body1469.sw.epilog.sink.split_crit_edge

do.body1469.sw.epilog.sink.split_crit_edge:       ; preds = %do.body1469
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body1469.sw.epilog_crit_edge:                  ; preds = %do.body1469
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body1496:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !199
  tail call void @arm_heavy_mb() #5
  %port1499 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %356 = ptrtoint ptr %port1499 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %port1499, align 4
  %and1501 = and i32 %357, 1048575
  %add1502 = or i32 %and1501, -18874368
  %358 = inttoptr i32 %add1502 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %358, i8 -96) #5, !srcloc !50
  %delay1504 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %359 = ptrtoint ptr %delay1504 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %delay1504, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %360)
  %tobool1505.not = icmp eq i32 %360, 0
  br i1 %tobool1505.not, label %do.body1496.do.body1522_crit_edge, label %cond.false1517

do.body1496.do.body1522_crit_edge:                ; preds = %do.body1496
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1522

cond.false1517:                                   ; preds = %do.body1496
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %361 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %361(i32 noundef %360) #5
  br label %do.body1522

do.body1522:                                      ; preds = %cond.false1517, %do.body1496.do.body1522_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !200
  tail call void @arm_heavy_mb() #5
  %362 = ptrtoint ptr %port1499 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %port1499, align 4
  %add1526 = add i32 %363, 2
  %and1527 = and i32 %add1526, 1048575
  %add1528 = or i32 %and1527, -18874368
  %364 = inttoptr i32 %add1528 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %364, i8 4) #5, !srcloc !50
  %365 = ptrtoint ptr %delay1504 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %delay1504, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %366)
  %tobool1531.not = icmp eq i32 %366, 0
  br i1 %tobool1531.not, label %do.body1522.do.body1548_crit_edge, label %cond.false1543

do.body1522.do.body1548_crit_edge:                ; preds = %do.body1522
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1548

cond.false1543:                                   ; preds = %do.body1522
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %367 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %367(i32 noundef %366) #5
  br label %do.body1548

do.body1548:                                      ; preds = %cond.false1543, %do.body1522.do.body1548_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  tail call void @arm_heavy_mb() #5
  %368 = ptrtoint ptr %port1499 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %port1499, align 4
  %add1552 = add i32 %369, 2
  %and1553 = and i32 %add1552, 1048575
  %add1554 = or i32 %and1553, -18874368
  %370 = inttoptr i32 %add1554 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %370, i8 6) #5, !srcloc !50
  %371 = ptrtoint ptr %delay1504 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %delay1504, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %372)
  %tobool1557.not = icmp eq i32 %372, 0
  br i1 %tobool1557.not, label %do.body1548.do.body1574_crit_edge, label %cond.false1569

do.body1548.do.body1574_crit_edge:                ; preds = %do.body1548
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1574

cond.false1569:                                   ; preds = %do.body1548
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %373 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %373(i32 noundef %372) #5
  br label %do.body1574

do.body1574:                                      ; preds = %cond.false1569, %do.body1548.do.body1574_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %374 = ptrtoint ptr %port1499 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %port1499, align 4
  %add1578 = add i32 %375, 2
  %and1579 = and i32 %add1578, 1048575
  %add1580 = or i32 %and1579, -18874368
  %376 = inttoptr i32 %add1580 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %376, i8 4) #5, !srcloc !50
  %377 = ptrtoint ptr %delay1504 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %delay1504, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %378)
  %tobool1583.not = icmp eq i32 %378, 0
  br i1 %tobool1583.not, label %do.body1574.do.body1600_crit_edge, label %cond.false1595

do.body1574.do.body1600_crit_edge:                ; preds = %do.body1574
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1600

cond.false1595:                                   ; preds = %do.body1574
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %379 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %379(i32 noundef %378) #5
  br label %do.body1600

do.body1600:                                      ; preds = %cond.false1595, %do.body1574.do.body1600_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !203
  tail call void @arm_heavy_mb() #5
  %380 = ptrtoint ptr %port1499 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %port1499, align 4
  %add1604 = add i32 %381, 3
  %and1605 = and i32 %add1604, 1048575
  %add1606 = or i32 %and1605, -18874368
  %382 = inttoptr i32 %add1606 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %382, i8 0) #5, !srcloc !50
  %383 = ptrtoint ptr %delay1504 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %delay1504, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %384)
  %tobool1609.not = icmp eq i32 %384, 0
  br i1 %tobool1609.not, label %do.body1600.cond.end1625_crit_edge, label %cond.false1621

do.body1600.cond.end1625_crit_edge:               ; preds = %do.body1600
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1625

cond.false1621:                                   ; preds = %do.body1600
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %385 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %385(i32 noundef %384) #5
  br label %cond.end1625

cond.end1625:                                     ; preds = %cond.false1621, %do.body1600.cond.end1625_crit_edge
  %div1627 = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp16282556 = icmp sgt i32 %count, 1
  br i1 %cmp16282556, label %cond.end1625.for.body1630_crit_edge, label %cond.end1625.do.body1664_crit_edge

cond.end1625.do.body1664_crit_edge:               ; preds = %cond.end1625
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1664

cond.end1625.for.body1630_crit_edge:              ; preds = %cond.end1625
  br label %for.body1630

for.body1630:                                     ; preds = %cond.end1648.for.body1630_crit_edge, %cond.end1625.for.body1630_crit_edge
  %k.42557 = phi i32 [ %inc1662, %cond.end1648.for.body1630_crit_edge ], [ 0, %cond.end1625.for.body1630_crit_edge ]
  %386 = ptrtoint ptr %delay1504 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %delay1504, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %387)
  %tobool1632.not = icmp eq i32 %387, 0
  br i1 %tobool1632.not, label %for.body1630.cond.end1648_crit_edge, label %cond.false1644

for.body1630.cond.end1648_crit_edge:              ; preds = %for.body1630
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1648

cond.false1644:                                   ; preds = %for.body1630
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %388 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %388(i32 noundef %387) #5
  br label %cond.end1648

cond.end1648:                                     ; preds = %cond.false1644, %for.body1630.cond.end1648_crit_edge
  %389 = ptrtoint ptr %port1499 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %port1499, align 4
  %add1651 = add i32 %390, 4
  %and1652 = and i32 %add1651, 1048575
  %add1653 = or i32 %and1652, -18874368
  %391 = inttoptr i32 %add1653 to ptr
  %392 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %391) #5, !srcloc !84
  %393 = tail call i16 @llvm.bswap.i16(i16 %392)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !204
  %arrayidx1660 = getelementptr i16, ptr %buf, i32 %k.42557
  %394 = ptrtoint ptr %arrayidx1660 to i32
  call void @__asan_store2_noabort(i32 %394)
  store i16 %393, ptr %arrayidx1660, align 2
  %inc1662 = add nuw nsw i32 %k.42557, 1
  %exitcond2566.not = icmp eq i32 %inc1662, %div1627
  br i1 %exitcond2566.not, label %cond.end1648.do.body1664_crit_edge, label %cond.end1648.for.body1630_crit_edge

cond.end1648.for.body1630_crit_edge:              ; preds = %cond.end1648
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body1630

cond.end1648.do.body1664_crit_edge:               ; preds = %cond.end1648
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1664

do.body1664:                                      ; preds = %cond.end1648.do.body1664_crit_edge, %cond.end1625.do.body1664_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !205
  tail call void @arm_heavy_mb() #5
  %395 = ptrtoint ptr %port1499 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %port1499, align 4
  %add1668 = add i32 %396, 2
  %and1669 = and i32 %add1668, 1048575
  %add1670 = or i32 %and1669, -18874368
  %397 = inttoptr i32 %add1670 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %397, i8 4) #5, !srcloc !50
  %398 = ptrtoint ptr %delay1504 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %delay1504, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %399)
  %tobool1673.not = icmp eq i32 %399, 0
  br i1 %tobool1673.not, label %do.body1664.do.body1690_crit_edge, label %cond.false1685

do.body1664.do.body1690_crit_edge:                ; preds = %do.body1664
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1690

cond.false1685:                                   ; preds = %do.body1664
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %400 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %400(i32 noundef %399) #5
  br label %do.body1690

do.body1690:                                      ; preds = %cond.false1685, %do.body1664.do.body1690_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !206
  tail call void @arm_heavy_mb() #5
  %401 = ptrtoint ptr %port1499 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %port1499, align 4
  %add1694 = add i32 %402, 2
  %and1695 = and i32 %add1694, 1048575
  %add1696 = or i32 %and1695, -18874368
  %403 = inttoptr i32 %add1696 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %403, i8 0) #5, !srcloc !50
  %404 = ptrtoint ptr %delay1504 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %delay1504, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %405)
  %tobool1699.not = icmp eq i32 %405, 0
  br i1 %tobool1699.not, label %do.body1690.do.body1716_crit_edge, label %cond.false1711

do.body1690.do.body1716_crit_edge:                ; preds = %do.body1690
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1716

cond.false1711:                                   ; preds = %do.body1690
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %406 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %406(i32 noundef %405) #5
  br label %do.body1716

do.body1716:                                      ; preds = %cond.false1711, %do.body1690.do.body1716_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !207
  tail call void @arm_heavy_mb() #5
  %407 = ptrtoint ptr %port1499 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %port1499, align 4
  %add1720 = add i32 %408, 2
  %and1721 = and i32 %add1720, 1048575
  %add1722 = or i32 %and1721, -18874368
  %409 = inttoptr i32 %add1722 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %409, i8 4) #5, !srcloc !50
  %410 = ptrtoint ptr %delay1504 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %delay1504, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %411)
  %tobool1725.not = icmp eq i32 %411, 0
  br i1 %tobool1725.not, label %do.body1716.sw.epilog_crit_edge, label %do.body1716.sw.epilog.sink.split_crit_edge

do.body1716.sw.epilog.sink.split_crit_edge:       ; preds = %do.body1716
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body1716.sw.epilog_crit_edge:                  ; preds = %do.body1716
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body1743:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !208
  tail call void @arm_heavy_mb() #5
  %port1746 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %412 = ptrtoint ptr %port1746 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %port1746, align 4
  %and1748 = and i32 %413, 1048575
  %add1749 = or i32 %and1748, -18874368
  %414 = inttoptr i32 %add1749 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %414, i8 -96) #5, !srcloc !50
  %delay1751 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %415 = ptrtoint ptr %delay1751 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %delay1751, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %416)
  %tobool1752.not = icmp eq i32 %416, 0
  br i1 %tobool1752.not, label %do.body1743.do.body1769_crit_edge, label %cond.false1764

do.body1743.do.body1769_crit_edge:                ; preds = %do.body1743
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1769

cond.false1764:                                   ; preds = %do.body1743
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %417 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %417(i32 noundef %416) #5
  br label %do.body1769

do.body1769:                                      ; preds = %cond.false1764, %do.body1743.do.body1769_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !209
  tail call void @arm_heavy_mb() #5
  %418 = ptrtoint ptr %port1746 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %port1746, align 4
  %add1773 = add i32 %419, 2
  %and1774 = and i32 %add1773, 1048575
  %add1775 = or i32 %and1774, -18874368
  %420 = inttoptr i32 %add1775 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %420, i8 4) #5, !srcloc !50
  %421 = ptrtoint ptr %delay1751 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %delay1751, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %422)
  %tobool1778.not = icmp eq i32 %422, 0
  br i1 %tobool1778.not, label %do.body1769.do.body1795_crit_edge, label %cond.false1790

do.body1769.do.body1795_crit_edge:                ; preds = %do.body1769
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1795

cond.false1790:                                   ; preds = %do.body1769
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %423 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %423(i32 noundef %422) #5
  br label %do.body1795

do.body1795:                                      ; preds = %cond.false1790, %do.body1769.do.body1795_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !210
  tail call void @arm_heavy_mb() #5
  %424 = ptrtoint ptr %port1746 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %port1746, align 4
  %add1799 = add i32 %425, 2
  %and1800 = and i32 %add1799, 1048575
  %add1801 = or i32 %and1800, -18874368
  %426 = inttoptr i32 %add1801 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %426, i8 6) #5, !srcloc !50
  %427 = ptrtoint ptr %delay1751 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %delay1751, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %428)
  %tobool1804.not = icmp eq i32 %428, 0
  br i1 %tobool1804.not, label %do.body1795.do.body1821_crit_edge, label %cond.false1816

do.body1795.do.body1821_crit_edge:                ; preds = %do.body1795
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1821

cond.false1816:                                   ; preds = %do.body1795
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %429 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %429(i32 noundef %428) #5
  br label %do.body1821

do.body1821:                                      ; preds = %cond.false1816, %do.body1795.do.body1821_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !211
  tail call void @arm_heavy_mb() #5
  %430 = ptrtoint ptr %port1746 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %port1746, align 4
  %add1825 = add i32 %431, 2
  %and1826 = and i32 %add1825, 1048575
  %add1827 = or i32 %and1826, -18874368
  %432 = inttoptr i32 %add1827 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %432, i8 4) #5, !srcloc !50
  %433 = ptrtoint ptr %delay1751 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %delay1751, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %434)
  %tobool1830.not = icmp eq i32 %434, 0
  br i1 %tobool1830.not, label %do.body1821.do.body1847_crit_edge, label %cond.false1842

do.body1821.do.body1847_crit_edge:                ; preds = %do.body1821
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1847

cond.false1842:                                   ; preds = %do.body1821
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %435 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %435(i32 noundef %434) #5
  br label %do.body1847

do.body1847:                                      ; preds = %cond.false1842, %do.body1821.do.body1847_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !212
  tail call void @arm_heavy_mb() #5
  %436 = ptrtoint ptr %port1746 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %port1746, align 4
  %add1851 = add i32 %437, 3
  %and1852 = and i32 %add1851, 1048575
  %add1853 = or i32 %and1852, -18874368
  %438 = inttoptr i32 %add1853 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %438, i8 0) #5, !srcloc !50
  %439 = ptrtoint ptr %delay1751 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %delay1751, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %440)
  %tobool1856.not = icmp eq i32 %440, 0
  br i1 %tobool1856.not, label %do.body1847.cond.end1872_crit_edge, label %cond.false1868

do.body1847.cond.end1872_crit_edge:               ; preds = %do.body1847
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1872

cond.false1868:                                   ; preds = %do.body1847
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %441 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %441(i32 noundef %440) #5
  br label %cond.end1872

cond.end1872:                                     ; preds = %cond.false1868, %do.body1847.cond.end1872_crit_edge
  %div1874 = sdiv i32 %count, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp18752554 = icmp sgt i32 %count, 3
  br i1 %cmp18752554, label %cond.end1872.for.body1877_crit_edge, label %cond.end1872.do.body1909_crit_edge

cond.end1872.do.body1909_crit_edge:               ; preds = %cond.end1872
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1909

cond.end1872.for.body1877_crit_edge:              ; preds = %cond.end1872
  br label %for.body1877

for.body1877:                                     ; preds = %cond.end1895.for.body1877_crit_edge, %cond.end1872.for.body1877_crit_edge
  %k.52555 = phi i32 [ %inc1907, %cond.end1895.for.body1877_crit_edge ], [ 0, %cond.end1872.for.body1877_crit_edge ]
  %442 = ptrtoint ptr %delay1751 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %delay1751, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %443)
  %tobool1879.not = icmp eq i32 %443, 0
  br i1 %tobool1879.not, label %for.body1877.cond.end1895_crit_edge, label %cond.false1891

for.body1877.cond.end1895_crit_edge:              ; preds = %for.body1877
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1895

cond.false1891:                                   ; preds = %for.body1877
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %444 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %444(i32 noundef %443) #5
  br label %cond.end1895

cond.end1895:                                     ; preds = %cond.false1891, %for.body1877.cond.end1895_crit_edge
  %445 = ptrtoint ptr %port1746 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %port1746, align 4
  %add1898 = add i32 %446, 4
  %and1899 = and i32 %add1898, 1048575
  %add1900 = or i32 %and1899, -18874368
  %447 = inttoptr i32 %add1900 to ptr
  %448 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %447) #5, !srcloc !213
  %449 = tail call i32 @llvm.bswap.i32(i32 %448)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !214
  %arrayidx1905 = getelementptr i32, ptr %buf, i32 %k.52555
  %450 = ptrtoint ptr %arrayidx1905 to i32
  call void @__asan_store4_noabort(i32 %450)
  store i32 %449, ptr %arrayidx1905, align 4
  %inc1907 = add nuw nsw i32 %k.52555, 1
  %exitcond.not = icmp eq i32 %inc1907, %div1874
  br i1 %exitcond.not, label %cond.end1895.do.body1909_crit_edge, label %cond.end1895.for.body1877_crit_edge

cond.end1895.for.body1877_crit_edge:              ; preds = %cond.end1895
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body1877

cond.end1895.do.body1909_crit_edge:               ; preds = %cond.end1895
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1909

do.body1909:                                      ; preds = %cond.end1895.do.body1909_crit_edge, %cond.end1872.do.body1909_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !215
  tail call void @arm_heavy_mb() #5
  %451 = ptrtoint ptr %port1746 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %port1746, align 4
  %add1913 = add i32 %452, 2
  %and1914 = and i32 %add1913, 1048575
  %add1915 = or i32 %and1914, -18874368
  %453 = inttoptr i32 %add1915 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %453, i8 4) #5, !srcloc !50
  %454 = ptrtoint ptr %delay1751 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %delay1751, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %455)
  %tobool1918.not = icmp eq i32 %455, 0
  br i1 %tobool1918.not, label %do.body1909.do.body1935_crit_edge, label %cond.false1930

do.body1909.do.body1935_crit_edge:                ; preds = %do.body1909
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1935

cond.false1930:                                   ; preds = %do.body1909
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %456 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %456(i32 noundef %455) #5
  br label %do.body1935

do.body1935:                                      ; preds = %cond.false1930, %do.body1909.do.body1935_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  tail call void @arm_heavy_mb() #5
  %457 = ptrtoint ptr %port1746 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %port1746, align 4
  %add1939 = add i32 %458, 2
  %and1940 = and i32 %add1939, 1048575
  %add1941 = or i32 %and1940, -18874368
  %459 = inttoptr i32 %add1941 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %459, i8 0) #5, !srcloc !50
  %460 = ptrtoint ptr %delay1751 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %delay1751, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %461)
  %tobool1944.not = icmp eq i32 %461, 0
  br i1 %tobool1944.not, label %do.body1935.do.body1961_crit_edge, label %cond.false1956

do.body1935.do.body1961_crit_edge:                ; preds = %do.body1935
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1961

cond.false1956:                                   ; preds = %do.body1935
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %462 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %462(i32 noundef %461) #5
  br label %do.body1961

do.body1961:                                      ; preds = %cond.false1956, %do.body1935.do.body1961_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !217
  tail call void @arm_heavy_mb() #5
  %463 = ptrtoint ptr %port1746 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %port1746, align 4
  %add1965 = add i32 %464, 2
  %and1966 = and i32 %add1965, 1048575
  %add1967 = or i32 %and1966, -18874368
  %465 = inttoptr i32 %add1967 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %465, i8 4) #5, !srcloc !50
  %466 = ptrtoint ptr %delay1751 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %delay1751, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %467)
  %tobool1970.not = icmp eq i32 %467, 0
  br i1 %tobool1970.not, label %do.body1961.sw.epilog_crit_edge, label %do.body1961.sw.epilog.sink.split_crit_edge

do.body1961.sw.epilog.sink.split_crit_edge:       ; preds = %do.body1961
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body1961.sw.epilog_crit_edge:                  ; preds = %do.body1961
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body1961.sw.epilog.sink.split_crit_edge, %do.body1716.sw.epilog.sink.split_crit_edge, %do.body1469.sw.epilog.sink.split_crit_edge, %do.body1223.sw.epilog.sink.split_crit_edge, %do.body943.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %239, %do.body943.sw.epilog.sink.split_crit_edge ], [ %300, %do.body1223.sw.epilog.sink.split_crit_edge ], [ %355, %do.body1469.sw.epilog.sink.split_crit_edge ], [ %411, %do.body1716.sw.epilog.sink.split_crit_edge ], [ %467, %do.body1961.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %468 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %468(i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body1961.sw.epilog_crit_edge, %do.body1716.sw.epilog_crit_edge, %do.body1469.sw.epilog_crit_edge, %do.body1223.sw.epilog_crit_edge, %do.body943.sw.epilog_crit_edge, %for.inc.sw.epilog_crit_edge, %cond.end86.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k951_connect(ptr nocapture noundef %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %0 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cond.end10_crit_edge, label %cond.false6

entry.cond.end10_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end10

cond.false6:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %2(i32 noundef %1) #5
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false6, %entry.cond.end10_crit_edge
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add11 = or i32 %and, -18874368
  %5 = inttoptr i32 %add11 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !218
  %conv = zext i8 %6 to i32
  %saved_r0 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 7
  %7 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %saved_r0, align 4
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool15.not = icmp eq i32 %9, 0
  br i1 %tobool15.not, label %cond.end10.cond.end31_crit_edge, label %cond.false27

cond.end10.cond.end31_crit_edge:                  ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end31

cond.false27:                                     ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %9) #5
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false27, %cond.end10.cond.end31_crit_edge
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add34 = add i32 %12, 2
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %13 = inttoptr i32 %add36 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !219
  %conv40 = zext i8 %14 to i32
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %15 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv40, ptr %saved_r2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !220
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add43 = add i32 %17, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %18 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 4) #5, !srcloc !50
  %19 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool48.not = icmp eq i32 %20, 0
  br i1 %tobool48.not, label %cond.end31.cond.end64_crit_edge, label %cond.false60

cond.end31.cond.end64_crit_edge:                  ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end64

cond.false60:                                     ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %20) #5
  br label %cond.end64

cond.end64:                                       ; preds = %cond.false60, %cond.end31.cond.end64_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k951_disconnect(ptr nocapture noundef readonly %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !221
  tail call void @arm_heavy_mb() #5
  %saved_r0 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 7
  %0 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %saved_r0, align 4
  %conv = trunc i32 %1 to i8
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %and = and i32 %3, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #5, !srcloc !50
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %5 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.body13_crit_edge, label %cond.false8

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %7(i32 noundef %6) #5
  br label %do.body13

do.body13:                                        ; preds = %cond.false8, %entry.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !222
  tail call void @arm_heavy_mb() #5
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %8 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %saved_r2, align 4
  %conv15 = trunc i32 %9 to i8
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %add17 = add i32 %11, 2
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %12 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv15) #5, !srcloc !50
  %13 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool22.not = icmp eq i32 %14, 0
  br i1 %tobool22.not, label %do.body13.cond.end38_crit_edge, label %cond.false34

do.body13.cond.end38_crit_edge:                   ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end38

cond.false34:                                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %15(i32 noundef %14) #5
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false34, %do.body13.cond.end38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k951_log_adapter(ptr nocapture noundef readonly %pi, ptr nocapture noundef readnone %scratch, i32 noundef %verbose) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device.i = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 5
  %0 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device.i, align 4
  %port.i = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str, i32 noundef %3) #8
  %mode.i = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode.i, align 4
  %arrayidx.i = getelementptr [6 x ptr], ptr @__const.kbic_log_adapter.mode_string, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %delay.i = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %8 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay.i, align 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %5, ptr noundef %7, i32 noundef %9) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k971_connect(ptr nocapture noundef %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %0 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cond.end10_crit_edge, label %cond.false6

entry.cond.end10_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end10

cond.false6:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %2(i32 noundef %1) #5
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false6, %entry.cond.end10_crit_edge
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add11 = or i32 %and, -18874368
  %5 = inttoptr i32 %add11 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !223
  %conv = zext i8 %6 to i32
  %saved_r0 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 7
  %7 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %saved_r0, align 4
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool15.not = icmp eq i32 %9, 0
  br i1 %tobool15.not, label %cond.end10.cond.end31_crit_edge, label %cond.false27

cond.end10.cond.end31_crit_edge:                  ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end31

cond.false27:                                     ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %9) #5
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false27, %cond.end10.cond.end31_crit_edge
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add34 = add i32 %12, 2
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %13 = inttoptr i32 %add36 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #5, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !224
  %conv40 = zext i8 %14 to i32
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %15 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv40, ptr %saved_r2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !225
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add43 = add i32 %17, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %18 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 -60) #5, !srcloc !50
  %19 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool48.not = icmp eq i32 %20, 0
  br i1 %tobool48.not, label %cond.end31.do.body65_crit_edge, label %cond.false60

cond.end31.do.body65_crit_edge:                   ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body65

cond.false60:                                     ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %20) #5
  br label %do.body65

do.body65:                                        ; preds = %cond.false60, %cond.end31.do.body65_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %and69 = and i32 %23, 1048575
  %add70 = or i32 %and69, -18874368
  %24 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 -86) #5, !srcloc !50
  %25 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool73.not = icmp eq i32 %26, 0
  br i1 %tobool73.not, label %do.body65.do.body90_crit_edge, label %cond.false85

do.body65.do.body90_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body90

cond.false85:                                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %27(i32 noundef %26) #5
  br label %do.body90

do.body90:                                        ; preds = %cond.false85, %do.body65.do.body90_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %and94 = and i32 %29, 1048575
  %add95 = or i32 %and94, -18874368
  %30 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 85) #5, !srcloc !50
  %31 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool98.not = icmp eq i32 %32, 0
  br i1 %tobool98.not, label %do.body90.do.body115_crit_edge, label %cond.false110

do.body90.do.body115_crit_edge:                   ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body115

cond.false110:                                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %33(i32 noundef %32) #5
  br label %do.body115

do.body115:                                       ; preds = %cond.false110, %do.body90.do.body115_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !228
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %and119 = and i32 %35, 1048575
  %add120 = or i32 %and119, -18874368
  %36 = inttoptr i32 %add120 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 0) #5, !srcloc !50
  %37 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool123.not = icmp eq i32 %38, 0
  br i1 %tobool123.not, label %do.body115.do.body140_crit_edge, label %cond.false135

do.body115.do.body140_crit_edge:                  ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body140

cond.false135:                                    ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %39(i32 noundef %38) #5
  br label %do.body140

do.body140:                                       ; preds = %cond.false135, %do.body115.do.body140_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !229
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %and144 = and i32 %41, 1048575
  %add145 = or i32 %and144, -18874368
  %42 = inttoptr i32 %add145 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 -1) #5, !srcloc !50
  %43 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool148.not = icmp eq i32 %44, 0
  br i1 %tobool148.not, label %do.body140.do.body165_crit_edge, label %cond.false160

do.body140.do.body165_crit_edge:                  ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body165

cond.false160:                                    ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %45(i32 noundef %44) #5
  br label %do.body165

do.body165:                                       ; preds = %cond.false160, %do.body140.do.body165_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %and169 = and i32 %47, 1048575
  %add170 = or i32 %and169, -18874368
  %48 = inttoptr i32 %add170 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 -121) #5, !srcloc !50
  %49 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool173.not = icmp eq i32 %50, 0
  br i1 %tobool173.not, label %do.body165.do.body190_crit_edge, label %cond.false185

do.body165.do.body190_crit_edge:                  ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body190

cond.false185:                                    ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %51(i32 noundef %50) #5
  br label %do.body190

do.body190:                                       ; preds = %cond.false185, %do.body165.do.body190_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port, align 4
  %and194 = and i32 %53, 1048575
  %add195 = or i32 %and194, -18874368
  %54 = inttoptr i32 %add195 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 120) #5, !srcloc !50
  %55 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool198.not = icmp eq i32 %56, 0
  br i1 %tobool198.not, label %do.body190.do.body215_crit_edge, label %cond.false210

do.body190.do.body215_crit_edge:                  ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body215

cond.false210:                                    ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %57(i32 noundef %56) #5
  br label %do.body215

do.body215:                                       ; preds = %cond.false210, %do.body190.do.body215_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !232
  tail call void @arm_heavy_mb() #5
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port, align 4
  %and219 = and i32 %59, 1048575
  %add220 = or i32 %and219, -18874368
  %60 = inttoptr i32 %add220 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 32) #5, !srcloc !50
  %61 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool223.not = icmp eq i32 %62, 0
  br i1 %tobool223.not, label %do.body215.do.body240_crit_edge, label %cond.false235

do.body215.do.body240_crit_edge:                  ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body240

cond.false235:                                    ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %63(i32 noundef %62) #5
  br label %do.body240

do.body240:                                       ; preds = %cond.false235, %do.body215.do.body240_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !233
  tail call void @arm_heavy_mb() #5
  %64 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port, align 4
  %add243 = add i32 %65, 2
  %and244 = and i32 %add243, 1048575
  %add245 = or i32 %and244, -18874368
  %66 = inttoptr i32 %add245 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 -59) #5, !srcloc !50
  %67 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool248.not = icmp eq i32 %68, 0
  br i1 %tobool248.not, label %do.body240.do.body265_crit_edge, label %cond.false260

do.body240.do.body265_crit_edge:                  ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body265

cond.false260:                                    ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %69(i32 noundef %68) #5
  br label %do.body265

do.body265:                                       ; preds = %cond.false260, %do.body240.do.body265_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !234
  tail call void @arm_heavy_mb() #5
  %70 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port, align 4
  %add268 = add i32 %71, 2
  %and269 = and i32 %add268, 1048575
  %add270 = or i32 %and269, -18874368
  %72 = inttoptr i32 %add270 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 -60) #5, !srcloc !50
  %73 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool273.not = icmp eq i32 %74, 0
  br i1 %tobool273.not, label %do.body265.do.body290_crit_edge, label %cond.false285

do.body265.do.body290_crit_edge:                  ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body290

cond.false285:                                    ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %75(i32 noundef %74) #5
  br label %do.body290

do.body290:                                       ; preds = %cond.false285, %do.body265.do.body290_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !235
  tail call void @arm_heavy_mb() #5
  %76 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port, align 4
  %and294 = and i32 %77, 1048575
  %add295 = or i32 %and294, -18874368
  %78 = inttoptr i32 %add295 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 -1) #5, !srcloc !50
  %79 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool298.not = icmp eq i32 %80, 0
  br i1 %tobool298.not, label %do.body290.do.body315_crit_edge, label %cond.false310

do.body290.do.body315_crit_edge:                  ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body315

cond.false310:                                    ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %81(i32 noundef %80) #5
  br label %do.body315

do.body315:                                       ; preds = %cond.false310, %do.body290.do.body315_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !236
  tail call void @arm_heavy_mb() #5
  %82 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port, align 4
  %add318 = add i32 %83, 2
  %and319 = and i32 %add318, 1048575
  %add320 = or i32 %and319, -18874368
  %84 = inttoptr i32 %add320 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 4) #5, !srcloc !50
  %85 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool323.not = icmp eq i32 %86, 0
  br i1 %tobool323.not, label %do.body315.cond.end339_crit_edge, label %cond.false335

do.body315.cond.end339_crit_edge:                 ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end339

cond.false335:                                    ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %87(i32 noundef %86) #5
  br label %cond.end339

cond.end339:                                      ; preds = %cond.false335, %do.body315.cond.end339_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k971_disconnect(ptr nocapture noundef readonly %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !237
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -60) #5, !srcloc !50
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %3 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %cond.false7

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12

cond.false7:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %4) #5
  br label %do.body12

do.body12:                                        ; preds = %cond.false7, %entry.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !238
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %and16 = and i32 %7, 1048575
  %add17 = or i32 %and16, -18874368
  %8 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 -86) #5, !srcloc !50
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool20.not = icmp eq i32 %10, 0
  br i1 %tobool20.not, label %do.body12.do.body36_crit_edge, label %cond.false31

do.body12.do.body36_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body36

cond.false31:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #5
  br label %do.body36

do.body36:                                        ; preds = %cond.false31, %do.body12.do.body36_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !239
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %and40 = and i32 %13, 1048575
  %add41 = or i32 %and40, -18874368
  %14 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 85) #5, !srcloc !50
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool44.not = icmp eq i32 %16, 0
  br i1 %tobool44.not, label %do.body36.do.body60_crit_edge, label %cond.false55

do.body36.do.body60_crit_edge:                    ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body60

cond.false55:                                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #5
  br label %do.body60

do.body60:                                        ; preds = %cond.false55, %do.body36.do.body60_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !240
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %and64 = and i32 %19, 1048575
  %add65 = or i32 %and64, -18874368
  %20 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 0) #5, !srcloc !50
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool68.not = icmp eq i32 %22, 0
  br i1 %tobool68.not, label %do.body60.do.body84_crit_edge, label %cond.false79

do.body60.do.body84_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body84

cond.false79:                                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %22) #5
  br label %do.body84

do.body84:                                        ; preds = %cond.false79, %do.body60.do.body84_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !241
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %and88 = and i32 %25, 1048575
  %add89 = or i32 %and88, -18874368
  %26 = inttoptr i32 %add89 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 -1) #5, !srcloc !50
  %27 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool92.not = icmp eq i32 %28, 0
  br i1 %tobool92.not, label %do.body84.do.body108_crit_edge, label %cond.false103

do.body84.do.body108_crit_edge:                   ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body108

cond.false103:                                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %28) #5
  br label %do.body108

do.body108:                                       ; preds = %cond.false103, %do.body84.do.body108_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !242
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %and112 = and i32 %31, 1048575
  %add113 = or i32 %and112, -18874368
  %32 = inttoptr i32 %add113 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 -121) #5, !srcloc !50
  %33 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool116.not = icmp eq i32 %34, 0
  br i1 %tobool116.not, label %do.body108.do.body132_crit_edge, label %cond.false127

do.body108.do.body132_crit_edge:                  ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body132

cond.false127:                                    ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %35(i32 noundef %34) #5
  br label %do.body132

do.body132:                                       ; preds = %cond.false127, %do.body108.do.body132_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !243
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %and136 = and i32 %37, 1048575
  %add137 = or i32 %and136, -18874368
  %38 = inttoptr i32 %add137 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 120) #5, !srcloc !50
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool140.not = icmp eq i32 %40, 0
  br i1 %tobool140.not, label %do.body132.do.body156_crit_edge, label %cond.false151

do.body132.do.body156_crit_edge:                  ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body156

cond.false151:                                    ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #5
  br label %do.body156

do.body156:                                       ; preds = %cond.false151, %do.body132.do.body156_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !244
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %and160 = and i32 %43, 1048575
  %add161 = or i32 %and160, -18874368
  %44 = inttoptr i32 %add161 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 48) #5, !srcloc !50
  %45 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool164.not = icmp eq i32 %46, 0
  br i1 %tobool164.not, label %do.body156.do.body180_crit_edge, label %cond.false175

do.body156.do.body180_crit_edge:                  ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body180

cond.false175:                                    ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %47(i32 noundef %46) #5
  br label %do.body180

do.body180:                                       ; preds = %cond.false175, %do.body156.do.body180_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !245
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %add183 = add i32 %49, 2
  %and184 = and i32 %add183, 1048575
  %add185 = or i32 %and184, -18874368
  %50 = inttoptr i32 %add185 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 -59) #5, !srcloc !50
  %51 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool188.not = icmp eq i32 %52, 0
  br i1 %tobool188.not, label %do.body180.do.body204_crit_edge, label %cond.false199

do.body180.do.body204_crit_edge:                  ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body204

cond.false199:                                    ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #5
  br label %do.body204

do.body204:                                       ; preds = %cond.false199, %do.body180.do.body204_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !246
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 4
  %add207 = add i32 %55, 2
  %and208 = and i32 %add207, 1048575
  %add209 = or i32 %and208, -18874368
  %56 = inttoptr i32 %add209 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 -60) #5, !srcloc !50
  %57 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool212.not = icmp eq i32 %58, 0
  br i1 %tobool212.not, label %do.body204.do.body228_crit_edge, label %cond.false223

do.body204.do.body228_crit_edge:                  ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body228

cond.false223:                                    ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %59(i32 noundef %58) #5
  br label %do.body228

do.body228:                                       ; preds = %cond.false223, %do.body204.do.body228_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !247
  tail call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port, align 4
  %and232 = and i32 %61, 1048575
  %add233 = or i32 %and232, -18874368
  %62 = inttoptr i32 %add233 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 -1) #5, !srcloc !50
  %63 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool236.not = icmp eq i32 %64, 0
  br i1 %tobool236.not, label %do.body228.do.body252_crit_edge, label %cond.false247

do.body228.do.body252_crit_edge:                  ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body252

cond.false247:                                    ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %65(i32 noundef %64) #5
  br label %do.body252

do.body252:                                       ; preds = %cond.false247, %do.body228.do.body252_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !248
  tail call void @arm_heavy_mb() #5
  %saved_r0 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 7
  %66 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %saved_r0, align 4
  %conv = trunc i32 %67 to i8
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %and256 = and i32 %69, 1048575
  %add257 = or i32 %and256, -18874368
  %70 = inttoptr i32 %add257 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 %conv) #5, !srcloc !50
  %71 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool260.not = icmp eq i32 %72, 0
  br i1 %tobool260.not, label %do.body252.do.body277_crit_edge, label %cond.false272

do.body252.do.body277_crit_edge:                  ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body277

cond.false272:                                    ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %73(i32 noundef %72) #5
  br label %do.body277

do.body277:                                       ; preds = %cond.false272, %do.body252.do.body277_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !249
  tail call void @arm_heavy_mb() #5
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %74 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %saved_r2, align 4
  %conv279 = trunc i32 %75 to i8
  %76 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port, align 4
  %add281 = add i32 %77, 2
  %and282 = and i32 %add281, 1048575
  %add283 = or i32 %and282, -18874368
  %78 = inttoptr i32 %add283 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 %conv279) #5, !srcloc !50
  %79 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool286.not = icmp eq i32 %80, 0
  br i1 %tobool286.not, label %do.body277.cond.end302_crit_edge, label %cond.false298

do.body277.cond.end302_crit_edge:                 ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end302

cond.false298:                                    ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %81(i32 noundef %80) #5
  br label %cond.end302

cond.end302:                                      ; preds = %cond.false298, %do.body277.cond.end302_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k971_log_adapter(ptr nocapture noundef readonly %pi, ptr nocapture noundef readnone %scratch, i32 noundef %verbose) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device.i = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 5
  %0 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device.i, align 4
  %port.i = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.14, i32 noundef %3) #8
  %mode.i = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode.i, align 4
  %arrayidx.i = getelementptr [6 x ptr], ptr @__const.kbic_log_adapter.mode_string, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %delay.i = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %8 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay.i, align 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %5, ptr noundef %7, i32 noundef %9) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @paride_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__UNIQUE_ID_file160, !1, !"__UNIQUE_ID_file160", i1 false, i1 false}
!1 = !{!"../drivers/block/paride/kbic.c", i32 303, i32 1}
!2 = !{ptr @__UNIQUE_ID_license161, !1, !"__UNIQUE_ID_license161", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_kbic__162_304_kbic_init6, !4, !"__initcall__kmod_kbic__162_304_kbic_init6", i1 false, i1 false}
!4 = !{!"../drivers/block/paride/kbic.c", i32 304, i32 1}
!5 = !{ptr @__exitcall_kbic_exit, !6, !"__exitcall_kbic_exit", i1 false, i1 false}
!6 = !{!"../drivers/block/paride/kbic.c", i32 305, i32 1}
!7 = !{ptr @k951, !8, !"k951", i1 false, i1 false}
!8 = !{!"../drivers/block/paride/kbic.c", i32 252, i32 27}
!9 = !{ptr @cont_map, !10, !"cont_map", i1 false, i1 false}
!10 = !{!"../drivers/block/paride/kbic.c", i32 43, i32 13}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/block/paride/kbic.c", i32 244, i32 39}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/block/paride/kbic.c", i32 232, i32 36}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/block/paride/kbic.c", i32 232, i32 44}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/block/paride/kbic.c", i32 232, i32 50}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/block/paride/kbic.c", i32 233, i32 8}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/block/paride/kbic.c", i32 233, i32 16}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/block/paride/kbic.c", i32 233, i32 25}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/block/paride/kbic.c", i32 235, i32 9}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @kbic_log_adapter._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @kbic_log_adapter._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/block/paride/kbic.c", i32 237, i32 9}
!34 = !{ptr @kbic_log_adapter._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @kbic_log_adapter._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @k971, !37, !"k971", i1 false, i1 false}
!37 = !{!"../drivers/block/paride/kbic.c", i32 268, i32 27}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/block/paride/kbic.c", i32 249, i32 45}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2152147214}
!50 = !{i64 4535227}
!51 = !{i64 2152148224}
!52 = !{i64 2152149234}
!53 = !{i64 2152150244}
!54 = !{i64 2152151260}
!55 = !{i64 2152152270}
!56 = !{i64 2152153280}
!57 = !{i64 2152154305}
!58 = !{i64 2152155315}
!59 = !{i64 2152156325}
!60 = !{i64 2152157335}
!61 = !{i64 2152158354}
!62 = !{i64 2152159370}
!63 = !{i64 2152160386}
!64 = !{i64 2152161396}
!65 = !{i64 2152162406}
!66 = !{i64 2152163416}
!67 = !{i64 2152106572}
!68 = !{i64 2152107582}
!69 = !{i64 2152108592}
!70 = !{i64 2152109602}
!71 = !{i64 2152110612}
!72 = !{i64 2152111622}
!73 = !{i64 4535622}
!74 = !{i64 2152113317}
!75 = !{i64 2152113594}
!76 = !{i64 2152115289}
!77 = !{i64 2152115557}
!78 = !{i64 2152116633}
!79 = !{i64 2152117643}
!80 = !{i64 2152118653}
!81 = !{i64 2152119663}
!82 = !{i64 2152120673}
!83 = !{i64 2152121683}
!84 = !{i64 4535004}
!85 = !{i64 2152123730}
!86 = !{i64 2152123998}
!87 = !{i64 2152125072}
!88 = !{i64 2152126082}
!89 = !{i64 2152127092}
!90 = !{i64 2152128102}
!91 = !{i64 2152129121}
!92 = !{i64 2152130140}
!93 = !{i64 2152131835}
!94 = !{i64 2152132103}
!95 = !{i64 2152133128}
!96 = !{i64 2152134138}
!97 = !{i64 2152135148}
!98 = !{i64 2152136158}
!99 = !{i64 2152137177}
!100 = !{i64 2152138872}
!101 = !{i64 2152139825}
!102 = !{i64 2152140093}
!103 = !{i64 2152145164}
!104 = !{i64 2152146174}
!105 = !{i64 2152271800}
!106 = !{i64 2152272810}
!107 = !{i64 2152273820}
!108 = !{i64 2152274830}
!109 = !{i64 2152275867}
!110 = !{i64 2152276877}
!111 = !{i64 2152277887}
!112 = !{i64 2152278918}
!113 = !{i64 2152279928}
!114 = !{i64 2152280938}
!115 = !{i64 2152281957}
!116 = !{i64 2152282967}
!117 = !{i64 2152283977}
!118 = !{i64 2152284987}
!119 = !{i64 2152285997}
!120 = !{i64 2152287034}
!121 = !{i64 2152288065}
!122 = !{i64 2152289075}
!123 = !{i64 2152290085}
!124 = !{i64 2152291095}
!125 = !{i64 2152292114}
!126 = !{i64 2152293124}
!127 = !{i64 2152294134}
!128 = !{i64 2152295144}
!129 = !{i64 2152296154}
!130 = !{i64 2152297207}
!131 = !{i64 4534804}
!132 = !{i64 2152298337}
!133 = !{i64 2152299347}
!134 = !{i64 2152300357}
!135 = !{i64 2152301376}
!136 = !{i64 2152302386}
!137 = !{i64 2152303396}
!138 = !{i64 2152304406}
!139 = !{i64 2152305416}
!140 = !{i64 2152306469}
!141 = !{i64 4535424}
!142 = !{i64 2152307599}
!143 = !{i64 2152308609}
!144 = !{i64 2152309619}
!145 = !{i64 2152197045}
!146 = !{i64 2152198055}
!147 = !{i64 2152199065}
!148 = !{i64 2152200075}
!149 = !{i64 2152201085}
!150 = !{i64 2152202095}
!151 = !{i64 2152203790}
!152 = !{i64 2152204067}
!153 = !{i64 2152205762}
!154 = !{i64 2152206066}
!155 = !{i64 2152207761}
!156 = !{i64 2152208029}
!157 = !{i64 2152209724}
!158 = !{i64 2152210028}
!159 = !{i64 2152211047}
!160 = !{i64 2152212057}
!161 = !{i64 2152213067}
!162 = !{i64 2152214077}
!163 = !{i64 2152215096}
!164 = !{i64 2152216106}
!165 = !{i64 2152217116}
!166 = !{i64 2152218126}
!167 = !{i64 2152220734}
!168 = !{i64 2152221284}
!169 = !{i64 2152221580}
!170 = !{i64 2152224188}
!171 = !{i64 2152224738}
!172 = !{i64 2152225025}
!173 = !{i64 2152226035}
!174 = !{i64 2152228643}
!175 = !{i64 2152229193}
!176 = !{i64 2152229480}
!177 = !{i64 2152232088}
!178 = !{i64 2152232638}
!179 = !{i64 2152232925}
!180 = !{i64 2152233944}
!181 = !{i64 2152234954}
!182 = !{i64 2152235964}
!183 = !{i64 2152236974}
!184 = !{i64 2152237993}
!185 = !{i64 2152239012}
!186 = !{i64 2152240707}
!187 = !{i64 2152240984}
!188 = !{i64 2152242679}
!189 = !{i64 2152242947}
!190 = !{i64 2152243966}
!191 = !{i64 2152244976}
!192 = !{i64 2152245986}
!193 = !{i64 2152246996}
!194 = !{i64 2152248006}
!195 = !{i64 2152249701}
!196 = !{i64 2152249969}
!197 = !{i64 2152250979}
!198 = !{i64 2152251989}
!199 = !{i64 2152253008}
!200 = !{i64 2152254018}
!201 = !{i64 2152255028}
!202 = !{i64 2152256038}
!203 = !{i64 2152257048}
!204 = !{i64 2152259095}
!205 = !{i64 2152259363}
!206 = !{i64 2152260373}
!207 = !{i64 2152261383}
!208 = !{i64 2152262402}
!209 = !{i64 2152263412}
!210 = !{i64 2152264422}
!211 = !{i64 2152265432}
!212 = !{i64 2152266442}
!213 = !{i64 4535842}
!214 = !{i64 2152268493}
!215 = !{i64 2152268761}
!216 = !{i64 2152269771}
!217 = !{i64 2152270781}
!218 = !{i64 2152165111}
!219 = !{i64 2152166064}
!220 = !{i64 2152166332}
!221 = !{i64 2152167375}
!222 = !{i64 2152168418}
!223 = !{i64 2152170113}
!224 = !{i64 2152171066}
!225 = !{i64 2152171446}
!226 = !{i64 2152172465}
!227 = !{i64 2152173484}
!228 = !{i64 2152174494}
!229 = !{i64 2152175513}
!230 = !{i64 2152176532}
!231 = !{i64 2152177551}
!232 = !{i64 2152178570}
!233 = !{i64 2152179589}
!234 = !{i64 2152180608}
!235 = !{i64 2152181627}
!236 = !{i64 2152182637}
!237 = !{i64 2152183759}
!238 = !{i64 2152184778}
!239 = !{i64 2152185797}
!240 = !{i64 2152186807}
!241 = !{i64 2152187826}
!242 = !{i64 2152188845}
!243 = !{i64 2152189864}
!244 = !{i64 2152190883}
!245 = !{i64 2152191902}
!246 = !{i64 2152192921}
!247 = !{i64 2152193940}
!248 = !{i64 2152194983}
!249 = !{i64 2152196026}

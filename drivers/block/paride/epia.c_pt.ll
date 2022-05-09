; ModuleID = '/llk/IR_all_yes/drivers/block/paride/epia.c_pt.bc'
source_filename = "../drivers/block/paride/epia.c"
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

@epia = internal global { %struct.pi_protocol, [48 x i8] } { %struct.pi_protocol { [8 x i8] c"epia\00\00\00\00", i32 0, i32 6, i32 3, i32 1, i32 1, ptr @epia_write_regr, ptr @epia_read_regr, ptr @epia_write_block, ptr @epia_read_block, ptr @epia_connect, ptr @epia_disconnect, ptr null, ptr null, ptr @epia_test_proto, ptr @epia_log_adapter, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file160 = internal constant [36 x i8] c"epia.file=drivers/block/paride/epia\00", section ".modinfo", align 1
@__UNIQUE_ID_license161 = internal constant [17 x i8] c"epia.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_epia__162_315_epia_init6 = internal global ptr @epia_init, section ".initcall6.init", align 4
@__exitcall_epia_exit = internal global ptr @epia_exit, section ".exitcall.exit", align 4
@cont_map = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 128], [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@epia_test_proto._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: epia: port 0x%x, mode %d, test=(%d,%d,%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"epia_test_proto\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/block/paride/epia.c\00", [36 x i8] zeroinitializer }, align 32
@epia_test_proto._entry_ptr = internal global ptr @epia_test_proto._entry, section ".printk_index", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"5/3\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EPP-8\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EPP-16\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EPP-32\00", [25 x i8] zeroinitializer }, align 32
@__const.epia_log_adapter.mode_string = private unnamed_addr constant [6 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], align 4
@epia_log_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: epia %s, Shuttle EPIA at 0x%x, \00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"epia_log_adapter\00", [47 x i8] zeroinitializer }, align 32
@epia_log_adapter._entry_ptr = internal global ptr @epia_log_adapter._entry, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.02\00", [27 x i8] zeroinitializer }, align 32
@epia_log_adapter._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mode %d (%s), delay %d\0A\00", [40 x i8] zeroinitializer }, align 32
@epia_log_adapter._entry_ptr.14 = internal global ptr @epia_log_adapter._entry.12, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.15 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.16 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.17 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.18 = private unnamed_addr constant [5 x i8] c"epia\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 287, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant [9 x i8] c"cont_map\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 47, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 266, i32 13 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 277, i32 36 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 277, i32 44 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 277, i32 50 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 278, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 278, i32 16 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 278, i32 25 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 280, i32 9 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [31 x i8] c"../drivers/block/paride/epia.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 282, i32 9 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_file160, ptr @__UNIQUE_ID_license161, ptr @__exitcall_epia_exit, ptr @__initcall__kmod_epia__162_315_epia_init6, ptr @epia_exit, ptr @epia_log_adapter._entry, ptr @epia_log_adapter._entry.12, ptr @epia_log_adapter._entry_ptr, ptr @epia_log_adapter._entry_ptr.14, ptr @epia_test_proto._entry, ptr @epia_test_proto._entry_ptr, ptr @epia, ptr @cont_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epia to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cont_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epia_test_proto._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epia_log_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epia_log_adapter._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @epia_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @paride_unregister(ptr noundef nonnull @epia) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @paride_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @epia_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @paride_register(ptr noundef nonnull @epia) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epia_write_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %regr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x i32], ptr @cont_map, i32 0, i32 %cont
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, %regr
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge261
    i32 2, label %entry.sw.bb_crit_edge262
    i32 3, label %entry.sw.bb119_crit_edge
    i32 4, label %entry.sw.bb119_crit_edge263
    i32 5, label %entry.sw.bb119_crit_edge264
  ]

entry.sw.bb119_crit_edge264:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb119

entry.sw.bb119_crit_edge263:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb119

entry.sw.bb119_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb119

entry.sw.bb_crit_edge262:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge261:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge261, %entry.sw.bb_crit_edge262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %5 = trunc i32 %add to i8
  %conv = xor i8 %5, 25
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %and = and i32 %7, 1048575
  %add2 = or i32 %and, -18874368
  %8 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv) #5, !srcloc !49
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %sw.bb.do.body14_crit_edge, label %cond.false9

sw.bb.do.body14_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14

cond.false9:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #5
  br label %do.body14

do.body14:                                        ; preds = %cond.false9, %sw.bb.do.body14_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add18 = add i32 %13, 2
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %14 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 1) #5, !srcloc !49
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %conv43 = trunc i32 %val to i8
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %and46 = and i32 %19, 1048575
  %add47 = or i32 %and46, -18874368
  %20 = inttoptr i32 %add47 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv43) #5, !srcloc !49
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool50.not = icmp eq i32 %22, 0
  br i1 %tobool50.not, label %do.body40.do.body67_crit_edge, label %cond.false62

do.body40.do.body67_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body67

cond.false62:                                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %22) #5
  br label %do.body67

do.body67:                                        ; preds = %cond.false62, %do.body40.do.body67_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add71 = add i32 %25, 2
  %and72 = and i32 %add71, 1048575
  %add73 = or i32 %and72, -18874368
  %26 = inttoptr i32 %add73 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 3) #5, !srcloc !49
  %27 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool76.not = icmp eq i32 %28, 0
  br i1 %tobool76.not, label %do.body67.do.body93_crit_edge, label %cond.false88

do.body67.do.body93_crit_edge:                    ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body93

cond.false88:                                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %28) #5
  br label %do.body93

do.body93:                                        ; preds = %cond.false88, %do.body67.do.body93_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %add97 = add i32 %31, 2
  %and98 = and i32 %add97, 1048575
  %add99 = or i32 %and98, -18874368
  %32 = inttoptr i32 %add99 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 4) #5, !srcloc !49
  %33 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool102.not = icmp eq i32 %34, 0
  br i1 %tobool102.not, label %do.body93.sw.epilog_crit_edge, label %do.body93.sw.epilog.sink.split_crit_edge

do.body93.sw.epilog.sink.split_crit_edge:         ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body93.sw.epilog_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb119:                                         ; preds = %entry.sw.bb119_crit_edge, %entry.sw.bb119_crit_edge263, %entry.sw.bb119_crit_edge264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %35 = trunc i32 %add to i8
  %conv124 = xor i8 %35, 64
  %port125 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %36 = ptrtoint ptr %port125 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port125, align 4
  %add126 = add i32 %37, 3
  %and127 = and i32 %add126, 1048575
  %add128 = or i32 %and127, -18874368
  %38 = inttoptr i32 %add128 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %conv124) #5, !srcloc !49
  %delay130 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %39 = ptrtoint ptr %delay130 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delay130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool131.not = icmp eq i32 %40, 0
  br i1 %tobool131.not, label %sw.bb119.do.body148_crit_edge, label %cond.false143

sw.bb119.do.body148_crit_edge:                    ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body148

cond.false143:                                    ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #5
  br label %do.body148

do.body148:                                       ; preds = %cond.false143, %sw.bb119.do.body148_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %conv151 = trunc i32 %val to i8
  %42 = ptrtoint ptr %port125 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port125, align 4
  %add153 = add i32 %43, 4
  %and154 = and i32 %add153, 1048575
  %add155 = or i32 %and154, -18874368
  %44 = inttoptr i32 %add155 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 %conv151) #5, !srcloc !49
  %45 = ptrtoint ptr %delay130 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %delay130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool158.not = icmp eq i32 %46, 0
  br i1 %tobool158.not, label %do.body148.do.body175_crit_edge, label %cond.false170

do.body148.do.body175_crit_edge:                  ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body175

cond.false170:                                    ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %47(i32 noundef %46) #5
  br label %do.body175

do.body175:                                       ; preds = %cond.false170, %do.body148.do.body175_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %port125 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port125, align 4
  %add179 = add i32 %49, 2
  %and180 = and i32 %add179, 1048575
  %add181 = or i32 %and180, -18874368
  %50 = inttoptr i32 %add181 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 4) #5, !srcloc !49
  %51 = ptrtoint ptr %delay130 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delay130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool184.not = icmp eq i32 %52, 0
  br i1 %tobool184.not, label %do.body175.sw.epilog_crit_edge, label %do.body175.sw.epilog.sink.split_crit_edge

do.body175.sw.epilog.sink.split_crit_edge:        ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body175.sw.epilog_crit_edge:                   ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body175.sw.epilog.sink.split_crit_edge, %do.body93.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %34, %do.body93.sw.epilog.sink.split_crit_edge ], [ %52, %do.body175.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body175.sw.epilog_crit_edge, %do.body93.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epia_read_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %regr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x i32], ptr @cont_map, i32 0, i32 %cont
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, %regr
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb202
    i32 2, label %sw.bb450
    i32 3, label %entry.do.body612_crit_edge
    i32 4, label %entry.do.body612_crit_edge932
    i32 5, label %entry.do.body612_crit_edge933
  ]

entry.do.body612_crit_edge933:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body612

entry.do.body612_crit_edge932:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body612

entry.do.body612_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body612

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %5 = trunc i32 %add to i8
  %conv = xor i8 %5, 57
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %and = and i32 %7, 1048575
  %add2 = or i32 %and, -18874368
  %8 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv) #5, !srcloc !49
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %sw.bb.do.body14_crit_edge, label %cond.false9

sw.bb.do.body14_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14

cond.false9:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #5
  br label %do.body14

do.body14:                                        ; preds = %cond.false9, %sw.bb.do.body14_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add18 = add i32 %13, 2
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %14 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 1) #5, !srcloc !49
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add44 = add i32 %19, 2
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %20 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 3) #5, !srcloc !49
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %and72 = and i32 %25, 1048575
  %add73 = or i32 %and72, -18874368
  %26 = inttoptr i32 %add73 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %conv) #5, !srcloc !49
  %27 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool76.not = icmp eq i32 %28, 0
  br i1 %tobool76.not, label %do.body66.cond.end110_crit_edge, label %cond.false88

do.body66.cond.end110_crit_edge:                  ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end110

cond.false88:                                     ; preds = %do.body66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %28) #5
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool94.not = icmp eq i32 %.pr, 0
  br i1 %tobool94.not, label %cond.false88.cond.end110_crit_edge, label %cond.false106

cond.false88.cond.end110_crit_edge:               ; preds = %cond.false88
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end110

cond.false106:                                    ; preds = %cond.false88
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %.pr) #5
  br label %cond.end110

cond.end110:                                      ; preds = %cond.false106, %cond.false88.cond.end110_crit_edge, %do.body66.cond.end110_crit_edge
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %add112 = add i32 %33, 1
  %and113 = and i32 %add112, 1048575
  %add114 = or i32 %and113, -18874368
  %34 = inttoptr i32 %add114 to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add123 = add i32 %37, 2
  %and124 = and i32 %add123, 1048575
  %add125 = or i32 %and124, -18874368
  %38 = inttoptr i32 %add125 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 1) #5, !srcloc !49
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool128.not = icmp eq i32 %40, 0
  br i1 %tobool128.not, label %cond.end110.cond.end162_crit_edge, label %cond.false140

cond.end110.cond.end162_crit_edge:                ; preds = %cond.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end162

cond.false140:                                    ; preds = %cond.end110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #5
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr924 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr924)
  %tobool146.not = icmp eq i32 %.pr924, 0
  br i1 %tobool146.not, label %cond.false140.cond.end162_crit_edge, label %cond.false158

cond.false140.cond.end162_crit_edge:              ; preds = %cond.false140
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end162

cond.false158:                                    ; preds = %cond.false140
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %43(i32 noundef %.pr924) #5
  br label %cond.end162

cond.end162:                                      ; preds = %cond.false158, %cond.false140.cond.end162_crit_edge, %cond.end110.cond.end162_crit_edge
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port, align 4
  %add165 = add i32 %45, 1
  %and166 = and i32 %add165, 1048575
  %add167 = or i32 %and166, -18874368
  %46 = inttoptr i32 %add167 to ptr
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %add177 = add i32 %49, 2
  %and178 = and i32 %add177, 1048575
  %add179 = or i32 %and178, -18874368
  %50 = inttoptr i32 %add179 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 4) #5, !srcloc !49
  %51 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool182.not = icmp eq i32 %52, 0
  br i1 %tobool182.not, label %cond.end162.cond.end198_crit_edge, label %cond.false194

cond.end162.cond.end198_crit_edge:                ; preds = %cond.end162
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end198

cond.false194:                                    ; preds = %cond.end162
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #5
  br label %cond.end198

cond.end198:                                      ; preds = %cond.false194, %cond.end162.cond.end198_crit_edge
  %54 = lshr i8 %35, 4
  %55 = and i8 %47, -16
  %add201922 = or i8 %55, %54
  %add201 = zext i8 %add201922 to i32
  br label %cleanup

sw.bb202:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %56 = trunc i32 %add to i8
  %conv207 = xor i8 %56, 49
  %port208 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %57 = ptrtoint ptr %port208 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port208, align 4
  %and210 = and i32 %58, 1048575
  %add211 = or i32 %and210, -18874368
  %59 = inttoptr i32 %add211 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 %conv207) #5, !srcloc !49
  %delay213 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %60 = ptrtoint ptr %delay213 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %delay213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool214.not = icmp eq i32 %61, 0
  br i1 %tobool214.not, label %sw.bb202.do.body231_crit_edge, label %cond.false226

sw.bb202.do.body231_crit_edge:                    ; preds = %sw.bb202
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body231

cond.false226:                                    ; preds = %sw.bb202
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %62(i32 noundef %61) #5
  br label %do.body231

do.body231:                                       ; preds = %cond.false226, %sw.bb202.do.body231_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %63 = ptrtoint ptr %port208 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port208, align 4
  %add235 = add i32 %64, 2
  %and236 = and i32 %add235, 1048575
  %add237 = or i32 %and236, -18874368
  %65 = inttoptr i32 %add237 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 1) #5, !srcloc !49
  %66 = ptrtoint ptr %delay213 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %delay213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool240.not = icmp eq i32 %67, 0
  br i1 %tobool240.not, label %do.body231.do.body257_crit_edge, label %cond.false252

do.body231.do.body257_crit_edge:                  ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body257

cond.false252:                                    ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %68(i32 noundef %67) #5
  br label %do.body257

do.body257:                                       ; preds = %cond.false252, %do.body231.do.body257_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %conv261 = and i8 %conv207, 55
  %69 = ptrtoint ptr %port208 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port208, align 4
  %and264 = and i32 %70, 1048575
  %add265 = or i32 %and264, -18874368
  %71 = inttoptr i32 %add265 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 %conv261) #5, !srcloc !49
  %72 = ptrtoint ptr %delay213 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %delay213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool268.not = icmp eq i32 %73, 0
  br i1 %tobool268.not, label %do.body257.do.body285_crit_edge, label %cond.false280

do.body257.do.body285_crit_edge:                  ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body285

cond.false280:                                    ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %74(i32 noundef %73) #5
  br label %do.body285

do.body285:                                       ; preds = %cond.false280, %do.body257.do.body285_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %75 = ptrtoint ptr %port208 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %port208, align 4
  %add289 = add i32 %76, 2
  %and290 = and i32 %add289, 1048575
  %add291 = or i32 %and290, -18874368
  %77 = inttoptr i32 %add291 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 3) #5, !srcloc !49
  %78 = ptrtoint ptr %delay213 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %delay213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool294.not = icmp eq i32 %79, 0
  br i1 %tobool294.not, label %do.body285.do.body311_crit_edge, label %cond.false306

do.body285.do.body311_crit_edge:                  ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body311

cond.false306:                                    ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %80(i32 noundef %79) #5
  br label %do.body311

do.body311:                                       ; preds = %cond.false306, %do.body285.do.body311_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %port208 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %port208, align 4
  %add315 = add i32 %82, 2
  %and316 = and i32 %add315, 1048575
  %add317 = or i32 %and316, -18874368
  %83 = inttoptr i32 %add317 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 5) #5, !srcloc !49
  %84 = ptrtoint ptr %delay213 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %delay213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool320.not = icmp eq i32 %85, 0
  br i1 %tobool320.not, label %do.body311.do.body337_crit_edge, label %cond.false332

do.body311.do.body337_crit_edge:                  ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body337

cond.false332:                                    ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %86(i32 noundef %85) #5
  br label %do.body337

do.body337:                                       ; preds = %cond.false332, %do.body311.do.body337_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %conv340 = or i8 %conv207, -16
  %87 = ptrtoint ptr %port208 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %port208, align 4
  %and343 = and i32 %88, 1048575
  %add344 = or i32 %and343, -18874368
  %89 = inttoptr i32 %add344 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 %conv340) #5, !srcloc !49
  %90 = ptrtoint ptr %delay213 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %delay213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool347.not = icmp eq i32 %91, 0
  br i1 %tobool347.not, label %do.body337.cond.end381_crit_edge, label %cond.false359

do.body337.cond.end381_crit_edge:                 ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end381

cond.false359:                                    ; preds = %do.body337
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %92(i32 noundef %91) #5
  %93 = ptrtoint ptr %delay213 to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pr926 = load i32, ptr %delay213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr926)
  %tobool365.not = icmp eq i32 %.pr926, 0
  br i1 %tobool365.not, label %cond.false359.cond.end381_crit_edge, label %cond.false377

cond.false359.cond.end381_crit_edge:              ; preds = %cond.false359
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end381

cond.false377:                                    ; preds = %cond.false359
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %94(i32 noundef %.pr926) #5
  br label %cond.end381

cond.end381:                                      ; preds = %cond.false377, %cond.false359.cond.end381_crit_edge, %do.body337.cond.end381_crit_edge
  %95 = ptrtoint ptr %port208 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %port208, align 4
  %add384 = add i32 %96, 1
  %and385 = and i32 %add384, 1048575
  %add386 = or i32 %and385, -18874368
  %97 = inttoptr i32 %add386 to ptr
  %98 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %97) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %99 = ptrtoint ptr %delay213 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %delay213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool393.not = icmp eq i32 %100, 0
  br i1 %tobool393.not, label %cond.end381.cond.end409_crit_edge, label %cond.false405

cond.end381.cond.end409_crit_edge:                ; preds = %cond.end381
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end409

cond.false405:                                    ; preds = %cond.end381
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %101(i32 noundef %100) #5
  br label %cond.end409

cond.end409:                                      ; preds = %cond.false405, %cond.end381.cond.end409_crit_edge
  %102 = ptrtoint ptr %port208 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %port208, align 4
  %add412 = add i32 %103, 2
  %and413 = and i32 %add412, 1048575
  %add414 = or i32 %and413, -18874368
  %104 = inttoptr i32 %add414 to ptr
  %105 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %104) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  %conv418 = zext i8 %105 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %106 = ptrtoint ptr %port208 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %port208, align 4
  %add424 = add i32 %107, 2
  %and425 = and i32 %add424, 1048575
  %add426 = or i32 %and425, -18874368
  %108 = inttoptr i32 %add426 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %108, i8 4) #5, !srcloc !49
  %109 = ptrtoint ptr %delay213 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %delay213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool429.not = icmp eq i32 %110, 0
  br i1 %tobool429.not, label %cond.end409.cond.end445_crit_edge, label %cond.false441

cond.end409.cond.end445_crit_edge:                ; preds = %cond.end409
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end445

cond.false441:                                    ; preds = %cond.end409
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %111(i32 noundef %110) #5
  br label %cond.end445

cond.end445:                                      ; preds = %cond.false441, %cond.end409.cond.end445_crit_edge
  %112 = lshr i8 %98, 3
  %113 = zext i8 %112 to i32
  %shl = shl nuw nsw i32 %conv418, 4
  %and448 = and i32 %shl, 224
  %add449 = or i32 %and448, %113
  br label %cleanup

sw.bb450:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %114 = trunc i32 %add to i8
  %conv455 = xor i8 %114, 41
  %port456 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %115 = ptrtoint ptr %port456 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %port456, align 4
  %and458 = and i32 %116, 1048575
  %add459 = or i32 %and458, -18874368
  %117 = inttoptr i32 %add459 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %117, i8 %conv455) #5, !srcloc !49
  %delay461 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %118 = ptrtoint ptr %delay461 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %delay461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool462.not = icmp eq i32 %119, 0
  br i1 %tobool462.not, label %sw.bb450.do.body479_crit_edge, label %cond.false474

sw.bb450.do.body479_crit_edge:                    ; preds = %sw.bb450
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body479

cond.false474:                                    ; preds = %sw.bb450
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %120(i32 noundef %119) #5
  br label %do.body479

do.body479:                                       ; preds = %cond.false474, %sw.bb450.do.body479_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %121 = ptrtoint ptr %port456 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %port456, align 4
  %add483 = add i32 %122, 2
  %and484 = and i32 %add483, 1048575
  %add485 = or i32 %and484, -18874368
  %123 = inttoptr i32 %add485 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %123, i8 1) #5, !srcloc !49
  %124 = ptrtoint ptr %delay461 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %delay461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool488.not = icmp eq i32 %125, 0
  br i1 %tobool488.not, label %do.body479.do.body505_crit_edge, label %cond.false500

do.body479.do.body505_crit_edge:                  ; preds = %do.body479
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body505

cond.false500:                                    ; preds = %do.body479
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %126(i32 noundef %125) #5
  br label %do.body505

do.body505:                                       ; preds = %cond.false500, %do.body479.do.body505_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %127 = ptrtoint ptr %port456 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %port456, align 4
  %add509 = add i32 %128, 2
  %and510 = and i32 %add509, 1048575
  %add511 = or i32 %and510, -18874368
  %129 = inttoptr i32 %add511 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %129, i8 33) #5, !srcloc !49
  %130 = ptrtoint ptr %delay461 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %delay461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool514.not = icmp eq i32 %131, 0
  br i1 %tobool514.not, label %do.body505.do.body531_crit_edge, label %cond.false526

do.body505.do.body531_crit_edge:                  ; preds = %do.body505
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body531

cond.false526:                                    ; preds = %do.body505
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %132(i32 noundef %131) #5
  br label %do.body531

do.body531:                                       ; preds = %cond.false526, %do.body505.do.body531_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %133 = ptrtoint ptr %port456 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %port456, align 4
  %add535 = add i32 %134, 2
  %and536 = and i32 %add535, 1048575
  %add537 = or i32 %and536, -18874368
  %135 = inttoptr i32 %add537 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %135, i8 35) #5, !srcloc !49
  %136 = ptrtoint ptr %delay461 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %delay461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool540.not = icmp eq i32 %137, 0
  br i1 %tobool540.not, label %do.body531.cond.end574_crit_edge, label %cond.false552

do.body531.cond.end574_crit_edge:                 ; preds = %do.body531
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end574

cond.false552:                                    ; preds = %do.body531
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %138(i32 noundef %137) #5
  %139 = ptrtoint ptr %delay461 to i32
  call void @__asan_load4_noabort(i32 %139)
  %.pr928 = load i32, ptr %delay461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr928)
  %tobool558.not = icmp eq i32 %.pr928, 0
  br i1 %tobool558.not, label %cond.false552.cond.end574_crit_edge, label %cond.false570

cond.false552.cond.end574_crit_edge:              ; preds = %cond.false552
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end574

cond.false570:                                    ; preds = %cond.false552
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %140(i32 noundef %.pr928) #5
  br label %cond.end574

cond.end574:                                      ; preds = %cond.false570, %cond.false552.cond.end574_crit_edge, %do.body531.cond.end574_crit_edge
  %141 = ptrtoint ptr %port456 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %port456, align 4
  %and578 = and i32 %142, 1048575
  %add579 = or i32 %and578, -18874368
  %143 = inttoptr i32 %add579 to ptr
  %144 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %143) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  %conv583 = zext i8 %144 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %145 = ptrtoint ptr %port456 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %port456, align 4
  %add589 = add i32 %146, 2
  %and590 = and i32 %add589, 1048575
  %add591 = or i32 %and590, -18874368
  %147 = inttoptr i32 %add591 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %147, i8 4) #5, !srcloc !49
  %148 = ptrtoint ptr %delay461 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %delay461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool594.not = icmp eq i32 %149, 0
  br i1 %tobool594.not, label %cond.end574.cleanup_crit_edge, label %cond.false606

cond.end574.cleanup_crit_edge:                    ; preds = %cond.end574
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.false606:                                    ; preds = %cond.end574
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %150(i32 noundef %149) #5
  br label %cleanup

do.body612:                                       ; preds = %entry.do.body612_crit_edge, %entry.do.body612_crit_edge932, %entry.do.body612_crit_edge933
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %conv615 = trunc i32 %add to i8
  %port616 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %151 = ptrtoint ptr %port616 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %port616, align 4
  %add617 = add i32 %152, 3
  %and618 = and i32 %add617, 1048575
  %add619 = or i32 %and618, -18874368
  %153 = inttoptr i32 %add619 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %153, i8 %conv615) #5, !srcloc !49
  %delay621 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %154 = ptrtoint ptr %delay621 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %delay621, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool622.not = icmp eq i32 %155, 0
  br i1 %tobool622.not, label %do.body612.do.body639_crit_edge, label %cond.false634

do.body612.do.body639_crit_edge:                  ; preds = %do.body612
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body639

cond.false634:                                    ; preds = %do.body612
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %156(i32 noundef %155) #5
  br label %do.body639

do.body639:                                       ; preds = %cond.false634, %do.body612.do.body639_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %157 = ptrtoint ptr %port616 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %port616, align 4
  %add643 = add i32 %158, 2
  %and644 = and i32 %add643, 1048575
  %add645 = or i32 %and644, -18874368
  %159 = inttoptr i32 %add645 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %159, i8 36) #5, !srcloc !49
  %160 = ptrtoint ptr %delay621 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %delay621, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool648.not = icmp eq i32 %161, 0
  br i1 %tobool648.not, label %do.body639.cond.end682_crit_edge, label %cond.false660

do.body639.cond.end682_crit_edge:                 ; preds = %do.body639
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end682

cond.false660:                                    ; preds = %do.body639
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %162 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %162(i32 noundef %161) #5
  %163 = ptrtoint ptr %delay621 to i32
  call void @__asan_load4_noabort(i32 %163)
  %.pr930 = load i32, ptr %delay621, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr930)
  %tobool666.not = icmp eq i32 %.pr930, 0
  br i1 %tobool666.not, label %cond.false660.cond.end682_crit_edge, label %cond.false678

cond.false660.cond.end682_crit_edge:              ; preds = %cond.false660
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end682

cond.false678:                                    ; preds = %cond.false660
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %164(i32 noundef %.pr930) #5
  br label %cond.end682

cond.end682:                                      ; preds = %cond.false678, %cond.false660.cond.end682_crit_edge, %do.body639.cond.end682_crit_edge
  %165 = ptrtoint ptr %port616 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %port616, align 4
  %add685 = add i32 %166, 4
  %and686 = and i32 %add685, 1048575
  %add687 = or i32 %and686, -18874368
  %167 = inttoptr i32 %add687 to ptr
  %168 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %167) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  %conv691 = zext i8 %168 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  %169 = ptrtoint ptr %port616 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %port616, align 4
  %add697 = add i32 %170, 2
  %and698 = and i32 %add697, 1048575
  %add699 = or i32 %and698, -18874368
  %171 = inttoptr i32 %add699 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %171, i8 4) #5, !srcloc !49
  %172 = ptrtoint ptr %delay621 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %delay621, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool702.not = icmp eq i32 %173, 0
  br i1 %tobool702.not, label %cond.end682.cleanup_crit_edge, label %cond.false714

cond.end682.cleanup_crit_edge:                    ; preds = %cond.end682
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.false714:                                    ; preds = %cond.end682
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %174 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %174(i32 noundef %173) #5
  br label %cleanup

cleanup:                                          ; preds = %cond.false714, %cond.end682.cleanup_crit_edge, %cond.false606, %cond.end574.cleanup_crit_edge, %cond.end445, %cond.end198, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add449, %cond.end445 ], [ %add201, %cond.end198 ], [ %conv583, %cond.end574.cleanup_crit_edge ], [ %conv583, %cond.false606 ], [ %conv691, %cond.end682.cleanup_crit_edge ], [ %conv691, %cond.false714 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epia_write_block(ptr nocapture noundef readonly %pi, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
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
    i32 1, label %entry.do.body_crit_edge579
    i32 2, label %entry.do.body_crit_edge580
    i32 3, label %sw.bb222
    i32 4, label %sw.bb291
    i32 5, label %sw.bb360
  ]

entry.do.body_crit_edge580:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge579:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge579, %entry.do.body_crit_edge580
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 -95) #5, !srcloc !49
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add16 = add i32 %10, 2
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %11 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 1) #5, !srcloc !49
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add41 = add i32 %16, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %17 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 3) #5, !srcloc !49
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %add66 = add i32 %22, 2
  %and67 = and i32 %add66, 1048575
  %add68 = or i32 %and67, -18874368
  %23 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 1) #5, !srcloc !49
  %24 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool71.not = icmp eq i32 %25, 0
  br i1 %tobool71.not, label %do.body62.do.body87_crit_edge, label %cond.false82

do.body62.do.body87_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body87

cond.false82:                                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %26(i32 noundef %25) #5
  br label %do.body87

do.body87:                                        ; preds = %cond.false82, %do.body62.do.body87_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add91 = add i32 %28, 2
  %and92 = and i32 %add91, 1048575
  %add93 = or i32 %and92, -18874368
  %29 = inttoptr i32 %add93 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 5) #5, !srcloc !49
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool96.not = icmp eq i32 %31, 0
  br i1 %tobool96.not, label %do.body87.cond.end111_crit_edge, label %cond.false107

do.body87.cond.end111_crit_edge:                  ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end111

cond.false107:                                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %31) #5
  br label %cond.end111

cond.end111:                                      ; preds = %cond.false107, %do.body87.cond.end111_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp112572 = icmp sgt i32 %count, 0
  br i1 %cmp112572, label %cond.end111.for.body_crit_edge, label %cond.end111.do.body170_crit_edge

cond.end111.do.body170_crit_edge:                 ; preds = %cond.end111
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body170

cond.end111.for.body_crit_edge:                   ; preds = %cond.end111
  br label %for.body

for.body:                                         ; preds = %cond.end169.for.body_crit_edge, %cond.end111.for.body_crit_edge
  %last.0575 = phi i32 [ %last.1, %cond.end169.for.body_crit_edge ], [ 32768, %cond.end111.for.body_crit_edge ]
  %k.0574 = phi i32 [ %inc, %cond.end169.for.body_crit_edge ], [ 0, %cond.end111.for.body_crit_edge ]
  %ph.0573 = phi i32 [ %sub, %cond.end169.for.body_crit_edge ], [ 0, %cond.end111.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %k.0574
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %last.0575, i32 %conv)
  %cmp113.not = icmp eq i32 %last.0575, %conv
  br i1 %cmp113.not, label %for.body.do.body142_crit_edge, label %if.then

for.body.do.body142_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body142

if.then:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port, align 4
  %and121 = and i32 %36, 1048575
  %add122 = or i32 %and121, -18874368
  %37 = inttoptr i32 %add122 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %34) #5, !srcloc !49
  %38 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool125.not = icmp eq i32 %39, 0
  br i1 %tobool125.not, label %if.then.do.body142_crit_edge, label %cond.false137

if.then.do.body142_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body142

cond.false137:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %40(i32 noundef %39) #5
  br label %do.body142

do.body142:                                       ; preds = %cond.false137, %if.then.do.body142_crit_edge, %for.body.do.body142_crit_edge
  %last.1 = phi i32 [ %conv, %cond.false137 ], [ %conv, %if.then.do.body142_crit_edge ], [ %last.0575, %for.body.do.body142_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %41 = trunc i32 %ph.0573 to i8
  %conv146 = add i8 %41, 4
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %add148 = add i32 %43, 2
  %and149 = and i32 %add148, 1048575
  %add150 = or i32 %and149, -18874368
  %44 = inttoptr i32 %add150 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 %conv146) #5, !srcloc !49
  %45 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool153.not = icmp eq i32 %46, 0
  br i1 %tobool153.not, label %do.body142.cond.end169_crit_edge, label %cond.false165

do.body142.cond.end169_crit_edge:                 ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end169

cond.false165:                                    ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %47(i32 noundef %46) #5
  br label %cond.end169

cond.end169:                                      ; preds = %cond.false165, %do.body142.cond.end169_crit_edge
  %sub = sub i32 1, %ph.0573
  %inc = add nuw nsw i32 %k.0574, 1
  %exitcond578.not = icmp eq i32 %inc, %count
  br i1 %exitcond578.not, label %cond.end169.do.body170_crit_edge, label %cond.end169.for.body_crit_edge

cond.end169.for.body_crit_edge:                   ; preds = %cond.end169
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cond.end169.do.body170_crit_edge:                 ; preds = %cond.end169
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body170

do.body170:                                       ; preds = %cond.end169.do.body170_crit_edge, %cond.end111.do.body170_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %add174 = add i32 %49, 2
  %and175 = and i32 %add174, 1048575
  %add176 = or i32 %and175, -18874368
  %50 = inttoptr i32 %add176 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 7) #5, !srcloc !49
  %51 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool179.not = icmp eq i32 %52, 0
  br i1 %tobool179.not, label %do.body170.do.body196_crit_edge, label %cond.false191

do.body170.do.body196_crit_edge:                  ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body196

cond.false191:                                    ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #5
  br label %do.body196

do.body196:                                       ; preds = %cond.false191, %do.body170.do.body196_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 4
  %add200 = add i32 %55, 2
  %and201 = and i32 %add200, 1048575
  %add202 = or i32 %and201, -18874368
  %56 = inttoptr i32 %add202 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 4) #5, !srcloc !49
  %57 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool205.not = icmp eq i32 %58, 0
  br i1 %tobool205.not, label %do.body196.sw.epilog_crit_edge, label %cond.false217

do.body196.sw.epilog_crit_edge:                   ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

cond.false217:                                    ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %59(i32 noundef %58) #5
  br label %sw.epilog

sw.bb222:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %count)
  %cmp223 = icmp slt i32 %count, 512
  br i1 %cmp223, label %if.then225, label %sw.bb222.do.body227_crit_edge

sw.bb222.do.body227_crit_edge:                    ; preds = %sw.bb222
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body227

if.then225:                                       ; preds = %sw.bb222
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 132, i32 noundef 1)
  br label %do.body227

do.body227:                                       ; preds = %if.then225, %sw.bb222.do.body227_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %port230 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %60 = ptrtoint ptr %port230 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port230, align 4
  %add231 = add i32 %61, 3
  %and232 = and i32 %add231, 1048575
  %add233 = or i32 %and232, -18874368
  %62 = inttoptr i32 %add233 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 64) #5, !srcloc !49
  %delay235 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %63 = ptrtoint ptr %delay235 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %delay235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool236.not = icmp eq i32 %64, 0
  br i1 %tobool236.not, label %do.body227.cond.end252_crit_edge, label %cond.false248

do.body227.cond.end252_crit_edge:                 ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end252

cond.false248:                                    ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %65(i32 noundef %64) #5
  br label %cond.end252

cond.end252:                                      ; preds = %cond.false248, %do.body227.cond.end252_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp254570 = icmp sgt i32 %count, 0
  br i1 %cmp254570, label %cond.end252.do.body257_crit_edge, label %cond.end252.for.end286_crit_edge

cond.end252.for.end286_crit_edge:                 ; preds = %cond.end252
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end286

cond.end252.do.body257_crit_edge:                 ; preds = %cond.end252
  br label %do.body257

do.body257:                                       ; preds = %for.inc284.do.body257_crit_edge, %cond.end252.do.body257_crit_edge
  %k.1571 = phi i32 [ %inc285, %for.inc284.do.body257_crit_edge ], [ 0, %cond.end252.do.body257_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %arrayidx260 = getelementptr i8, ptr %buf, i32 %k.1571
  %66 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx260, align 1
  %68 = ptrtoint ptr %port230 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port230, align 4
  %add262 = add i32 %69, 4
  %and263 = and i32 %add262, 1048575
  %add264 = or i32 %and263, -18874368
  %70 = inttoptr i32 %add264 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 %67) #5, !srcloc !49
  %71 = ptrtoint ptr %delay235 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %delay235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool267.not = icmp eq i32 %72, 0
  br i1 %tobool267.not, label %do.body257.for.inc284_crit_edge, label %cond.false279

do.body257.for.inc284_crit_edge:                  ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc284

cond.false279:                                    ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %73(i32 noundef %72) #5
  br label %for.inc284

for.inc284:                                       ; preds = %cond.false279, %do.body257.for.inc284_crit_edge
  %inc285 = add nuw nsw i32 %k.1571, 1
  %exitcond577.not = icmp eq i32 %inc285, %count
  br i1 %exitcond577.not, label %for.inc284.for.end286_crit_edge, label %for.inc284.do.body257_crit_edge

for.inc284.do.body257_crit_edge:                  ; preds = %for.inc284
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body257

for.inc284.for.end286_crit_edge:                  ; preds = %for.inc284
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end286

for.end286:                                       ; preds = %for.inc284.for.end286_crit_edge, %cond.end252.for.end286_crit_edge
  br i1 %cmp223, label %if.then289, label %for.end286.sw.epilog_crit_edge

for.end286.sw.epilog_crit_edge:                   ; preds = %for.end286
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then289:                                       ; preds = %for.end286
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 132, i32 noundef 0)
  br label %sw.epilog

sw.bb291:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %count)
  %cmp292 = icmp slt i32 %count, 512
  br i1 %cmp292, label %if.then294, label %sw.bb291.do.body296_crit_edge

sw.bb291.do.body296_crit_edge:                    ; preds = %sw.bb291
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body296

if.then294:                                       ; preds = %sw.bb291
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 132, i32 noundef 1)
  br label %do.body296

do.body296:                                       ; preds = %if.then294, %sw.bb291.do.body296_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %port299 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %74 = ptrtoint ptr %port299 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port299, align 4
  %add300 = add i32 %75, 3
  %and301 = and i32 %add300, 1048575
  %add302 = or i32 %and301, -18874368
  %76 = inttoptr i32 %add302 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %76, i8 64) #5, !srcloc !49
  %delay304 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %77 = ptrtoint ptr %delay304 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %delay304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool305.not = icmp eq i32 %78, 0
  br i1 %tobool305.not, label %do.body296.cond.end321_crit_edge, label %cond.false317

do.body296.cond.end321_crit_edge:                 ; preds = %do.body296
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end321

cond.false317:                                    ; preds = %do.body296
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %79(i32 noundef %78) #5
  br label %cond.end321

cond.end321:                                      ; preds = %cond.false317, %do.body296.cond.end321_crit_edge
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp323568 = icmp sgt i32 %count, 1
  br i1 %cmp323568, label %cond.end321.do.body326_crit_edge, label %cond.end321.for.end355_crit_edge

cond.end321.for.end355_crit_edge:                 ; preds = %cond.end321
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end355

cond.end321.do.body326_crit_edge:                 ; preds = %cond.end321
  br label %do.body326

do.body326:                                       ; preds = %for.inc353.do.body326_crit_edge, %cond.end321.do.body326_crit_edge
  %k.2569 = phi i32 [ %inc354, %for.inc353.do.body326_crit_edge ], [ 0, %cond.end321.do.body326_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %arrayidx329 = getelementptr i16, ptr %buf, i32 %k.2569
  %80 = ptrtoint ptr %arrayidx329 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx329, align 2
  %82 = tail call i16 @llvm.bswap.i16(i16 %81)
  %83 = ptrtoint ptr %port299 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %port299, align 4
  %add331 = add i32 %84, 4
  %and332 = and i32 %add331, 1048575
  %add333 = or i32 %and332, -18874368
  %85 = inttoptr i32 %add333 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %85, i16 %82) #5, !srcloc !98
  %86 = ptrtoint ptr %delay304 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %delay304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool336.not = icmp eq i32 %87, 0
  br i1 %tobool336.not, label %do.body326.for.inc353_crit_edge, label %cond.false348

do.body326.for.inc353_crit_edge:                  ; preds = %do.body326
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc353

cond.false348:                                    ; preds = %do.body326
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %88(i32 noundef %87) #5
  br label %for.inc353

for.inc353:                                       ; preds = %cond.false348, %do.body326.for.inc353_crit_edge
  %inc354 = add nuw nsw i32 %k.2569, 1
  %exitcond576.not = icmp eq i32 %inc354, %div
  br i1 %exitcond576.not, label %for.inc353.for.end355_crit_edge, label %for.inc353.do.body326_crit_edge

for.inc353.do.body326_crit_edge:                  ; preds = %for.inc353
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body326

for.inc353.for.end355_crit_edge:                  ; preds = %for.inc353
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end355

for.end355:                                       ; preds = %for.inc353.for.end355_crit_edge, %cond.end321.for.end355_crit_edge
  br i1 %cmp292, label %if.then358, label %for.end355.sw.epilog_crit_edge

for.end355.sw.epilog_crit_edge:                   ; preds = %for.end355
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then358:                                       ; preds = %for.end355
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 132, i32 noundef 0)
  br label %sw.epilog

sw.bb360:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %count)
  %cmp361 = icmp slt i32 %count, 512
  br i1 %cmp361, label %if.then363, label %sw.bb360.do.body365_crit_edge

sw.bb360.do.body365_crit_edge:                    ; preds = %sw.bb360
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body365

if.then363:                                       ; preds = %sw.bb360
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 132, i32 noundef 1)
  br label %do.body365

do.body365:                                       ; preds = %if.then363, %sw.bb360.do.body365_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %port368 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %89 = ptrtoint ptr %port368 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %port368, align 4
  %add369 = add i32 %90, 3
  %and370 = and i32 %add369, 1048575
  %add371 = or i32 %and370, -18874368
  %91 = inttoptr i32 %add371 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 64) #5, !srcloc !49
  %delay373 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %92 = ptrtoint ptr %delay373 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %delay373, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool374.not = icmp eq i32 %93, 0
  br i1 %tobool374.not, label %do.body365.cond.end390_crit_edge, label %cond.false386

do.body365.cond.end390_crit_edge:                 ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end390

cond.false386:                                    ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %94(i32 noundef %93) #5
  br label %cond.end390

cond.end390:                                      ; preds = %cond.false386, %do.body365.cond.end390_crit_edge
  %div392 = sdiv i32 %count, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp393566 = icmp sgt i32 %count, 3
  br i1 %cmp393566, label %cond.end390.do.body396_crit_edge, label %cond.end390.for.end425_crit_edge

cond.end390.for.end425_crit_edge:                 ; preds = %cond.end390
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end425

cond.end390.do.body396_crit_edge:                 ; preds = %cond.end390
  br label %do.body396

do.body396:                                       ; preds = %for.inc423.do.body396_crit_edge, %cond.end390.do.body396_crit_edge
  %k.3567 = phi i32 [ %inc424, %for.inc423.do.body396_crit_edge ], [ 0, %cond.end390.do.body396_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %arrayidx399 = getelementptr i32, ptr %buf, i32 %k.3567
  %95 = ptrtoint ptr %arrayidx399 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx399, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  %98 = ptrtoint ptr %port368 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %port368, align 4
  %add401 = add i32 %99, 4
  %and402 = and i32 %add401, 1048575
  %add403 = or i32 %and402, -18874368
  %100 = inttoptr i32 %add403 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %100, i32 %97) #5, !srcloc !101
  %101 = ptrtoint ptr %delay373 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %delay373, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool406.not = icmp eq i32 %102, 0
  br i1 %tobool406.not, label %do.body396.for.inc423_crit_edge, label %cond.false418

do.body396.for.inc423_crit_edge:                  ; preds = %do.body396
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc423

cond.false418:                                    ; preds = %do.body396
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %103(i32 noundef %102) #5
  br label %for.inc423

for.inc423:                                       ; preds = %cond.false418, %do.body396.for.inc423_crit_edge
  %inc424 = add nuw nsw i32 %k.3567, 1
  %exitcond.not = icmp eq i32 %inc424, %div392
  br i1 %exitcond.not, label %for.inc423.for.end425_crit_edge, label %for.inc423.do.body396_crit_edge

for.inc423.do.body396_crit_edge:                  ; preds = %for.inc423
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body396

for.inc423.for.end425_crit_edge:                  ; preds = %for.inc423
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end425

for.end425:                                       ; preds = %for.inc423.for.end425_crit_edge, %cond.end390.for.end425_crit_edge
  br i1 %cmp361, label %if.then428, label %for.end425.sw.epilog_crit_edge

for.end425.sw.epilog_crit_edge:                   ; preds = %for.end425
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then428:                                       ; preds = %for.end425
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 132, i32 noundef 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then428, %for.end425.sw.epilog_crit_edge, %if.then358, %for.end355.sw.epilog_crit_edge, %if.then289, %for.end286.sw.epilog_crit_edge, %cond.false217, %do.body196.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epia_read_block(ptr nocapture noundef readonly %pi, ptr nocapture noundef writeonly %buf, i32 noundef %count) #2 align 64 {
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
    i32 1, label %do.body254
    i32 2, label %do.body587
    i32 3, label %sw.bb809
    i32 4, label %sw.bb927
    i32 5, label %sw.bb1047
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 -127) #5, !srcloc !49
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add16 = add i32 %10, 2
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %11 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 1) #5, !srcloc !49
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add41 = add i32 %16, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %17 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 3) #5, !srcloc !49
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %and67 = and i32 %22, 1048575
  %add68 = or i32 %and67, -18874368
  %23 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 -63) #5, !srcloc !49
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp871523 = icmp sgt i32 %count, 0
  br i1 %cmp871523, label %cond.end86.do.body88_crit_edge, label %cond.end86.do.body201_crit_edge

cond.end86.do.body201_crit_edge:                  ; preds = %cond.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body201

cond.end86.do.body88_crit_edge:                   ; preds = %cond.end86
  br label %do.body88

do.body88:                                        ; preds = %cond.end186.do.body88_crit_edge, %cond.end86.do.body88_crit_edge
  %k.01525 = phi i32 [ %inc, %cond.end186.do.body88_crit_edge ], [ 0, %cond.end86.do.body88_crit_edge ]
  %ph.01524 = phi i32 [ %sub, %cond.end186.do.body88_crit_edge ], [ 1, %cond.end86.do.body88_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %27 = trunc i32 %ph.01524 to i8
  %conv = add i8 %27, 2
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %add93 = add i32 %29, 2
  %and94 = and i32 %add93, 1048575
  %add95 = or i32 %and94, -18874368
  %30 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %conv) #5, !srcloc !49
  %31 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool98.not = icmp eq i32 %32, 0
  br i1 %tobool98.not, label %do.body88.cond.end132_crit_edge, label %cond.false110

do.body88.cond.end132_crit_edge:                  ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end132

cond.false110:                                    ; preds = %do.body88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %33(i32 noundef %32) #5
  %34 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool116.not = icmp eq i32 %.pr, 0
  br i1 %tobool116.not, label %cond.false110.cond.end132_crit_edge, label %cond.false128

cond.false110.cond.end132_crit_edge:              ; preds = %cond.false110
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end132

cond.false128:                                    ; preds = %cond.false110
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %35(i32 noundef %.pr) #5
  br label %cond.end132

cond.end132:                                      ; preds = %cond.false128, %cond.false110.cond.end132_crit_edge, %do.body88.cond.end132_crit_edge
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add134 = add i32 %37, 1
  %and135 = and i32 %add134, 1048575
  %add136 = or i32 %and135, -18874368
  %38 = inttoptr i32 %add136 to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %conv145 = add i8 %27, 4
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %add147 = add i32 %41, 2
  %and148 = and i32 %add147, 1048575
  %add149 = or i32 %and148, -18874368
  %42 = inttoptr i32 %add149 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %conv145) #5, !srcloc !49
  %43 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool152.not = icmp eq i32 %44, 0
  br i1 %tobool152.not, label %cond.end132.cond.end186_crit_edge, label %cond.false164

cond.end132.cond.end186_crit_edge:                ; preds = %cond.end132
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end186

cond.false164:                                    ; preds = %cond.end132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %45(i32 noundef %44) #5
  %46 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr1505 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1505)
  %tobool170.not = icmp eq i32 %.pr1505, 0
  br i1 %tobool170.not, label %cond.false164.cond.end186_crit_edge, label %cond.false182

cond.false164.cond.end186_crit_edge:              ; preds = %cond.false164
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end186

cond.false182:                                    ; preds = %cond.false164
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %47(i32 noundef %.pr1505) #5
  br label %cond.end186

cond.end186:                                      ; preds = %cond.false182, %cond.false164.cond.end186_crit_edge, %cond.end132.cond.end186_crit_edge
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %add189 = add i32 %49, 1
  %and190 = and i32 %add189, 1048575
  %add191 = or i32 %and190, -18874368
  %50 = inttoptr i32 %add191 to ptr
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %50) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  %52 = lshr i8 %39, 4
  %53 = and i8 %51, -16
  %add1991503 = or i8 %53, %52
  %arrayidx = getelementptr i8, ptr %buf, i32 %k.01525
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %add1991503, ptr %arrayidx, align 1
  %sub = sub i32 1, %ph.01524
  %inc = add nuw nsw i32 %k.01525, 1
  %exitcond1530.not = icmp eq i32 %inc, %count
  br i1 %exitcond1530.not, label %cond.end186.do.body201_crit_edge, label %cond.end186.do.body88_crit_edge

cond.end186.do.body88_crit_edge:                  ; preds = %cond.end186
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body88

cond.end186.do.body201_crit_edge:                 ; preds = %cond.end186
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body201

do.body201:                                       ; preds = %cond.end186.do.body201_crit_edge, %cond.end86.do.body201_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port, align 4
  %and206 = and i32 %56, 1048575
  %add207 = or i32 %and206, -18874368
  %57 = inttoptr i32 %add207 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 0) #5, !srcloc !49
  %58 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool210.not = icmp eq i32 %59, 0
  br i1 %tobool210.not, label %do.body201.do.body227_crit_edge, label %cond.false222

do.body201.do.body227_crit_edge:                  ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body227

cond.false222:                                    ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %60(i32 noundef %59) #5
  br label %do.body227

do.body227:                                       ; preds = %cond.false222, %do.body201.do.body227_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %61 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port, align 4
  %add231 = add i32 %62, 2
  %and232 = and i32 %add231, 1048575
  %add233 = or i32 %and232, -18874368
  %63 = inttoptr i32 %add233 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 4) #5, !srcloc !49
  %64 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool236.not = icmp eq i32 %65, 0
  br i1 %tobool236.not, label %do.body227.sw.epilog_crit_edge, label %cond.false248

do.body227.sw.epilog_crit_edge:                   ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

cond.false248:                                    ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %66(i32 noundef %65) #5
  br label %sw.epilog

do.body254:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %port257 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %67 = ptrtoint ptr %port257 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port257, align 4
  %and259 = and i32 %68, 1048575
  %add260 = or i32 %and259, -18874368
  %69 = inttoptr i32 %add260 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %69, i8 -111) #5, !srcloc !49
  %delay262 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %70 = ptrtoint ptr %delay262 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %delay262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool263.not = icmp eq i32 %71, 0
  br i1 %tobool263.not, label %do.body254.do.body280_crit_edge, label %cond.false275

do.body254.do.body280_crit_edge:                  ; preds = %do.body254
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body280

cond.false275:                                    ; preds = %do.body254
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %72(i32 noundef %71) #5
  br label %do.body280

do.body280:                                       ; preds = %cond.false275, %do.body254.do.body280_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %73 = ptrtoint ptr %port257 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %port257, align 4
  %add284 = add i32 %74, 2
  %and285 = and i32 %add284, 1048575
  %add286 = or i32 %and285, -18874368
  %75 = inttoptr i32 %add286 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 1) #5, !srcloc !49
  %76 = ptrtoint ptr %delay262 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %delay262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool289.not = icmp eq i32 %77, 0
  br i1 %tobool289.not, label %do.body280.do.body306_crit_edge, label %cond.false301

do.body280.do.body306_crit_edge:                  ; preds = %do.body280
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body306

cond.false301:                                    ; preds = %do.body280
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %78(i32 noundef %77) #5
  br label %do.body306

do.body306:                                       ; preds = %cond.false301, %do.body280.do.body306_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void @arm_heavy_mb() #5
  %79 = ptrtoint ptr %port257 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %port257, align 4
  %and311 = and i32 %80, 1048575
  %add312 = or i32 %and311, -18874368
  %81 = inttoptr i32 %add312 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %81, i8 16) #5, !srcloc !49
  %82 = ptrtoint ptr %delay262 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %delay262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool315.not = icmp eq i32 %83, 0
  br i1 %tobool315.not, label %do.body306.do.body332_crit_edge, label %cond.false327

do.body306.do.body332_crit_edge:                  ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body332

cond.false327:                                    ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %84(i32 noundef %83) #5
  br label %do.body332

do.body332:                                       ; preds = %cond.false327, %do.body306.do.body332_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %85 = ptrtoint ptr %port257 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %port257, align 4
  %add336 = add i32 %86, 2
  %and337 = and i32 %add336, 1048575
  %add338 = or i32 %and337, -18874368
  %87 = inttoptr i32 %add338 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %87, i8 3) #5, !srcloc !49
  %88 = ptrtoint ptr %delay262 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %delay262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool341.not = icmp eq i32 %89, 0
  br i1 %tobool341.not, label %do.body332.do.body358_crit_edge, label %cond.false353

do.body332.do.body358_crit_edge:                  ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body358

cond.false353:                                    ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %90(i32 noundef %89) #5
  br label %do.body358

do.body358:                                       ; preds = %cond.false353, %do.body332.do.body358_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %91 = ptrtoint ptr %port257 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %port257, align 4
  %and363 = and i32 %92, 1048575
  %add364 = or i32 %and363, -18874368
  %93 = inttoptr i32 %add364 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 81) #5, !srcloc !49
  %94 = ptrtoint ptr %delay262 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %delay262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool367.not = icmp eq i32 %95, 0
  br i1 %tobool367.not, label %do.body358.do.body384_crit_edge, label %cond.false379

do.body358.do.body384_crit_edge:                  ; preds = %do.body358
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body384

cond.false379:                                    ; preds = %do.body358
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %96(i32 noundef %95) #5
  br label %do.body384

do.body384:                                       ; preds = %cond.false379, %do.body358.do.body384_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %97 = ptrtoint ptr %port257 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %port257, align 4
  %add388 = add i32 %98, 2
  %and389 = and i32 %add388, 1048575
  %add390 = or i32 %and389, -18874368
  %99 = inttoptr i32 %add390 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %99, i8 5) #5, !srcloc !49
  %100 = ptrtoint ptr %delay262 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %delay262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool393.not = icmp eq i32 %101, 0
  br i1 %tobool393.not, label %do.body384.do.body410_crit_edge, label %cond.false405

do.body384.do.body410_crit_edge:                  ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body410

cond.false405:                                    ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %102(i32 noundef %101) #5
  br label %do.body410

do.body410:                                       ; preds = %cond.false405, %do.body384.do.body410_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  tail call void @arm_heavy_mb() #5
  %103 = ptrtoint ptr %port257 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %port257, align 4
  %and415 = and i32 %104, 1048575
  %add416 = or i32 %and415, -18874368
  %105 = inttoptr i32 %add416 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %105, i8 -47) #5, !srcloc !49
  %106 = ptrtoint ptr %delay262 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %delay262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool419.not = icmp eq i32 %107, 0
  br i1 %tobool419.not, label %do.body410.cond.end435_crit_edge, label %cond.false431

do.body410.cond.end435_crit_edge:                 ; preds = %do.body410
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end435

cond.false431:                                    ; preds = %do.body410
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %108(i32 noundef %107) #5
  br label %cond.end435

cond.end435:                                      ; preds = %cond.false431, %do.body410.cond.end435_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp4371520 = icmp sgt i32 %count, 0
  br i1 %cmp4371520, label %cond.end435.do.body440_crit_edge, label %cond.end435.do.body534_crit_edge

cond.end435.do.body534_crit_edge:                 ; preds = %cond.end435
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body534

cond.end435.do.body440_crit_edge:                 ; preds = %cond.end435
  br label %do.body440

do.body440:                                       ; preds = %cond.end513.do.body440_crit_edge, %cond.end435.do.body440_crit_edge
  %k.11522 = phi i32 [ %inc532, %cond.end513.do.body440_crit_edge ], [ 0, %cond.end435.do.body440_crit_edge ]
  %ph.11521 = phi i32 [ %sub530, %cond.end513.do.body440_crit_edge ], [ 1, %cond.end435.do.body440_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  tail call void @arm_heavy_mb() #5
  %109 = trunc i32 %ph.11521 to i8
  %conv444 = add i8 %109, 4
  %110 = ptrtoint ptr %port257 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %port257, align 4
  %add446 = add i32 %111, 2
  %and447 = and i32 %add446, 1048575
  %add448 = or i32 %and447, -18874368
  %112 = inttoptr i32 %add448 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %112, i8 %conv444) #5, !srcloc !49
  %113 = ptrtoint ptr %delay262 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %delay262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool451.not = icmp eq i32 %114, 0
  br i1 %tobool451.not, label %do.body440.cond.end485_crit_edge, label %cond.false463

do.body440.cond.end485_crit_edge:                 ; preds = %do.body440
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end485

cond.false463:                                    ; preds = %do.body440
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %115(i32 noundef %114) #5
  %116 = ptrtoint ptr %delay262 to i32
  call void @__asan_load4_noabort(i32 %116)
  %.pr1507 = load i32, ptr %delay262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1507)
  %tobool469.not = icmp eq i32 %.pr1507, 0
  br i1 %tobool469.not, label %cond.false463.cond.end485_crit_edge, label %cond.false481

cond.false463.cond.end485_crit_edge:              ; preds = %cond.false463
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end485

cond.false481:                                    ; preds = %cond.false463
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %117(i32 noundef %.pr1507) #5
  br label %cond.end485

cond.end485:                                      ; preds = %cond.false481, %cond.false463.cond.end485_crit_edge, %do.body440.cond.end485_crit_edge
  %118 = ptrtoint ptr %port257 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %port257, align 4
  %add488 = add i32 %119, 1
  %and489 = and i32 %add488, 1048575
  %add490 = or i32 %and489, -18874368
  %120 = inttoptr i32 %add490 to ptr
  %121 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %120) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  %122 = ptrtoint ptr %delay262 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %delay262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool497.not = icmp eq i32 %123, 0
  br i1 %tobool497.not, label %cond.end485.cond.end513_crit_edge, label %cond.false509

cond.end485.cond.end513_crit_edge:                ; preds = %cond.end485
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end513

cond.false509:                                    ; preds = %cond.end485
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %124(i32 noundef %123) #5
  br label %cond.end513

cond.end513:                                      ; preds = %cond.false509, %cond.end485.cond.end513_crit_edge
  %125 = ptrtoint ptr %port257 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %port257, align 4
  %add516 = add i32 %126, 2
  %and517 = and i32 %add516, 1048575
  %add518 = or i32 %and517, -18874368
  %127 = inttoptr i32 %add518 to ptr
  %128 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %127) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  %129 = lshr i8 %121, 3
  %shl = shl i8 %128, 4
  %and526 = and i8 %shl, -32
  %add527 = or i8 %and526, %129
  %arrayidx529 = getelementptr i8, ptr %buf, i32 %k.11522
  %130 = ptrtoint ptr %arrayidx529 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %add527, ptr %arrayidx529, align 1
  %sub530 = sub i32 1, %ph.11521
  %inc532 = add nuw nsw i32 %k.11522, 1
  %exitcond1529.not = icmp eq i32 %inc532, %count
  br i1 %exitcond1529.not, label %cond.end513.do.body534_crit_edge, label %cond.end513.do.body440_crit_edge

cond.end513.do.body440_crit_edge:                 ; preds = %cond.end513
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body440

cond.end513.do.body534_crit_edge:                 ; preds = %cond.end513
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body534

do.body534:                                       ; preds = %cond.end513.do.body534_crit_edge, %cond.end435.do.body534_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void @arm_heavy_mb() #5
  %131 = ptrtoint ptr %port257 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %port257, align 4
  %and539 = and i32 %132, 1048575
  %add540 = or i32 %and539, -18874368
  %133 = inttoptr i32 %add540 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %133, i8 0) #5, !srcloc !49
  %134 = ptrtoint ptr %delay262 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %delay262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool543.not = icmp eq i32 %135, 0
  br i1 %tobool543.not, label %do.body534.do.body560_crit_edge, label %cond.false555

do.body534.do.body560_crit_edge:                  ; preds = %do.body534
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body560

cond.false555:                                    ; preds = %do.body534
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %136(i32 noundef %135) #5
  br label %do.body560

do.body560:                                       ; preds = %cond.false555, %do.body534.do.body560_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @arm_heavy_mb() #5
  %137 = ptrtoint ptr %port257 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %port257, align 4
  %add564 = add i32 %138, 2
  %and565 = and i32 %add564, 1048575
  %add566 = or i32 %and565, -18874368
  %139 = inttoptr i32 %add566 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %139, i8 4) #5, !srcloc !49
  %140 = ptrtoint ptr %delay262 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %delay262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool569.not = icmp eq i32 %141, 0
  br i1 %tobool569.not, label %do.body560.sw.epilog_crit_edge, label %cond.false581

do.body560.sw.epilog_crit_edge:                   ; preds = %do.body560
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

cond.false581:                                    ; preds = %do.body560
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %142(i32 noundef %141) #5
  br label %sw.epilog

do.body587:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %port590 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %143 = ptrtoint ptr %port590 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %port590, align 4
  %and592 = and i32 %144, 1048575
  %add593 = or i32 %and592, -18874368
  %145 = inttoptr i32 %add593 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %145, i8 -119) #5, !srcloc !49
  %delay595 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %146 = ptrtoint ptr %delay595 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %delay595, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool596.not = icmp eq i32 %147, 0
  br i1 %tobool596.not, label %do.body587.do.body613_crit_edge, label %cond.false608

do.body587.do.body613_crit_edge:                  ; preds = %do.body587
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body613

cond.false608:                                    ; preds = %do.body587
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %148(i32 noundef %147) #5
  br label %do.body613

do.body613:                                       ; preds = %cond.false608, %do.body587.do.body613_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  tail call void @arm_heavy_mb() #5
  %149 = ptrtoint ptr %port590 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %port590, align 4
  %add617 = add i32 %150, 2
  %and618 = and i32 %add617, 1048575
  %add619 = or i32 %and618, -18874368
  %151 = inttoptr i32 %add619 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %151, i8 1) #5, !srcloc !49
  %152 = ptrtoint ptr %delay595 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %delay595, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool622.not = icmp eq i32 %153, 0
  br i1 %tobool622.not, label %do.body613.do.body639_crit_edge, label %cond.false634

do.body613.do.body639_crit_edge:                  ; preds = %do.body613
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body639

cond.false634:                                    ; preds = %do.body613
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %154(i32 noundef %153) #5
  br label %do.body639

do.body639:                                       ; preds = %cond.false634, %do.body613.do.body639_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void @arm_heavy_mb() #5
  %155 = ptrtoint ptr %port590 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %port590, align 4
  %add643 = add i32 %156, 2
  %and644 = and i32 %add643, 1048575
  %add645 = or i32 %and644, -18874368
  %157 = inttoptr i32 %add645 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %157, i8 35) #5, !srcloc !49
  %158 = ptrtoint ptr %delay595 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %delay595, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool648.not = icmp eq i32 %159, 0
  br i1 %tobool648.not, label %do.body639.do.body665_crit_edge, label %cond.false660

do.body639.do.body665_crit_edge:                  ; preds = %do.body639
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body665

cond.false660:                                    ; preds = %do.body639
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %160 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %160(i32 noundef %159) #5
  br label %do.body665

do.body665:                                       ; preds = %cond.false660, %do.body639.do.body665_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  tail call void @arm_heavy_mb() #5
  %161 = ptrtoint ptr %port590 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %port590, align 4
  %add669 = add i32 %162, 2
  %and670 = and i32 %add669, 1048575
  %add671 = or i32 %and670, -18874368
  %163 = inttoptr i32 %add671 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %163, i8 33) #5, !srcloc !49
  %164 = ptrtoint ptr %delay595 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %delay595, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool674.not = icmp eq i32 %165, 0
  br i1 %tobool674.not, label %do.body665.cond.end690_crit_edge, label %cond.false686

do.body665.cond.end690_crit_edge:                 ; preds = %do.body665
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end690

cond.false686:                                    ; preds = %do.body665
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %166(i32 noundef %165) #5
  br label %cond.end690

cond.end690:                                      ; preds = %cond.false686, %do.body665.cond.end690_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp6921517 = icmp sgt i32 %count, 0
  br i1 %cmp6921517, label %cond.end690.do.body695_crit_edge, label %cond.end690.do.body757_crit_edge

cond.end690.do.body757_crit_edge:                 ; preds = %cond.end690
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body757

cond.end690.do.body695_crit_edge:                 ; preds = %cond.end690
  br label %do.body695

do.body695:                                       ; preds = %cond.end740.do.body695_crit_edge, %cond.end690.do.body695_crit_edge
  %k.21519 = phi i32 [ %inc755, %cond.end740.do.body695_crit_edge ], [ 0, %cond.end690.do.body695_crit_edge ]
  %ph.21518 = phi i32 [ %sub753, %cond.end740.do.body695_crit_edge ], [ 1, %cond.end690.do.body695_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  tail call void @arm_heavy_mb() #5
  %167 = trunc i32 %ph.21518 to i8
  %conv699 = add i8 %167, 36
  %168 = ptrtoint ptr %port590 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %port590, align 4
  %add701 = add i32 %169, 2
  %and702 = and i32 %add701, 1048575
  %add703 = or i32 %and702, -18874368
  %170 = inttoptr i32 %add703 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %170, i8 %conv699) #5, !srcloc !49
  %171 = ptrtoint ptr %delay595 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %delay595, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool706.not = icmp eq i32 %172, 0
  br i1 %tobool706.not, label %do.body695.cond.end740_crit_edge, label %cond.false718

do.body695.cond.end740_crit_edge:                 ; preds = %do.body695
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end740

cond.false718:                                    ; preds = %do.body695
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %173(i32 noundef %172) #5
  %174 = ptrtoint ptr %delay595 to i32
  call void @__asan_load4_noabort(i32 %174)
  %.pr1509 = load i32, ptr %delay595, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1509)
  %tobool724.not = icmp eq i32 %.pr1509, 0
  br i1 %tobool724.not, label %cond.false718.cond.end740_crit_edge, label %cond.false736

cond.false718.cond.end740_crit_edge:              ; preds = %cond.false718
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end740

cond.false736:                                    ; preds = %cond.false718
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %175 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %175(i32 noundef %.pr1509) #5
  br label %cond.end740

cond.end740:                                      ; preds = %cond.false736, %cond.false718.cond.end740_crit_edge, %do.body695.cond.end740_crit_edge
  %176 = ptrtoint ptr %port590 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %port590, align 4
  %and744 = and i32 %177, 1048575
  %add745 = or i32 %and744, -18874368
  %178 = inttoptr i32 %add745 to ptr
  %179 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %178) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  %arrayidx752 = getelementptr i8, ptr %buf, i32 %k.21519
  %180 = ptrtoint ptr %arrayidx752 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %arrayidx752, align 1
  %sub753 = sub i32 1, %ph.21518
  %inc755 = add nuw nsw i32 %k.21519, 1
  %exitcond1528.not = icmp eq i32 %inc755, %count
  br i1 %exitcond1528.not, label %cond.end740.do.body757_crit_edge, label %cond.end740.do.body695_crit_edge

cond.end740.do.body695_crit_edge:                 ; preds = %cond.end740
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body695

cond.end740.do.body757_crit_edge:                 ; preds = %cond.end740
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body757

do.body757:                                       ; preds = %cond.end740.do.body757_crit_edge, %cond.end690.do.body757_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void @arm_heavy_mb() #5
  %181 = ptrtoint ptr %port590 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %port590, align 4
  %add761 = add i32 %182, 2
  %and762 = and i32 %add761, 1048575
  %add763 = or i32 %and762, -18874368
  %183 = inttoptr i32 %add763 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %183, i8 6) #5, !srcloc !49
  %184 = ptrtoint ptr %delay595 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %delay595, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool766.not = icmp eq i32 %185, 0
  br i1 %tobool766.not, label %do.body757.do.body783_crit_edge, label %cond.false778

do.body757.do.body783_crit_edge:                  ; preds = %do.body757
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body783

cond.false778:                                    ; preds = %do.body757
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %186 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %186(i32 noundef %185) #5
  br label %do.body783

do.body783:                                       ; preds = %cond.false778, %do.body757.do.body783_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  tail call void @arm_heavy_mb() #5
  %187 = ptrtoint ptr %port590 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %port590, align 4
  %add787 = add i32 %188, 2
  %and788 = and i32 %add787, 1048575
  %add789 = or i32 %and788, -18874368
  %189 = inttoptr i32 %add789 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %189, i8 4) #5, !srcloc !49
  %190 = ptrtoint ptr %delay595 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %delay595, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool792.not = icmp eq i32 %191, 0
  br i1 %tobool792.not, label %do.body783.sw.epilog_crit_edge, label %cond.false804

do.body783.sw.epilog_crit_edge:                   ; preds = %do.body783
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

cond.false804:                                    ; preds = %do.body783
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %192 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %192(i32 noundef %191) #5
  br label %sw.epilog

sw.bb809:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %count)
  %cmp810 = icmp sgt i32 %count, 512
  br i1 %cmp810, label %if.then, label %sw.bb809.do.body812_crit_edge

sw.bb809.do.body812_crit_edge:                    ; preds = %sw.bb809
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body812

if.then:                                          ; preds = %sw.bb809
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 132, i32 noundef 3)
  br label %do.body812

do.body812:                                       ; preds = %if.then, %sw.bb809.do.body812_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %port815 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %193 = ptrtoint ptr %port815 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %port815, align 4
  %add816 = add i32 %194, 3
  %and817 = and i32 %add816, 1048575
  %add818 = or i32 %and817, -18874368
  %195 = inttoptr i32 %add818 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %195, i8 0) #5, !srcloc !49
  %delay820 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %196 = ptrtoint ptr %delay820 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %delay820, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool821.not = icmp eq i32 %197, 0
  br i1 %tobool821.not, label %do.body812.do.body838_crit_edge, label %cond.false833

do.body812.do.body838_crit_edge:                  ; preds = %do.body812
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body838

cond.false833:                                    ; preds = %do.body812
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %198 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %198(i32 noundef %197) #5
  br label %do.body838

do.body838:                                       ; preds = %cond.false833, %do.body812.do.body838_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %199 = ptrtoint ptr %port815 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %port815, align 4
  %add842 = add i32 %200, 2
  %and843 = and i32 %add842, 1048575
  %add844 = or i32 %and843, -18874368
  %201 = inttoptr i32 %add844 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %201, i8 36) #5, !srcloc !49
  %202 = ptrtoint ptr %delay820 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %delay820, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool847.not = icmp eq i32 %203, 0
  br i1 %tobool847.not, label %do.body838.cond.end863_crit_edge, label %cond.false859

do.body838.cond.end863_crit_edge:                 ; preds = %do.body838
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end863

cond.false859:                                    ; preds = %do.body838
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %204 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %204(i32 noundef %203) #5
  br label %cond.end863

cond.end863:                                      ; preds = %cond.false859, %do.body838.cond.end863_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp8651515 = icmp sgt i32 %count, 0
  br i1 %cmp8651515, label %cond.end863.for.body867_crit_edge, label %cond.end863.do.body901_crit_edge

cond.end863.do.body901_crit_edge:                 ; preds = %cond.end863
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body901

cond.end863.for.body867_crit_edge:                ; preds = %cond.end863
  br label %for.body867

for.body867:                                      ; preds = %cond.end885.for.body867_crit_edge, %cond.end863.for.body867_crit_edge
  %k.31516 = phi i32 [ %inc899, %cond.end885.for.body867_crit_edge ], [ 0, %cond.end863.for.body867_crit_edge ]
  %205 = ptrtoint ptr %delay820 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %delay820, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool869.not = icmp eq i32 %206, 0
  br i1 %tobool869.not, label %for.body867.cond.end885_crit_edge, label %cond.false881

for.body867.cond.end885_crit_edge:                ; preds = %for.body867
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end885

cond.false881:                                    ; preds = %for.body867
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %207 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %207(i32 noundef %206) #5
  br label %cond.end885

cond.end885:                                      ; preds = %cond.false881, %for.body867.cond.end885_crit_edge
  %208 = ptrtoint ptr %port815 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %port815, align 4
  %add888 = add i32 %209, 4
  %and889 = and i32 %add888, 1048575
  %add890 = or i32 %and889, -18874368
  %210 = inttoptr i32 %add890 to ptr
  %211 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %210) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %arrayidx897 = getelementptr i8, ptr %buf, i32 %k.31516
  %212 = ptrtoint ptr %arrayidx897 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %211, ptr %arrayidx897, align 1
  %inc899 = add nuw nsw i32 %k.31516, 1
  %exitcond1527.not = icmp eq i32 %inc899, %count
  br i1 %exitcond1527.not, label %cond.end885.do.body901_crit_edge, label %cond.end885.for.body867_crit_edge

cond.end885.for.body867_crit_edge:                ; preds = %cond.end885
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body867

cond.end885.do.body901_crit_edge:                 ; preds = %cond.end885
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body901

do.body901:                                       ; preds = %cond.end885.do.body901_crit_edge, %cond.end863.do.body901_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %213 = ptrtoint ptr %port815 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %port815, align 4
  %add905 = add i32 %214, 2
  %and906 = and i32 %add905, 1048575
  %add907 = or i32 %and906, -18874368
  %215 = inttoptr i32 %add907 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %215, i8 4) #5, !srcloc !49
  %216 = ptrtoint ptr %delay820 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %delay820, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool910.not = icmp eq i32 %217, 0
  br i1 %tobool910.not, label %do.body901.cond.end926_crit_edge, label %cond.false922

do.body901.cond.end926_crit_edge:                 ; preds = %do.body901
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end926

cond.false922:                                    ; preds = %do.body901
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %218 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %218(i32 noundef %217) #5
  br label %cond.end926

cond.end926:                                      ; preds = %cond.false922, %do.body901.cond.end926_crit_edge
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 132, i32 noundef 0)
  br label %sw.epilog

sw.bb927:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %count)
  %cmp928 = icmp sgt i32 %count, 512
  br i1 %cmp928, label %if.then930, label %sw.bb927.do.body932_crit_edge

sw.bb927.do.body932_crit_edge:                    ; preds = %sw.bb927
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body932

if.then930:                                       ; preds = %sw.bb927
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 132, i32 noundef 3)
  br label %do.body932

do.body932:                                       ; preds = %if.then930, %sw.bb927.do.body932_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  tail call void @arm_heavy_mb() #5
  %port935 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %219 = ptrtoint ptr %port935 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %port935, align 4
  %add936 = add i32 %220, 3
  %and937 = and i32 %add936, 1048575
  %add938 = or i32 %and937, -18874368
  %221 = inttoptr i32 %add938 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %221, i8 0) #5, !srcloc !49
  %delay940 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %222 = ptrtoint ptr %delay940 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %delay940, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool941.not = icmp eq i32 %223, 0
  br i1 %tobool941.not, label %do.body932.do.body958_crit_edge, label %cond.false953

do.body932.do.body958_crit_edge:                  ; preds = %do.body932
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body958

cond.false953:                                    ; preds = %do.body932
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %224 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %224(i32 noundef %223) #5
  br label %do.body958

do.body958:                                       ; preds = %cond.false953, %do.body932.do.body958_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %225 = ptrtoint ptr %port935 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %port935, align 4
  %add962 = add i32 %226, 2
  %and963 = and i32 %add962, 1048575
  %add964 = or i32 %and963, -18874368
  %227 = inttoptr i32 %add964 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %227, i8 36) #5, !srcloc !49
  %228 = ptrtoint ptr %delay940 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %delay940, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %tobool967.not = icmp eq i32 %229, 0
  br i1 %tobool967.not, label %do.body958.cond.end983_crit_edge, label %cond.false979

do.body958.cond.end983_crit_edge:                 ; preds = %do.body958
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end983

cond.false979:                                    ; preds = %do.body958
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %230 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %230(i32 noundef %229) #5
  br label %cond.end983

cond.end983:                                      ; preds = %cond.false979, %do.body958.cond.end983_crit_edge
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp9851513 = icmp sgt i32 %count, 1
  br i1 %cmp9851513, label %cond.end983.for.body987_crit_edge, label %cond.end983.do.body1021_crit_edge

cond.end983.do.body1021_crit_edge:                ; preds = %cond.end983
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1021

cond.end983.for.body987_crit_edge:                ; preds = %cond.end983
  br label %for.body987

for.body987:                                      ; preds = %cond.end1005.for.body987_crit_edge, %cond.end983.for.body987_crit_edge
  %k.41514 = phi i32 [ %inc1019, %cond.end1005.for.body987_crit_edge ], [ 0, %cond.end983.for.body987_crit_edge ]
  %231 = ptrtoint ptr %delay940 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %delay940, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool989.not = icmp eq i32 %232, 0
  br i1 %tobool989.not, label %for.body987.cond.end1005_crit_edge, label %cond.false1001

for.body987.cond.end1005_crit_edge:               ; preds = %for.body987
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1005

cond.false1001:                                   ; preds = %for.body987
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %233 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %233(i32 noundef %232) #5
  br label %cond.end1005

cond.end1005:                                     ; preds = %cond.false1001, %for.body987.cond.end1005_crit_edge
  %234 = ptrtoint ptr %port935 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %port935, align 4
  %add1008 = add i32 %235, 4
  %and1009 = and i32 %add1008, 1048575
  %add1010 = or i32 %and1009, -18874368
  %236 = inttoptr i32 %add1010 to ptr
  %237 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %236) #5, !srcloc !138
  %238 = tail call i16 @llvm.bswap.i16(i16 %237)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %arrayidx1017 = getelementptr i16, ptr %buf, i32 %k.41514
  %239 = ptrtoint ptr %arrayidx1017 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %238, ptr %arrayidx1017, align 2
  %inc1019 = add nuw nsw i32 %k.41514, 1
  %exitcond1526.not = icmp eq i32 %inc1019, %div
  br i1 %exitcond1526.not, label %cond.end1005.do.body1021_crit_edge, label %cond.end1005.for.body987_crit_edge

cond.end1005.for.body987_crit_edge:               ; preds = %cond.end1005
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body987

cond.end1005.do.body1021_crit_edge:               ; preds = %cond.end1005
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1021

do.body1021:                                      ; preds = %cond.end1005.do.body1021_crit_edge, %cond.end983.do.body1021_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %240 = ptrtoint ptr %port935 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %port935, align 4
  %add1025 = add i32 %241, 2
  %and1026 = and i32 %add1025, 1048575
  %add1027 = or i32 %and1026, -18874368
  %242 = inttoptr i32 %add1027 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %242, i8 4) #5, !srcloc !49
  %243 = ptrtoint ptr %delay940 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %delay940, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %tobool1030.not = icmp eq i32 %244, 0
  br i1 %tobool1030.not, label %do.body1021.cond.end1046_crit_edge, label %cond.false1042

do.body1021.cond.end1046_crit_edge:               ; preds = %do.body1021
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1046

cond.false1042:                                   ; preds = %do.body1021
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %245 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %245(i32 noundef %244) #5
  br label %cond.end1046

cond.end1046:                                     ; preds = %cond.false1042, %do.body1021.cond.end1046_crit_edge
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 132, i32 noundef 0)
  br label %sw.epilog

sw.bb1047:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %count)
  %cmp1048 = icmp sgt i32 %count, 512
  br i1 %cmp1048, label %if.then1050, label %sw.bb1047.do.body1052_crit_edge

sw.bb1047.do.body1052_crit_edge:                  ; preds = %sw.bb1047
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1052

if.then1050:                                      ; preds = %sw.bb1047
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 132, i32 noundef 3)
  br label %do.body1052

do.body1052:                                      ; preds = %if.then1050, %sw.bb1047.do.body1052_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  tail call void @arm_heavy_mb() #5
  %port1055 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %246 = ptrtoint ptr %port1055 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %port1055, align 4
  %add1056 = add i32 %247, 3
  %and1057 = and i32 %add1056, 1048575
  %add1058 = or i32 %and1057, -18874368
  %248 = inttoptr i32 %add1058 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %248, i8 0) #5, !srcloc !49
  %delay1060 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %249 = ptrtoint ptr %delay1060 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %delay1060, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool1061.not = icmp eq i32 %250, 0
  br i1 %tobool1061.not, label %do.body1052.do.body1078_crit_edge, label %cond.false1073

do.body1052.do.body1078_crit_edge:                ; preds = %do.body1052
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1078

cond.false1073:                                   ; preds = %do.body1052
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %251 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %251(i32 noundef %250) #5
  br label %do.body1078

do.body1078:                                      ; preds = %cond.false1073, %do.body1052.do.body1078_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %252 = ptrtoint ptr %port1055 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %port1055, align 4
  %add1082 = add i32 %253, 2
  %and1083 = and i32 %add1082, 1048575
  %add1084 = or i32 %and1083, -18874368
  %254 = inttoptr i32 %add1084 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %254, i8 36) #5, !srcloc !49
  %255 = ptrtoint ptr %delay1060 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %delay1060, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool1087.not = icmp eq i32 %256, 0
  br i1 %tobool1087.not, label %do.body1078.cond.end1103_crit_edge, label %cond.false1099

do.body1078.cond.end1103_crit_edge:               ; preds = %do.body1078
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1103

cond.false1099:                                   ; preds = %do.body1078
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %257 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %257(i32 noundef %256) #5
  br label %cond.end1103

cond.end1103:                                     ; preds = %cond.false1099, %do.body1078.cond.end1103_crit_edge
  %div1105 = sdiv i32 %count, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp11061511 = icmp sgt i32 %count, 3
  br i1 %cmp11061511, label %cond.end1103.for.body1108_crit_edge, label %cond.end1103.do.body1140_crit_edge

cond.end1103.do.body1140_crit_edge:               ; preds = %cond.end1103
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1140

cond.end1103.for.body1108_crit_edge:              ; preds = %cond.end1103
  br label %for.body1108

for.body1108:                                     ; preds = %cond.end1126.for.body1108_crit_edge, %cond.end1103.for.body1108_crit_edge
  %k.51512 = phi i32 [ %inc1138, %cond.end1126.for.body1108_crit_edge ], [ 0, %cond.end1103.for.body1108_crit_edge ]
  %258 = ptrtoint ptr %delay1060 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %delay1060, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool1110.not = icmp eq i32 %259, 0
  br i1 %tobool1110.not, label %for.body1108.cond.end1126_crit_edge, label %cond.false1122

for.body1108.cond.end1126_crit_edge:              ; preds = %for.body1108
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1126

cond.false1122:                                   ; preds = %for.body1108
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %260 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %260(i32 noundef %259) #5
  br label %cond.end1126

cond.end1126:                                     ; preds = %cond.false1122, %for.body1108.cond.end1126_crit_edge
  %261 = ptrtoint ptr %port1055 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %port1055, align 4
  %add1129 = add i32 %262, 4
  %and1130 = and i32 %add1129, 1048575
  %add1131 = or i32 %and1130, -18874368
  %263 = inttoptr i32 %add1131 to ptr
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %263) #5, !srcloc !143
  %265 = tail call i32 @llvm.bswap.i32(i32 %264)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  %arrayidx1136 = getelementptr i32, ptr %buf, i32 %k.51512
  %266 = ptrtoint ptr %arrayidx1136 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %265, ptr %arrayidx1136, align 4
  %inc1138 = add nuw nsw i32 %k.51512, 1
  %exitcond.not = icmp eq i32 %inc1138, %div1105
  br i1 %exitcond.not, label %cond.end1126.do.body1140_crit_edge, label %cond.end1126.for.body1108_crit_edge

cond.end1126.for.body1108_crit_edge:              ; preds = %cond.end1126
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body1108

cond.end1126.do.body1140_crit_edge:               ; preds = %cond.end1126
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1140

do.body1140:                                      ; preds = %cond.end1126.do.body1140_crit_edge, %cond.end1103.do.body1140_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  tail call void @arm_heavy_mb() #5
  %267 = ptrtoint ptr %port1055 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %port1055, align 4
  %add1144 = add i32 %268, 2
  %and1145 = and i32 %add1144, 1048575
  %add1146 = or i32 %and1145, -18874368
  %269 = inttoptr i32 %add1146 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %269, i8 4) #5, !srcloc !49
  %270 = ptrtoint ptr %delay1060 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %delay1060, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %tobool1149.not = icmp eq i32 %271, 0
  br i1 %tobool1149.not, label %do.body1140.cond.end1165_crit_edge, label %cond.false1161

do.body1140.cond.end1165_crit_edge:               ; preds = %do.body1140
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1165

cond.false1161:                                   ; preds = %do.body1140
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %272 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %272(i32 noundef %271) #5
  br label %cond.end1165

cond.end1165:                                     ; preds = %cond.false1161, %do.body1140.cond.end1165_crit_edge
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 132, i32 noundef 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end1165, %cond.end1046, %cond.end926, %cond.false804, %do.body783.sw.epilog_crit_edge, %cond.false581, %do.body560.sw.epilog_crit_edge, %cond.false248, %do.body227.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epia_connect(ptr noundef %pi) #2 align 64 {
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
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
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
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  %conv40 = zext i8 %14 to i32
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %15 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv40, ptr %saved_r2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add43 = add i32 %17, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %18 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 4) #5, !srcloc !49
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %and69 = and i32 %23, 1048575
  %add70 = or i32 %and69, -18874368
  %24 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 -96) #5, !srcloc !49
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %and94 = and i32 %29, 1048575
  %add95 = or i32 %and94, -18874368
  %30 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 80) #5, !srcloc !49
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %and119 = and i32 %35, 1048575
  %add120 = or i32 %and119, -18874368
  %36 = inttoptr i32 %add120 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 -64) #5, !srcloc !49
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %and144 = and i32 %41, 1048575
  %add145 = or i32 %and144, -18874368
  %42 = inttoptr i32 %add145 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 48) #5, !srcloc !49
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %and169 = and i32 %47, 1048575
  %add170 = or i32 %and169, -18874368
  %48 = inttoptr i32 %add170 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 -96) #5, !srcloc !49
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port, align 4
  %and194 = and i32 %53, 1048575
  %add195 = or i32 %and194, -18874368
  %54 = inttoptr i32 %add195 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 0) #5, !srcloc !49
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  tail call void @arm_heavy_mb() #5
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port, align 4
  %add218 = add i32 %59, 2
  %and219 = and i32 %add218, 1048575
  %add220 = or i32 %and219, -18874368
  %60 = inttoptr i32 %add220 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 1) #5, !srcloc !49
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !156
  tail call void @arm_heavy_mb() #5
  %64 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port, align 4
  %add243 = add i32 %65, 2
  %and244 = and i32 %add243, 1048575
  %add245 = or i32 %and244, -18874368
  %66 = inttoptr i32 %add245 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 4) #5, !srcloc !49
  %67 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool248.not = icmp eq i32 %68, 0
  br i1 %tobool248.not, label %do.body240.cond.end264_crit_edge, label %cond.false260

do.body240.cond.end264_crit_edge:                 ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end264

cond.false260:                                    ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %69(i32 noundef %68) #5
  br label %cond.end264

cond.end264:                                      ; preds = %cond.false260, %do.body240.cond.end264_crit_edge
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %70 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp265 = icmp sgt i32 %71, 2
  br i1 %cmp265, label %do.body267, label %cond.end264.if.end_crit_edge

cond.end264.if.end_crit_edge:                     ; preds = %cond.end264
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body267:                                       ; preds = %cond.end264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %72 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port, align 4
  %and271 = and i32 %73, 1048575
  %add272 = or i32 %and271, -18874368
  %74 = inttoptr i32 %add272 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 10) #5, !srcloc !49
  %75 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool275.not = icmp eq i32 %76, 0
  br i1 %tobool275.not, label %do.body267.do.body292_crit_edge, label %cond.false287

do.body267.do.body292_crit_edge:                  ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body292

cond.false287:                                    ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %77(i32 noundef %76) #5
  br label %do.body292

do.body292:                                       ; preds = %cond.false287, %do.body267.do.body292_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  tail call void @arm_heavy_mb() #5
  %78 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port, align 4
  %add295 = add i32 %79, 2
  %and296 = and i32 %add295, 1048575
  %add297 = or i32 %and296, -18874368
  %80 = inttoptr i32 %add297 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 1) #5, !srcloc !49
  %81 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool300.not = icmp eq i32 %82, 0
  br i1 %tobool300.not, label %do.body292.do.body317_crit_edge, label %cond.false312

do.body292.do.body317_crit_edge:                  ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body317

cond.false312:                                    ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %83(i32 noundef %82) #5
  br label %do.body317

do.body317:                                       ; preds = %cond.false312, %do.body292.do.body317_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  tail call void @arm_heavy_mb() #5
  %84 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port, align 4
  %add320 = add i32 %85, 2
  %and321 = and i32 %add320, 1048575
  %add322 = or i32 %and321, -18874368
  %86 = inttoptr i32 %add322 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 4) #5, !srcloc !49
  %87 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool325.not = icmp eq i32 %88, 0
  br i1 %tobool325.not, label %do.body317.do.body342_crit_edge, label %cond.false337

do.body317.do.body342_crit_edge:                  ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body342

cond.false337:                                    ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %89(i32 noundef %88) #5
  br label %do.body342

do.body342:                                       ; preds = %cond.false337, %do.body317.do.body342_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port, align 4
  %and346 = and i32 %91, 1048575
  %add347 = or i32 %and346, -18874368
  %92 = inttoptr i32 %add347 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 -126) #5, !srcloc !49
  %93 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool350.not = icmp eq i32 %94, 0
  br i1 %tobool350.not, label %do.body342.do.body367_crit_edge, label %cond.false362

do.body342.do.body367_crit_edge:                  ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body367

cond.false362:                                    ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %95(i32 noundef %94) #5
  br label %do.body367

do.body367:                                       ; preds = %cond.false362, %do.body342.do.body367_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void @arm_heavy_mb() #5
  %96 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port, align 4
  %add370 = add i32 %97, 2
  %and371 = and i32 %add370, 1048575
  %add372 = or i32 %and371, -18874368
  %98 = inttoptr i32 %add372 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 4) #5, !srcloc !49
  %99 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool375.not = icmp eq i32 %100, 0
  br i1 %tobool375.not, label %do.body367.do.body392_crit_edge, label %cond.false387

do.body367.do.body392_crit_edge:                  ; preds = %do.body367
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body392

cond.false387:                                    ; preds = %do.body367
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %101(i32 noundef %100) #5
  br label %do.body392

do.body392:                                       ; preds = %cond.false387, %do.body367.do.body392_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void @arm_heavy_mb() #5
  %102 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %port, align 4
  %add395 = add i32 %103, 2
  %and396 = and i32 %add395, 1048575
  %add397 = or i32 %and396, -18874368
  %104 = inttoptr i32 %add397 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %104, i8 12) #5, !srcloc !49
  %105 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool400.not = icmp eq i32 %106, 0
  br i1 %tobool400.not, label %do.body392.do.body417_crit_edge, label %cond.false412

do.body392.do.body417_crit_edge:                  ; preds = %do.body392
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body417

cond.false412:                                    ; preds = %do.body392
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %107(i32 noundef %106) #5
  br label %do.body417

do.body417:                                       ; preds = %cond.false412, %do.body392.do.body417_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  tail call void @arm_heavy_mb() #5
  %108 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %port, align 4
  %add420 = add i32 %109, 2
  %and421 = and i32 %add420, 1048575
  %add422 = or i32 %and421, -18874368
  %110 = inttoptr i32 %add422 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %110, i8 4) #5, !srcloc !49
  %111 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool425.not = icmp eq i32 %112, 0
  br i1 %tobool425.not, label %do.body417.do.body442_crit_edge, label %cond.false437

do.body417.do.body442_crit_edge:                  ; preds = %do.body417
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body442

cond.false437:                                    ; preds = %do.body417
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %113(i32 noundef %112) #5
  br label %do.body442

do.body442:                                       ; preds = %cond.false437, %do.body417.do.body442_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %114 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %port, align 4
  %add445 = add i32 %115, 2
  %and446 = and i32 %add445, 1048575
  %add447 = or i32 %and446, -18874368
  %116 = inttoptr i32 %add447 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %116, i8 36) #5, !srcloc !49
  %117 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool450.not = icmp eq i32 %118, 0
  br i1 %tobool450.not, label %do.body442.do.body467_crit_edge, label %cond.false462

do.body442.do.body467_crit_edge:                  ; preds = %do.body442
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body467

cond.false462:                                    ; preds = %do.body442
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %119(i32 noundef %118) #5
  br label %do.body467

do.body467:                                       ; preds = %cond.false462, %do.body442.do.body467_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  tail call void @arm_heavy_mb() #5
  %120 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %port, align 4
  %add470 = add i32 %121, 2
  %and471 = and i32 %add470, 1048575
  %add472 = or i32 %and471, -18874368
  %122 = inttoptr i32 %add472 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %122, i8 38) #5, !srcloc !49
  %123 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool475.not = icmp eq i32 %124, 0
  br i1 %tobool475.not, label %do.body467.do.body492_crit_edge, label %cond.false487

do.body467.do.body492_crit_edge:                  ; preds = %do.body467
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body492

cond.false487:                                    ; preds = %do.body467
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %125(i32 noundef %124) #5
  br label %do.body492

do.body492:                                       ; preds = %cond.false487, %do.body467.do.body492_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  tail call void @arm_heavy_mb() #5
  %126 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %port, align 4
  %add495 = add i32 %127, 2
  %and496 = and i32 %add495, 1048575
  %add497 = or i32 %and496, -18874368
  %128 = inttoptr i32 %add497 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %128, i8 4) #5, !srcloc !49
  %129 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool500.not = icmp eq i32 %130, 0
  br i1 %tobool500.not, label %do.body492.if.end_crit_edge, label %cond.false512

do.body492.if.end_crit_edge:                      ; preds = %do.body492
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cond.false512:                                    ; preds = %do.body492
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %131(i32 noundef %130) #5
  br label %if.end

if.end:                                           ; preds = %cond.false512, %do.body492.if.end_crit_edge, %cond.end264.if.end_crit_edge
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 134, i32 noundef 8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epia_disconnect(ptr nocapture noundef readonly %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #5, !srcloc !49
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add16 = add i32 %9, 2
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %10 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 1) #5, !srcloc !49
  %11 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool21.not = icmp eq i32 %12, 0
  br i1 %tobool21.not, label %do.body13.do.body38_crit_edge, label %cond.false33

do.body13.do.body38_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body38

cond.false33:                                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %12) #5
  br label %do.body38

do.body38:                                        ; preds = %cond.false33, %do.body13.do.body38_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %add41 = add i32 %15, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %16 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 4) #5, !srcloc !49
  %17 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool46.not = icmp eq i32 %18, 0
  br i1 %tobool46.not, label %do.body38.do.body63_crit_edge, label %cond.false58

do.body38.do.body63_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body63

cond.false58:                                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %19(i32 noundef %18) #5
  br label %do.body63

do.body63:                                        ; preds = %cond.false58, %do.body38.do.body63_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %saved_r0, align 4
  %conv66 = trunc i32 %21 to i8
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %and69 = and i32 %23, 1048575
  %add70 = or i32 %and69, -18874368
  %24 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv66) #5, !srcloc !49
  %25 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool73.not = icmp eq i32 %26, 0
  br i1 %tobool73.not, label %do.body63.do.body90_crit_edge, label %cond.false85

do.body63.do.body90_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body90

cond.false85:                                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %27(i32 noundef %26) #5
  br label %do.body90

do.body90:                                        ; preds = %cond.false85, %do.body63.do.body90_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !171
  tail call void @arm_heavy_mb() #5
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %28 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %saved_r2, align 4
  %conv92 = trunc i32 %29 to i8
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %add94 = add i32 %31, 2
  %and95 = and i32 %add94, 1048575
  %add96 = or i32 %and95, -18874368
  %32 = inttoptr i32 %add96 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %conv92) #5, !srcloc !49
  %33 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool99.not = icmp eq i32 %34, 0
  br i1 %tobool99.not, label %do.body90.cond.end115_crit_edge, label %cond.false111

do.body90.cond.end115_crit_edge:                  ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end115

cond.false111:                                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %35(i32 noundef %34) #5
  br label %cond.end115

cond.end115:                                      ; preds = %cond.false111, %do.body90.cond.end115_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epia_test_proto(ptr noundef %pi, ptr nocapture noundef %scratch, i32 noundef %verbose) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @epia_connect(ptr noundef %pi)
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 6, i32 noundef 160)
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %entry
  %e.sroa.0.0 = phi i32 [ 0, %entry ], [ %spec.select89, %for.body3.for.body3_crit_edge ]
  %k.080 = phi i32 [ 0, %entry ], [ %inc7, %for.body3.for.body3_crit_edge ]
  %xor = xor i32 %k.080, 170
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 2, i32 noundef %xor)
  %xor4 = xor i32 %k.080, 85
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 3, i32 noundef %xor4)
  %call = tail call i32 @epia_read_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 2)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %xor)
  %cmp6.not = icmp ne i32 %call, %xor
  %inc = zext i1 %cmp6.not to i32
  %spec.select89 = add i32 %e.sroa.0.0, %inc
  %inc7 = add nuw nsw i32 %k.080, 1
  %exitcond.not = icmp eq i32 %inc7, 256
  br i1 %exitcond.not, label %for.end, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3

for.end:                                          ; preds = %for.body3
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 2, i32 noundef 1)
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 3, i32 noundef 1)
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 6, i32 noundef 176)
  br label %for.body3.1

for.body3.1:                                      ; preds = %for.body3.1.for.body3.1_crit_edge, %for.end
  %e.sroa.7.0 = phi i32 [ 0, %for.end ], [ %spec.select90, %for.body3.1.for.body3.1_crit_edge ]
  %k.080.1 = phi i32 [ 0, %for.end ], [ %inc7.1, %for.body3.1.for.body3.1_crit_edge ]
  %xor.1 = xor i32 %k.080.1, 170
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 2, i32 noundef %xor.1)
  %xor4.1 = xor i32 %k.080.1, 85
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 3, i32 noundef %xor4.1)
  %call.1 = tail call i32 @epia_read_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 2)
  call void @__sanitizer_cov_trace_cmp4(i32 %call.1, i32 %xor.1)
  %cmp6.not.1 = icmp ne i32 %call.1, %xor.1
  %inc.1 = zext i1 %cmp6.not.1 to i32
  %spec.select90 = add i32 %e.sroa.7.0, %inc.1
  %inc7.1 = add nuw nsw i32 %k.080.1, 1
  %exitcond.1.not = icmp eq i32 %inc7.1, 256
  br i1 %exitcond.1.not, label %for.end.1, label %for.body3.1.for.body3.1_crit_edge

for.body3.1.for.body3.1_crit_edge:                ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.1

for.end.1:                                        ; preds = %for.body3.1
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 2, i32 noundef 1)
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 3, i32 noundef 1)
  tail call void @epia_disconnect(ptr noundef %pi)
  tail call void @epia_connect(ptr noundef %pi)
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 132, i32 noundef 8)
  tail call void @epia_read_block(ptr noundef %pi, ptr noundef %scratch, i32 noundef 512)
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.end.1
  %f.083 = phi i32 [ 0, %for.end.1 ], [ %f.2, %for.body13.for.body13_crit_edge ]
  %k.182 = phi i32 [ 0, %for.end.1 ], [ %add16, %for.body13.for.body13_crit_edge ]
  %mul14 = shl nuw i32 %k.182, 1
  %arrayidx15 = getelementptr i8, ptr %scratch, i32 %mul14
  %0 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx15, align 1
  %add16 = add nuw nsw i32 %k.182, 1
  %2 = trunc i32 %add16 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %2)
  %cmp18.not = icmp ne i8 %1, %2
  %inc21 = zext i1 %cmp18.not to i32
  %spec.select = add i32 %f.083, %inc21
  %add24 = or i32 %mul14, 1
  %arrayidx25 = getelementptr i8, ptr %scratch, i32 %add24
  %3 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx25, align 1
  %5 = trunc i32 %k.182 to i8
  %6 = sub i8 -2, %5
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp29.not = icmp ne i8 %4, %6
  %inc32 = zext i1 %cmp29.not to i32
  %f.2 = add i32 %spec.select, %inc32
  %exitcond85.not = icmp eq i32 %add16, 256
  br i1 %exitcond85.not, label %for.end36, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body13

for.end36:                                        ; preds = %for.body13
  tail call void @epia_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 132, i32 noundef 0)
  tail call void @epia_disconnect(ptr noundef %pi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %verbose)
  %tobool.not = icmp eq i32 %verbose, 0
  br i1 %tobool.not, label %for.end36.if.end41_crit_edge, label %do.end

for.end36.if.end41_crit_edge:                     ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

do.end:                                           ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 5
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %spec.select89, i32 noundef %spec.select90, i32 noundef %f.2) #8
  br label %if.end41

if.end41:                                         ; preds = %do.end, %for.end36.if.end41_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select89)
  %tobool43.not = icmp ne i32 %spec.select89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select90)
  %tobool45.not = icmp ne i32 %spec.select90, 0
  %or.cond = select i1 %tobool43.not, i1 %tobool45.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f.2)
  %tobool46 = icmp ne i32 %f.2, 0
  %narrow = select i1 %or.cond, i1 true, i1 %tobool46
  %13 = zext i1 %narrow to i32
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epia_log_adapter(ptr nocapture noundef readonly %pi, ptr nocapture noundef readnone %scratch, i32 noundef %verbose) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 5
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %3) #8
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @__const.epia_log_adapter.mode_string, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %5, ptr noundef %7, i32 noundef %9) #8
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @paride_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !37, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__UNIQUE_ID_file160, !1, !"__UNIQUE_ID_file160", i1 false, i1 false}
!1 = !{!"../drivers/block/paride/epia.c", i32 314, i32 1}
!2 = !{ptr @__UNIQUE_ID_license161, !1, !"__UNIQUE_ID_license161", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_epia__162_315_epia_init6, !4, !"__initcall__kmod_epia__162_315_epia_init6", i1 false, i1 false}
!4 = !{!"../drivers/block/paride/epia.c", i32 315, i32 1}
!5 = !{ptr @__exitcall_epia_exit, !6, !"__exitcall_epia_exit", i1 false, i1 false}
!6 = !{!"../drivers/block/paride/epia.c", i32 316, i32 1}
!7 = !{ptr @epia, !8, !"epia", i1 false, i1 false}
!8 = !{!"../drivers/block/paride/epia.c", i32 287, i32 27}
!9 = !{ptr @cont_map, !10, !"cont_map", i1 false, i1 false}
!10 = !{!"../drivers/block/paride/epia.c", i32 47, i32 12}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/block/paride/epia.c", i32 266, i32 13}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @epia_test_proto._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @epia_test_proto._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/block/paride/epia.c", i32 277, i32 36}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/block/paride/epia.c", i32 277, i32 44}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/block/paride/epia.c", i32 277, i32 50}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/block/paride/epia.c", i32 278, i32 8}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/block/paride/epia.c", i32 278, i32 16}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/block/paride/epia.c", i32 278, i32 25}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/block/paride/epia.c", i32 280, i32 9}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @epia_log_adapter._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @epia_log_adapter._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/block/paride/epia.c", i32 282, i32 9}
!37 = !{ptr @epia_log_adapter._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @epia_log_adapter._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2152134645}
!49 = !{i64 4536273}
!50 = !{i64 2152135655}
!51 = !{i64 2152136671}
!52 = !{i64 2152137681}
!53 = !{i64 2152138691}
!54 = !{i64 2152139701}
!55 = !{i64 2152140717}
!56 = !{i64 2152145788}
!57 = !{i64 2152107588}
!58 = !{i64 2152108598}
!59 = !{i64 2152109608}
!60 = !{i64 2152110618}
!61 = !{i64 4536668}
!62 = !{i64 2152112313}
!63 = !{i64 2152112581}
!64 = !{i64 2152114276}
!65 = !{i64 2152114544}
!66 = !{i64 2152115583}
!67 = !{i64 2152116593}
!68 = !{i64 2152117618}
!69 = !{i64 2152118628}
!70 = !{i64 2152119638}
!71 = !{i64 2152120663}
!72 = !{i64 2152122358}
!73 = !{i64 2152123311}
!74 = !{i64 2152123579}
!75 = !{i64 2152124623}
!76 = !{i64 2152125633}
!77 = !{i64 2152126652}
!78 = !{i64 2152127671}
!79 = !{i64 2152129366}
!80 = !{i64 2152129634}
!81 = !{i64 2152130653}
!82 = !{i64 2152131672}
!83 = !{i64 2152133367}
!84 = !{i64 2152133635}
!85 = !{i64 2152216255}
!86 = !{i64 2152217265}
!87 = !{i64 2152218275}
!88 = !{i64 2152219285}
!89 = !{i64 2152220295}
!90 = !{i64 2152221305}
!91 = !{i64 2152222324}
!92 = !{i64 2152223334}
!93 = !{i64 2152224344}
!94 = !{i64 2152225396}
!95 = !{i64 2152226421}
!96 = !{i64 2152227506}
!97 = !{i64 2152228557}
!98 = !{i64 4535850}
!99 = !{i64 2152229760}
!100 = !{i64 2152230811}
!101 = !{i64 4536470}
!102 = !{i64 2152173169}
!103 = !{i64 2152174179}
!104 = !{i64 2152175189}
!105 = !{i64 2152176208}
!106 = !{i64 2152177227}
!107 = !{i64 2152178922}
!108 = !{i64 2152179199}
!109 = !{i64 2152180894}
!110 = !{i64 2152181191}
!111 = !{i64 2152182201}
!112 = !{i64 2152183220}
!113 = !{i64 2152184230}
!114 = !{i64 2152185249}
!115 = !{i64 2152186259}
!116 = !{i64 2152187278}
!117 = !{i64 2152188288}
!118 = !{i64 2152189307}
!119 = !{i64 2152190326}
!120 = !{i64 2152192021}
!121 = !{i64 2152192974}
!122 = !{i64 2152193276}
!123 = !{i64 2152194286}
!124 = !{i64 2152195305}
!125 = !{i64 2152196315}
!126 = !{i64 2152197334}
!127 = !{i64 2152198353}
!128 = !{i64 2152199381}
!129 = !{i64 2152201076}
!130 = !{i64 2152201344}
!131 = !{i64 2152202354}
!132 = !{i64 2152203397}
!133 = !{i64 2152204416}
!134 = !{i64 2152206111}
!135 = !{i64 2152206379}
!136 = !{i64 2152207455}
!137 = !{i64 2152208474}
!138 = !{i64 4536050}
!139 = !{i64 2152210521}
!140 = !{i64 2152210789}
!141 = !{i64 2152211865}
!142 = !{i64 2152212884}
!143 = !{i64 4536888}
!144 = !{i64 2152214935}
!145 = !{i64 2152215203}
!146 = !{i64 2152147483}
!147 = !{i64 2152148436}
!148 = !{i64 2152148704}
!149 = !{i64 2152149723}
!150 = !{i64 2152150742}
!151 = !{i64 2152151761}
!152 = !{i64 2152152780}
!153 = !{i64 2152153799}
!154 = !{i64 2152154809}
!155 = !{i64 2152155819}
!156 = !{i64 2152156829}
!157 = !{i64 2152157845}
!158 = !{i64 2152158855}
!159 = !{i64 2152159865}
!160 = !{i64 2152160884}
!161 = !{i64 2152161894}
!162 = !{i64 2152162910}
!163 = !{i64 2152163920}
!164 = !{i64 2152164939}
!165 = !{i64 2152165958}
!166 = !{i64 2152166968}
!167 = !{i64 2152168044}
!168 = !{i64 2152169054}
!169 = !{i64 2152170064}
!170 = !{i64 2152171107}
!171 = !{i64 2152172150}

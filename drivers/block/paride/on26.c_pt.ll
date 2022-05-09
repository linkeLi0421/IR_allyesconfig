; ModuleID = '/llk/IR_all_yes/drivers/block/paride/on26.c_pt.bc'
source_filename = "../drivers/block/paride/on26.c"
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

@on26 = internal global { %struct.pi_protocol, [48 x i8] } { %struct.pi_protocol { [8 x i8] c"on26\00\00\00\00", i32 0, i32 5, i32 2, i32 1, i32 1, ptr @on26_write_regr, ptr @on26_read_regr, ptr @on26_write_block, ptr @on26_read_block, ptr @on26_connect, ptr @on26_disconnect, ptr @on26_test_port, ptr null, ptr null, ptr @on26_log_adapter, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file160 = internal constant [36 x i8] c"on26.file=drivers/block/paride/on26\00", section ".modinfo", align 1
@__UNIQUE_ID_license161 = internal constant [17 x i8] c"on26.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_on26__162_318_on26_init6 = internal global ptr @on26_init, section ".initcall6.init", align 4
@__exitcall_on26_exit = internal global ptr @on26_exit, section ".exitcall.exit", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@on26_test_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"on26: Device reset failed (%x,%x)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"on26_test_port\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/block/paride/on26.c\00", [36 x i8] zeroinitializer }, align 32
@on26_test_port._entry_ptr = internal global ptr @on26_test_port._entry, section ".printk_index", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EPP-8\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EPP-16\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EPP-32\00", [25 x i8] zeroinitializer }, align 32
@__const.on26_log_adapter.mode_string = private unnamed_addr constant [5 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], align 4
@on26_log_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: on26 %s, OnSpec 90c26 at 0x%x, \00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"on26_log_adapter\00", [47 x i8] zeroinitializer }, align 32
@on26_log_adapter._entry_ptr = internal global ptr @on26_log_adapter._entry, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.04\00", [27 x i8] zeroinitializer }, align 32
@on26_log_adapter._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mode %d (%s), delay %d\0A\00", [40 x i8] zeroinitializer }, align 32
@on26_log_adapter._entry_ptr.13 = internal global ptr @on26_log_adapter._entry.11, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.15 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.16 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.17 = private unnamed_addr constant [5 x i8] c"on26\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 290, i32 27 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 170, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 280, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 280, i32 44 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 280, i32 52 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 281, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 281, i32 17 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 283, i32 9 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [31 x i8] c"../drivers/block/paride/on26.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 285, i32 9 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_file160, ptr @__UNIQUE_ID_license161, ptr @__exitcall_on26_exit, ptr @__initcall__kmod_on26__162_318_on26_init6, ptr @on26_exit, ptr @on26_log_adapter._entry, ptr @on26_log_adapter._entry.11, ptr @on26_log_adapter._entry_ptr, ptr @on26_log_adapter._entry_ptr.13, ptr @on26_test_port._entry, ptr @on26_test_port._entry_ptr, ptr @on26, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @on26 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @on26_test_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @on26_log_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @on26_log_adapter._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @on26_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @paride_unregister(ptr noundef nonnull @on26) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @paride_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @on26_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @paride_register(ptr noundef nonnull @on26) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @on26_write_regr(ptr noundef readonly %pi, i32 noundef %cont, i32 noundef %regr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %regr, 2
  %add = add i32 %cont, 1
  %add1 = add i32 %add, %shl
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.do.body_crit_edge
    i32 1, label %entry.do.body_crit_edge1378
    i32 2, label %entry.do.body739_crit_edge
    i32 3, label %entry.do.body739_crit_edge1379
    i32 4, label %entry.do.body739_crit_edge1380
  ]

entry.do.body739_crit_edge1380:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body739

entry.do.body739_crit_edge1379:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body739

entry.do.body739_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body739

entry.do.body_crit_edge1378:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge1378
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add3 = or i32 %and, -18874368
  %5 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 1) #5, !srcloc !45
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %6 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.do.body14_crit_edge, label %cond.false9

do.body.do.body14_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14

cond.false9:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %7) #5
  br label %do.body14

do.body14:                                        ; preds = %cond.false9, %do.body.do.body14_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add18 = add i32 %10, 2
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %11 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 5) #5, !srcloc !45
  %12 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool23.not = icmp eq i32 %13, 0
  br i1 %tobool23.not, label %do.body14.do.body39_crit_edge, label %cond.false34

do.body14.do.body39_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

cond.false34:                                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %13) #5
  br label %do.body39

do.body39:                                        ; preds = %cond.false34, %do.body14.do.body39_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add43 = add i32 %16, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %17 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 13) #5, !srcloc !45
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool48.not = icmp eq i32 %19, 0
  br i1 %tobool48.not, label %do.body39.do.body64_crit_edge, label %cond.false59

do.body39.do.body64_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body64

cond.false59:                                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #5
  br label %do.body64

do.body64:                                        ; preds = %cond.false59, %do.body39.do.body64_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %add68 = add i32 %22, 2
  %and69 = and i32 %add68, 1048575
  %add70 = or i32 %and69, -18874368
  %23 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 5) #5, !srcloc !45
  %24 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool73.not = icmp eq i32 %25, 0
  br i1 %tobool73.not, label %do.body64.do.body89_crit_edge, label %cond.false84

do.body64.do.body89_crit_edge:                    ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body89

cond.false84:                                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %26(i32 noundef %25) #5
  br label %do.body89

do.body89:                                        ; preds = %cond.false84, %do.body64.do.body89_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add93 = add i32 %28, 2
  %and94 = and i32 %add93, 1048575
  %add95 = or i32 %and94, -18874368
  %29 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 13) #5, !srcloc !45
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool98.not = icmp eq i32 %31, 0
  br i1 %tobool98.not, label %do.body89.do.body114_crit_edge, label %cond.false109

do.body89.do.body114_crit_edge:                   ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body114

cond.false109:                                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %31) #5
  br label %do.body114

do.body114:                                       ; preds = %cond.false109, %do.body89.do.body114_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %add118 = add i32 %34, 2
  %and119 = and i32 %add118, 1048575
  %add120 = or i32 %and119, -18874368
  %35 = inttoptr i32 %add120 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 5) #5, !srcloc !45
  %36 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool123.not = icmp eq i32 %37, 0
  br i1 %tobool123.not, label %do.body114.do.body139_crit_edge, label %cond.false134

do.body114.do.body139_crit_edge:                  ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body139

cond.false134:                                    ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %38(i32 noundef %37) #5
  br label %do.body139

do.body139:                                       ; preds = %cond.false134, %do.body114.do.body139_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %add143 = add i32 %40, 2
  %and144 = and i32 %add143, 1048575
  %add145 = or i32 %and144, -18874368
  %41 = inttoptr i32 %add145 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 4) #5, !srcloc !45
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool148.not = icmp eq i32 %43, 0
  br i1 %tobool148.not, label %do.body139.do.body164_crit_edge, label %cond.false159

do.body139.do.body164_crit_edge:                  ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body164

cond.false159:                                    ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %44(i32 noundef %43) #5
  br label %do.body164

do.body164:                                       ; preds = %cond.false159, %do.body139.do.body164_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %add1 to i8
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port, align 4
  %and169 = and i32 %46, 1048575
  %add170 = or i32 %and169, -18874368
  %47 = inttoptr i32 %add170 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %conv) #5, !srcloc !45
  %48 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool173.not = icmp eq i32 %49, 0
  br i1 %tobool173.not, label %do.body164.do.body190_crit_edge, label %cond.false185

do.body164.do.body190_crit_edge:                  ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body190

cond.false185:                                    ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %50(i32 noundef %49) #5
  br label %do.body190

do.body190:                                       ; preds = %cond.false185, %do.body164.do.body190_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %51 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port, align 4
  %add194 = add i32 %52, 2
  %and195 = and i32 %add194, 1048575
  %add196 = or i32 %and195, -18874368
  %53 = inttoptr i32 %add196 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 5) #5, !srcloc !45
  %54 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool199.not = icmp eq i32 %55, 0
  br i1 %tobool199.not, label %do.body190.do.body216_crit_edge, label %cond.false211

do.body190.do.body216_crit_edge:                  ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body216

cond.false211:                                    ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %56(i32 noundef %55) #5
  br label %do.body216

do.body216:                                       ; preds = %cond.false211, %do.body190.do.body216_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %57 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port, align 4
  %add220 = add i32 %58, 2
  %and221 = and i32 %add220, 1048575
  %add222 = or i32 %and221, -18874368
  %59 = inttoptr i32 %add222 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 7) #5, !srcloc !45
  %60 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool225.not = icmp eq i32 %61, 0
  br i1 %tobool225.not, label %do.body216.do.body242_crit_edge, label %cond.false237

do.body216.do.body242_crit_edge:                  ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body242

cond.false237:                                    ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %62(i32 noundef %61) #5
  br label %do.body242

do.body242:                                       ; preds = %cond.false237, %do.body216.do.body242_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %63 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port, align 4
  %add246 = add i32 %64, 2
  %and247 = and i32 %add246, 1048575
  %add248 = or i32 %and247, -18874368
  %65 = inttoptr i32 %add248 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 5) #5, !srcloc !45
  %66 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool251.not = icmp eq i32 %67, 0
  br i1 %tobool251.not, label %do.body242.do.body268_crit_edge, label %cond.false263

do.body242.do.body268_crit_edge:                  ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body268

cond.false263:                                    ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %68(i32 noundef %67) #5
  br label %do.body268

do.body268:                                       ; preds = %cond.false263, %do.body242.do.body268_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %69 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port, align 4
  %add272 = add i32 %70, 2
  %and273 = and i32 %add272, 1048575
  %add274 = or i32 %and273, -18874368
  %71 = inttoptr i32 %add274 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 4) #5, !srcloc !45
  %72 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool277.not = icmp eq i32 %73, 0
  br i1 %tobool277.not, label %do.body268.do.body294_crit_edge, label %cond.false289

do.body268.do.body294_crit_edge:                  ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body294

cond.false289:                                    ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %74(i32 noundef %73) #5
  br label %do.body294

do.body294:                                       ; preds = %cond.false289, %do.body268.do.body294_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %75 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %port, align 4
  %and299 = and i32 %76, 1048575
  %add300 = or i32 %and299, -18874368
  %77 = inttoptr i32 %add300 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 0) #5, !srcloc !45
  %78 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool303.not = icmp eq i32 %79, 0
  br i1 %tobool303.not, label %do.body294.do.body320_crit_edge, label %cond.false315

do.body294.do.body320_crit_edge:                  ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body320

cond.false315:                                    ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %80(i32 noundef %79) #5
  br label %do.body320

do.body320:                                       ; preds = %cond.false315, %do.body294.do.body320_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %port, align 4
  %add324 = add i32 %82, 2
  %and325 = and i32 %add324, 1048575
  %add326 = or i32 %and325, -18874368
  %83 = inttoptr i32 %add326 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 5) #5, !srcloc !45
  %84 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool329.not = icmp eq i32 %85, 0
  br i1 %tobool329.not, label %do.body320.do.body346_crit_edge, label %cond.false341

do.body320.do.body346_crit_edge:                  ; preds = %do.body320
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body346

cond.false341:                                    ; preds = %do.body320
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %86(i32 noundef %85) #5
  br label %do.body346

do.body346:                                       ; preds = %cond.false341, %do.body320.do.body346_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %87 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %port, align 4
  %add350 = add i32 %88, 2
  %and351 = and i32 %add350, 1048575
  %add352 = or i32 %and351, -18874368
  %89 = inttoptr i32 %add352 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 13) #5, !srcloc !45
  %90 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool355.not = icmp eq i32 %91, 0
  br i1 %tobool355.not, label %do.body346.do.body372_crit_edge, label %cond.false367

do.body346.do.body372_crit_edge:                  ; preds = %do.body346
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body372

cond.false367:                                    ; preds = %do.body346
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %92(i32 noundef %91) #5
  br label %do.body372

do.body372:                                       ; preds = %cond.false367, %do.body346.do.body372_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %93 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %port, align 4
  %add376 = add i32 %94, 2
  %and377 = and i32 %add376, 1048575
  %add378 = or i32 %and377, -18874368
  %95 = inttoptr i32 %add378 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 5) #5, !srcloc !45
  %96 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool381.not = icmp eq i32 %97, 0
  br i1 %tobool381.not, label %do.body372.do.body398_crit_edge, label %cond.false393

do.body372.do.body398_crit_edge:                  ; preds = %do.body372
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body398

cond.false393:                                    ; preds = %do.body372
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %98(i32 noundef %97) #5
  br label %do.body398

do.body398:                                       ; preds = %cond.false393, %do.body372.do.body398_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %99 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %port, align 4
  %add402 = add i32 %100, 2
  %and403 = and i32 %add402, 1048575
  %add404 = or i32 %and403, -18874368
  %101 = inttoptr i32 %add404 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 13) #5, !srcloc !45
  %102 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool407.not = icmp eq i32 %103, 0
  br i1 %tobool407.not, label %do.body398.do.body424_crit_edge, label %cond.false419

do.body398.do.body424_crit_edge:                  ; preds = %do.body398
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body424

cond.false419:                                    ; preds = %do.body398
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %104(i32 noundef %103) #5
  br label %do.body424

do.body424:                                       ; preds = %cond.false419, %do.body398.do.body424_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %105 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %port, align 4
  %add428 = add i32 %106, 2
  %and429 = and i32 %add428, 1048575
  %add430 = or i32 %and429, -18874368
  %107 = inttoptr i32 %add430 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %107, i8 5) #5, !srcloc !45
  %108 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool433.not = icmp eq i32 %109, 0
  br i1 %tobool433.not, label %do.body424.do.body450_crit_edge, label %cond.false445

do.body424.do.body450_crit_edge:                  ; preds = %do.body424
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body450

cond.false445:                                    ; preds = %do.body424
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %110(i32 noundef %109) #5
  br label %do.body450

do.body450:                                       ; preds = %cond.false445, %do.body424.do.body450_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %111 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %port, align 4
  %add454 = add i32 %112, 2
  %and455 = and i32 %add454, 1048575
  %add456 = or i32 %and455, -18874368
  %113 = inttoptr i32 %add456 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %113, i8 4) #5, !srcloc !45
  %114 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool459.not = icmp eq i32 %115, 0
  br i1 %tobool459.not, label %do.body450.do.body476_crit_edge, label %cond.false471

do.body450.do.body476_crit_edge:                  ; preds = %do.body450
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body476

cond.false471:                                    ; preds = %do.body450
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %116(i32 noundef %115) #5
  br label %do.body476

do.body476:                                       ; preds = %cond.false471, %do.body450.do.body476_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %conv479 = trunc i32 %val to i8
  %117 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %port, align 4
  %and482 = and i32 %118, 1048575
  %add483 = or i32 %and482, -18874368
  %119 = inttoptr i32 %add483 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %119, i8 %conv479) #5, !srcloc !45
  %120 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool486.not = icmp eq i32 %121, 0
  br i1 %tobool486.not, label %do.body476.do.body503_crit_edge, label %cond.false498

do.body476.do.body503_crit_edge:                  ; preds = %do.body476
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body503

cond.false498:                                    ; preds = %do.body476
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %122(i32 noundef %121) #5
  br label %do.body503

do.body503:                                       ; preds = %cond.false498, %do.body476.do.body503_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %123 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %port, align 4
  %add507 = add i32 %124, 2
  %and508 = and i32 %add507, 1048575
  %add509 = or i32 %and508, -18874368
  %125 = inttoptr i32 %add509 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %125, i8 5) #5, !srcloc !45
  %126 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool512.not = icmp eq i32 %127, 0
  br i1 %tobool512.not, label %do.body503.do.body529_crit_edge, label %cond.false524

do.body503.do.body529_crit_edge:                  ; preds = %do.body503
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body529

cond.false524:                                    ; preds = %do.body503
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %128(i32 noundef %127) #5
  br label %do.body529

do.body529:                                       ; preds = %cond.false524, %do.body503.do.body529_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %129 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %port, align 4
  %add533 = add i32 %130, 2
  %and534 = and i32 %add533, 1048575
  %add535 = or i32 %and534, -18874368
  %131 = inttoptr i32 %add535 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %131, i8 7) #5, !srcloc !45
  %132 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool538.not = icmp eq i32 %133, 0
  br i1 %tobool538.not, label %do.body529.do.body555_crit_edge, label %cond.false550

do.body529.do.body555_crit_edge:                  ; preds = %do.body529
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body555

cond.false550:                                    ; preds = %do.body529
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %134(i32 noundef %133) #5
  br label %do.body555

do.body555:                                       ; preds = %cond.false550, %do.body529.do.body555_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %135 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %port, align 4
  %add559 = add i32 %136, 2
  %and560 = and i32 %add559, 1048575
  %add561 = or i32 %and560, -18874368
  %137 = inttoptr i32 %add561 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 5) #5, !srcloc !45
  %138 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool564.not = icmp eq i32 %139, 0
  br i1 %tobool564.not, label %do.body555.do.body581_crit_edge, label %cond.false576

do.body555.do.body581_crit_edge:                  ; preds = %do.body555
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body581

cond.false576:                                    ; preds = %do.body555
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %140(i32 noundef %139) #5
  br label %do.body581

do.body581:                                       ; preds = %cond.false576, %do.body555.do.body581_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %141 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %port, align 4
  %add585 = add i32 %142, 2
  %and586 = and i32 %add585, 1048575
  %add587 = or i32 %and586, -18874368
  %143 = inttoptr i32 %add587 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %143, i8 4) #5, !srcloc !45
  %144 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool590.not = icmp eq i32 %145, 0
  br i1 %tobool590.not, label %do.body581.do.body607_crit_edge, label %cond.false602

do.body581.do.body607_crit_edge:                  ; preds = %do.body581
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body607

cond.false602:                                    ; preds = %do.body581
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %146(i32 noundef %145) #5
  br label %do.body607

do.body607:                                       ; preds = %cond.false602, %do.body581.do.body607_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %147 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %port, align 4
  %and613 = and i32 %148, 1048575
  %add614 = or i32 %and613, -18874368
  %149 = inttoptr i32 %add614 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %149, i8 %conv479) #5, !srcloc !45
  %150 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool617.not = icmp eq i32 %151, 0
  br i1 %tobool617.not, label %do.body607.do.body634_crit_edge, label %cond.false629

do.body607.do.body634_crit_edge:                  ; preds = %do.body607
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body634

cond.false629:                                    ; preds = %do.body607
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %152(i32 noundef %151) #5
  br label %do.body634

do.body634:                                       ; preds = %cond.false629, %do.body607.do.body634_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %153 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %port, align 4
  %add638 = add i32 %154, 2
  %and639 = and i32 %add638, 1048575
  %add640 = or i32 %and639, -18874368
  %155 = inttoptr i32 %add640 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %155, i8 5) #5, !srcloc !45
  %156 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool643.not = icmp eq i32 %157, 0
  br i1 %tobool643.not, label %do.body634.do.body660_crit_edge, label %cond.false655

do.body634.do.body660_crit_edge:                  ; preds = %do.body634
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body660

cond.false655:                                    ; preds = %do.body634
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %158(i32 noundef %157) #5
  br label %do.body660

do.body660:                                       ; preds = %cond.false655, %do.body634.do.body660_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %159 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %port, align 4
  %add664 = add i32 %160, 2
  %and665 = and i32 %add664, 1048575
  %add666 = or i32 %and665, -18874368
  %161 = inttoptr i32 %add666 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %161, i8 7) #5, !srcloc !45
  %162 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool669.not = icmp eq i32 %163, 0
  br i1 %tobool669.not, label %do.body660.do.body686_crit_edge, label %cond.false681

do.body660.do.body686_crit_edge:                  ; preds = %do.body660
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body686

cond.false681:                                    ; preds = %do.body660
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %164(i32 noundef %163) #5
  br label %do.body686

do.body686:                                       ; preds = %cond.false681, %do.body660.do.body686_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %165 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %port, align 4
  %add690 = add i32 %166, 2
  %and691 = and i32 %add690, 1048575
  %add692 = or i32 %and691, -18874368
  %167 = inttoptr i32 %add692 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %167, i8 5) #5, !srcloc !45
  %168 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool695.not = icmp eq i32 %169, 0
  br i1 %tobool695.not, label %do.body686.do.body712_crit_edge, label %cond.false707

do.body686.do.body712_crit_edge:                  ; preds = %do.body686
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body712

cond.false707:                                    ; preds = %do.body686
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %170 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %170(i32 noundef %169) #5
  br label %do.body712

do.body712:                                       ; preds = %cond.false707, %do.body686.do.body712_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %171 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %port, align 4
  %add716 = add i32 %172, 2
  %and717 = and i32 %add716, 1048575
  %add718 = or i32 %and717, -18874368
  %173 = inttoptr i32 %add718 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %173, i8 4) #5, !srcloc !45
  %174 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool721.not = icmp eq i32 %175, 0
  br i1 %tobool721.not, label %do.body712.sw.epilog_crit_edge, label %do.body712.sw.epilog.sink.split_crit_edge

do.body712.sw.epilog.sink.split_crit_edge:        ; preds = %do.body712
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body712.sw.epilog_crit_edge:                   ; preds = %do.body712
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body739:                                       ; preds = %entry.do.body739_crit_edge, %entry.do.body739_crit_edge1379, %entry.do.body739_crit_edge1380
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %port742 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %176 = ptrtoint ptr %port742 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %port742, align 4
  %add743 = add i32 %177, 3
  %and744 = and i32 %add743, 1048575
  %add745 = or i32 %and744, -18874368
  %178 = inttoptr i32 %add745 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %178, i8 1) #5, !srcloc !45
  %delay747 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %179 = ptrtoint ptr %delay747 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %delay747, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool748.not = icmp eq i32 %180, 0
  br i1 %tobool748.not, label %do.body739.do.body765_crit_edge, label %cond.false760

do.body739.do.body765_crit_edge:                  ; preds = %do.body739
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body765

cond.false760:                                    ; preds = %do.body739
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %181 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %181(i32 noundef %180) #5
  br label %do.body765

do.body765:                                       ; preds = %cond.false760, %do.body739.do.body765_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %182 = ptrtoint ptr %port742 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %port742, align 4
  %add769 = add i32 %183, 3
  %and770 = and i32 %add769, 1048575
  %add771 = or i32 %and770, -18874368
  %184 = inttoptr i32 %add771 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %184, i8 1) #5, !srcloc !45
  %185 = ptrtoint ptr %delay747 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %delay747, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool774.not = icmp eq i32 %186, 0
  br i1 %tobool774.not, label %do.body765.do.body791_crit_edge, label %cond.false786

do.body765.do.body791_crit_edge:                  ; preds = %do.body765
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body791

cond.false786:                                    ; preds = %do.body765
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %187 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %187(i32 noundef %186) #5
  br label %do.body791

do.body791:                                       ; preds = %cond.false786, %do.body765.do.body791_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %188 = ptrtoint ptr %port742 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %port742, align 4
  %add795 = add i32 %189, 2
  %and796 = and i32 %add795, 1048575
  %add797 = or i32 %and796, -18874368
  %190 = inttoptr i32 %add797 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %190, i8 5) #5, !srcloc !45
  %191 = ptrtoint ptr %delay747 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %delay747, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool800.not = icmp eq i32 %192, 0
  br i1 %tobool800.not, label %do.body791.do.body817_crit_edge, label %cond.false812

do.body791.do.body817_crit_edge:                  ; preds = %do.body791
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body817

cond.false812:                                    ; preds = %do.body791
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %193 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %193(i32 noundef %192) #5
  br label %do.body817

do.body817:                                       ; preds = %cond.false812, %do.body791.do.body817_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %conv820 = trunc i32 %add1 to i8
  %194 = ptrtoint ptr %port742 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %port742, align 4
  %add822 = add i32 %195, 4
  %and823 = and i32 %add822, 1048575
  %add824 = or i32 %and823, -18874368
  %196 = inttoptr i32 %add824 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %196, i8 %conv820) #5, !srcloc !45
  %197 = ptrtoint ptr %delay747 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %delay747, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool827.not = icmp eq i32 %198, 0
  br i1 %tobool827.not, label %do.body817.do.body844_crit_edge, label %cond.false839

do.body817.do.body844_crit_edge:                  ; preds = %do.body817
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body844

cond.false839:                                    ; preds = %do.body817
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %199 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %199(i32 noundef %198) #5
  br label %do.body844

do.body844:                                       ; preds = %cond.false839, %do.body817.do.body844_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %200 = ptrtoint ptr %port742 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %port742, align 4
  %add848 = add i32 %201, 2
  %and849 = and i32 %add848, 1048575
  %add850 = or i32 %and849, -18874368
  %202 = inttoptr i32 %add850 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %202, i8 4) #5, !srcloc !45
  %203 = ptrtoint ptr %delay747 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %delay747, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool853.not = icmp eq i32 %204, 0
  br i1 %tobool853.not, label %do.body844.do.body870_crit_edge, label %cond.false865

do.body844.do.body870_crit_edge:                  ; preds = %do.body844
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body870

cond.false865:                                    ; preds = %do.body844
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %205 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %205(i32 noundef %204) #5
  br label %do.body870

do.body870:                                       ; preds = %cond.false865, %do.body844.do.body870_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %206 = ptrtoint ptr %port742 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %port742, align 4
  %add874 = add i32 %207, 3
  %and875 = and i32 %add874, 1048575
  %add876 = or i32 %and875, -18874368
  %208 = inttoptr i32 %add876 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %208, i8 0) #5, !srcloc !45
  %209 = ptrtoint ptr %delay747 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %delay747, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool879.not = icmp eq i32 %210, 0
  br i1 %tobool879.not, label %do.body870.do.body896_crit_edge, label %cond.false891

do.body870.do.body896_crit_edge:                  ; preds = %do.body870
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body896

cond.false891:                                    ; preds = %do.body870
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %211 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %211(i32 noundef %210) #5
  br label %do.body896

do.body896:                                       ; preds = %cond.false891, %do.body870.do.body896_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %212 = ptrtoint ptr %port742 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %port742, align 4
  %add900 = add i32 %213, 3
  %and901 = and i32 %add900, 1048575
  %add902 = or i32 %and901, -18874368
  %214 = inttoptr i32 %add902 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %214, i8 0) #5, !srcloc !45
  %215 = ptrtoint ptr %delay747 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %delay747, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool905.not = icmp eq i32 %216, 0
  br i1 %tobool905.not, label %do.body896.do.body922_crit_edge, label %cond.false917

do.body896.do.body922_crit_edge:                  ; preds = %do.body896
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body922

cond.false917:                                    ; preds = %do.body896
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %217 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %217(i32 noundef %216) #5
  br label %do.body922

do.body922:                                       ; preds = %cond.false917, %do.body896.do.body922_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %218 = ptrtoint ptr %port742 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %port742, align 4
  %add926 = add i32 %219, 2
  %and927 = and i32 %add926, 1048575
  %add928 = or i32 %and927, -18874368
  %220 = inttoptr i32 %add928 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %220, i8 5) #5, !srcloc !45
  %221 = ptrtoint ptr %delay747 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %delay747, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool931.not = icmp eq i32 %222, 0
  br i1 %tobool931.not, label %do.body922.do.body948_crit_edge, label %cond.false943

do.body922.do.body948_crit_edge:                  ; preds = %do.body922
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body948

cond.false943:                                    ; preds = %do.body922
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %223 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %223(i32 noundef %222) #5
  br label %do.body948

do.body948:                                       ; preds = %cond.false943, %do.body922.do.body948_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %conv951 = trunc i32 %val to i8
  %224 = ptrtoint ptr %port742 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %port742, align 4
  %add953 = add i32 %225, 4
  %and954 = and i32 %add953, 1048575
  %add955 = or i32 %and954, -18874368
  %226 = inttoptr i32 %add955 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %226, i8 %conv951) #5, !srcloc !45
  %227 = ptrtoint ptr %delay747 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %delay747, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool958.not = icmp eq i32 %228, 0
  br i1 %tobool958.not, label %do.body948.do.body975_crit_edge, label %cond.false970

do.body948.do.body975_crit_edge:                  ; preds = %do.body948
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body975

cond.false970:                                    ; preds = %do.body948
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %229 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %229(i32 noundef %228) #5
  br label %do.body975

do.body975:                                       ; preds = %cond.false970, %do.body948.do.body975_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %230 = ptrtoint ptr %port742 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %port742, align 4
  %add979 = add i32 %231, 2
  %and980 = and i32 %add979, 1048575
  %add981 = or i32 %and980, -18874368
  %232 = inttoptr i32 %add981 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %232, i8 4) #5, !srcloc !45
  %233 = ptrtoint ptr %delay747 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %delay747, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool984.not = icmp eq i32 %234, 0
  br i1 %tobool984.not, label %do.body975.do.body1001_crit_edge, label %cond.false996

do.body975.do.body1001_crit_edge:                 ; preds = %do.body975
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1001

cond.false996:                                    ; preds = %do.body975
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %235 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %235(i32 noundef %234) #5
  br label %do.body1001

do.body1001:                                      ; preds = %cond.false996, %do.body975.do.body1001_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  %236 = ptrtoint ptr %port742 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %port742, align 4
  %add1005 = add i32 %237, 2
  %and1006 = and i32 %add1005, 1048575
  %add1007 = or i32 %and1006, -18874368
  %238 = inttoptr i32 %add1007 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %238, i8 5) #5, !srcloc !45
  %239 = ptrtoint ptr %delay747 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %delay747, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool1010.not = icmp eq i32 %240, 0
  br i1 %tobool1010.not, label %do.body1001.do.body1027_crit_edge, label %cond.false1022

do.body1001.do.body1027_crit_edge:                ; preds = %do.body1001
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1027

cond.false1022:                                   ; preds = %do.body1001
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %241 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %241(i32 noundef %240) #5
  br label %do.body1027

do.body1027:                                      ; preds = %cond.false1022, %do.body1001.do.body1027_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  %242 = ptrtoint ptr %port742 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %port742, align 4
  %add1032 = add i32 %243, 4
  %and1033 = and i32 %add1032, 1048575
  %add1034 = or i32 %and1033, -18874368
  %244 = inttoptr i32 %add1034 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %244, i8 %conv951) #5, !srcloc !45
  %245 = ptrtoint ptr %delay747 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %delay747, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %tobool1037.not = icmp eq i32 %246, 0
  br i1 %tobool1037.not, label %do.body1027.do.body1054_crit_edge, label %cond.false1049

do.body1027.do.body1054_crit_edge:                ; preds = %do.body1027
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1054

cond.false1049:                                   ; preds = %do.body1027
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %247 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %247(i32 noundef %246) #5
  br label %do.body1054

do.body1054:                                      ; preds = %cond.false1049, %do.body1027.do.body1054_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %248 = ptrtoint ptr %port742 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %port742, align 4
  %add1058 = add i32 %249, 2
  %and1059 = and i32 %add1058, 1048575
  %add1060 = or i32 %and1059, -18874368
  %250 = inttoptr i32 %add1060 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %250, i8 4) #5, !srcloc !45
  %251 = ptrtoint ptr %delay747 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %delay747, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool1063.not = icmp eq i32 %252, 0
  br i1 %tobool1063.not, label %do.body1054.sw.epilog_crit_edge, label %do.body1054.sw.epilog.sink.split_crit_edge

do.body1054.sw.epilog.sink.split_crit_edge:       ; preds = %do.body1054
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body1054.sw.epilog_crit_edge:                  ; preds = %do.body1054
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body1054.sw.epilog.sink.split_crit_edge, %do.body712.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %175, %do.body712.sw.epilog.sink.split_crit_edge ], [ %252, %do.body1054.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %253 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %253(i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body1054.sw.epilog_crit_edge, %do.body712.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @on26_read_regr(ptr noundef readonly %pi, i32 noundef %cont, i32 noundef %regr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %regr, 2
  %add = add i32 %cont, 1
  %add1 = add i32 %add, %shl
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body741
    i32 2, label %entry.do.body1369_crit_edge
    i32 3, label %entry.do.body1369_crit_edge2189
    i32 4, label %entry.do.body1369_crit_edge2190
  ]

entry.do.body1369_crit_edge2190:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1369

entry.do.body1369_crit_edge2189:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1369

entry.do.body1369_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1369

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add3 = or i32 %and, -18874368
  %5 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 1) #5, !srcloc !45
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %6 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.do.body14_crit_edge, label %cond.false9

do.body.do.body14_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14

cond.false9:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %7) #5
  br label %do.body14

do.body14:                                        ; preds = %cond.false9, %do.body.do.body14_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add18 = add i32 %10, 2
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %11 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 5) #5, !srcloc !45
  %12 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool23.not = icmp eq i32 %13, 0
  br i1 %tobool23.not, label %do.body14.do.body39_crit_edge, label %cond.false34

do.body14.do.body39_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

cond.false34:                                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %13) #5
  br label %do.body39

do.body39:                                        ; preds = %cond.false34, %do.body14.do.body39_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add43 = add i32 %16, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %17 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 13) #5, !srcloc !45
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool48.not = icmp eq i32 %19, 0
  br i1 %tobool48.not, label %do.body39.do.body64_crit_edge, label %cond.false59

do.body39.do.body64_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body64

cond.false59:                                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #5
  br label %do.body64

do.body64:                                        ; preds = %cond.false59, %do.body39.do.body64_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %add68 = add i32 %22, 2
  %and69 = and i32 %add68, 1048575
  %add70 = or i32 %and69, -18874368
  %23 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 5) #5, !srcloc !45
  %24 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool73.not = icmp eq i32 %25, 0
  br i1 %tobool73.not, label %do.body64.do.body89_crit_edge, label %cond.false84

do.body64.do.body89_crit_edge:                    ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body89

cond.false84:                                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %26(i32 noundef %25) #5
  br label %do.body89

do.body89:                                        ; preds = %cond.false84, %do.body64.do.body89_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add93 = add i32 %28, 2
  %and94 = and i32 %add93, 1048575
  %add95 = or i32 %and94, -18874368
  %29 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 13) #5, !srcloc !45
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool98.not = icmp eq i32 %31, 0
  br i1 %tobool98.not, label %do.body89.do.body114_crit_edge, label %cond.false109

do.body89.do.body114_crit_edge:                   ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body114

cond.false109:                                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %31) #5
  br label %do.body114

do.body114:                                       ; preds = %cond.false109, %do.body89.do.body114_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %add118 = add i32 %34, 2
  %and119 = and i32 %add118, 1048575
  %add120 = or i32 %and119, -18874368
  %35 = inttoptr i32 %add120 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 5) #5, !srcloc !45
  %36 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool123.not = icmp eq i32 %37, 0
  br i1 %tobool123.not, label %do.body114.do.body139_crit_edge, label %cond.false134

do.body114.do.body139_crit_edge:                  ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body139

cond.false134:                                    ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %38(i32 noundef %37) #5
  br label %do.body139

do.body139:                                       ; preds = %cond.false134, %do.body114.do.body139_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %add143 = add i32 %40, 2
  %and144 = and i32 %add143, 1048575
  %add145 = or i32 %and144, -18874368
  %41 = inttoptr i32 %add145 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 4) #5, !srcloc !45
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool148.not = icmp eq i32 %43, 0
  br i1 %tobool148.not, label %do.body139.do.body164_crit_edge, label %cond.false159

do.body139.do.body164_crit_edge:                  ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body164

cond.false159:                                    ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %44(i32 noundef %43) #5
  br label %do.body164

do.body164:                                       ; preds = %cond.false159, %do.body139.do.body164_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %add1 to i8
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port, align 4
  %and169 = and i32 %46, 1048575
  %add170 = or i32 %and169, -18874368
  %47 = inttoptr i32 %add170 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %conv) #5, !srcloc !45
  %48 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool173.not = icmp eq i32 %49, 0
  br i1 %tobool173.not, label %do.body164.do.body190_crit_edge, label %cond.false185

do.body164.do.body190_crit_edge:                  ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body190

cond.false185:                                    ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %50(i32 noundef %49) #5
  br label %do.body190

do.body190:                                       ; preds = %cond.false185, %do.body164.do.body190_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %51 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port, align 4
  %add194 = add i32 %52, 2
  %and195 = and i32 %add194, 1048575
  %add196 = or i32 %and195, -18874368
  %53 = inttoptr i32 %add196 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 5) #5, !srcloc !45
  %54 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool199.not = icmp eq i32 %55, 0
  br i1 %tobool199.not, label %do.body190.do.body216_crit_edge, label %cond.false211

do.body190.do.body216_crit_edge:                  ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body216

cond.false211:                                    ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %56(i32 noundef %55) #5
  br label %do.body216

do.body216:                                       ; preds = %cond.false211, %do.body190.do.body216_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %57 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port, align 4
  %add220 = add i32 %58, 2
  %and221 = and i32 %add220, 1048575
  %add222 = or i32 %and221, -18874368
  %59 = inttoptr i32 %add222 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 7) #5, !srcloc !45
  %60 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool225.not = icmp eq i32 %61, 0
  br i1 %tobool225.not, label %do.body216.do.body242_crit_edge, label %cond.false237

do.body216.do.body242_crit_edge:                  ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body242

cond.false237:                                    ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %62(i32 noundef %61) #5
  br label %do.body242

do.body242:                                       ; preds = %cond.false237, %do.body216.do.body242_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %63 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port, align 4
  %add246 = add i32 %64, 2
  %and247 = and i32 %add246, 1048575
  %add248 = or i32 %and247, -18874368
  %65 = inttoptr i32 %add248 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 5) #5, !srcloc !45
  %66 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool251.not = icmp eq i32 %67, 0
  br i1 %tobool251.not, label %do.body242.do.body268_crit_edge, label %cond.false263

do.body242.do.body268_crit_edge:                  ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body268

cond.false263:                                    ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %68(i32 noundef %67) #5
  br label %do.body268

do.body268:                                       ; preds = %cond.false263, %do.body242.do.body268_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %69 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port, align 4
  %add272 = add i32 %70, 2
  %and273 = and i32 %add272, 1048575
  %add274 = or i32 %and273, -18874368
  %71 = inttoptr i32 %add274 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 4) #5, !srcloc !45
  %72 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool277.not = icmp eq i32 %73, 0
  br i1 %tobool277.not, label %do.body268.do.body294_crit_edge, label %cond.false289

do.body268.do.body294_crit_edge:                  ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body294

cond.false289:                                    ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %74(i32 noundef %73) #5
  br label %do.body294

do.body294:                                       ; preds = %cond.false289, %do.body268.do.body294_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %75 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %port, align 4
  %and299 = and i32 %76, 1048575
  %add300 = or i32 %and299, -18874368
  %77 = inttoptr i32 %add300 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 0) #5, !srcloc !45
  %78 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool303.not = icmp eq i32 %79, 0
  br i1 %tobool303.not, label %do.body294.do.body320_crit_edge, label %cond.false315

do.body294.do.body320_crit_edge:                  ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body320

cond.false315:                                    ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %80(i32 noundef %79) #5
  br label %do.body320

do.body320:                                       ; preds = %cond.false315, %do.body294.do.body320_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %port, align 4
  %add324 = add i32 %82, 2
  %and325 = and i32 %add324, 1048575
  %add326 = or i32 %and325, -18874368
  %83 = inttoptr i32 %add326 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 5) #5, !srcloc !45
  %84 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool329.not = icmp eq i32 %85, 0
  br i1 %tobool329.not, label %do.body320.do.body346_crit_edge, label %cond.false341

do.body320.do.body346_crit_edge:                  ; preds = %do.body320
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body346

cond.false341:                                    ; preds = %do.body320
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %86(i32 noundef %85) #5
  br label %do.body346

do.body346:                                       ; preds = %cond.false341, %do.body320.do.body346_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %87 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %port, align 4
  %add350 = add i32 %88, 2
  %and351 = and i32 %add350, 1048575
  %add352 = or i32 %and351, -18874368
  %89 = inttoptr i32 %add352 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 13) #5, !srcloc !45
  %90 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool355.not = icmp eq i32 %91, 0
  br i1 %tobool355.not, label %do.body346.do.body372_crit_edge, label %cond.false367

do.body346.do.body372_crit_edge:                  ; preds = %do.body346
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body372

cond.false367:                                    ; preds = %do.body346
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %92(i32 noundef %91) #5
  br label %do.body372

do.body372:                                       ; preds = %cond.false367, %do.body346.do.body372_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %93 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %port, align 4
  %add376 = add i32 %94, 2
  %and377 = and i32 %add376, 1048575
  %add378 = or i32 %and377, -18874368
  %95 = inttoptr i32 %add378 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 5) #5, !srcloc !45
  %96 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool381.not = icmp eq i32 %97, 0
  br i1 %tobool381.not, label %do.body372.do.body398_crit_edge, label %cond.false393

do.body372.do.body398_crit_edge:                  ; preds = %do.body372
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body398

cond.false393:                                    ; preds = %do.body372
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %98(i32 noundef %97) #5
  br label %do.body398

do.body398:                                       ; preds = %cond.false393, %do.body372.do.body398_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %99 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %port, align 4
  %add402 = add i32 %100, 2
  %and403 = and i32 %add402, 1048575
  %add404 = or i32 %and403, -18874368
  %101 = inttoptr i32 %add404 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 13) #5, !srcloc !45
  %102 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool407.not = icmp eq i32 %103, 0
  br i1 %tobool407.not, label %do.body398.do.body424_crit_edge, label %cond.false419

do.body398.do.body424_crit_edge:                  ; preds = %do.body398
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body424

cond.false419:                                    ; preds = %do.body398
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %104(i32 noundef %103) #5
  br label %do.body424

do.body424:                                       ; preds = %cond.false419, %do.body398.do.body424_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %105 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %port, align 4
  %add428 = add i32 %106, 2
  %and429 = and i32 %add428, 1048575
  %add430 = or i32 %and429, -18874368
  %107 = inttoptr i32 %add430 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %107, i8 5) #5, !srcloc !45
  %108 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool433.not = icmp eq i32 %109, 0
  br i1 %tobool433.not, label %do.body424.do.body450_crit_edge, label %cond.false445

do.body424.do.body450_crit_edge:                  ; preds = %do.body424
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body450

cond.false445:                                    ; preds = %do.body424
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %110(i32 noundef %109) #5
  br label %do.body450

do.body450:                                       ; preds = %cond.false445, %do.body424.do.body450_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %111 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %port, align 4
  %add454 = add i32 %112, 2
  %and455 = and i32 %add454, 1048575
  %add456 = or i32 %and455, -18874368
  %113 = inttoptr i32 %add456 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %113, i8 4) #5, !srcloc !45
  %114 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool459.not = icmp eq i32 %115, 0
  br i1 %tobool459.not, label %do.body450.do.body476_crit_edge, label %cond.false471

do.body450.do.body476_crit_edge:                  ; preds = %do.body450
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body476

cond.false471:                                    ; preds = %do.body450
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %116(i32 noundef %115) #5
  br label %do.body476

do.body476:                                       ; preds = %cond.false471, %do.body450.do.body476_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %117 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %port, align 4
  %add480 = add i32 %118, 2
  %and481 = and i32 %add480, 1048575
  %add482 = or i32 %and481, -18874368
  %119 = inttoptr i32 %add482 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %119, i8 6) #5, !srcloc !45
  %120 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool485.not = icmp eq i32 %121, 0
  br i1 %tobool485.not, label %do.body476.cond.end519_crit_edge, label %cond.false497

do.body476.cond.end519_crit_edge:                 ; preds = %do.body476
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end519

cond.false497:                                    ; preds = %do.body476
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %122(i32 noundef %121) #5
  %123 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %123)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool503.not = icmp eq i32 %.pr, 0
  br i1 %tobool503.not, label %cond.false497.cond.end519_crit_edge, label %cond.false515

cond.false497.cond.end519_crit_edge:              ; preds = %cond.false497
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end519

cond.false515:                                    ; preds = %cond.false497
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %124(i32 noundef %.pr) #5
  br label %cond.end519

cond.end519:                                      ; preds = %cond.false515, %cond.false497.cond.end519_crit_edge, %do.body476.cond.end519_crit_edge
  %125 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %port, align 4
  %add521 = add i32 %126, 1
  %and522 = and i32 %add521, 1048575
  %add523 = or i32 %and522, -18874368
  %127 = inttoptr i32 %add523 to ptr
  %128 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %127) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %129 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %port, align 4
  %add532 = add i32 %130, 2
  %and533 = and i32 %add532, 1048575
  %add534 = or i32 %and533, -18874368
  %131 = inttoptr i32 %add534 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %131, i8 4) #5, !srcloc !45
  %132 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool537.not = icmp eq i32 %133, 0
  br i1 %tobool537.not, label %cond.end519.do.body554_crit_edge, label %cond.false549

cond.end519.do.body554_crit_edge:                 ; preds = %cond.end519
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body554

cond.false549:                                    ; preds = %cond.end519
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %134(i32 noundef %133) #5
  br label %do.body554

do.body554:                                       ; preds = %cond.false549, %cond.end519.do.body554_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %135 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %port, align 4
  %add558 = add i32 %136, 2
  %and559 = and i32 %add558, 1048575
  %add560 = or i32 %and559, -18874368
  %137 = inttoptr i32 %add560 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 6) #5, !srcloc !45
  %138 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool563.not = icmp eq i32 %139, 0
  br i1 %tobool563.not, label %do.body554.cond.end597_crit_edge, label %cond.false575

do.body554.cond.end597_crit_edge:                 ; preds = %do.body554
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end597

cond.false575:                                    ; preds = %do.body554
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %140(i32 noundef %139) #5
  %141 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %141)
  %.pr2181 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2181)
  %tobool581.not = icmp eq i32 %.pr2181, 0
  br i1 %tobool581.not, label %cond.false575.cond.end597_crit_edge, label %cond.false593

cond.false575.cond.end597_crit_edge:              ; preds = %cond.false575
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end597

cond.false593:                                    ; preds = %cond.false575
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %142(i32 noundef %.pr2181) #5
  br label %cond.end597

cond.end597:                                      ; preds = %cond.false593, %cond.false575.cond.end597_crit_edge, %do.body554.cond.end597_crit_edge
  %143 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %port, align 4
  %add600 = add i32 %144, 1
  %and601 = and i32 %add600, 1048575
  %add602 = or i32 %and601, -18874368
  %145 = inttoptr i32 %add602 to ptr
  %146 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %145) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %147 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %port, align 4
  %add612 = add i32 %148, 2
  %and613 = and i32 %add612, 1048575
  %add614 = or i32 %and613, -18874368
  %149 = inttoptr i32 %add614 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %149, i8 4) #5, !srcloc !45
  %150 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool617.not = icmp eq i32 %151, 0
  br i1 %tobool617.not, label %cond.end597.do.body634_crit_edge, label %cond.false629

cond.end597.do.body634_crit_edge:                 ; preds = %cond.end597
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body634

cond.false629:                                    ; preds = %cond.end597
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %152(i32 noundef %151) #5
  br label %do.body634

do.body634:                                       ; preds = %cond.false629, %cond.end597.do.body634_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %153 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %port, align 4
  %add638 = add i32 %154, 2
  %and639 = and i32 %add638, 1048575
  %add640 = or i32 %and639, -18874368
  %155 = inttoptr i32 %add640 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %155, i8 6) #5, !srcloc !45
  %156 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool643.not = icmp eq i32 %157, 0
  br i1 %tobool643.not, label %do.body634.do.body660_crit_edge, label %cond.false655

do.body634.do.body660_crit_edge:                  ; preds = %do.body634
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body660

cond.false655:                                    ; preds = %do.body634
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %158(i32 noundef %157) #5
  br label %do.body660

do.body660:                                       ; preds = %cond.false655, %do.body634.do.body660_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void @arm_heavy_mb() #5
  %159 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %port, align 4
  %add664 = add i32 %160, 2
  %and665 = and i32 %add664, 1048575
  %add666 = or i32 %and665, -18874368
  %161 = inttoptr i32 %add666 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %161, i8 4) #5, !srcloc !45
  %162 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool669.not = icmp eq i32 %163, 0
  br i1 %tobool669.not, label %do.body660.do.body686_crit_edge, label %cond.false681

do.body660.do.body686_crit_edge:                  ; preds = %do.body660
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body686

cond.false681:                                    ; preds = %do.body660
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %164(i32 noundef %163) #5
  br label %do.body686

do.body686:                                       ; preds = %cond.false681, %do.body660.do.body686_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %165 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %port, align 4
  %add690 = add i32 %166, 2
  %and691 = and i32 %add690, 1048575
  %add692 = or i32 %and691, -18874368
  %167 = inttoptr i32 %add692 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %167, i8 6) #5, !srcloc !45
  %168 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool695.not = icmp eq i32 %169, 0
  br i1 %tobool695.not, label %do.body686.do.body712_crit_edge, label %cond.false707

do.body686.do.body712_crit_edge:                  ; preds = %do.body686
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body712

cond.false707:                                    ; preds = %do.body686
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %170 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %170(i32 noundef %169) #5
  br label %do.body712

do.body712:                                       ; preds = %cond.false707, %do.body686.do.body712_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %171 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %port, align 4
  %add716 = add i32 %172, 2
  %and717 = and i32 %add716, 1048575
  %add718 = or i32 %and717, -18874368
  %173 = inttoptr i32 %add718 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %173, i8 4) #5, !srcloc !45
  %174 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool721.not = icmp eq i32 %175, 0
  br i1 %tobool721.not, label %do.body712.cond.end737_crit_edge, label %cond.false733

do.body712.cond.end737_crit_edge:                 ; preds = %do.body712
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end737

cond.false733:                                    ; preds = %do.body712
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %176(i32 noundef %175) #5
  br label %cond.end737

cond.end737:                                      ; preds = %cond.false733, %do.body712.cond.end737_crit_edge
  %177 = lshr i8 %128, 4
  %178 = and i8 %146, -16
  %or2179 = or i8 %178, %177
  %or = zext i8 %or2179 to i32
  br label %cleanup

do.body741:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %port744 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %179 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %port744, align 4
  %and746 = and i32 %180, 1048575
  %add747 = or i32 %and746, -18874368
  %181 = inttoptr i32 %add747 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %181, i8 1) #5, !srcloc !45
  %delay749 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %182 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool750.not = icmp eq i32 %183, 0
  br i1 %tobool750.not, label %do.body741.do.body767_crit_edge, label %cond.false762

do.body741.do.body767_crit_edge:                  ; preds = %do.body741
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body767

cond.false762:                                    ; preds = %do.body741
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %184 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %184(i32 noundef %183) #5
  br label %do.body767

do.body767:                                       ; preds = %cond.false762, %do.body741.do.body767_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  tail call void @arm_heavy_mb() #5
  %185 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %port744, align 4
  %add771 = add i32 %186, 2
  %and772 = and i32 %add771, 1048575
  %add773 = or i32 %and772, -18874368
  %187 = inttoptr i32 %add773 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %187, i8 5) #5, !srcloc !45
  %188 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool776.not = icmp eq i32 %189, 0
  br i1 %tobool776.not, label %do.body767.do.body793_crit_edge, label %cond.false788

do.body767.do.body793_crit_edge:                  ; preds = %do.body767
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body793

cond.false788:                                    ; preds = %do.body767
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %190 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %190(i32 noundef %189) #5
  br label %do.body793

do.body793:                                       ; preds = %cond.false788, %do.body767.do.body793_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  tail call void @arm_heavy_mb() #5
  %191 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %port744, align 4
  %add797 = add i32 %192, 2
  %and798 = and i32 %add797, 1048575
  %add799 = or i32 %and798, -18874368
  %193 = inttoptr i32 %add799 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %193, i8 13) #5, !srcloc !45
  %194 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool802.not = icmp eq i32 %195, 0
  br i1 %tobool802.not, label %do.body793.do.body819_crit_edge, label %cond.false814

do.body793.do.body819_crit_edge:                  ; preds = %do.body793
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body819

cond.false814:                                    ; preds = %do.body793
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %196 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %196(i32 noundef %195) #5
  br label %do.body819

do.body819:                                       ; preds = %cond.false814, %do.body793.do.body819_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  tail call void @arm_heavy_mb() #5
  %197 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %port744, align 4
  %add823 = add i32 %198, 2
  %and824 = and i32 %add823, 1048575
  %add825 = or i32 %and824, -18874368
  %199 = inttoptr i32 %add825 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %199, i8 5) #5, !srcloc !45
  %200 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool828.not = icmp eq i32 %201, 0
  br i1 %tobool828.not, label %do.body819.do.body845_crit_edge, label %cond.false840

do.body819.do.body845_crit_edge:                  ; preds = %do.body819
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body845

cond.false840:                                    ; preds = %do.body819
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %202 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %202(i32 noundef %201) #5
  br label %do.body845

do.body845:                                       ; preds = %cond.false840, %do.body819.do.body845_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  tail call void @arm_heavy_mb() #5
  %203 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %port744, align 4
  %add849 = add i32 %204, 2
  %and850 = and i32 %add849, 1048575
  %add851 = or i32 %and850, -18874368
  %205 = inttoptr i32 %add851 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %205, i8 13) #5, !srcloc !45
  %206 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool854.not = icmp eq i32 %207, 0
  br i1 %tobool854.not, label %do.body845.do.body871_crit_edge, label %cond.false866

do.body845.do.body871_crit_edge:                  ; preds = %do.body845
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body871

cond.false866:                                    ; preds = %do.body845
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %208 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %208(i32 noundef %207) #5
  br label %do.body871

do.body871:                                       ; preds = %cond.false866, %do.body845.do.body871_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void @arm_heavy_mb() #5
  %209 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %port744, align 4
  %add875 = add i32 %210, 2
  %and876 = and i32 %add875, 1048575
  %add877 = or i32 %and876, -18874368
  %211 = inttoptr i32 %add877 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %211, i8 5) #5, !srcloc !45
  %212 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool880.not = icmp eq i32 %213, 0
  br i1 %tobool880.not, label %do.body871.do.body897_crit_edge, label %cond.false892

do.body871.do.body897_crit_edge:                  ; preds = %do.body871
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body897

cond.false892:                                    ; preds = %do.body871
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %214 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %214(i32 noundef %213) #5
  br label %do.body897

do.body897:                                       ; preds = %cond.false892, %do.body871.do.body897_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @arm_heavy_mb() #5
  %215 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %port744, align 4
  %add901 = add i32 %216, 2
  %and902 = and i32 %add901, 1048575
  %add903 = or i32 %and902, -18874368
  %217 = inttoptr i32 %add903 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %217, i8 4) #5, !srcloc !45
  %218 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool906.not = icmp eq i32 %219, 0
  br i1 %tobool906.not, label %do.body897.do.body923_crit_edge, label %cond.false918

do.body897.do.body923_crit_edge:                  ; preds = %do.body897
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body923

cond.false918:                                    ; preds = %do.body897
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %220 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %220(i32 noundef %219) #5
  br label %do.body923

do.body923:                                       ; preds = %cond.false918, %do.body897.do.body923_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %conv926 = trunc i32 %add1 to i8
  %221 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %port744, align 4
  %and929 = and i32 %222, 1048575
  %add930 = or i32 %and929, -18874368
  %223 = inttoptr i32 %add930 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %223, i8 %conv926) #5, !srcloc !45
  %224 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool933.not = icmp eq i32 %225, 0
  br i1 %tobool933.not, label %do.body923.do.body950_crit_edge, label %cond.false945

do.body923.do.body950_crit_edge:                  ; preds = %do.body923
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body950

cond.false945:                                    ; preds = %do.body923
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %226 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %226(i32 noundef %225) #5
  br label %do.body950

do.body950:                                       ; preds = %cond.false945, %do.body923.do.body950_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  tail call void @arm_heavy_mb() #5
  %227 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %port744, align 4
  %add954 = add i32 %228, 2
  %and955 = and i32 %add954, 1048575
  %add956 = or i32 %and955, -18874368
  %229 = inttoptr i32 %add956 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %229, i8 5) #5, !srcloc !45
  %230 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool959.not = icmp eq i32 %231, 0
  br i1 %tobool959.not, label %do.body950.do.body976_crit_edge, label %cond.false971

do.body950.do.body976_crit_edge:                  ; preds = %do.body950
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body976

cond.false971:                                    ; preds = %do.body950
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %232 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %232(i32 noundef %231) #5
  br label %do.body976

do.body976:                                       ; preds = %cond.false971, %do.body950.do.body976_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void @arm_heavy_mb() #5
  %233 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %port744, align 4
  %add980 = add i32 %234, 2
  %and981 = and i32 %add980, 1048575
  %add982 = or i32 %and981, -18874368
  %235 = inttoptr i32 %add982 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %235, i8 7) #5, !srcloc !45
  %236 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool985.not = icmp eq i32 %237, 0
  br i1 %tobool985.not, label %do.body976.do.body1002_crit_edge, label %cond.false997

do.body976.do.body1002_crit_edge:                 ; preds = %do.body976
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1002

cond.false997:                                    ; preds = %do.body976
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %238 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %238(i32 noundef %237) #5
  br label %do.body1002

do.body1002:                                      ; preds = %cond.false997, %do.body976.do.body1002_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  tail call void @arm_heavy_mb() #5
  %239 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %port744, align 4
  %add1006 = add i32 %240, 2
  %and1007 = and i32 %add1006, 1048575
  %add1008 = or i32 %and1007, -18874368
  %241 = inttoptr i32 %add1008 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %241, i8 5) #5, !srcloc !45
  %242 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool1011.not = icmp eq i32 %243, 0
  br i1 %tobool1011.not, label %do.body1002.do.body1028_crit_edge, label %cond.false1023

do.body1002.do.body1028_crit_edge:                ; preds = %do.body1002
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1028

cond.false1023:                                   ; preds = %do.body1002
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %244 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %244(i32 noundef %243) #5
  br label %do.body1028

do.body1028:                                      ; preds = %cond.false1023, %do.body1002.do.body1028_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  tail call void @arm_heavy_mb() #5
  %245 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %port744, align 4
  %add1032 = add i32 %246, 2
  %and1033 = and i32 %add1032, 1048575
  %add1034 = or i32 %and1033, -18874368
  %247 = inttoptr i32 %add1034 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %247, i8 4) #5, !srcloc !45
  %248 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool1037.not = icmp eq i32 %249, 0
  br i1 %tobool1037.not, label %do.body1028.do.body1054_crit_edge, label %cond.false1049

do.body1028.do.body1054_crit_edge:                ; preds = %do.body1028
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1054

cond.false1049:                                   ; preds = %do.body1028
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %250 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %250(i32 noundef %249) #5
  br label %do.body1054

do.body1054:                                      ; preds = %cond.false1049, %do.body1028.do.body1054_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %251 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %port744, align 4
  %and1059 = and i32 %252, 1048575
  %add1060 = or i32 %and1059, -18874368
  %253 = inttoptr i32 %add1060 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %253, i8 0) #5, !srcloc !45
  %254 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %tobool1063.not = icmp eq i32 %255, 0
  br i1 %tobool1063.not, label %do.body1054.do.body1080_crit_edge, label %cond.false1075

do.body1054.do.body1080_crit_edge:                ; preds = %do.body1054
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1080

cond.false1075:                                   ; preds = %do.body1054
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %256 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %256(i32 noundef %255) #5
  br label %do.body1080

do.body1080:                                      ; preds = %cond.false1075, %do.body1054.do.body1080_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void @arm_heavy_mb() #5
  %257 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %port744, align 4
  %add1084 = add i32 %258, 2
  %and1085 = and i32 %add1084, 1048575
  %add1086 = or i32 %and1085, -18874368
  %259 = inttoptr i32 %add1086 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %259, i8 5) #5, !srcloc !45
  %260 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %tobool1089.not = icmp eq i32 %261, 0
  br i1 %tobool1089.not, label %do.body1080.do.body1106_crit_edge, label %cond.false1101

do.body1080.do.body1106_crit_edge:                ; preds = %do.body1080
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1106

cond.false1101:                                   ; preds = %do.body1080
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %262 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %262(i32 noundef %261) #5
  br label %do.body1106

do.body1106:                                      ; preds = %cond.false1101, %do.body1080.do.body1106_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  tail call void @arm_heavy_mb() #5
  %263 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %port744, align 4
  %add1110 = add i32 %264, 2
  %and1111 = and i32 %add1110, 1048575
  %add1112 = or i32 %and1111, -18874368
  %265 = inttoptr i32 %add1112 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %265, i8 13) #5, !srcloc !45
  %266 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %tobool1115.not = icmp eq i32 %267, 0
  br i1 %tobool1115.not, label %do.body1106.do.body1132_crit_edge, label %cond.false1127

do.body1106.do.body1132_crit_edge:                ; preds = %do.body1106
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1132

cond.false1127:                                   ; preds = %do.body1106
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %268 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %268(i32 noundef %267) #5
  br label %do.body1132

do.body1132:                                      ; preds = %cond.false1127, %do.body1106.do.body1132_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %269 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %port744, align 4
  %add1136 = add i32 %270, 2
  %and1137 = and i32 %add1136, 1048575
  %add1138 = or i32 %and1137, -18874368
  %271 = inttoptr i32 %add1138 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %271, i8 5) #5, !srcloc !45
  %272 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %tobool1141.not = icmp eq i32 %273, 0
  br i1 %tobool1141.not, label %do.body1132.do.body1158_crit_edge, label %cond.false1153

do.body1132.do.body1158_crit_edge:                ; preds = %do.body1132
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1158

cond.false1153:                                   ; preds = %do.body1132
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %274 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %274(i32 noundef %273) #5
  br label %do.body1158

do.body1158:                                      ; preds = %cond.false1153, %do.body1132.do.body1158_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %275 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %port744, align 4
  %add1162 = add i32 %276, 2
  %and1163 = and i32 %add1162, 1048575
  %add1164 = or i32 %and1163, -18874368
  %277 = inttoptr i32 %add1164 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %277, i8 13) #5, !srcloc !45
  %278 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %tobool1167.not = icmp eq i32 %279, 0
  br i1 %tobool1167.not, label %do.body1158.do.body1184_crit_edge, label %cond.false1179

do.body1158.do.body1184_crit_edge:                ; preds = %do.body1158
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1184

cond.false1179:                                   ; preds = %do.body1158
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %280 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %280(i32 noundef %279) #5
  br label %do.body1184

do.body1184:                                      ; preds = %cond.false1179, %do.body1158.do.body1184_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %281 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %port744, align 4
  %add1188 = add i32 %282, 2
  %and1189 = and i32 %add1188, 1048575
  %add1190 = or i32 %and1189, -18874368
  %283 = inttoptr i32 %add1190 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %283, i8 5) #5, !srcloc !45
  %284 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %tobool1193.not = icmp eq i32 %285, 0
  br i1 %tobool1193.not, label %do.body1184.do.body1210_crit_edge, label %cond.false1205

do.body1184.do.body1210_crit_edge:                ; preds = %do.body1184
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1210

cond.false1205:                                   ; preds = %do.body1184
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %286 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %286(i32 noundef %285) #5
  br label %do.body1210

do.body1210:                                      ; preds = %cond.false1205, %do.body1184.do.body1210_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %287 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %port744, align 4
  %add1214 = add i32 %288, 2
  %and1215 = and i32 %add1214, 1048575
  %add1216 = or i32 %and1215, -18874368
  %289 = inttoptr i32 %add1216 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %289, i8 4) #5, !srcloc !45
  %290 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %tobool1219.not = icmp eq i32 %291, 0
  br i1 %tobool1219.not, label %do.body1210.do.body1236_crit_edge, label %cond.false1231

do.body1210.do.body1236_crit_edge:                ; preds = %do.body1210
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1236

cond.false1231:                                   ; preds = %do.body1210
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %292 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %292(i32 noundef %291) #5
  br label %do.body1236

do.body1236:                                      ; preds = %cond.false1231, %do.body1210.do.body1236_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  tail call void @arm_heavy_mb() #5
  %293 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %port744, align 4
  %add1240 = add i32 %294, 2
  %and1241 = and i32 %add1240, 1048575
  %add1242 = or i32 %and1241, -18874368
  %295 = inttoptr i32 %add1242 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %295, i8 38) #5, !srcloc !45
  %296 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %tobool1245.not = icmp eq i32 %297, 0
  br i1 %tobool1245.not, label %do.body1236.cond.end1279_crit_edge, label %cond.false1257

do.body1236.cond.end1279_crit_edge:               ; preds = %do.body1236
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1279

cond.false1257:                                   ; preds = %do.body1236
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %298 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %298(i32 noundef %297) #5
  %299 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %299)
  %.pr2183 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2183)
  %tobool1263.not = icmp eq i32 %.pr2183, 0
  br i1 %tobool1263.not, label %cond.false1257.cond.end1279_crit_edge, label %cond.false1275

cond.false1257.cond.end1279_crit_edge:            ; preds = %cond.false1257
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1279

cond.false1275:                                   ; preds = %cond.false1257
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %300 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %300(i32 noundef %.pr2183) #5
  br label %cond.end1279

cond.end1279:                                     ; preds = %cond.false1275, %cond.false1257.cond.end1279_crit_edge, %do.body1236.cond.end1279_crit_edge
  %301 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %port744, align 4
  %and1283 = and i32 %302, 1048575
  %add1284 = or i32 %and1283, -18874368
  %303 = inttoptr i32 %add1284 to ptr
  %304 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %303) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  %conv1288 = zext i8 %304 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %305 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %port744, align 4
  %add1294 = add i32 %306, 2
  %and1295 = and i32 %add1294, 1048575
  %add1296 = or i32 %and1295, -18874368
  %307 = inttoptr i32 %add1296 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %307, i8 4) #5, !srcloc !45
  %308 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %309)
  %tobool1299.not = icmp eq i32 %309, 0
  br i1 %tobool1299.not, label %cond.end1279.do.body1316_crit_edge, label %cond.false1311

cond.end1279.do.body1316_crit_edge:               ; preds = %cond.end1279
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1316

cond.false1311:                                   ; preds = %cond.end1279
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %310 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %310(i32 noundef %309) #5
  br label %do.body1316

do.body1316:                                      ; preds = %cond.false1311, %cond.end1279.do.body1316_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %311 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %port744, align 4
  %add1320 = add i32 %312, 2
  %and1321 = and i32 %add1320, 1048575
  %add1322 = or i32 %and1321, -18874368
  %313 = inttoptr i32 %add1322 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %313, i8 38) #5, !srcloc !45
  %314 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %315)
  %tobool1325.not = icmp eq i32 %315, 0
  br i1 %tobool1325.not, label %do.body1316.do.body1342_crit_edge, label %cond.false1337

do.body1316.do.body1342_crit_edge:                ; preds = %do.body1316
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1342

cond.false1337:                                   ; preds = %do.body1316
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %316 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %316(i32 noundef %315) #5
  br label %do.body1342

do.body1342:                                      ; preds = %cond.false1337, %do.body1316.do.body1342_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %317 = ptrtoint ptr %port744 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %port744, align 4
  %add1346 = add i32 %318, 2
  %and1347 = and i32 %add1346, 1048575
  %add1348 = or i32 %and1347, -18874368
  %319 = inttoptr i32 %add1348 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %319, i8 4) #5, !srcloc !45
  %320 = ptrtoint ptr %delay749 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %delay749, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %321)
  %tobool1351.not = icmp eq i32 %321, 0
  br i1 %tobool1351.not, label %do.body1342.cleanup_crit_edge, label %cond.false1363

do.body1342.cleanup_crit_edge:                    ; preds = %do.body1342
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.false1363:                                   ; preds = %do.body1342
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %322 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %322(i32 noundef %321) #5
  br label %cleanup

do.body1369:                                      ; preds = %entry.do.body1369_crit_edge, %entry.do.body1369_crit_edge2189, %entry.do.body1369_crit_edge2190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  tail call void @arm_heavy_mb() #5
  %port1372 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %323 = ptrtoint ptr %port1372 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %port1372, align 4
  %add1373 = add i32 %324, 3
  %and1374 = and i32 %add1373, 1048575
  %add1375 = or i32 %and1374, -18874368
  %325 = inttoptr i32 %add1375 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %325, i8 1) #5, !srcloc !45
  %delay1377 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %326 = ptrtoint ptr %delay1377 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %delay1377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %327)
  %tobool1378.not = icmp eq i32 %327, 0
  br i1 %tobool1378.not, label %do.body1369.do.body1395_crit_edge, label %cond.false1390

do.body1369.do.body1395_crit_edge:                ; preds = %do.body1369
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1395

cond.false1390:                                   ; preds = %do.body1369
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %328 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %328(i32 noundef %327) #5
  br label %do.body1395

do.body1395:                                      ; preds = %cond.false1390, %do.body1369.do.body1395_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %329 = ptrtoint ptr %port1372 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %port1372, align 4
  %add1399 = add i32 %330, 3
  %and1400 = and i32 %add1399, 1048575
  %add1401 = or i32 %and1400, -18874368
  %331 = inttoptr i32 %add1401 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %331, i8 1) #5, !srcloc !45
  %332 = ptrtoint ptr %delay1377 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %delay1377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %tobool1404.not = icmp eq i32 %333, 0
  br i1 %tobool1404.not, label %do.body1395.do.body1421_crit_edge, label %cond.false1416

do.body1395.do.body1421_crit_edge:                ; preds = %do.body1395
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1421

cond.false1416:                                   ; preds = %do.body1395
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %334 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %334(i32 noundef %333) #5
  br label %do.body1421

do.body1421:                                      ; preds = %cond.false1416, %do.body1395.do.body1421_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %335 = ptrtoint ptr %port1372 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %port1372, align 4
  %add1425 = add i32 %336, 2
  %and1426 = and i32 %add1425, 1048575
  %add1427 = or i32 %and1426, -18874368
  %337 = inttoptr i32 %add1427 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %337, i8 5) #5, !srcloc !45
  %338 = ptrtoint ptr %delay1377 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %delay1377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %tobool1430.not = icmp eq i32 %339, 0
  br i1 %tobool1430.not, label %do.body1421.do.body1447_crit_edge, label %cond.false1442

do.body1421.do.body1447_crit_edge:                ; preds = %do.body1421
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1447

cond.false1442:                                   ; preds = %do.body1421
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %340 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %340(i32 noundef %339) #5
  br label %do.body1447

do.body1447:                                      ; preds = %cond.false1442, %do.body1421.do.body1447_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %conv1450 = trunc i32 %add1 to i8
  %341 = ptrtoint ptr %port1372 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %port1372, align 4
  %add1452 = add i32 %342, 4
  %and1453 = and i32 %add1452, 1048575
  %add1454 = or i32 %and1453, -18874368
  %343 = inttoptr i32 %add1454 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %343, i8 %conv1450) #5, !srcloc !45
  %344 = ptrtoint ptr %delay1377 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %delay1377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %345)
  %tobool1457.not = icmp eq i32 %345, 0
  br i1 %tobool1457.not, label %do.body1447.do.body1474_crit_edge, label %cond.false1469

do.body1447.do.body1474_crit_edge:                ; preds = %do.body1447
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1474

cond.false1469:                                   ; preds = %do.body1447
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %346 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %346(i32 noundef %345) #5
  br label %do.body1474

do.body1474:                                      ; preds = %cond.false1469, %do.body1447.do.body1474_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  tail call void @arm_heavy_mb() #5
  %347 = ptrtoint ptr %port1372 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %port1372, align 4
  %add1478 = add i32 %348, 2
  %and1479 = and i32 %add1478, 1048575
  %add1480 = or i32 %and1479, -18874368
  %349 = inttoptr i32 %add1480 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %349, i8 4) #5, !srcloc !45
  %350 = ptrtoint ptr %delay1377 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %delay1377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %351)
  %tobool1483.not = icmp eq i32 %351, 0
  br i1 %tobool1483.not, label %do.body1474.do.body1500_crit_edge, label %cond.false1495

do.body1474.do.body1500_crit_edge:                ; preds = %do.body1474
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1500

cond.false1495:                                   ; preds = %do.body1474
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %352 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %352(i32 noundef %351) #5
  br label %do.body1500

do.body1500:                                      ; preds = %cond.false1495, %do.body1474.do.body1500_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  tail call void @arm_heavy_mb() #5
  %353 = ptrtoint ptr %port1372 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %port1372, align 4
  %add1504 = add i32 %354, 3
  %and1505 = and i32 %add1504, 1048575
  %add1506 = or i32 %and1505, -18874368
  %355 = inttoptr i32 %add1506 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %355, i8 0) #5, !srcloc !45
  %356 = ptrtoint ptr %delay1377 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %delay1377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %357)
  %tobool1509.not = icmp eq i32 %357, 0
  br i1 %tobool1509.not, label %do.body1500.do.body1526_crit_edge, label %cond.false1521

do.body1500.do.body1526_crit_edge:                ; preds = %do.body1500
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1526

cond.false1521:                                   ; preds = %do.body1500
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %358 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %358(i32 noundef %357) #5
  br label %do.body1526

do.body1526:                                      ; preds = %cond.false1521, %do.body1500.do.body1526_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  tail call void @arm_heavy_mb() #5
  %359 = ptrtoint ptr %port1372 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %port1372, align 4
  %add1530 = add i32 %360, 3
  %and1531 = and i32 %add1530, 1048575
  %add1532 = or i32 %and1531, -18874368
  %361 = inttoptr i32 %add1532 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %361, i8 0) #5, !srcloc !45
  %362 = ptrtoint ptr %delay1377 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %delay1377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %363)
  %tobool1535.not = icmp eq i32 %363, 0
  br i1 %tobool1535.not, label %do.body1526.do.body1552_crit_edge, label %cond.false1547

do.body1526.do.body1552_crit_edge:                ; preds = %do.body1526
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1552

cond.false1547:                                   ; preds = %do.body1526
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %364 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %364(i32 noundef %363) #5
  br label %do.body1552

do.body1552:                                      ; preds = %cond.false1547, %do.body1526.do.body1552_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  tail call void @arm_heavy_mb() #5
  %365 = ptrtoint ptr %port1372 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %port1372, align 4
  %add1556 = add i32 %366, 2
  %and1557 = and i32 %add1556, 1048575
  %add1558 = or i32 %and1557, -18874368
  %367 = inttoptr i32 %add1558 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %367, i8 36) #5, !srcloc !45
  %368 = ptrtoint ptr %delay1377 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %delay1377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %369)
  %tobool1561.not = icmp eq i32 %369, 0
  br i1 %tobool1561.not, label %do.body1552.cond.end1595_crit_edge, label %cond.false1573

do.body1552.cond.end1595_crit_edge:               ; preds = %do.body1552
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1595

cond.false1573:                                   ; preds = %do.body1552
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %370 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %370(i32 noundef %369) #5
  %371 = ptrtoint ptr %delay1377 to i32
  call void @__asan_load4_noabort(i32 %371)
  %.pr2185 = load i32, ptr %delay1377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2185)
  %tobool1579.not = icmp eq i32 %.pr2185, 0
  br i1 %tobool1579.not, label %cond.false1573.cond.end1595_crit_edge, label %cond.false1591

cond.false1573.cond.end1595_crit_edge:            ; preds = %cond.false1573
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1595

cond.false1591:                                   ; preds = %cond.false1573
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %372 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %372(i32 noundef %.pr2185) #5
  br label %cond.end1595

cond.end1595:                                     ; preds = %cond.false1591, %cond.false1573.cond.end1595_crit_edge, %do.body1552.cond.end1595_crit_edge
  %373 = ptrtoint ptr %port1372 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %port1372, align 4
  %add1598 = add i32 %374, 4
  %and1599 = and i32 %add1598, 1048575
  %add1600 = or i32 %and1599, -18874368
  %375 = inttoptr i32 %add1600 to ptr
  %376 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %375) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  %conv1604 = zext i8 %376 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  %377 = ptrtoint ptr %port1372 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %port1372, align 4
  %add1610 = add i32 %378, 2
  %and1611 = and i32 %add1610, 1048575
  %add1612 = or i32 %and1611, -18874368
  %379 = inttoptr i32 %add1612 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %379, i8 4) #5, !srcloc !45
  %380 = ptrtoint ptr %delay1377 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %delay1377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %381)
  %tobool1615.not = icmp eq i32 %381, 0
  br i1 %tobool1615.not, label %cond.end1595.do.body1632_crit_edge, label %cond.false1627

cond.end1595.do.body1632_crit_edge:               ; preds = %cond.end1595
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1632

cond.false1627:                                   ; preds = %cond.end1595
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %382 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %382(i32 noundef %381) #5
  br label %do.body1632

do.body1632:                                      ; preds = %cond.false1627, %cond.end1595.do.body1632_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  tail call void @arm_heavy_mb() #5
  %383 = ptrtoint ptr %port1372 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %port1372, align 4
  %add1636 = add i32 %384, 2
  %and1637 = and i32 %add1636, 1048575
  %add1638 = or i32 %and1637, -18874368
  %385 = inttoptr i32 %add1638 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %385, i8 36) #5, !srcloc !45
  %386 = ptrtoint ptr %delay1377 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %delay1377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %387)
  %tobool1641.not = icmp eq i32 %387, 0
  br i1 %tobool1641.not, label %do.body1632.cond.end1675_crit_edge, label %cond.false1653

do.body1632.cond.end1675_crit_edge:               ; preds = %do.body1632
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1675

cond.false1653:                                   ; preds = %do.body1632
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %388 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %388(i32 noundef %387) #5
  %389 = ptrtoint ptr %delay1377 to i32
  call void @__asan_load4_noabort(i32 %389)
  %.pr2187 = load i32, ptr %delay1377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2187)
  %tobool1659.not = icmp eq i32 %.pr2187, 0
  br i1 %tobool1659.not, label %cond.false1653.cond.end1675_crit_edge, label %cond.false1671

cond.false1653.cond.end1675_crit_edge:            ; preds = %cond.false1653
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1675

cond.false1671:                                   ; preds = %cond.false1653
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %390 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %390(i32 noundef %.pr2187) #5
  br label %cond.end1675

cond.end1675:                                     ; preds = %cond.false1671, %cond.false1653.cond.end1675_crit_edge, %do.body1632.cond.end1675_crit_edge
  %391 = ptrtoint ptr %port1372 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %port1372, align 4
  %add1678 = add i32 %392, 4
  %and1679 = and i32 %add1678, 1048575
  %add1680 = or i32 %and1679, -18874368
  %393 = inttoptr i32 %add1680 to ptr
  %394 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %393) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  tail call void @arm_heavy_mb() #5
  %395 = ptrtoint ptr %port1372 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %port1372, align 4
  %add1690 = add i32 %396, 2
  %and1691 = and i32 %add1690, 1048575
  %add1692 = or i32 %and1691, -18874368
  %397 = inttoptr i32 %add1692 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %397, i8 4) #5, !srcloc !45
  %398 = ptrtoint ptr %delay1377 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %delay1377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %399)
  %tobool1695.not = icmp eq i32 %399, 0
  br i1 %tobool1695.not, label %cond.end1675.cleanup_crit_edge, label %cond.false1707

cond.end1675.cleanup_crit_edge:                   ; preds = %cond.end1675
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.false1707:                                   ; preds = %cond.end1675
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %400 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %400(i32 noundef %399) #5
  br label %cleanup

cleanup:                                          ; preds = %cond.false1707, %cond.end1675.cleanup_crit_edge, %cond.false1363, %do.body1342.cleanup_crit_edge, %cond.end737, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %cond.end737 ], [ %conv1288, %do.body1342.cleanup_crit_edge ], [ %conv1288, %cond.false1363 ], [ %conv1604, %cond.end1675.cleanup_crit_edge ], [ %conv1604, %cond.false1707 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @on26_write_block(ptr noundef readonly %pi, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.do.body_crit_edge
    i32 1, label %entry.do.body_crit_edge2647
    i32 2, label %do.body1254
    i32 3, label %do.body1523
    i32 4, label %do.body1793
  ]

entry.do.body_crit_edge2647:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge2647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 1) #5, !srcloc !45
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add16 = add i32 %10, 2
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %11 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 5) #5, !srcloc !45
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !156
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add41 = add i32 %16, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %17 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 13) #5, !srcloc !45
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %add66 = add i32 %22, 2
  %and67 = and i32 %add66, 1048575
  %add68 = or i32 %and67, -18874368
  %23 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 5) #5, !srcloc !45
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add91 = add i32 %28, 2
  %and92 = and i32 %add91, 1048575
  %add93 = or i32 %and92, -18874368
  %29 = inttoptr i32 %add93 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 13) #5, !srcloc !45
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool96.not = icmp eq i32 %31, 0
  br i1 %tobool96.not, label %do.body87.do.body112_crit_edge, label %cond.false107

do.body87.do.body112_crit_edge:                   ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body112

cond.false107:                                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %31) #5
  br label %do.body112

do.body112:                                       ; preds = %cond.false107, %do.body87.do.body112_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %add116 = add i32 %34, 2
  %and117 = and i32 %add116, 1048575
  %add118 = or i32 %and117, -18874368
  %35 = inttoptr i32 %add118 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 5) #5, !srcloc !45
  %36 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool121.not = icmp eq i32 %37, 0
  br i1 %tobool121.not, label %do.body112.do.body137_crit_edge, label %cond.false132

do.body112.do.body137_crit_edge:                  ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body137

cond.false132:                                    ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %38(i32 noundef %37) #5
  br label %do.body137

do.body137:                                       ; preds = %cond.false132, %do.body112.do.body137_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %add141 = add i32 %40, 2
  %and142 = and i32 %add141, 1048575
  %add143 = or i32 %and142, -18874368
  %41 = inttoptr i32 %add143 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 4) #5, !srcloc !45
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool146.not = icmp eq i32 %43, 0
  br i1 %tobool146.not, label %do.body137.do.body162_crit_edge, label %cond.false157

do.body137.do.body162_crit_edge:                  ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body162

cond.false157:                                    ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %44(i32 noundef %43) #5
  br label %do.body162

do.body162:                                       ; preds = %cond.false157, %do.body137.do.body162_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port, align 4
  %and167 = and i32 %46, 1048575
  %add168 = or i32 %and167, -18874368
  %47 = inttoptr i32 %add168 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 1) #5, !srcloc !45
  %48 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool171.not = icmp eq i32 %49, 0
  br i1 %tobool171.not, label %do.body162.do.body187_crit_edge, label %cond.false182

do.body162.do.body187_crit_edge:                  ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body187

cond.false182:                                    ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %50(i32 noundef %49) #5
  br label %do.body187

do.body187:                                       ; preds = %cond.false182, %do.body162.do.body187_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void @arm_heavy_mb() #5
  %51 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port, align 4
  %add191 = add i32 %52, 2
  %and192 = and i32 %add191, 1048575
  %add193 = or i32 %and192, -18874368
  %53 = inttoptr i32 %add193 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 5) #5, !srcloc !45
  %54 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool196.not = icmp eq i32 %55, 0
  br i1 %tobool196.not, label %do.body187.do.body212_crit_edge, label %cond.false207

do.body187.do.body212_crit_edge:                  ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body212

cond.false207:                                    ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %56(i32 noundef %55) #5
  br label %do.body212

do.body212:                                       ; preds = %cond.false207, %do.body187.do.body212_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  tail call void @arm_heavy_mb() #5
  %57 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port, align 4
  %add216 = add i32 %58, 2
  %and217 = and i32 %add216, 1048575
  %add218 = or i32 %and217, -18874368
  %59 = inttoptr i32 %add218 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 7) #5, !srcloc !45
  %60 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool221.not = icmp eq i32 %61, 0
  br i1 %tobool221.not, label %do.body212.do.body237_crit_edge, label %cond.false232

do.body212.do.body237_crit_edge:                  ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body237

cond.false232:                                    ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %62(i32 noundef %61) #5
  br label %do.body237

do.body237:                                       ; preds = %cond.false232, %do.body212.do.body237_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %63 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port, align 4
  %add241 = add i32 %64, 2
  %and242 = and i32 %add241, 1048575
  %add243 = or i32 %and242, -18874368
  %65 = inttoptr i32 %add243 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 5) #5, !srcloc !45
  %66 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool246.not = icmp eq i32 %67, 0
  br i1 %tobool246.not, label %do.body237.do.body262_crit_edge, label %cond.false257

do.body237.do.body262_crit_edge:                  ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body262

cond.false257:                                    ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %68(i32 noundef %67) #5
  br label %do.body262

do.body262:                                       ; preds = %cond.false257, %do.body237.do.body262_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  tail call void @arm_heavy_mb() #5
  %69 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port, align 4
  %add266 = add i32 %70, 2
  %and267 = and i32 %add266, 1048575
  %add268 = or i32 %and267, -18874368
  %71 = inttoptr i32 %add268 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 4) #5, !srcloc !45
  %72 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool271.not = icmp eq i32 %73, 0
  br i1 %tobool271.not, label %do.body262.do.body287_crit_edge, label %cond.false282

do.body262.do.body287_crit_edge:                  ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body287

cond.false282:                                    ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %74(i32 noundef %73) #5
  br label %do.body287

do.body287:                                       ; preds = %cond.false282, %do.body262.do.body287_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  tail call void @arm_heavy_mb() #5
  %75 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %port, align 4
  %and292 = and i32 %76, 1048575
  %add293 = or i32 %and292, -18874368
  %77 = inttoptr i32 %add293 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 2) #5, !srcloc !45
  %78 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool296.not = icmp eq i32 %79, 0
  br i1 %tobool296.not, label %do.body287.do.body312_crit_edge, label %cond.false307

do.body287.do.body312_crit_edge:                  ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body312

cond.false307:                                    ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %80(i32 noundef %79) #5
  br label %do.body312

do.body312:                                       ; preds = %cond.false307, %do.body287.do.body312_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  tail call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %port, align 4
  %add316 = add i32 %82, 2
  %and317 = and i32 %add316, 1048575
  %add318 = or i32 %and317, -18874368
  %83 = inttoptr i32 %add318 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 5) #5, !srcloc !45
  %84 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool321.not = icmp eq i32 %85, 0
  br i1 %tobool321.not, label %do.body312.do.body337_crit_edge, label %cond.false332

do.body312.do.body337_crit_edge:                  ; preds = %do.body312
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body337

cond.false332:                                    ; preds = %do.body312
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %86(i32 noundef %85) #5
  br label %do.body337

do.body337:                                       ; preds = %cond.false332, %do.body312.do.body337_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %87 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %port, align 4
  %add341 = add i32 %88, 2
  %and342 = and i32 %add341, 1048575
  %add343 = or i32 %and342, -18874368
  %89 = inttoptr i32 %add343 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 13) #5, !srcloc !45
  %90 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool346.not = icmp eq i32 %91, 0
  br i1 %tobool346.not, label %do.body337.do.body362_crit_edge, label %cond.false357

do.body337.do.body362_crit_edge:                  ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body362

cond.false357:                                    ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %92(i32 noundef %91) #5
  br label %do.body362

do.body362:                                       ; preds = %cond.false357, %do.body337.do.body362_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void @arm_heavy_mb() #5
  %93 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %port, align 4
  %add366 = add i32 %94, 2
  %and367 = and i32 %add366, 1048575
  %add368 = or i32 %and367, -18874368
  %95 = inttoptr i32 %add368 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 5) #5, !srcloc !45
  %96 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool371.not = icmp eq i32 %97, 0
  br i1 %tobool371.not, label %do.body362.do.body387_crit_edge, label %cond.false382

do.body362.do.body387_crit_edge:                  ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body387

cond.false382:                                    ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %98(i32 noundef %97) #5
  br label %do.body387

do.body387:                                       ; preds = %cond.false382, %do.body362.do.body387_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void @arm_heavy_mb() #5
  %99 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %port, align 4
  %add391 = add i32 %100, 2
  %and392 = and i32 %add391, 1048575
  %add393 = or i32 %and392, -18874368
  %101 = inttoptr i32 %add393 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 13) #5, !srcloc !45
  %102 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool396.not = icmp eq i32 %103, 0
  br i1 %tobool396.not, label %do.body387.do.body412_crit_edge, label %cond.false407

do.body387.do.body412_crit_edge:                  ; preds = %do.body387
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body412

cond.false407:                                    ; preds = %do.body387
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %104(i32 noundef %103) #5
  br label %do.body412

do.body412:                                       ; preds = %cond.false407, %do.body387.do.body412_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !171
  tail call void @arm_heavy_mb() #5
  %105 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %port, align 4
  %add416 = add i32 %106, 2
  %and417 = and i32 %add416, 1048575
  %add418 = or i32 %and417, -18874368
  %107 = inttoptr i32 %add418 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %107, i8 5) #5, !srcloc !45
  %108 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool421.not = icmp eq i32 %109, 0
  br i1 %tobool421.not, label %do.body412.do.body437_crit_edge, label %cond.false432

do.body412.do.body437_crit_edge:                  ; preds = %do.body412
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body437

cond.false432:                                    ; preds = %do.body412
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %110(i32 noundef %109) #5
  br label %do.body437

do.body437:                                       ; preds = %cond.false432, %do.body412.do.body437_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !172
  tail call void @arm_heavy_mb() #5
  %111 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %port, align 4
  %add441 = add i32 %112, 2
  %and442 = and i32 %add441, 1048575
  %add443 = or i32 %and442, -18874368
  %113 = inttoptr i32 %add443 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %113, i8 4) #5, !srcloc !45
  %114 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool446.not = icmp eq i32 %115, 0
  br i1 %tobool446.not, label %do.body437.do.body462_crit_edge, label %cond.false457

do.body437.do.body462_crit_edge:                  ; preds = %do.body437
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body462

cond.false457:                                    ; preds = %do.body437
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %116(i32 noundef %115) #5
  br label %do.body462

do.body462:                                       ; preds = %cond.false457, %do.body437.do.body462_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  tail call void @arm_heavy_mb() #5
  %117 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %mode, align 4
  %119 = trunc i32 %118 to i8
  %conv = add i8 %119, 24
  %120 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %port, align 4
  %and469 = and i32 %121, 1048575
  %add470 = or i32 %and469, -18874368
  %122 = inttoptr i32 %add470 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %122, i8 %conv) #5, !srcloc !45
  %123 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool473.not = icmp eq i32 %124, 0
  br i1 %tobool473.not, label %do.body462.do.body490_crit_edge, label %cond.false485

do.body462.do.body490_crit_edge:                  ; preds = %do.body462
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body490

cond.false485:                                    ; preds = %do.body462
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %125(i32 noundef %124) #5
  br label %do.body490

do.body490:                                       ; preds = %cond.false485, %do.body462.do.body490_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !174
  tail call void @arm_heavy_mb() #5
  %126 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %port, align 4
  %add494 = add i32 %127, 2
  %and495 = and i32 %add494, 1048575
  %add496 = or i32 %and495, -18874368
  %128 = inttoptr i32 %add496 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %128, i8 5) #5, !srcloc !45
  %129 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool499.not = icmp eq i32 %130, 0
  br i1 %tobool499.not, label %do.body490.do.body516_crit_edge, label %cond.false511

do.body490.do.body516_crit_edge:                  ; preds = %do.body490
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body516

cond.false511:                                    ; preds = %do.body490
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %131(i32 noundef %130) #5
  br label %do.body516

do.body516:                                       ; preds = %cond.false511, %do.body490.do.body516_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !175
  tail call void @arm_heavy_mb() #5
  %132 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %port, align 4
  %add520 = add i32 %133, 2
  %and521 = and i32 %add520, 1048575
  %add522 = or i32 %and521, -18874368
  %134 = inttoptr i32 %add522 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %134, i8 7) #5, !srcloc !45
  %135 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool525.not = icmp eq i32 %136, 0
  br i1 %tobool525.not, label %do.body516.do.body542_crit_edge, label %cond.false537

do.body516.do.body542_crit_edge:                  ; preds = %do.body516
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body542

cond.false537:                                    ; preds = %do.body516
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %137(i32 noundef %136) #5
  br label %do.body542

do.body542:                                       ; preds = %cond.false537, %do.body516.do.body542_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !176
  tail call void @arm_heavy_mb() #5
  %138 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %port, align 4
  %add546 = add i32 %139, 2
  %and547 = and i32 %add546, 1048575
  %add548 = or i32 %and547, -18874368
  %140 = inttoptr i32 %add548 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %140, i8 5) #5, !srcloc !45
  %141 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool551.not = icmp eq i32 %142, 0
  br i1 %tobool551.not, label %do.body542.do.body568_crit_edge, label %cond.false563

do.body542.do.body568_crit_edge:                  ; preds = %do.body542
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body568

cond.false563:                                    ; preds = %do.body542
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %143(i32 noundef %142) #5
  br label %do.body568

do.body568:                                       ; preds = %cond.false563, %do.body542.do.body568_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !177
  tail call void @arm_heavy_mb() #5
  %144 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %port, align 4
  %add572 = add i32 %145, 2
  %and573 = and i32 %add572, 1048575
  %add574 = or i32 %and573, -18874368
  %146 = inttoptr i32 %add574 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %146, i8 4) #5, !srcloc !45
  %147 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool577.not = icmp eq i32 %148, 0
  br i1 %tobool577.not, label %do.body568.do.body594_crit_edge, label %cond.false589

do.body568.do.body594_crit_edge:                  ; preds = %do.body568
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body594

cond.false589:                                    ; preds = %do.body568
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %149(i32 noundef %148) #5
  br label %do.body594

do.body594:                                       ; preds = %cond.false589, %do.body568.do.body594_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !178
  tail call void @arm_heavy_mb() #5
  %150 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %port, align 4
  %and599 = and i32 %151, 1048575
  %add600 = or i32 %and599, -18874368
  %152 = inttoptr i32 %add600 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %152, i8 0) #5, !srcloc !45
  %153 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool603.not = icmp eq i32 %154, 0
  br i1 %tobool603.not, label %do.body594.do.body620_crit_edge, label %cond.false615

do.body594.do.body620_crit_edge:                  ; preds = %do.body594
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body620

cond.false615:                                    ; preds = %do.body594
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %155(i32 noundef %154) #5
  br label %do.body620

do.body620:                                       ; preds = %cond.false615, %do.body594.do.body620_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !179
  tail call void @arm_heavy_mb() #5
  %156 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %port, align 4
  %add624 = add i32 %157, 2
  %and625 = and i32 %add624, 1048575
  %add626 = or i32 %and625, -18874368
  %158 = inttoptr i32 %add626 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %158, i8 5) #5, !srcloc !45
  %159 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool629.not = icmp eq i32 %160, 0
  br i1 %tobool629.not, label %do.body620.do.body646_crit_edge, label %cond.false641

do.body620.do.body646_crit_edge:                  ; preds = %do.body620
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body646

cond.false641:                                    ; preds = %do.body620
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %161(i32 noundef %160) #5
  br label %do.body646

do.body646:                                       ; preds = %cond.false641, %do.body620.do.body646_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !180
  tail call void @arm_heavy_mb() #5
  %162 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %port, align 4
  %add650 = add i32 %163, 2
  %and651 = and i32 %add650, 1048575
  %add652 = or i32 %and651, -18874368
  %164 = inttoptr i32 %add652 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %164, i8 13) #5, !srcloc !45
  %165 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool655.not = icmp eq i32 %166, 0
  br i1 %tobool655.not, label %do.body646.do.body672_crit_edge, label %cond.false667

do.body646.do.body672_crit_edge:                  ; preds = %do.body646
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body672

cond.false667:                                    ; preds = %do.body646
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %167(i32 noundef %166) #5
  br label %do.body672

do.body672:                                       ; preds = %cond.false667, %do.body646.do.body672_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %168 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %port, align 4
  %add676 = add i32 %169, 2
  %and677 = and i32 %add676, 1048575
  %add678 = or i32 %and677, -18874368
  %170 = inttoptr i32 %add678 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %170, i8 5) #5, !srcloc !45
  %171 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool681.not = icmp eq i32 %172, 0
  br i1 %tobool681.not, label %do.body672.do.body698_crit_edge, label %cond.false693

do.body672.do.body698_crit_edge:                  ; preds = %do.body672
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body698

cond.false693:                                    ; preds = %do.body672
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %173(i32 noundef %172) #5
  br label %do.body698

do.body698:                                       ; preds = %cond.false693, %do.body672.do.body698_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !182
  tail call void @arm_heavy_mb() #5
  %174 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %port, align 4
  %add702 = add i32 %175, 2
  %and703 = and i32 %add702, 1048575
  %add704 = or i32 %and703, -18874368
  %176 = inttoptr i32 %add704 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %176, i8 13) #5, !srcloc !45
  %177 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool707.not = icmp eq i32 %178, 0
  br i1 %tobool707.not, label %do.body698.do.body724_crit_edge, label %cond.false719

do.body698.do.body724_crit_edge:                  ; preds = %do.body698
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body724

cond.false719:                                    ; preds = %do.body698
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %179 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %179(i32 noundef %178) #5
  br label %do.body724

do.body724:                                       ; preds = %cond.false719, %do.body698.do.body724_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !183
  tail call void @arm_heavy_mb() #5
  %180 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %port, align 4
  %add728 = add i32 %181, 2
  %and729 = and i32 %add728, 1048575
  %add730 = or i32 %and729, -18874368
  %182 = inttoptr i32 %add730 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %182, i8 5) #5, !srcloc !45
  %183 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool733.not = icmp eq i32 %184, 0
  br i1 %tobool733.not, label %do.body724.do.body750_crit_edge, label %cond.false745

do.body724.do.body750_crit_edge:                  ; preds = %do.body724
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body750

cond.false745:                                    ; preds = %do.body724
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %185 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %185(i32 noundef %184) #5
  br label %do.body750

do.body750:                                       ; preds = %cond.false745, %do.body724.do.body750_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !184
  tail call void @arm_heavy_mb() #5
  %186 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %port, align 4
  %add754 = add i32 %187, 2
  %and755 = and i32 %add754, 1048575
  %add756 = or i32 %and755, -18874368
  %188 = inttoptr i32 %add756 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %188, i8 4) #5, !srcloc !45
  %189 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool759.not = icmp eq i32 %190, 0
  br i1 %tobool759.not, label %do.body750.cond.end775_crit_edge, label %cond.false771

do.body750.cond.end775_crit_edge:                 ; preds = %do.body750
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end775

cond.false771:                                    ; preds = %do.body750
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %191 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %191(i32 noundef %190) #5
  br label %cond.end775

cond.end775:                                      ; preds = %cond.false771, %do.body750.cond.end775_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %192 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %192(i32 noundef 2147480) #5
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp7762641 = icmp sgt i32 %count, 1
  br i1 %cmp7762641, label %cond.end775.do.body778_crit_edge, label %cond.end775.do.body886_crit_edge

cond.end775.do.body886_crit_edge:                 ; preds = %cond.end775
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body886

cond.end775.do.body778_crit_edge:                 ; preds = %cond.end775
  br label %do.body778

do.body778:                                       ; preds = %for.inc.do.body778_crit_edge, %cond.end775.do.body778_crit_edge
  %k.02642 = phi i32 [ %inc, %for.inc.do.body778_crit_edge ], [ 0, %cond.end775.do.body778_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !185
  tail call void @arm_heavy_mb() #5
  %193 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %port, align 4
  %add782 = add i32 %194, 2
  %and783 = and i32 %add782, 1048575
  %add784 = or i32 %and783, -18874368
  %195 = inttoptr i32 %add784 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %195, i8 5) #5, !srcloc !45
  %196 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool787.not = icmp eq i32 %197, 0
  br i1 %tobool787.not, label %do.body778.do.body804_crit_edge, label %cond.false799

do.body778.do.body804_crit_edge:                  ; preds = %do.body778
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body804

cond.false799:                                    ; preds = %do.body778
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %198 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %198(i32 noundef %197) #5
  br label %do.body804

do.body804:                                       ; preds = %cond.false799, %do.body778.do.body804_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !186
  tail call void @arm_heavy_mb() #5
  %mul807 = shl nuw i32 %k.02642, 1
  %arrayidx = getelementptr i8, ptr %buf, i32 %mul807
  %199 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx, align 1
  %201 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %port, align 4
  %and810 = and i32 %202, 1048575
  %add811 = or i32 %and810, -18874368
  %203 = inttoptr i32 %add811 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %203, i8 %200) #5, !srcloc !45
  %204 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool814.not = icmp eq i32 %205, 0
  br i1 %tobool814.not, label %do.body804.do.body831_crit_edge, label %cond.false826

do.body804.do.body831_crit_edge:                  ; preds = %do.body804
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body831

cond.false826:                                    ; preds = %do.body804
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %206 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %206(i32 noundef %205) #5
  br label %do.body831

do.body831:                                       ; preds = %cond.false826, %do.body804.do.body831_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !187
  tail call void @arm_heavy_mb() #5
  %207 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %port, align 4
  %add835 = add i32 %208, 2
  %and836 = and i32 %add835, 1048575
  %add837 = or i32 %and836, -18874368
  %209 = inttoptr i32 %add837 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %209, i8 7) #5, !srcloc !45
  %210 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool840.not = icmp eq i32 %211, 0
  br i1 %tobool840.not, label %do.body831.do.body857_crit_edge, label %cond.false852

do.body831.do.body857_crit_edge:                  ; preds = %do.body831
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body857

cond.false852:                                    ; preds = %do.body831
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %212 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %212(i32 noundef %211) #5
  br label %do.body857

do.body857:                                       ; preds = %cond.false852, %do.body831.do.body857_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !188
  tail call void @arm_heavy_mb() #5
  %add861 = or i32 %mul807, 1
  %arrayidx862 = getelementptr i8, ptr %buf, i32 %add861
  %213 = ptrtoint ptr %arrayidx862 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx862, align 1
  %215 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %port, align 4
  %and865 = and i32 %216, 1048575
  %add866 = or i32 %and865, -18874368
  %217 = inttoptr i32 %add866 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %217, i8 %214) #5, !srcloc !45
  %218 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool869.not = icmp eq i32 %219, 0
  br i1 %tobool869.not, label %do.body857.for.inc_crit_edge, label %cond.false881

do.body857.for.inc_crit_edge:                     ; preds = %do.body857
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cond.false881:                                    ; preds = %do.body857
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %220 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %220(i32 noundef %219) #5
  br label %for.inc

for.inc:                                          ; preds = %cond.false881, %do.body857.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.02642, 1
  %exitcond2645.not = icmp eq i32 %inc, %div
  br i1 %exitcond2645.not, label %for.inc.do.body886_crit_edge, label %for.inc.do.body778_crit_edge

for.inc.do.body778_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body778

for.inc.do.body886_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body886

do.body886:                                       ; preds = %for.inc.do.body886_crit_edge, %cond.end775.do.body886_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !189
  tail call void @arm_heavy_mb() #5
  %221 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %port, align 4
  %add890 = add i32 %222, 2
  %and891 = and i32 %add890, 1048575
  %add892 = or i32 %and891, -18874368
  %223 = inttoptr i32 %add892 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %223, i8 5) #5, !srcloc !45
  %224 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool895.not = icmp eq i32 %225, 0
  br i1 %tobool895.not, label %do.body886.do.body912_crit_edge, label %cond.false907

do.body886.do.body912_crit_edge:                  ; preds = %do.body886
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body912

cond.false907:                                    ; preds = %do.body886
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %226 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %226(i32 noundef %225) #5
  br label %do.body912

do.body912:                                       ; preds = %cond.false907, %do.body886.do.body912_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !190
  tail call void @arm_heavy_mb() #5
  %227 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %port, align 4
  %add916 = add i32 %228, 2
  %and917 = and i32 %add916, 1048575
  %add918 = or i32 %and917, -18874368
  %229 = inttoptr i32 %add918 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %229, i8 4) #5, !srcloc !45
  %230 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool921.not = icmp eq i32 %231, 0
  br i1 %tobool921.not, label %do.body912.do.body938_crit_edge, label %cond.false933

do.body912.do.body938_crit_edge:                  ; preds = %do.body912
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body938

cond.false933:                                    ; preds = %do.body912
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %232 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %232(i32 noundef %231) #5
  br label %do.body938

do.body938:                                       ; preds = %cond.false933, %do.body912.do.body938_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !191
  tail call void @arm_heavy_mb() #5
  %233 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %port, align 4
  %and943 = and i32 %234, 1048575
  %add944 = or i32 %and943, -18874368
  %235 = inttoptr i32 %add944 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %235, i8 2) #5, !srcloc !45
  %236 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool947.not = icmp eq i32 %237, 0
  br i1 %tobool947.not, label %do.body938.do.body964_crit_edge, label %cond.false959

do.body938.do.body964_crit_edge:                  ; preds = %do.body938
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body964

cond.false959:                                    ; preds = %do.body938
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %238 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %238(i32 noundef %237) #5
  br label %do.body964

do.body964:                                       ; preds = %cond.false959, %do.body938.do.body964_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !192
  tail call void @arm_heavy_mb() #5
  %239 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %port, align 4
  %add968 = add i32 %240, 2
  %and969 = and i32 %add968, 1048575
  %add970 = or i32 %and969, -18874368
  %241 = inttoptr i32 %add970 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %241, i8 5) #5, !srcloc !45
  %242 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool973.not = icmp eq i32 %243, 0
  br i1 %tobool973.not, label %do.body964.do.body990_crit_edge, label %cond.false985

do.body964.do.body990_crit_edge:                  ; preds = %do.body964
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body990

cond.false985:                                    ; preds = %do.body964
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %244 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %244(i32 noundef %243) #5
  br label %do.body990

do.body990:                                       ; preds = %cond.false985, %do.body964.do.body990_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !193
  tail call void @arm_heavy_mb() #5
  %245 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %port, align 4
  %add994 = add i32 %246, 2
  %and995 = and i32 %add994, 1048575
  %add996 = or i32 %and995, -18874368
  %247 = inttoptr i32 %add996 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %247, i8 13) #5, !srcloc !45
  %248 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool999.not = icmp eq i32 %249, 0
  br i1 %tobool999.not, label %do.body990.do.body1016_crit_edge, label %cond.false1011

do.body990.do.body1016_crit_edge:                 ; preds = %do.body990
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1016

cond.false1011:                                   ; preds = %do.body990
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %250 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %250(i32 noundef %249) #5
  br label %do.body1016

do.body1016:                                      ; preds = %cond.false1011, %do.body990.do.body1016_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !194
  tail call void @arm_heavy_mb() #5
  %251 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %port, align 4
  %add1020 = add i32 %252, 2
  %and1021 = and i32 %add1020, 1048575
  %add1022 = or i32 %and1021, -18874368
  %253 = inttoptr i32 %add1022 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %253, i8 5) #5, !srcloc !45
  %254 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %tobool1025.not = icmp eq i32 %255, 0
  br i1 %tobool1025.not, label %do.body1016.do.body1042_crit_edge, label %cond.false1037

do.body1016.do.body1042_crit_edge:                ; preds = %do.body1016
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1042

cond.false1037:                                   ; preds = %do.body1016
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %256 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %256(i32 noundef %255) #5
  br label %do.body1042

do.body1042:                                      ; preds = %cond.false1037, %do.body1016.do.body1042_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !195
  tail call void @arm_heavy_mb() #5
  %257 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %port, align 4
  %add1046 = add i32 %258, 2
  %and1047 = and i32 %add1046, 1048575
  %add1048 = or i32 %and1047, -18874368
  %259 = inttoptr i32 %add1048 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %259, i8 13) #5, !srcloc !45
  %260 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %tobool1051.not = icmp eq i32 %261, 0
  br i1 %tobool1051.not, label %do.body1042.do.body1068_crit_edge, label %cond.false1063

do.body1042.do.body1068_crit_edge:                ; preds = %do.body1042
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1068

cond.false1063:                                   ; preds = %do.body1042
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %262 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %262(i32 noundef %261) #5
  br label %do.body1068

do.body1068:                                      ; preds = %cond.false1063, %do.body1042.do.body1068_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !196
  tail call void @arm_heavy_mb() #5
  %263 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %port, align 4
  %add1072 = add i32 %264, 2
  %and1073 = and i32 %add1072, 1048575
  %add1074 = or i32 %and1073, -18874368
  %265 = inttoptr i32 %add1074 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %265, i8 5) #5, !srcloc !45
  %266 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %tobool1077.not = icmp eq i32 %267, 0
  br i1 %tobool1077.not, label %do.body1068.do.body1094_crit_edge, label %cond.false1089

do.body1068.do.body1094_crit_edge:                ; preds = %do.body1068
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1094

cond.false1089:                                   ; preds = %do.body1068
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %268 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %268(i32 noundef %267) #5
  br label %do.body1094

do.body1094:                                      ; preds = %cond.false1089, %do.body1068.do.body1094_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !197
  tail call void @arm_heavy_mb() #5
  %269 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %port, align 4
  %add1098 = add i32 %270, 2
  %and1099 = and i32 %add1098, 1048575
  %add1100 = or i32 %and1099, -18874368
  %271 = inttoptr i32 %add1100 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %271, i8 4) #5, !srcloc !45
  %272 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %tobool1103.not = icmp eq i32 %273, 0
  br i1 %tobool1103.not, label %do.body1094.do.body1120_crit_edge, label %cond.false1115

do.body1094.do.body1120_crit_edge:                ; preds = %do.body1094
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1120

cond.false1115:                                   ; preds = %do.body1094
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %274 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %274(i32 noundef %273) #5
  br label %do.body1120

do.body1120:                                      ; preds = %cond.false1115, %do.body1094.do.body1120_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !198
  tail call void @arm_heavy_mb() #5
  %275 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %mode, align 4
  %277 = trunc i32 %276 to i8
  %conv1125 = add i8 %277, 8
  %278 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %port, align 4
  %and1128 = and i32 %279, 1048575
  %add1129 = or i32 %and1128, -18874368
  %280 = inttoptr i32 %add1129 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %280, i8 %conv1125) #5, !srcloc !45
  %281 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %282)
  %tobool1132.not = icmp eq i32 %282, 0
  br i1 %tobool1132.not, label %do.body1120.do.body1149_crit_edge, label %cond.false1144

do.body1120.do.body1149_crit_edge:                ; preds = %do.body1120
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1149

cond.false1144:                                   ; preds = %do.body1120
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %283 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %283(i32 noundef %282) #5
  br label %do.body1149

do.body1149:                                      ; preds = %cond.false1144, %do.body1120.do.body1149_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !199
  tail call void @arm_heavy_mb() #5
  %284 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %port, align 4
  %add1153 = add i32 %285, 2
  %and1154 = and i32 %add1153, 1048575
  %add1155 = or i32 %and1154, -18874368
  %286 = inttoptr i32 %add1155 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %286, i8 5) #5, !srcloc !45
  %287 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %288)
  %tobool1158.not = icmp eq i32 %288, 0
  br i1 %tobool1158.not, label %do.body1149.do.body1175_crit_edge, label %cond.false1170

do.body1149.do.body1175_crit_edge:                ; preds = %do.body1149
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1175

cond.false1170:                                   ; preds = %do.body1149
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %289 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %289(i32 noundef %288) #5
  br label %do.body1175

do.body1175:                                      ; preds = %cond.false1170, %do.body1149.do.body1175_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !200
  tail call void @arm_heavy_mb() #5
  %290 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %port, align 4
  %add1179 = add i32 %291, 2
  %and1180 = and i32 %add1179, 1048575
  %add1181 = or i32 %and1180, -18874368
  %292 = inttoptr i32 %add1181 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %292, i8 7) #5, !srcloc !45
  %293 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %294)
  %tobool1184.not = icmp eq i32 %294, 0
  br i1 %tobool1184.not, label %do.body1175.do.body1201_crit_edge, label %cond.false1196

do.body1175.do.body1201_crit_edge:                ; preds = %do.body1175
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1201

cond.false1196:                                   ; preds = %do.body1175
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %295 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %295(i32 noundef %294) #5
  br label %do.body1201

do.body1201:                                      ; preds = %cond.false1196, %do.body1175.do.body1201_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  tail call void @arm_heavy_mb() #5
  %296 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %port, align 4
  %add1205 = add i32 %297, 2
  %and1206 = and i32 %add1205, 1048575
  %add1207 = or i32 %and1206, -18874368
  %298 = inttoptr i32 %add1207 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %298, i8 5) #5, !srcloc !45
  %299 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %300)
  %tobool1210.not = icmp eq i32 %300, 0
  br i1 %tobool1210.not, label %do.body1201.do.body1227_crit_edge, label %cond.false1222

do.body1201.do.body1227_crit_edge:                ; preds = %do.body1201
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1227

cond.false1222:                                   ; preds = %do.body1201
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %301 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %301(i32 noundef %300) #5
  br label %do.body1227

do.body1227:                                      ; preds = %cond.false1222, %do.body1201.do.body1227_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %302 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %port, align 4
  %add1231 = add i32 %303, 2
  %and1232 = and i32 %add1231, 1048575
  %add1233 = or i32 %and1232, -18874368
  %304 = inttoptr i32 %add1233 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %304, i8 4) #5, !srcloc !45
  %305 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %tobool1236.not = icmp eq i32 %306, 0
  br i1 %tobool1236.not, label %do.body1227.sw.epilog_crit_edge, label %do.body1227.sw.epilog.sink.split_crit_edge

do.body1227.sw.epilog.sink.split_crit_edge:       ; preds = %do.body1227
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body1227.sw.epilog_crit_edge:                  ; preds = %do.body1227
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body1254:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !203
  tail call void @arm_heavy_mb() #5
  %port1257 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %307 = ptrtoint ptr %port1257 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %port1257, align 4
  %add1258 = add i32 %308, 3
  %and1259 = and i32 %add1258, 1048575
  %add1260 = or i32 %and1259, -18874368
  %309 = inttoptr i32 %add1260 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %309, i8 1) #5, !srcloc !45
  %delay1262 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %310 = ptrtoint ptr %delay1262 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %delay1262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %tobool1263.not = icmp eq i32 %311, 0
  br i1 %tobool1263.not, label %do.body1254.do.body1280_crit_edge, label %cond.false1275

do.body1254.do.body1280_crit_edge:                ; preds = %do.body1254
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1280

cond.false1275:                                   ; preds = %do.body1254
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %312 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %312(i32 noundef %311) #5
  br label %do.body1280

do.body1280:                                      ; preds = %cond.false1275, %do.body1254.do.body1280_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !204
  tail call void @arm_heavy_mb() #5
  %313 = ptrtoint ptr %port1257 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %port1257, align 4
  %add1284 = add i32 %314, 3
  %and1285 = and i32 %add1284, 1048575
  %add1286 = or i32 %and1285, -18874368
  %315 = inttoptr i32 %add1286 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %315, i8 1) #5, !srcloc !45
  %316 = ptrtoint ptr %delay1262 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %delay1262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %tobool1289.not = icmp eq i32 %317, 0
  br i1 %tobool1289.not, label %do.body1280.do.body1306_crit_edge, label %cond.false1301

do.body1280.do.body1306_crit_edge:                ; preds = %do.body1280
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1306

cond.false1301:                                   ; preds = %do.body1280
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %318 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %318(i32 noundef %317) #5
  br label %do.body1306

do.body1306:                                      ; preds = %cond.false1301, %do.body1280.do.body1306_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !205
  tail call void @arm_heavy_mb() #5
  %319 = ptrtoint ptr %port1257 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %port1257, align 4
  %add1310 = add i32 %320, 2
  %and1311 = and i32 %add1310, 1048575
  %add1312 = or i32 %and1311, -18874368
  %321 = inttoptr i32 %add1312 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %321, i8 5) #5, !srcloc !45
  %322 = ptrtoint ptr %delay1262 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %delay1262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %tobool1315.not = icmp eq i32 %323, 0
  br i1 %tobool1315.not, label %do.body1306.do.body1332_crit_edge, label %cond.false1327

do.body1306.do.body1332_crit_edge:                ; preds = %do.body1306
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1332

cond.false1327:                                   ; preds = %do.body1306
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %324 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %324(i32 noundef %323) #5
  br label %do.body1332

do.body1332:                                      ; preds = %cond.false1327, %do.body1306.do.body1332_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !206
  tail call void @arm_heavy_mb() #5
  %325 = ptrtoint ptr %port1257 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %port1257, align 4
  %add1336 = add i32 %326, 4
  %and1337 = and i32 %add1336, 1048575
  %add1338 = or i32 %and1337, -18874368
  %327 = inttoptr i32 %add1338 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %327, i8 1) #5, !srcloc !45
  %328 = ptrtoint ptr %delay1262 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %delay1262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %329)
  %tobool1341.not = icmp eq i32 %329, 0
  br i1 %tobool1341.not, label %do.body1332.do.body1358_crit_edge, label %cond.false1353

do.body1332.do.body1358_crit_edge:                ; preds = %do.body1332
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1358

cond.false1353:                                   ; preds = %do.body1332
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %330 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %330(i32 noundef %329) #5
  br label %do.body1358

do.body1358:                                      ; preds = %cond.false1353, %do.body1332.do.body1358_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !207
  tail call void @arm_heavy_mb() #5
  %331 = ptrtoint ptr %port1257 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %port1257, align 4
  %add1362 = add i32 %332, 2
  %and1363 = and i32 %add1362, 1048575
  %add1364 = or i32 %and1363, -18874368
  %333 = inttoptr i32 %add1364 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %333, i8 4) #5, !srcloc !45
  %334 = ptrtoint ptr %delay1262 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %delay1262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %335)
  %tobool1367.not = icmp eq i32 %335, 0
  br i1 %tobool1367.not, label %do.body1358.do.body1384_crit_edge, label %cond.false1379

do.body1358.do.body1384_crit_edge:                ; preds = %do.body1358
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1384

cond.false1379:                                   ; preds = %do.body1358
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %336 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %336(i32 noundef %335) #5
  br label %do.body1384

do.body1384:                                      ; preds = %cond.false1379, %do.body1358.do.body1384_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !208
  tail call void @arm_heavy_mb() #5
  %337 = ptrtoint ptr %port1257 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %port1257, align 4
  %add1388 = add i32 %338, 3
  %and1389 = and i32 %add1388, 1048575
  %add1390 = or i32 %and1389, -18874368
  %339 = inttoptr i32 %add1390 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %339, i8 0) #5, !srcloc !45
  %340 = ptrtoint ptr %delay1262 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %delay1262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %341)
  %tobool1393.not = icmp eq i32 %341, 0
  br i1 %tobool1393.not, label %do.body1384.do.body1410_crit_edge, label %cond.false1405

do.body1384.do.body1410_crit_edge:                ; preds = %do.body1384
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1410

cond.false1405:                                   ; preds = %do.body1384
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %342 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %342(i32 noundef %341) #5
  br label %do.body1410

do.body1410:                                      ; preds = %cond.false1405, %do.body1384.do.body1410_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !209
  tail call void @arm_heavy_mb() #5
  %343 = ptrtoint ptr %port1257 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %port1257, align 4
  %add1414 = add i32 %344, 3
  %and1415 = and i32 %add1414, 1048575
  %add1416 = or i32 %and1415, -18874368
  %345 = inttoptr i32 %add1416 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %345, i8 0) #5, !srcloc !45
  %346 = ptrtoint ptr %delay1262 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %delay1262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %347)
  %tobool1419.not = icmp eq i32 %347, 0
  br i1 %tobool1419.not, label %do.body1410.do.body1436_crit_edge, label %cond.false1431

do.body1410.do.body1436_crit_edge:                ; preds = %do.body1410
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1436

cond.false1431:                                   ; preds = %do.body1410
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %348 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %348(i32 noundef %347) #5
  br label %do.body1436

do.body1436:                                      ; preds = %cond.false1431, %do.body1410.do.body1436_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !210
  tail call void @arm_heavy_mb() #5
  %349 = ptrtoint ptr %port1257 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %port1257, align 4
  %add1440 = add i32 %350, 2
  %and1441 = and i32 %add1440, 1048575
  %add1442 = or i32 %and1441, -18874368
  %351 = inttoptr i32 %add1442 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %351, i8 -59) #5, !srcloc !45
  %352 = ptrtoint ptr %delay1262 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %delay1262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %353)
  %tobool1445.not = icmp eq i32 %353, 0
  br i1 %tobool1445.not, label %do.body1436.cond.end1461_crit_edge, label %cond.false1457

do.body1436.cond.end1461_crit_edge:               ; preds = %do.body1436
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1461

cond.false1457:                                   ; preds = %do.body1436
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %354 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %354(i32 noundef %353) #5
  br label %cond.end1461

cond.end1461:                                     ; preds = %cond.false1457, %do.body1436.cond.end1461_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %355 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %355(i32 noundef 2147480) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp14632639 = icmp sgt i32 %count, 0
  br i1 %cmp14632639, label %cond.end1461.do.body1466_crit_edge, label %cond.end1461.do.body1496_crit_edge

cond.end1461.do.body1496_crit_edge:               ; preds = %cond.end1461
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1496

cond.end1461.do.body1466_crit_edge:               ; preds = %cond.end1461
  br label %do.body1466

do.body1466:                                      ; preds = %for.inc1493.do.body1466_crit_edge, %cond.end1461.do.body1466_crit_edge
  %k.12640 = phi i32 [ %inc1494, %for.inc1493.do.body1466_crit_edge ], [ 0, %cond.end1461.do.body1466_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !211
  tail call void @arm_heavy_mb() #5
  %arrayidx1469 = getelementptr i8, ptr %buf, i32 %k.12640
  %356 = ptrtoint ptr %arrayidx1469 to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %arrayidx1469, align 1
  %358 = ptrtoint ptr %port1257 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %port1257, align 4
  %add1471 = add i32 %359, 4
  %and1472 = and i32 %add1471, 1048575
  %add1473 = or i32 %and1472, -18874368
  %360 = inttoptr i32 %add1473 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %360, i8 %357) #5, !srcloc !45
  %361 = ptrtoint ptr %delay1262 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %delay1262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %362)
  %tobool1476.not = icmp eq i32 %362, 0
  br i1 %tobool1476.not, label %do.body1466.for.inc1493_crit_edge, label %cond.false1488

do.body1466.for.inc1493_crit_edge:                ; preds = %do.body1466
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc1493

cond.false1488:                                   ; preds = %do.body1466
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %363 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %363(i32 noundef %362) #5
  br label %for.inc1493

for.inc1493:                                      ; preds = %cond.false1488, %do.body1466.for.inc1493_crit_edge
  %inc1494 = add nuw nsw i32 %k.12640, 1
  %exitcond2644.not = icmp eq i32 %inc1494, %count
  br i1 %exitcond2644.not, label %for.inc1493.do.body1496_crit_edge, label %for.inc1493.do.body1466_crit_edge

for.inc1493.do.body1466_crit_edge:                ; preds = %for.inc1493
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1466

for.inc1493.do.body1496_crit_edge:                ; preds = %for.inc1493
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1496

do.body1496:                                      ; preds = %for.inc1493.do.body1496_crit_edge, %cond.end1461.do.body1496_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !212
  tail call void @arm_heavy_mb() #5
  %364 = ptrtoint ptr %port1257 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %port1257, align 4
  %add1500 = add i32 %365, 2
  %and1501 = and i32 %add1500, 1048575
  %add1502 = or i32 %and1501, -18874368
  %366 = inttoptr i32 %add1502 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %366, i8 -60) #5, !srcloc !45
  %367 = ptrtoint ptr %delay1262 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %delay1262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %368)
  %tobool1505.not = icmp eq i32 %368, 0
  br i1 %tobool1505.not, label %do.body1496.sw.epilog_crit_edge, label %do.body1496.sw.epilog.sink.split_crit_edge

do.body1496.sw.epilog.sink.split_crit_edge:       ; preds = %do.body1496
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body1496.sw.epilog_crit_edge:                  ; preds = %do.body1496
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body1523:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !213
  tail call void @arm_heavy_mb() #5
  %port1526 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %369 = ptrtoint ptr %port1526 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %port1526, align 4
  %add1527 = add i32 %370, 3
  %and1528 = and i32 %add1527, 1048575
  %add1529 = or i32 %and1528, -18874368
  %371 = inttoptr i32 %add1529 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %371, i8 1) #5, !srcloc !45
  %delay1531 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %372 = ptrtoint ptr %delay1531 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %delay1531, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %373)
  %tobool1532.not = icmp eq i32 %373, 0
  br i1 %tobool1532.not, label %do.body1523.do.body1549_crit_edge, label %cond.false1544

do.body1523.do.body1549_crit_edge:                ; preds = %do.body1523
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1549

cond.false1544:                                   ; preds = %do.body1523
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %374 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %374(i32 noundef %373) #5
  br label %do.body1549

do.body1549:                                      ; preds = %cond.false1544, %do.body1523.do.body1549_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !214
  tail call void @arm_heavy_mb() #5
  %375 = ptrtoint ptr %port1526 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %port1526, align 4
  %add1553 = add i32 %376, 3
  %and1554 = and i32 %add1553, 1048575
  %add1555 = or i32 %and1554, -18874368
  %377 = inttoptr i32 %add1555 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %377, i8 1) #5, !srcloc !45
  %378 = ptrtoint ptr %delay1531 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %delay1531, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %379)
  %tobool1558.not = icmp eq i32 %379, 0
  br i1 %tobool1558.not, label %do.body1549.do.body1575_crit_edge, label %cond.false1570

do.body1549.do.body1575_crit_edge:                ; preds = %do.body1549
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1575

cond.false1570:                                   ; preds = %do.body1549
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %380 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %380(i32 noundef %379) #5
  br label %do.body1575

do.body1575:                                      ; preds = %cond.false1570, %do.body1549.do.body1575_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !215
  tail call void @arm_heavy_mb() #5
  %381 = ptrtoint ptr %port1526 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %port1526, align 4
  %add1579 = add i32 %382, 2
  %and1580 = and i32 %add1579, 1048575
  %add1581 = or i32 %and1580, -18874368
  %383 = inttoptr i32 %add1581 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %383, i8 5) #5, !srcloc !45
  %384 = ptrtoint ptr %delay1531 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %delay1531, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %385)
  %tobool1584.not = icmp eq i32 %385, 0
  br i1 %tobool1584.not, label %do.body1575.do.body1601_crit_edge, label %cond.false1596

do.body1575.do.body1601_crit_edge:                ; preds = %do.body1575
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1601

cond.false1596:                                   ; preds = %do.body1575
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %386 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %386(i32 noundef %385) #5
  br label %do.body1601

do.body1601:                                      ; preds = %cond.false1596, %do.body1575.do.body1601_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  tail call void @arm_heavy_mb() #5
  %387 = ptrtoint ptr %port1526 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %port1526, align 4
  %add1605 = add i32 %388, 4
  %and1606 = and i32 %add1605, 1048575
  %add1607 = or i32 %and1606, -18874368
  %389 = inttoptr i32 %add1607 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %389, i8 1) #5, !srcloc !45
  %390 = ptrtoint ptr %delay1531 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %delay1531, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %391)
  %tobool1610.not = icmp eq i32 %391, 0
  br i1 %tobool1610.not, label %do.body1601.do.body1627_crit_edge, label %cond.false1622

do.body1601.do.body1627_crit_edge:                ; preds = %do.body1601
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1627

cond.false1622:                                   ; preds = %do.body1601
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %392 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %392(i32 noundef %391) #5
  br label %do.body1627

do.body1627:                                      ; preds = %cond.false1622, %do.body1601.do.body1627_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !217
  tail call void @arm_heavy_mb() #5
  %393 = ptrtoint ptr %port1526 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %port1526, align 4
  %add1631 = add i32 %394, 2
  %and1632 = and i32 %add1631, 1048575
  %add1633 = or i32 %and1632, -18874368
  %395 = inttoptr i32 %add1633 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %395, i8 4) #5, !srcloc !45
  %396 = ptrtoint ptr %delay1531 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %delay1531, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %397)
  %tobool1636.not = icmp eq i32 %397, 0
  br i1 %tobool1636.not, label %do.body1627.do.body1653_crit_edge, label %cond.false1648

do.body1627.do.body1653_crit_edge:                ; preds = %do.body1627
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1653

cond.false1648:                                   ; preds = %do.body1627
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %398 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %398(i32 noundef %397) #5
  br label %do.body1653

do.body1653:                                      ; preds = %cond.false1648, %do.body1627.do.body1653_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !218
  tail call void @arm_heavy_mb() #5
  %399 = ptrtoint ptr %port1526 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %port1526, align 4
  %add1657 = add i32 %400, 3
  %and1658 = and i32 %add1657, 1048575
  %add1659 = or i32 %and1658, -18874368
  %401 = inttoptr i32 %add1659 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %401, i8 0) #5, !srcloc !45
  %402 = ptrtoint ptr %delay1531 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %delay1531, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %403)
  %tobool1662.not = icmp eq i32 %403, 0
  br i1 %tobool1662.not, label %do.body1653.do.body1679_crit_edge, label %cond.false1674

do.body1653.do.body1679_crit_edge:                ; preds = %do.body1653
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1679

cond.false1674:                                   ; preds = %do.body1653
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %404 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %404(i32 noundef %403) #5
  br label %do.body1679

do.body1679:                                      ; preds = %cond.false1674, %do.body1653.do.body1679_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !219
  tail call void @arm_heavy_mb() #5
  %405 = ptrtoint ptr %port1526 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %port1526, align 4
  %add1683 = add i32 %406, 3
  %and1684 = and i32 %add1683, 1048575
  %add1685 = or i32 %and1684, -18874368
  %407 = inttoptr i32 %add1685 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %407, i8 0) #5, !srcloc !45
  %408 = ptrtoint ptr %delay1531 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %delay1531, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %409)
  %tobool1688.not = icmp eq i32 %409, 0
  br i1 %tobool1688.not, label %do.body1679.do.body1705_crit_edge, label %cond.false1700

do.body1679.do.body1705_crit_edge:                ; preds = %do.body1679
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1705

cond.false1700:                                   ; preds = %do.body1679
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %410 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %410(i32 noundef %409) #5
  br label %do.body1705

do.body1705:                                      ; preds = %cond.false1700, %do.body1679.do.body1705_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !220
  tail call void @arm_heavy_mb() #5
  %411 = ptrtoint ptr %port1526 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %port1526, align 4
  %add1709 = add i32 %412, 2
  %and1710 = and i32 %add1709, 1048575
  %add1711 = or i32 %and1710, -18874368
  %413 = inttoptr i32 %add1711 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %413, i8 -59) #5, !srcloc !45
  %414 = ptrtoint ptr %delay1531 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %delay1531, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %415)
  %tobool1714.not = icmp eq i32 %415, 0
  br i1 %tobool1714.not, label %do.body1705.cond.end1730_crit_edge, label %cond.false1726

do.body1705.cond.end1730_crit_edge:               ; preds = %do.body1705
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1730

cond.false1726:                                   ; preds = %do.body1705
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %416 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %416(i32 noundef %415) #5
  br label %cond.end1730

cond.end1730:                                     ; preds = %cond.false1726, %do.body1705.cond.end1730_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %417 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %417(i32 noundef 2147480) #5
  %div1732 = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp17332637 = icmp sgt i32 %count, 1
  br i1 %cmp17332637, label %cond.end1730.do.body1736_crit_edge, label %cond.end1730.do.body1766_crit_edge

cond.end1730.do.body1766_crit_edge:               ; preds = %cond.end1730
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1766

cond.end1730.do.body1736_crit_edge:               ; preds = %cond.end1730
  br label %do.body1736

do.body1736:                                      ; preds = %for.inc1763.do.body1736_crit_edge, %cond.end1730.do.body1736_crit_edge
  %k.22638 = phi i32 [ %inc1764, %for.inc1763.do.body1736_crit_edge ], [ 0, %cond.end1730.do.body1736_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !221
  tail call void @arm_heavy_mb() #5
  %arrayidx1739 = getelementptr i16, ptr %buf, i32 %k.22638
  %418 = ptrtoint ptr %arrayidx1739 to i32
  call void @__asan_load2_noabort(i32 %418)
  %419 = load i16, ptr %arrayidx1739, align 2
  %420 = tail call i16 @llvm.bswap.i16(i16 %419)
  %421 = ptrtoint ptr %port1526 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %port1526, align 4
  %add1741 = add i32 %422, 4
  %and1742 = and i32 %add1741, 1048575
  %add1743 = or i32 %and1742, -18874368
  %423 = inttoptr i32 %add1743 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %423, i16 %420) #5, !srcloc !222
  %424 = ptrtoint ptr %delay1531 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %delay1531, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %425)
  %tobool1746.not = icmp eq i32 %425, 0
  br i1 %tobool1746.not, label %do.body1736.for.inc1763_crit_edge, label %cond.false1758

do.body1736.for.inc1763_crit_edge:                ; preds = %do.body1736
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc1763

cond.false1758:                                   ; preds = %do.body1736
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %426 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %426(i32 noundef %425) #5
  br label %for.inc1763

for.inc1763:                                      ; preds = %cond.false1758, %do.body1736.for.inc1763_crit_edge
  %inc1764 = add nuw nsw i32 %k.22638, 1
  %exitcond2643.not = icmp eq i32 %inc1764, %div1732
  br i1 %exitcond2643.not, label %for.inc1763.do.body1766_crit_edge, label %for.inc1763.do.body1736_crit_edge

for.inc1763.do.body1736_crit_edge:                ; preds = %for.inc1763
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1736

for.inc1763.do.body1766_crit_edge:                ; preds = %for.inc1763
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1766

do.body1766:                                      ; preds = %for.inc1763.do.body1766_crit_edge, %cond.end1730.do.body1766_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !223
  tail call void @arm_heavy_mb() #5
  %427 = ptrtoint ptr %port1526 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %port1526, align 4
  %add1770 = add i32 %428, 2
  %and1771 = and i32 %add1770, 1048575
  %add1772 = or i32 %and1771, -18874368
  %429 = inttoptr i32 %add1772 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %429, i8 -60) #5, !srcloc !45
  %430 = ptrtoint ptr %delay1531 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %delay1531, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %431)
  %tobool1775.not = icmp eq i32 %431, 0
  br i1 %tobool1775.not, label %do.body1766.sw.epilog_crit_edge, label %do.body1766.sw.epilog.sink.split_crit_edge

do.body1766.sw.epilog.sink.split_crit_edge:       ; preds = %do.body1766
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body1766.sw.epilog_crit_edge:                  ; preds = %do.body1766
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body1793:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !224
  tail call void @arm_heavy_mb() #5
  %port1796 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %432 = ptrtoint ptr %port1796 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %port1796, align 4
  %add1797 = add i32 %433, 3
  %and1798 = and i32 %add1797, 1048575
  %add1799 = or i32 %and1798, -18874368
  %434 = inttoptr i32 %add1799 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %434, i8 1) #5, !srcloc !45
  %delay1801 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %435 = ptrtoint ptr %delay1801 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %delay1801, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %436)
  %tobool1802.not = icmp eq i32 %436, 0
  br i1 %tobool1802.not, label %do.body1793.do.body1819_crit_edge, label %cond.false1814

do.body1793.do.body1819_crit_edge:                ; preds = %do.body1793
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1819

cond.false1814:                                   ; preds = %do.body1793
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %437 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %437(i32 noundef %436) #5
  br label %do.body1819

do.body1819:                                      ; preds = %cond.false1814, %do.body1793.do.body1819_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !225
  tail call void @arm_heavy_mb() #5
  %438 = ptrtoint ptr %port1796 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %port1796, align 4
  %add1823 = add i32 %439, 3
  %and1824 = and i32 %add1823, 1048575
  %add1825 = or i32 %and1824, -18874368
  %440 = inttoptr i32 %add1825 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %440, i8 1) #5, !srcloc !45
  %441 = ptrtoint ptr %delay1801 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %delay1801, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %442)
  %tobool1828.not = icmp eq i32 %442, 0
  br i1 %tobool1828.not, label %do.body1819.do.body1845_crit_edge, label %cond.false1840

do.body1819.do.body1845_crit_edge:                ; preds = %do.body1819
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1845

cond.false1840:                                   ; preds = %do.body1819
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %443 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %443(i32 noundef %442) #5
  br label %do.body1845

do.body1845:                                      ; preds = %cond.false1840, %do.body1819.do.body1845_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  tail call void @arm_heavy_mb() #5
  %444 = ptrtoint ptr %port1796 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %port1796, align 4
  %add1849 = add i32 %445, 2
  %and1850 = and i32 %add1849, 1048575
  %add1851 = or i32 %and1850, -18874368
  %446 = inttoptr i32 %add1851 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %446, i8 5) #5, !srcloc !45
  %447 = ptrtoint ptr %delay1801 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %delay1801, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %448)
  %tobool1854.not = icmp eq i32 %448, 0
  br i1 %tobool1854.not, label %do.body1845.do.body1871_crit_edge, label %cond.false1866

do.body1845.do.body1871_crit_edge:                ; preds = %do.body1845
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1871

cond.false1866:                                   ; preds = %do.body1845
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %449 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %449(i32 noundef %448) #5
  br label %do.body1871

do.body1871:                                      ; preds = %cond.false1866, %do.body1845.do.body1871_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %450 = ptrtoint ptr %port1796 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %port1796, align 4
  %add1875 = add i32 %451, 4
  %and1876 = and i32 %add1875, 1048575
  %add1877 = or i32 %and1876, -18874368
  %452 = inttoptr i32 %add1877 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %452, i8 1) #5, !srcloc !45
  %453 = ptrtoint ptr %delay1801 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %delay1801, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %454)
  %tobool1880.not = icmp eq i32 %454, 0
  br i1 %tobool1880.not, label %do.body1871.do.body1897_crit_edge, label %cond.false1892

do.body1871.do.body1897_crit_edge:                ; preds = %do.body1871
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1897

cond.false1892:                                   ; preds = %do.body1871
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %455 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %455(i32 noundef %454) #5
  br label %do.body1897

do.body1897:                                      ; preds = %cond.false1892, %do.body1871.do.body1897_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !228
  tail call void @arm_heavy_mb() #5
  %456 = ptrtoint ptr %port1796 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %port1796, align 4
  %add1901 = add i32 %457, 2
  %and1902 = and i32 %add1901, 1048575
  %add1903 = or i32 %and1902, -18874368
  %458 = inttoptr i32 %add1903 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %458, i8 4) #5, !srcloc !45
  %459 = ptrtoint ptr %delay1801 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %delay1801, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %460)
  %tobool1906.not = icmp eq i32 %460, 0
  br i1 %tobool1906.not, label %do.body1897.do.body1923_crit_edge, label %cond.false1918

do.body1897.do.body1923_crit_edge:                ; preds = %do.body1897
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1923

cond.false1918:                                   ; preds = %do.body1897
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %461 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %461(i32 noundef %460) #5
  br label %do.body1923

do.body1923:                                      ; preds = %cond.false1918, %do.body1897.do.body1923_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !229
  tail call void @arm_heavy_mb() #5
  %462 = ptrtoint ptr %port1796 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %port1796, align 4
  %add1927 = add i32 %463, 3
  %and1928 = and i32 %add1927, 1048575
  %add1929 = or i32 %and1928, -18874368
  %464 = inttoptr i32 %add1929 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %464, i8 0) #5, !srcloc !45
  %465 = ptrtoint ptr %delay1801 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %delay1801, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %466)
  %tobool1932.not = icmp eq i32 %466, 0
  br i1 %tobool1932.not, label %do.body1923.do.body1949_crit_edge, label %cond.false1944

do.body1923.do.body1949_crit_edge:                ; preds = %do.body1923
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1949

cond.false1944:                                   ; preds = %do.body1923
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %467 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %467(i32 noundef %466) #5
  br label %do.body1949

do.body1949:                                      ; preds = %cond.false1944, %do.body1923.do.body1949_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  %468 = ptrtoint ptr %port1796 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %port1796, align 4
  %add1953 = add i32 %469, 3
  %and1954 = and i32 %add1953, 1048575
  %add1955 = or i32 %and1954, -18874368
  %470 = inttoptr i32 %add1955 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %470, i8 0) #5, !srcloc !45
  %471 = ptrtoint ptr %delay1801 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %delay1801, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %472)
  %tobool1958.not = icmp eq i32 %472, 0
  br i1 %tobool1958.not, label %do.body1949.do.body1975_crit_edge, label %cond.false1970

do.body1949.do.body1975_crit_edge:                ; preds = %do.body1949
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1975

cond.false1970:                                   ; preds = %do.body1949
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %473 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %473(i32 noundef %472) #5
  br label %do.body1975

do.body1975:                                      ; preds = %cond.false1970, %do.body1949.do.body1975_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  tail call void @arm_heavy_mb() #5
  %474 = ptrtoint ptr %port1796 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %port1796, align 4
  %add1979 = add i32 %475, 2
  %and1980 = and i32 %add1979, 1048575
  %add1981 = or i32 %and1980, -18874368
  %476 = inttoptr i32 %add1981 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %476, i8 -59) #5, !srcloc !45
  %477 = ptrtoint ptr %delay1801 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %delay1801, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %478)
  %tobool1984.not = icmp eq i32 %478, 0
  br i1 %tobool1984.not, label %do.body1975.cond.end2000_crit_edge, label %cond.false1996

do.body1975.cond.end2000_crit_edge:               ; preds = %do.body1975
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2000

cond.false1996:                                   ; preds = %do.body1975
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %479 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %479(i32 noundef %478) #5
  br label %cond.end2000

cond.end2000:                                     ; preds = %cond.false1996, %do.body1975.cond.end2000_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %480 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %480(i32 noundef 2147480) #5
  %div2002 = sdiv i32 %count, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp20032635 = icmp sgt i32 %count, 3
  br i1 %cmp20032635, label %cond.end2000.do.body2006_crit_edge, label %cond.end2000.do.body2036_crit_edge

cond.end2000.do.body2036_crit_edge:               ; preds = %cond.end2000
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2036

cond.end2000.do.body2006_crit_edge:               ; preds = %cond.end2000
  br label %do.body2006

do.body2006:                                      ; preds = %for.inc2033.do.body2006_crit_edge, %cond.end2000.do.body2006_crit_edge
  %k.32636 = phi i32 [ %inc2034, %for.inc2033.do.body2006_crit_edge ], [ 0, %cond.end2000.do.body2006_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !232
  tail call void @arm_heavy_mb() #5
  %arrayidx2009 = getelementptr i32, ptr %buf, i32 %k.32636
  %481 = ptrtoint ptr %arrayidx2009 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %arrayidx2009, align 4
  %483 = tail call i32 @llvm.bswap.i32(i32 %482)
  %484 = ptrtoint ptr %port1796 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %port1796, align 4
  %add2011 = add i32 %485, 4
  %and2012 = and i32 %add2011, 1048575
  %add2013 = or i32 %and2012, -18874368
  %486 = inttoptr i32 %add2013 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %486, i32 %483) #5, !srcloc !233
  %487 = ptrtoint ptr %delay1801 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %delay1801, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %488)
  %tobool2016.not = icmp eq i32 %488, 0
  br i1 %tobool2016.not, label %do.body2006.for.inc2033_crit_edge, label %cond.false2028

do.body2006.for.inc2033_crit_edge:                ; preds = %do.body2006
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc2033

cond.false2028:                                   ; preds = %do.body2006
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %489 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %489(i32 noundef %488) #5
  br label %for.inc2033

for.inc2033:                                      ; preds = %cond.false2028, %do.body2006.for.inc2033_crit_edge
  %inc2034 = add nuw nsw i32 %k.32636, 1
  %exitcond.not = icmp eq i32 %inc2034, %div2002
  br i1 %exitcond.not, label %for.inc2033.do.body2036_crit_edge, label %for.inc2033.do.body2006_crit_edge

for.inc2033.do.body2006_crit_edge:                ; preds = %for.inc2033
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2006

for.inc2033.do.body2036_crit_edge:                ; preds = %for.inc2033
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2036

do.body2036:                                      ; preds = %for.inc2033.do.body2036_crit_edge, %cond.end2000.do.body2036_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !234
  tail call void @arm_heavy_mb() #5
  %490 = ptrtoint ptr %port1796 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %port1796, align 4
  %add2040 = add i32 %491, 2
  %and2041 = and i32 %add2040, 1048575
  %add2042 = or i32 %and2041, -18874368
  %492 = inttoptr i32 %add2042 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %492, i8 -60) #5, !srcloc !45
  %493 = ptrtoint ptr %delay1801 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %delay1801, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %494)
  %tobool2045.not = icmp eq i32 %494, 0
  br i1 %tobool2045.not, label %do.body2036.sw.epilog_crit_edge, label %do.body2036.sw.epilog.sink.split_crit_edge

do.body2036.sw.epilog.sink.split_crit_edge:       ; preds = %do.body2036
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body2036.sw.epilog_crit_edge:                  ; preds = %do.body2036
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body2036.sw.epilog.sink.split_crit_edge, %do.body1766.sw.epilog.sink.split_crit_edge, %do.body1496.sw.epilog.sink.split_crit_edge, %do.body1227.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %306, %do.body1227.sw.epilog.sink.split_crit_edge ], [ %368, %do.body1496.sw.epilog.sink.split_crit_edge ], [ %431, %do.body1766.sw.epilog.sink.split_crit_edge ], [ %494, %do.body2036.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %495 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %495(i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body2036.sw.epilog_crit_edge, %do.body1766.sw.epilog_crit_edge, %do.body1496.sw.epilog_crit_edge, %do.body1227.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @on26_read_block(ptr noundef readonly %pi, ptr nocapture noundef writeonly %buf, i32 noundef %count) #2 align 64 {
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
    i32 0, label %do.body
    i32 1, label %do.body1182
    i32 2, label %do.body2423
    i32 3, label %do.body2695
    i32 4, label %do.body2968
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !235
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 1) #5, !srcloc !45
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !236
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add16 = add i32 %10, 2
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %11 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 5) #5, !srcloc !45
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !237
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add41 = add i32 %16, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %17 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 13) #5, !srcloc !45
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !238
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %add66 = add i32 %22, 2
  %and67 = and i32 %add66, 1048575
  %add68 = or i32 %and67, -18874368
  %23 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 5) #5, !srcloc !45
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !239
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add91 = add i32 %28, 2
  %and92 = and i32 %add91, 1048575
  %add93 = or i32 %and92, -18874368
  %29 = inttoptr i32 %add93 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 13) #5, !srcloc !45
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool96.not = icmp eq i32 %31, 0
  br i1 %tobool96.not, label %do.body87.do.body112_crit_edge, label %cond.false107

do.body87.do.body112_crit_edge:                   ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body112

cond.false107:                                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %31) #5
  br label %do.body112

do.body112:                                       ; preds = %cond.false107, %do.body87.do.body112_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !240
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %add116 = add i32 %34, 2
  %and117 = and i32 %add116, 1048575
  %add118 = or i32 %and117, -18874368
  %35 = inttoptr i32 %add118 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 5) #5, !srcloc !45
  %36 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool121.not = icmp eq i32 %37, 0
  br i1 %tobool121.not, label %do.body112.do.body137_crit_edge, label %cond.false132

do.body112.do.body137_crit_edge:                  ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body137

cond.false132:                                    ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %38(i32 noundef %37) #5
  br label %do.body137

do.body137:                                       ; preds = %cond.false132, %do.body112.do.body137_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !241
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %add141 = add i32 %40, 2
  %and142 = and i32 %add141, 1048575
  %add143 = or i32 %and142, -18874368
  %41 = inttoptr i32 %add143 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 4) #5, !srcloc !45
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool146.not = icmp eq i32 %43, 0
  br i1 %tobool146.not, label %do.body137.do.body162_crit_edge, label %cond.false157

do.body137.do.body162_crit_edge:                  ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body162

cond.false157:                                    ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %44(i32 noundef %43) #5
  br label %do.body162

do.body162:                                       ; preds = %cond.false157, %do.body137.do.body162_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !242
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port, align 4
  %and167 = and i32 %46, 1048575
  %add168 = or i32 %and167, -18874368
  %47 = inttoptr i32 %add168 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 1) #5, !srcloc !45
  %48 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool171.not = icmp eq i32 %49, 0
  br i1 %tobool171.not, label %do.body162.do.body187_crit_edge, label %cond.false182

do.body162.do.body187_crit_edge:                  ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body187

cond.false182:                                    ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %50(i32 noundef %49) #5
  br label %do.body187

do.body187:                                       ; preds = %cond.false182, %do.body162.do.body187_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !243
  tail call void @arm_heavy_mb() #5
  %51 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port, align 4
  %add191 = add i32 %52, 2
  %and192 = and i32 %add191, 1048575
  %add193 = or i32 %and192, -18874368
  %53 = inttoptr i32 %add193 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 5) #5, !srcloc !45
  %54 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool196.not = icmp eq i32 %55, 0
  br i1 %tobool196.not, label %do.body187.do.body212_crit_edge, label %cond.false207

do.body187.do.body212_crit_edge:                  ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body212

cond.false207:                                    ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %56(i32 noundef %55) #5
  br label %do.body212

do.body212:                                       ; preds = %cond.false207, %do.body187.do.body212_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !244
  tail call void @arm_heavy_mb() #5
  %57 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port, align 4
  %add216 = add i32 %58, 2
  %and217 = and i32 %add216, 1048575
  %add218 = or i32 %and217, -18874368
  %59 = inttoptr i32 %add218 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 7) #5, !srcloc !45
  %60 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool221.not = icmp eq i32 %61, 0
  br i1 %tobool221.not, label %do.body212.do.body237_crit_edge, label %cond.false232

do.body212.do.body237_crit_edge:                  ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body237

cond.false232:                                    ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %62(i32 noundef %61) #5
  br label %do.body237

do.body237:                                       ; preds = %cond.false232, %do.body212.do.body237_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !245
  tail call void @arm_heavy_mb() #5
  %63 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port, align 4
  %add241 = add i32 %64, 2
  %and242 = and i32 %add241, 1048575
  %add243 = or i32 %and242, -18874368
  %65 = inttoptr i32 %add243 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 5) #5, !srcloc !45
  %66 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool246.not = icmp eq i32 %67, 0
  br i1 %tobool246.not, label %do.body237.do.body262_crit_edge, label %cond.false257

do.body237.do.body262_crit_edge:                  ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body262

cond.false257:                                    ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %68(i32 noundef %67) #5
  br label %do.body262

do.body262:                                       ; preds = %cond.false257, %do.body237.do.body262_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !246
  tail call void @arm_heavy_mb() #5
  %69 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port, align 4
  %add266 = add i32 %70, 2
  %and267 = and i32 %add266, 1048575
  %add268 = or i32 %and267, -18874368
  %71 = inttoptr i32 %add268 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 4) #5, !srcloc !45
  %72 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool271.not = icmp eq i32 %73, 0
  br i1 %tobool271.not, label %do.body262.do.body287_crit_edge, label %cond.false282

do.body262.do.body287_crit_edge:                  ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body287

cond.false282:                                    ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %74(i32 noundef %73) #5
  br label %do.body287

do.body287:                                       ; preds = %cond.false282, %do.body262.do.body287_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !247
  tail call void @arm_heavy_mb() #5
  %75 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %port, align 4
  %and292 = and i32 %76, 1048575
  %add293 = or i32 %and292, -18874368
  %77 = inttoptr i32 %add293 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 2) #5, !srcloc !45
  %78 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool296.not = icmp eq i32 %79, 0
  br i1 %tobool296.not, label %do.body287.do.body312_crit_edge, label %cond.false307

do.body287.do.body312_crit_edge:                  ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body312

cond.false307:                                    ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %80(i32 noundef %79) #5
  br label %do.body312

do.body312:                                       ; preds = %cond.false307, %do.body287.do.body312_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !248
  tail call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %port, align 4
  %add316 = add i32 %82, 2
  %and317 = and i32 %add316, 1048575
  %add318 = or i32 %and317, -18874368
  %83 = inttoptr i32 %add318 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 5) #5, !srcloc !45
  %84 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool321.not = icmp eq i32 %85, 0
  br i1 %tobool321.not, label %do.body312.do.body337_crit_edge, label %cond.false332

do.body312.do.body337_crit_edge:                  ; preds = %do.body312
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body337

cond.false332:                                    ; preds = %do.body312
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %86(i32 noundef %85) #5
  br label %do.body337

do.body337:                                       ; preds = %cond.false332, %do.body312.do.body337_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !249
  tail call void @arm_heavy_mb() #5
  %87 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %port, align 4
  %add341 = add i32 %88, 2
  %and342 = and i32 %add341, 1048575
  %add343 = or i32 %and342, -18874368
  %89 = inttoptr i32 %add343 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 13) #5, !srcloc !45
  %90 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool346.not = icmp eq i32 %91, 0
  br i1 %tobool346.not, label %do.body337.do.body362_crit_edge, label %cond.false357

do.body337.do.body362_crit_edge:                  ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body362

cond.false357:                                    ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %92(i32 noundef %91) #5
  br label %do.body362

do.body362:                                       ; preds = %cond.false357, %do.body337.do.body362_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !250
  tail call void @arm_heavy_mb() #5
  %93 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %port, align 4
  %add366 = add i32 %94, 2
  %and367 = and i32 %add366, 1048575
  %add368 = or i32 %and367, -18874368
  %95 = inttoptr i32 %add368 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 5) #5, !srcloc !45
  %96 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool371.not = icmp eq i32 %97, 0
  br i1 %tobool371.not, label %do.body362.do.body387_crit_edge, label %cond.false382

do.body362.do.body387_crit_edge:                  ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body387

cond.false382:                                    ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %98(i32 noundef %97) #5
  br label %do.body387

do.body387:                                       ; preds = %cond.false382, %do.body362.do.body387_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !251
  tail call void @arm_heavy_mb() #5
  %99 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %port, align 4
  %add391 = add i32 %100, 2
  %and392 = and i32 %add391, 1048575
  %add393 = or i32 %and392, -18874368
  %101 = inttoptr i32 %add393 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 13) #5, !srcloc !45
  %102 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool396.not = icmp eq i32 %103, 0
  br i1 %tobool396.not, label %do.body387.do.body412_crit_edge, label %cond.false407

do.body387.do.body412_crit_edge:                  ; preds = %do.body387
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body412

cond.false407:                                    ; preds = %do.body387
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %104(i32 noundef %103) #5
  br label %do.body412

do.body412:                                       ; preds = %cond.false407, %do.body387.do.body412_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !252
  tail call void @arm_heavy_mb() #5
  %105 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %port, align 4
  %add416 = add i32 %106, 2
  %and417 = and i32 %add416, 1048575
  %add418 = or i32 %and417, -18874368
  %107 = inttoptr i32 %add418 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %107, i8 5) #5, !srcloc !45
  %108 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool421.not = icmp eq i32 %109, 0
  br i1 %tobool421.not, label %do.body412.do.body437_crit_edge, label %cond.false432

do.body412.do.body437_crit_edge:                  ; preds = %do.body412
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body437

cond.false432:                                    ; preds = %do.body412
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %110(i32 noundef %109) #5
  br label %do.body437

do.body437:                                       ; preds = %cond.false432, %do.body412.do.body437_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !253
  tail call void @arm_heavy_mb() #5
  %111 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %port, align 4
  %add441 = add i32 %112, 2
  %and442 = and i32 %add441, 1048575
  %add443 = or i32 %and442, -18874368
  %113 = inttoptr i32 %add443 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %113, i8 4) #5, !srcloc !45
  %114 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool446.not = icmp eq i32 %115, 0
  br i1 %tobool446.not, label %do.body437.do.body462_crit_edge, label %cond.false457

do.body437.do.body462_crit_edge:                  ; preds = %do.body437
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body462

cond.false457:                                    ; preds = %do.body437
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %116(i32 noundef %115) #5
  br label %do.body462

do.body462:                                       ; preds = %cond.false457, %do.body437.do.body462_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !254
  tail call void @arm_heavy_mb() #5
  %117 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %port, align 4
  %and467 = and i32 %118, 1048575
  %add468 = or i32 %and467, -18874368
  %119 = inttoptr i32 %add468 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %119, i8 24) #5, !srcloc !45
  %120 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool471.not = icmp eq i32 %121, 0
  br i1 %tobool471.not, label %do.body462.do.body487_crit_edge, label %cond.false482

do.body462.do.body487_crit_edge:                  ; preds = %do.body462
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body487

cond.false482:                                    ; preds = %do.body462
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %122(i32 noundef %121) #5
  br label %do.body487

do.body487:                                       ; preds = %cond.false482, %do.body462.do.body487_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !255
  tail call void @arm_heavy_mb() #5
  %123 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %port, align 4
  %add491 = add i32 %124, 2
  %and492 = and i32 %add491, 1048575
  %add493 = or i32 %and492, -18874368
  %125 = inttoptr i32 %add493 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %125, i8 5) #5, !srcloc !45
  %126 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool496.not = icmp eq i32 %127, 0
  br i1 %tobool496.not, label %do.body487.do.body512_crit_edge, label %cond.false507

do.body487.do.body512_crit_edge:                  ; preds = %do.body487
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body512

cond.false507:                                    ; preds = %do.body487
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %128(i32 noundef %127) #5
  br label %do.body512

do.body512:                                       ; preds = %cond.false507, %do.body487.do.body512_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !256
  tail call void @arm_heavy_mb() #5
  %129 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %port, align 4
  %add516 = add i32 %130, 2
  %and517 = and i32 %add516, 1048575
  %add518 = or i32 %and517, -18874368
  %131 = inttoptr i32 %add518 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %131, i8 7) #5, !srcloc !45
  %132 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool521.not = icmp eq i32 %133, 0
  br i1 %tobool521.not, label %do.body512.do.body537_crit_edge, label %cond.false532

do.body512.do.body537_crit_edge:                  ; preds = %do.body512
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body537

cond.false532:                                    ; preds = %do.body512
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %134(i32 noundef %133) #5
  br label %do.body537

do.body537:                                       ; preds = %cond.false532, %do.body512.do.body537_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !257
  tail call void @arm_heavy_mb() #5
  %135 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %port, align 4
  %add541 = add i32 %136, 2
  %and542 = and i32 %add541, 1048575
  %add543 = or i32 %and542, -18874368
  %137 = inttoptr i32 %add543 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 5) #5, !srcloc !45
  %138 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool546.not = icmp eq i32 %139, 0
  br i1 %tobool546.not, label %do.body537.do.body562_crit_edge, label %cond.false557

do.body537.do.body562_crit_edge:                  ; preds = %do.body537
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body562

cond.false557:                                    ; preds = %do.body537
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %140(i32 noundef %139) #5
  br label %do.body562

do.body562:                                       ; preds = %cond.false557, %do.body537.do.body562_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !258
  tail call void @arm_heavy_mb() #5
  %141 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %port, align 4
  %add566 = add i32 %142, 2
  %and567 = and i32 %add566, 1048575
  %add568 = or i32 %and567, -18874368
  %143 = inttoptr i32 %add568 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %143, i8 4) #5, !srcloc !45
  %144 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool571.not = icmp eq i32 %145, 0
  br i1 %tobool571.not, label %do.body562.do.body587_crit_edge, label %cond.false582

do.body562.do.body587_crit_edge:                  ; preds = %do.body562
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body587

cond.false582:                                    ; preds = %do.body562
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %146(i32 noundef %145) #5
  br label %do.body587

do.body587:                                       ; preds = %cond.false582, %do.body562.do.body587_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !259
  tail call void @arm_heavy_mb() #5
  %147 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %port, align 4
  %and592 = and i32 %148, 1048575
  %add593 = or i32 %and592, -18874368
  %149 = inttoptr i32 %add593 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %149, i8 0) #5, !srcloc !45
  %150 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool596.not = icmp eq i32 %151, 0
  br i1 %tobool596.not, label %do.body587.do.body612_crit_edge, label %cond.false607

do.body587.do.body612_crit_edge:                  ; preds = %do.body587
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body612

cond.false607:                                    ; preds = %do.body587
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %152(i32 noundef %151) #5
  br label %do.body612

do.body612:                                       ; preds = %cond.false607, %do.body587.do.body612_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !260
  tail call void @arm_heavy_mb() #5
  %153 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %port, align 4
  %add616 = add i32 %154, 2
  %and617 = and i32 %add616, 1048575
  %add618 = or i32 %and617, -18874368
  %155 = inttoptr i32 %add618 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %155, i8 5) #5, !srcloc !45
  %156 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool621.not = icmp eq i32 %157, 0
  br i1 %tobool621.not, label %do.body612.do.body637_crit_edge, label %cond.false632

do.body612.do.body637_crit_edge:                  ; preds = %do.body612
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body637

cond.false632:                                    ; preds = %do.body612
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %158(i32 noundef %157) #5
  br label %do.body637

do.body637:                                       ; preds = %cond.false632, %do.body612.do.body637_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !261
  tail call void @arm_heavy_mb() #5
  %159 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %port, align 4
  %add641 = add i32 %160, 2
  %and642 = and i32 %add641, 1048575
  %add643 = or i32 %and642, -18874368
  %161 = inttoptr i32 %add643 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %161, i8 13) #5, !srcloc !45
  %162 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool646.not = icmp eq i32 %163, 0
  br i1 %tobool646.not, label %do.body637.do.body662_crit_edge, label %cond.false657

do.body637.do.body662_crit_edge:                  ; preds = %do.body637
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body662

cond.false657:                                    ; preds = %do.body637
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %164(i32 noundef %163) #5
  br label %do.body662

do.body662:                                       ; preds = %cond.false657, %do.body637.do.body662_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  tail call void @arm_heavy_mb() #5
  %165 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %port, align 4
  %add666 = add i32 %166, 2
  %and667 = and i32 %add666, 1048575
  %add668 = or i32 %and667, -18874368
  %167 = inttoptr i32 %add668 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %167, i8 5) #5, !srcloc !45
  %168 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool671.not = icmp eq i32 %169, 0
  br i1 %tobool671.not, label %do.body662.do.body687_crit_edge, label %cond.false682

do.body662.do.body687_crit_edge:                  ; preds = %do.body662
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body687

cond.false682:                                    ; preds = %do.body662
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %170 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %170(i32 noundef %169) #5
  br label %do.body687

do.body687:                                       ; preds = %cond.false682, %do.body662.do.body687_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !263
  tail call void @arm_heavy_mb() #5
  %171 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %port, align 4
  %add691 = add i32 %172, 2
  %and692 = and i32 %add691, 1048575
  %add693 = or i32 %and692, -18874368
  %173 = inttoptr i32 %add693 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %173, i8 13) #5, !srcloc !45
  %174 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool696.not = icmp eq i32 %175, 0
  br i1 %tobool696.not, label %do.body687.do.body712_crit_edge, label %cond.false707

do.body687.do.body712_crit_edge:                  ; preds = %do.body687
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body712

cond.false707:                                    ; preds = %do.body687
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %176(i32 noundef %175) #5
  br label %do.body712

do.body712:                                       ; preds = %cond.false707, %do.body687.do.body712_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !264
  tail call void @arm_heavy_mb() #5
  %177 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %port, align 4
  %add716 = add i32 %178, 2
  %and717 = and i32 %add716, 1048575
  %add718 = or i32 %and717, -18874368
  %179 = inttoptr i32 %add718 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %179, i8 5) #5, !srcloc !45
  %180 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool721.not = icmp eq i32 %181, 0
  br i1 %tobool721.not, label %do.body712.do.body737_crit_edge, label %cond.false732

do.body712.do.body737_crit_edge:                  ; preds = %do.body712
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body737

cond.false732:                                    ; preds = %do.body712
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %182 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %182(i32 noundef %181) #5
  br label %do.body737

do.body737:                                       ; preds = %cond.false732, %do.body712.do.body737_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !265
  tail call void @arm_heavy_mb() #5
  %183 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %port, align 4
  %add741 = add i32 %184, 2
  %and742 = and i32 %add741, 1048575
  %add743 = or i32 %and742, -18874368
  %185 = inttoptr i32 %add743 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %185, i8 4) #5, !srcloc !45
  %186 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool746.not = icmp eq i32 %187, 0
  br i1 %tobool746.not, label %do.body737.cond.end761_crit_edge, label %cond.false757

do.body737.cond.end761_crit_edge:                 ; preds = %do.body737
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end761

cond.false757:                                    ; preds = %do.body737
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %188 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %188(i32 noundef %187) #5
  br label %cond.end761

cond.end761:                                      ; preds = %cond.false757, %do.body737.cond.end761_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %189 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %189(i32 noundef 2147480) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp7624145 = icmp sgt i32 %count, 0
  br i1 %cmp7624145, label %cond.end761.do.body763_crit_edge, label %cond.end761.do.body869_crit_edge

cond.end761.do.body869_crit_edge:                 ; preds = %cond.end761
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body869

cond.end761.do.body763_crit_edge:                 ; preds = %cond.end761
  br label %do.body763

do.body763:                                       ; preds = %cond.end855.do.body763_crit_edge, %cond.end761.do.body763_crit_edge
  %k.04146 = phi i32 [ %inc, %cond.end855.do.body763_crit_edge ], [ 0, %cond.end761.do.body763_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !266
  tail call void @arm_heavy_mb() #5
  %190 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %port, align 4
  %add767 = add i32 %191, 2
  %and768 = and i32 %add767, 1048575
  %add769 = or i32 %and768, -18874368
  %192 = inttoptr i32 %add769 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %192, i8 6) #5, !srcloc !45
  %193 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool772.not = icmp eq i32 %194, 0
  br i1 %tobool772.not, label %do.body763.cond.end804_crit_edge, label %cond.false783

do.body763.cond.end804_crit_edge:                 ; preds = %do.body763
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end804

cond.false783:                                    ; preds = %do.body763
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %195 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %195(i32 noundef %194) #5
  %196 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %196)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool789.not = icmp eq i32 %.pr, 0
  br i1 %tobool789.not, label %cond.false783.cond.end804_crit_edge, label %cond.false800

cond.false783.cond.end804_crit_edge:              ; preds = %cond.false783
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end804

cond.false800:                                    ; preds = %cond.false783
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %197(i32 noundef %.pr) #5
  br label %cond.end804

cond.end804:                                      ; preds = %cond.false800, %cond.false783.cond.end804_crit_edge, %do.body763.cond.end804_crit_edge
  %198 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %port, align 4
  %add806 = add i32 %199, 1
  %and807 = and i32 %add806, 1048575
  %add808 = or i32 %and807, -18874368
  %200 = inttoptr i32 %add808 to ptr
  %201 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %200) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !268
  tail call void @arm_heavy_mb() #5
  %202 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %port, align 4
  %add816 = add i32 %203, 2
  %and817 = and i32 %add816, 1048575
  %add818 = or i32 %and817, -18874368
  %204 = inttoptr i32 %add818 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %204, i8 4) #5, !srcloc !45
  %205 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool821.not = icmp eq i32 %206, 0
  br i1 %tobool821.not, label %cond.end804.cond.end855_crit_edge, label %cond.false833

cond.end804.cond.end855_crit_edge:                ; preds = %cond.end804
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end855

cond.false833:                                    ; preds = %cond.end804
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %207 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %207(i32 noundef %206) #5
  %208 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %208)
  %.pr4131 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr4131)
  %tobool839.not = icmp eq i32 %.pr4131, 0
  br i1 %tobool839.not, label %cond.false833.cond.end855_crit_edge, label %cond.false851

cond.false833.cond.end855_crit_edge:              ; preds = %cond.false833
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end855

cond.false851:                                    ; preds = %cond.false833
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %209 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %209(i32 noundef %.pr4131) #5
  br label %cond.end855

cond.end855:                                      ; preds = %cond.false851, %cond.false833.cond.end855_crit_edge, %cond.end804.cond.end855_crit_edge
  %210 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %port, align 4
  %add858 = add i32 %211, 1
  %and859 = and i32 %add858, 1048575
  %add860 = or i32 %and859, -18874368
  %212 = inttoptr i32 %add860 to ptr
  %213 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %212) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !269
  %214 = lshr i8 %201, 4
  %215 = and i8 %213, -16
  %or4129 = or i8 %215, %214
  %arrayidx = getelementptr i8, ptr %buf, i32 %k.04146
  %216 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %or4129, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %k.04146, 1
  %exitcond4150.not = icmp eq i32 %inc, %count
  br i1 %exitcond4150.not, label %cond.end855.do.body869_crit_edge, label %cond.end855.do.body763_crit_edge

cond.end855.do.body763_crit_edge:                 ; preds = %cond.end855
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body763

cond.end855.do.body869_crit_edge:                 ; preds = %cond.end855
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body869

do.body869:                                       ; preds = %cond.end855.do.body869_crit_edge, %cond.end761.do.body869_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !270
  tail call void @arm_heavy_mb() #5
  %217 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %port, align 4
  %and874 = and i32 %218, 1048575
  %add875 = or i32 %and874, -18874368
  %219 = inttoptr i32 %add875 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %219, i8 2) #5, !srcloc !45
  %220 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool878.not = icmp eq i32 %221, 0
  br i1 %tobool878.not, label %do.body869.do.body895_crit_edge, label %cond.false890

do.body869.do.body895_crit_edge:                  ; preds = %do.body869
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body895

cond.false890:                                    ; preds = %do.body869
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %222 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %222(i32 noundef %221) #5
  br label %do.body895

do.body895:                                       ; preds = %cond.false890, %do.body869.do.body895_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !271
  tail call void @arm_heavy_mb() #5
  %223 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %port, align 4
  %add899 = add i32 %224, 2
  %and900 = and i32 %add899, 1048575
  %add901 = or i32 %and900, -18874368
  %225 = inttoptr i32 %add901 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %225, i8 5) #5, !srcloc !45
  %226 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool904.not = icmp eq i32 %227, 0
  br i1 %tobool904.not, label %do.body895.do.body921_crit_edge, label %cond.false916

do.body895.do.body921_crit_edge:                  ; preds = %do.body895
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body921

cond.false916:                                    ; preds = %do.body895
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %228 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %228(i32 noundef %227) #5
  br label %do.body921

do.body921:                                       ; preds = %cond.false916, %do.body895.do.body921_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !272
  tail call void @arm_heavy_mb() #5
  %229 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %port, align 4
  %add925 = add i32 %230, 2
  %and926 = and i32 %add925, 1048575
  %add927 = or i32 %and926, -18874368
  %231 = inttoptr i32 %add927 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %231, i8 13) #5, !srcloc !45
  %232 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool930.not = icmp eq i32 %233, 0
  br i1 %tobool930.not, label %do.body921.do.body947_crit_edge, label %cond.false942

do.body921.do.body947_crit_edge:                  ; preds = %do.body921
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body947

cond.false942:                                    ; preds = %do.body921
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %234 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %234(i32 noundef %233) #5
  br label %do.body947

do.body947:                                       ; preds = %cond.false942, %do.body921.do.body947_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !273
  tail call void @arm_heavy_mb() #5
  %235 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %port, align 4
  %add951 = add i32 %236, 2
  %and952 = and i32 %add951, 1048575
  %add953 = or i32 %and952, -18874368
  %237 = inttoptr i32 %add953 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %237, i8 5) #5, !srcloc !45
  %238 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool956.not = icmp eq i32 %239, 0
  br i1 %tobool956.not, label %do.body947.do.body973_crit_edge, label %cond.false968

do.body947.do.body973_crit_edge:                  ; preds = %do.body947
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body973

cond.false968:                                    ; preds = %do.body947
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %240 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %240(i32 noundef %239) #5
  br label %do.body973

do.body973:                                       ; preds = %cond.false968, %do.body947.do.body973_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !274
  tail call void @arm_heavy_mb() #5
  %241 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %port, align 4
  %add977 = add i32 %242, 2
  %and978 = and i32 %add977, 1048575
  %add979 = or i32 %and978, -18874368
  %243 = inttoptr i32 %add979 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %243, i8 13) #5, !srcloc !45
  %244 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool982.not = icmp eq i32 %245, 0
  br i1 %tobool982.not, label %do.body973.do.body999_crit_edge, label %cond.false994

do.body973.do.body999_crit_edge:                  ; preds = %do.body973
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body999

cond.false994:                                    ; preds = %do.body973
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %246 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %246(i32 noundef %245) #5
  br label %do.body999

do.body999:                                       ; preds = %cond.false994, %do.body973.do.body999_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !275
  tail call void @arm_heavy_mb() #5
  %247 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %port, align 4
  %add1003 = add i32 %248, 2
  %and1004 = and i32 %add1003, 1048575
  %add1005 = or i32 %and1004, -18874368
  %249 = inttoptr i32 %add1005 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %249, i8 5) #5, !srcloc !45
  %250 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %tobool1008.not = icmp eq i32 %251, 0
  br i1 %tobool1008.not, label %do.body999.do.body1025_crit_edge, label %cond.false1020

do.body999.do.body1025_crit_edge:                 ; preds = %do.body999
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1025

cond.false1020:                                   ; preds = %do.body999
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %252 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %252(i32 noundef %251) #5
  br label %do.body1025

do.body1025:                                      ; preds = %cond.false1020, %do.body999.do.body1025_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !276
  tail call void @arm_heavy_mb() #5
  %253 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %port, align 4
  %add1029 = add i32 %254, 2
  %and1030 = and i32 %add1029, 1048575
  %add1031 = or i32 %and1030, -18874368
  %255 = inttoptr i32 %add1031 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %255, i8 4) #5, !srcloc !45
  %256 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool1034.not = icmp eq i32 %257, 0
  br i1 %tobool1034.not, label %do.body1025.do.body1051_crit_edge, label %cond.false1046

do.body1025.do.body1051_crit_edge:                ; preds = %do.body1025
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1051

cond.false1046:                                   ; preds = %do.body1025
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %258 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %258(i32 noundef %257) #5
  br label %do.body1051

do.body1051:                                      ; preds = %cond.false1046, %do.body1025.do.body1051_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !277
  tail call void @arm_heavy_mb() #5
  %259 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %port, align 4
  %and1056 = and i32 %260, 1048575
  %add1057 = or i32 %and1056, -18874368
  %261 = inttoptr i32 %add1057 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %261, i8 8) #5, !srcloc !45
  %262 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %tobool1060.not = icmp eq i32 %263, 0
  br i1 %tobool1060.not, label %do.body1051.do.body1077_crit_edge, label %cond.false1072

do.body1051.do.body1077_crit_edge:                ; preds = %do.body1051
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1077

cond.false1072:                                   ; preds = %do.body1051
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %264 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %264(i32 noundef %263) #5
  br label %do.body1077

do.body1077:                                      ; preds = %cond.false1072, %do.body1051.do.body1077_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !278
  tail call void @arm_heavy_mb() #5
  %265 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %port, align 4
  %add1081 = add i32 %266, 2
  %and1082 = and i32 %add1081, 1048575
  %add1083 = or i32 %and1082, -18874368
  %267 = inttoptr i32 %add1083 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %267, i8 5) #5, !srcloc !45
  %268 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool1086.not = icmp eq i32 %269, 0
  br i1 %tobool1086.not, label %do.body1077.do.body1103_crit_edge, label %cond.false1098

do.body1077.do.body1103_crit_edge:                ; preds = %do.body1077
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1103

cond.false1098:                                   ; preds = %do.body1077
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %270 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %270(i32 noundef %269) #5
  br label %do.body1103

do.body1103:                                      ; preds = %cond.false1098, %do.body1077.do.body1103_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !279
  tail call void @arm_heavy_mb() #5
  %271 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %port, align 4
  %add1107 = add i32 %272, 2
  %and1108 = and i32 %add1107, 1048575
  %add1109 = or i32 %and1108, -18874368
  %273 = inttoptr i32 %add1109 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %273, i8 7) #5, !srcloc !45
  %274 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %tobool1112.not = icmp eq i32 %275, 0
  br i1 %tobool1112.not, label %do.body1103.do.body1129_crit_edge, label %cond.false1124

do.body1103.do.body1129_crit_edge:                ; preds = %do.body1103
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1129

cond.false1124:                                   ; preds = %do.body1103
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %276 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %276(i32 noundef %275) #5
  br label %do.body1129

do.body1129:                                      ; preds = %cond.false1124, %do.body1103.do.body1129_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !280
  tail call void @arm_heavy_mb() #5
  %277 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %port, align 4
  %add1133 = add i32 %278, 2
  %and1134 = and i32 %add1133, 1048575
  %add1135 = or i32 %and1134, -18874368
  %279 = inttoptr i32 %add1135 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %279, i8 5) #5, !srcloc !45
  %280 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool1138.not = icmp eq i32 %281, 0
  br i1 %tobool1138.not, label %do.body1129.do.body1155_crit_edge, label %cond.false1150

do.body1129.do.body1155_crit_edge:                ; preds = %do.body1129
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1155

cond.false1150:                                   ; preds = %do.body1129
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %282 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %282(i32 noundef %281) #5
  br label %do.body1155

do.body1155:                                      ; preds = %cond.false1150, %do.body1129.do.body1155_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !281
  tail call void @arm_heavy_mb() #5
  %283 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %port, align 4
  %add1159 = add i32 %284, 2
  %and1160 = and i32 %add1159, 1048575
  %add1161 = or i32 %and1160, -18874368
  %285 = inttoptr i32 %add1161 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %285, i8 4) #5, !srcloc !45
  %286 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %tobool1164.not = icmp eq i32 %287, 0
  br i1 %tobool1164.not, label %do.body1155.sw.epilog_crit_edge, label %do.body1155.sw.epilog.sink.split_crit_edge

do.body1155.sw.epilog.sink.split_crit_edge:       ; preds = %do.body1155
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body1155.sw.epilog_crit_edge:                  ; preds = %do.body1155
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body1182:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !282
  tail call void @arm_heavy_mb() #5
  %port1185 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %288 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %port1185, align 4
  %and1187 = and i32 %289, 1048575
  %add1188 = or i32 %and1187, -18874368
  %290 = inttoptr i32 %add1188 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %290, i8 1) #5, !srcloc !45
  %delay1190 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %291 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %tobool1191.not = icmp eq i32 %292, 0
  br i1 %tobool1191.not, label %do.body1182.do.body1208_crit_edge, label %cond.false1203

do.body1182.do.body1208_crit_edge:                ; preds = %do.body1182
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1208

cond.false1203:                                   ; preds = %do.body1182
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %293 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %293(i32 noundef %292) #5
  br label %do.body1208

do.body1208:                                      ; preds = %cond.false1203, %do.body1182.do.body1208_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !283
  tail call void @arm_heavy_mb() #5
  %294 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %port1185, align 4
  %add1212 = add i32 %295, 2
  %and1213 = and i32 %add1212, 1048575
  %add1214 = or i32 %and1213, -18874368
  %296 = inttoptr i32 %add1214 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %296, i8 5) #5, !srcloc !45
  %297 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %tobool1217.not = icmp eq i32 %298, 0
  br i1 %tobool1217.not, label %do.body1208.do.body1234_crit_edge, label %cond.false1229

do.body1208.do.body1234_crit_edge:                ; preds = %do.body1208
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1234

cond.false1229:                                   ; preds = %do.body1208
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %299 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %299(i32 noundef %298) #5
  br label %do.body1234

do.body1234:                                      ; preds = %cond.false1229, %do.body1208.do.body1234_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !284
  tail call void @arm_heavy_mb() #5
  %300 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %port1185, align 4
  %add1238 = add i32 %301, 2
  %and1239 = and i32 %add1238, 1048575
  %add1240 = or i32 %and1239, -18874368
  %302 = inttoptr i32 %add1240 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %302, i8 13) #5, !srcloc !45
  %303 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %304)
  %tobool1243.not = icmp eq i32 %304, 0
  br i1 %tobool1243.not, label %do.body1234.do.body1260_crit_edge, label %cond.false1255

do.body1234.do.body1260_crit_edge:                ; preds = %do.body1234
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1260

cond.false1255:                                   ; preds = %do.body1234
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %305 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %305(i32 noundef %304) #5
  br label %do.body1260

do.body1260:                                      ; preds = %cond.false1255, %do.body1234.do.body1260_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !285
  tail call void @arm_heavy_mb() #5
  %306 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %port1185, align 4
  %add1264 = add i32 %307, 2
  %and1265 = and i32 %add1264, 1048575
  %add1266 = or i32 %and1265, -18874368
  %308 = inttoptr i32 %add1266 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %308, i8 5) #5, !srcloc !45
  %309 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %tobool1269.not = icmp eq i32 %310, 0
  br i1 %tobool1269.not, label %do.body1260.do.body1286_crit_edge, label %cond.false1281

do.body1260.do.body1286_crit_edge:                ; preds = %do.body1260
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1286

cond.false1281:                                   ; preds = %do.body1260
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %311 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %311(i32 noundef %310) #5
  br label %do.body1286

do.body1286:                                      ; preds = %cond.false1281, %do.body1260.do.body1286_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !286
  tail call void @arm_heavy_mb() #5
  %312 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %port1185, align 4
  %add1290 = add i32 %313, 2
  %and1291 = and i32 %add1290, 1048575
  %add1292 = or i32 %and1291, -18874368
  %314 = inttoptr i32 %add1292 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %314, i8 13) #5, !srcloc !45
  %315 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %316)
  %tobool1295.not = icmp eq i32 %316, 0
  br i1 %tobool1295.not, label %do.body1286.do.body1312_crit_edge, label %cond.false1307

do.body1286.do.body1312_crit_edge:                ; preds = %do.body1286
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1312

cond.false1307:                                   ; preds = %do.body1286
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %317 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %317(i32 noundef %316) #5
  br label %do.body1312

do.body1312:                                      ; preds = %cond.false1307, %do.body1286.do.body1312_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !287
  tail call void @arm_heavy_mb() #5
  %318 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %port1185, align 4
  %add1316 = add i32 %319, 2
  %and1317 = and i32 %add1316, 1048575
  %add1318 = or i32 %and1317, -18874368
  %320 = inttoptr i32 %add1318 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %320, i8 5) #5, !srcloc !45
  %321 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %322)
  %tobool1321.not = icmp eq i32 %322, 0
  br i1 %tobool1321.not, label %do.body1312.do.body1338_crit_edge, label %cond.false1333

do.body1312.do.body1338_crit_edge:                ; preds = %do.body1312
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1338

cond.false1333:                                   ; preds = %do.body1312
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %323 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %323(i32 noundef %322) #5
  br label %do.body1338

do.body1338:                                      ; preds = %cond.false1333, %do.body1312.do.body1338_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !288
  tail call void @arm_heavy_mb() #5
  %324 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %port1185, align 4
  %add1342 = add i32 %325, 2
  %and1343 = and i32 %add1342, 1048575
  %add1344 = or i32 %and1343, -18874368
  %326 = inttoptr i32 %add1344 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %326, i8 4) #5, !srcloc !45
  %327 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %tobool1347.not = icmp eq i32 %328, 0
  br i1 %tobool1347.not, label %do.body1338.do.body1364_crit_edge, label %cond.false1359

do.body1338.do.body1364_crit_edge:                ; preds = %do.body1338
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1364

cond.false1359:                                   ; preds = %do.body1338
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %329 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %329(i32 noundef %328) #5
  br label %do.body1364

do.body1364:                                      ; preds = %cond.false1359, %do.body1338.do.body1364_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !289
  tail call void @arm_heavy_mb() #5
  %330 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %port1185, align 4
  %and1369 = and i32 %331, 1048575
  %add1370 = or i32 %and1369, -18874368
  %332 = inttoptr i32 %add1370 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %332, i8 1) #5, !srcloc !45
  %333 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %334)
  %tobool1373.not = icmp eq i32 %334, 0
  br i1 %tobool1373.not, label %do.body1364.do.body1390_crit_edge, label %cond.false1385

do.body1364.do.body1390_crit_edge:                ; preds = %do.body1364
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1390

cond.false1385:                                   ; preds = %do.body1364
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %335 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %335(i32 noundef %334) #5
  br label %do.body1390

do.body1390:                                      ; preds = %cond.false1385, %do.body1364.do.body1390_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !290
  tail call void @arm_heavy_mb() #5
  %336 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %port1185, align 4
  %add1394 = add i32 %337, 2
  %and1395 = and i32 %add1394, 1048575
  %add1396 = or i32 %and1395, -18874368
  %338 = inttoptr i32 %add1396 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %338, i8 5) #5, !srcloc !45
  %339 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %340)
  %tobool1399.not = icmp eq i32 %340, 0
  br i1 %tobool1399.not, label %do.body1390.do.body1416_crit_edge, label %cond.false1411

do.body1390.do.body1416_crit_edge:                ; preds = %do.body1390
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1416

cond.false1411:                                   ; preds = %do.body1390
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %341 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %341(i32 noundef %340) #5
  br label %do.body1416

do.body1416:                                      ; preds = %cond.false1411, %do.body1390.do.body1416_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !291
  tail call void @arm_heavy_mb() #5
  %342 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %port1185, align 4
  %add1420 = add i32 %343, 2
  %and1421 = and i32 %add1420, 1048575
  %add1422 = or i32 %and1421, -18874368
  %344 = inttoptr i32 %add1422 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %344, i8 7) #5, !srcloc !45
  %345 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %tobool1425.not = icmp eq i32 %346, 0
  br i1 %tobool1425.not, label %do.body1416.do.body1442_crit_edge, label %cond.false1437

do.body1416.do.body1442_crit_edge:                ; preds = %do.body1416
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1442

cond.false1437:                                   ; preds = %do.body1416
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %347 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %347(i32 noundef %346) #5
  br label %do.body1442

do.body1442:                                      ; preds = %cond.false1437, %do.body1416.do.body1442_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !292
  tail call void @arm_heavy_mb() #5
  %348 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %port1185, align 4
  %add1446 = add i32 %349, 2
  %and1447 = and i32 %add1446, 1048575
  %add1448 = or i32 %and1447, -18874368
  %350 = inttoptr i32 %add1448 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %350, i8 5) #5, !srcloc !45
  %351 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %352)
  %tobool1451.not = icmp eq i32 %352, 0
  br i1 %tobool1451.not, label %do.body1442.do.body1468_crit_edge, label %cond.false1463

do.body1442.do.body1468_crit_edge:                ; preds = %do.body1442
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1468

cond.false1463:                                   ; preds = %do.body1442
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %353 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %353(i32 noundef %352) #5
  br label %do.body1468

do.body1468:                                      ; preds = %cond.false1463, %do.body1442.do.body1468_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !293
  tail call void @arm_heavy_mb() #5
  %354 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %port1185, align 4
  %add1472 = add i32 %355, 2
  %and1473 = and i32 %add1472, 1048575
  %add1474 = or i32 %and1473, -18874368
  %356 = inttoptr i32 %add1474 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %356, i8 4) #5, !srcloc !45
  %357 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %358)
  %tobool1477.not = icmp eq i32 %358, 0
  br i1 %tobool1477.not, label %do.body1468.do.body1494_crit_edge, label %cond.false1489

do.body1468.do.body1494_crit_edge:                ; preds = %do.body1468
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1494

cond.false1489:                                   ; preds = %do.body1468
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %359 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %359(i32 noundef %358) #5
  br label %do.body1494

do.body1494:                                      ; preds = %cond.false1489, %do.body1468.do.body1494_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !294
  tail call void @arm_heavy_mb() #5
  %360 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %port1185, align 4
  %and1499 = and i32 %361, 1048575
  %add1500 = or i32 %and1499, -18874368
  %362 = inttoptr i32 %add1500 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %362, i8 2) #5, !srcloc !45
  %363 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %364)
  %tobool1503.not = icmp eq i32 %364, 0
  br i1 %tobool1503.not, label %do.body1494.do.body1520_crit_edge, label %cond.false1515

do.body1494.do.body1520_crit_edge:                ; preds = %do.body1494
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1520

cond.false1515:                                   ; preds = %do.body1494
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %365 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %365(i32 noundef %364) #5
  br label %do.body1520

do.body1520:                                      ; preds = %cond.false1515, %do.body1494.do.body1520_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !295
  tail call void @arm_heavy_mb() #5
  %366 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %port1185, align 4
  %add1524 = add i32 %367, 2
  %and1525 = and i32 %add1524, 1048575
  %add1526 = or i32 %and1525, -18874368
  %368 = inttoptr i32 %add1526 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %368, i8 5) #5, !srcloc !45
  %369 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %370)
  %tobool1529.not = icmp eq i32 %370, 0
  br i1 %tobool1529.not, label %do.body1520.do.body1546_crit_edge, label %cond.false1541

do.body1520.do.body1546_crit_edge:                ; preds = %do.body1520
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1546

cond.false1541:                                   ; preds = %do.body1520
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %371 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %371(i32 noundef %370) #5
  br label %do.body1546

do.body1546:                                      ; preds = %cond.false1541, %do.body1520.do.body1546_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !296
  tail call void @arm_heavy_mb() #5
  %372 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %port1185, align 4
  %add1550 = add i32 %373, 2
  %and1551 = and i32 %add1550, 1048575
  %add1552 = or i32 %and1551, -18874368
  %374 = inttoptr i32 %add1552 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %374, i8 13) #5, !srcloc !45
  %375 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %376)
  %tobool1555.not = icmp eq i32 %376, 0
  br i1 %tobool1555.not, label %do.body1546.do.body1572_crit_edge, label %cond.false1567

do.body1546.do.body1572_crit_edge:                ; preds = %do.body1546
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1572

cond.false1567:                                   ; preds = %do.body1546
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %377 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %377(i32 noundef %376) #5
  br label %do.body1572

do.body1572:                                      ; preds = %cond.false1567, %do.body1546.do.body1572_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !297
  tail call void @arm_heavy_mb() #5
  %378 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %port1185, align 4
  %add1576 = add i32 %379, 2
  %and1577 = and i32 %add1576, 1048575
  %add1578 = or i32 %and1577, -18874368
  %380 = inttoptr i32 %add1578 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %380, i8 5) #5, !srcloc !45
  %381 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %382)
  %tobool1581.not = icmp eq i32 %382, 0
  br i1 %tobool1581.not, label %do.body1572.do.body1598_crit_edge, label %cond.false1593

do.body1572.do.body1598_crit_edge:                ; preds = %do.body1572
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1598

cond.false1593:                                   ; preds = %do.body1572
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %383 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %383(i32 noundef %382) #5
  br label %do.body1598

do.body1598:                                      ; preds = %cond.false1593, %do.body1572.do.body1598_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !298
  tail call void @arm_heavy_mb() #5
  %384 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %port1185, align 4
  %add1602 = add i32 %385, 2
  %and1603 = and i32 %add1602, 1048575
  %add1604 = or i32 %and1603, -18874368
  %386 = inttoptr i32 %add1604 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %386, i8 13) #5, !srcloc !45
  %387 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %388)
  %tobool1607.not = icmp eq i32 %388, 0
  br i1 %tobool1607.not, label %do.body1598.do.body1624_crit_edge, label %cond.false1619

do.body1598.do.body1624_crit_edge:                ; preds = %do.body1598
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1624

cond.false1619:                                   ; preds = %do.body1598
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %389 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %389(i32 noundef %388) #5
  br label %do.body1624

do.body1624:                                      ; preds = %cond.false1619, %do.body1598.do.body1624_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !299
  tail call void @arm_heavy_mb() #5
  %390 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %port1185, align 4
  %add1628 = add i32 %391, 2
  %and1629 = and i32 %add1628, 1048575
  %add1630 = or i32 %and1629, -18874368
  %392 = inttoptr i32 %add1630 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %392, i8 5) #5, !srcloc !45
  %393 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %394)
  %tobool1633.not = icmp eq i32 %394, 0
  br i1 %tobool1633.not, label %do.body1624.do.body1650_crit_edge, label %cond.false1645

do.body1624.do.body1650_crit_edge:                ; preds = %do.body1624
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1650

cond.false1645:                                   ; preds = %do.body1624
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %395 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %395(i32 noundef %394) #5
  br label %do.body1650

do.body1650:                                      ; preds = %cond.false1645, %do.body1624.do.body1650_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !300
  tail call void @arm_heavy_mb() #5
  %396 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %port1185, align 4
  %add1654 = add i32 %397, 2
  %and1655 = and i32 %add1654, 1048575
  %add1656 = or i32 %and1655, -18874368
  %398 = inttoptr i32 %add1656 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %398, i8 4) #5, !srcloc !45
  %399 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %400)
  %tobool1659.not = icmp eq i32 %400, 0
  br i1 %tobool1659.not, label %do.body1650.do.body1676_crit_edge, label %cond.false1671

do.body1650.do.body1676_crit_edge:                ; preds = %do.body1650
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1676

cond.false1671:                                   ; preds = %do.body1650
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %401 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %401(i32 noundef %400) #5
  br label %do.body1676

do.body1676:                                      ; preds = %cond.false1671, %do.body1650.do.body1676_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !301
  tail call void @arm_heavy_mb() #5
  %402 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %port1185, align 4
  %and1681 = and i32 %403, 1048575
  %add1682 = or i32 %and1681, -18874368
  %404 = inttoptr i32 %add1682 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %404, i8 25) #5, !srcloc !45
  %405 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %406)
  %tobool1685.not = icmp eq i32 %406, 0
  br i1 %tobool1685.not, label %do.body1676.do.body1702_crit_edge, label %cond.false1697

do.body1676.do.body1702_crit_edge:                ; preds = %do.body1676
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1702

cond.false1697:                                   ; preds = %do.body1676
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %407 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %407(i32 noundef %406) #5
  br label %do.body1702

do.body1702:                                      ; preds = %cond.false1697, %do.body1676.do.body1702_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !302
  tail call void @arm_heavy_mb() #5
  %408 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %port1185, align 4
  %add1706 = add i32 %409, 2
  %and1707 = and i32 %add1706, 1048575
  %add1708 = or i32 %and1707, -18874368
  %410 = inttoptr i32 %add1708 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %410, i8 5) #5, !srcloc !45
  %411 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %412)
  %tobool1711.not = icmp eq i32 %412, 0
  br i1 %tobool1711.not, label %do.body1702.do.body1728_crit_edge, label %cond.false1723

do.body1702.do.body1728_crit_edge:                ; preds = %do.body1702
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1728

cond.false1723:                                   ; preds = %do.body1702
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %413 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %413(i32 noundef %412) #5
  br label %do.body1728

do.body1728:                                      ; preds = %cond.false1723, %do.body1702.do.body1728_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !303
  tail call void @arm_heavy_mb() #5
  %414 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %port1185, align 4
  %add1732 = add i32 %415, 2
  %and1733 = and i32 %add1732, 1048575
  %add1734 = or i32 %and1733, -18874368
  %416 = inttoptr i32 %add1734 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %416, i8 7) #5, !srcloc !45
  %417 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %418)
  %tobool1737.not = icmp eq i32 %418, 0
  br i1 %tobool1737.not, label %do.body1728.do.body1754_crit_edge, label %cond.false1749

do.body1728.do.body1754_crit_edge:                ; preds = %do.body1728
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1754

cond.false1749:                                   ; preds = %do.body1728
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %419 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %419(i32 noundef %418) #5
  br label %do.body1754

do.body1754:                                      ; preds = %cond.false1749, %do.body1728.do.body1754_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !304
  tail call void @arm_heavy_mb() #5
  %420 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %port1185, align 4
  %add1758 = add i32 %421, 2
  %and1759 = and i32 %add1758, 1048575
  %add1760 = or i32 %and1759, -18874368
  %422 = inttoptr i32 %add1760 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %422, i8 5) #5, !srcloc !45
  %423 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %424)
  %tobool1763.not = icmp eq i32 %424, 0
  br i1 %tobool1763.not, label %do.body1754.do.body1780_crit_edge, label %cond.false1775

do.body1754.do.body1780_crit_edge:                ; preds = %do.body1754
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1780

cond.false1775:                                   ; preds = %do.body1754
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %425 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %425(i32 noundef %424) #5
  br label %do.body1780

do.body1780:                                      ; preds = %cond.false1775, %do.body1754.do.body1780_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !305
  tail call void @arm_heavy_mb() #5
  %426 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %port1185, align 4
  %add1784 = add i32 %427, 2
  %and1785 = and i32 %add1784, 1048575
  %add1786 = or i32 %and1785, -18874368
  %428 = inttoptr i32 %add1786 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %428, i8 4) #5, !srcloc !45
  %429 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %430)
  %tobool1789.not = icmp eq i32 %430, 0
  br i1 %tobool1789.not, label %do.body1780.do.body1806_crit_edge, label %cond.false1801

do.body1780.do.body1806_crit_edge:                ; preds = %do.body1780
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1806

cond.false1801:                                   ; preds = %do.body1780
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %431 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %431(i32 noundef %430) #5
  br label %do.body1806

do.body1806:                                      ; preds = %cond.false1801, %do.body1780.do.body1806_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !306
  tail call void @arm_heavy_mb() #5
  %432 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %port1185, align 4
  %and1811 = and i32 %433, 1048575
  %add1812 = or i32 %and1811, -18874368
  %434 = inttoptr i32 %add1812 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %434, i8 0) #5, !srcloc !45
  %435 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %436)
  %tobool1815.not = icmp eq i32 %436, 0
  br i1 %tobool1815.not, label %do.body1806.do.body1832_crit_edge, label %cond.false1827

do.body1806.do.body1832_crit_edge:                ; preds = %do.body1806
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1832

cond.false1827:                                   ; preds = %do.body1806
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %437 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %437(i32 noundef %436) #5
  br label %do.body1832

do.body1832:                                      ; preds = %cond.false1827, %do.body1806.do.body1832_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !307
  tail call void @arm_heavy_mb() #5
  %438 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %port1185, align 4
  %add1836 = add i32 %439, 2
  %and1837 = and i32 %add1836, 1048575
  %add1838 = or i32 %and1837, -18874368
  %440 = inttoptr i32 %add1838 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %440, i8 5) #5, !srcloc !45
  %441 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %442)
  %tobool1841.not = icmp eq i32 %442, 0
  br i1 %tobool1841.not, label %do.body1832.do.body1858_crit_edge, label %cond.false1853

do.body1832.do.body1858_crit_edge:                ; preds = %do.body1832
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1858

cond.false1853:                                   ; preds = %do.body1832
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %443 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %443(i32 noundef %442) #5
  br label %do.body1858

do.body1858:                                      ; preds = %cond.false1853, %do.body1832.do.body1858_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !308
  tail call void @arm_heavy_mb() #5
  %444 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %port1185, align 4
  %add1862 = add i32 %445, 2
  %and1863 = and i32 %add1862, 1048575
  %add1864 = or i32 %and1863, -18874368
  %446 = inttoptr i32 %add1864 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %446, i8 13) #5, !srcloc !45
  %447 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %448)
  %tobool1867.not = icmp eq i32 %448, 0
  br i1 %tobool1867.not, label %do.body1858.do.body1884_crit_edge, label %cond.false1879

do.body1858.do.body1884_crit_edge:                ; preds = %do.body1858
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1884

cond.false1879:                                   ; preds = %do.body1858
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %449 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %449(i32 noundef %448) #5
  br label %do.body1884

do.body1884:                                      ; preds = %cond.false1879, %do.body1858.do.body1884_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !309
  tail call void @arm_heavy_mb() #5
  %450 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %port1185, align 4
  %add1888 = add i32 %451, 2
  %and1889 = and i32 %add1888, 1048575
  %add1890 = or i32 %and1889, -18874368
  %452 = inttoptr i32 %add1890 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %452, i8 5) #5, !srcloc !45
  %453 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %454)
  %tobool1893.not = icmp eq i32 %454, 0
  br i1 %tobool1893.not, label %do.body1884.do.body1910_crit_edge, label %cond.false1905

do.body1884.do.body1910_crit_edge:                ; preds = %do.body1884
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1910

cond.false1905:                                   ; preds = %do.body1884
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %455 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %455(i32 noundef %454) #5
  br label %do.body1910

do.body1910:                                      ; preds = %cond.false1905, %do.body1884.do.body1910_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !310
  tail call void @arm_heavy_mb() #5
  %456 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %port1185, align 4
  %add1914 = add i32 %457, 2
  %and1915 = and i32 %add1914, 1048575
  %add1916 = or i32 %and1915, -18874368
  %458 = inttoptr i32 %add1916 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %458, i8 13) #5, !srcloc !45
  %459 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %460)
  %tobool1919.not = icmp eq i32 %460, 0
  br i1 %tobool1919.not, label %do.body1910.do.body1936_crit_edge, label %cond.false1931

do.body1910.do.body1936_crit_edge:                ; preds = %do.body1910
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1936

cond.false1931:                                   ; preds = %do.body1910
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %461 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %461(i32 noundef %460) #5
  br label %do.body1936

do.body1936:                                      ; preds = %cond.false1931, %do.body1910.do.body1936_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !311
  tail call void @arm_heavy_mb() #5
  %462 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %port1185, align 4
  %add1940 = add i32 %463, 2
  %and1941 = and i32 %add1940, 1048575
  %add1942 = or i32 %and1941, -18874368
  %464 = inttoptr i32 %add1942 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %464, i8 5) #5, !srcloc !45
  %465 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %466)
  %tobool1945.not = icmp eq i32 %466, 0
  br i1 %tobool1945.not, label %do.body1936.do.body1962_crit_edge, label %cond.false1957

do.body1936.do.body1962_crit_edge:                ; preds = %do.body1936
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1962

cond.false1957:                                   ; preds = %do.body1936
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %467 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %467(i32 noundef %466) #5
  br label %do.body1962

do.body1962:                                      ; preds = %cond.false1957, %do.body1936.do.body1962_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !312
  tail call void @arm_heavy_mb() #5
  %468 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %port1185, align 4
  %add1966 = add i32 %469, 2
  %and1967 = and i32 %add1966, 1048575
  %add1968 = or i32 %and1967, -18874368
  %470 = inttoptr i32 %add1968 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %470, i8 4) #5, !srcloc !45
  %471 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %472)
  %tobool1971.not = icmp eq i32 %472, 0
  br i1 %tobool1971.not, label %do.body1962.cond.end1987_crit_edge, label %cond.false1983

do.body1962.cond.end1987_crit_edge:               ; preds = %do.body1962
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1987

cond.false1983:                                   ; preds = %do.body1962
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %473 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %473(i32 noundef %472) #5
  br label %cond.end1987

cond.end1987:                                     ; preds = %cond.false1983, %do.body1962.cond.end1987_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %474 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %474(i32 noundef 2147480) #5
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp19894143 = icmp sgt i32 %count, 1
  br i1 %cmp19894143, label %cond.end1987.do.body1992_crit_edge, label %cond.end1987.do.body2110_crit_edge

cond.end1987.do.body2110_crit_edge:               ; preds = %cond.end1987
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2110

cond.end1987.do.body1992_crit_edge:               ; preds = %cond.end1987
  br label %do.body1992

do.body1992:                                      ; preds = %cond.end2092.do.body1992_crit_edge, %cond.end1987.do.body1992_crit_edge
  %k.14144 = phi i32 [ %inc2108, %cond.end2092.do.body1992_crit_edge ], [ 0, %cond.end1987.do.body1992_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !313
  tail call void @arm_heavy_mb() #5
  %475 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %port1185, align 4
  %add1996 = add i32 %476, 2
  %and1997 = and i32 %add1996, 1048575
  %add1998 = or i32 %and1997, -18874368
  %477 = inttoptr i32 %add1998 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %477, i8 38) #5, !srcloc !45
  %478 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %479)
  %tobool2001.not = icmp eq i32 %479, 0
  br i1 %tobool2001.not, label %do.body1992.cond.end2035_crit_edge, label %cond.false2013

do.body1992.cond.end2035_crit_edge:               ; preds = %do.body1992
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2035

cond.false2013:                                   ; preds = %do.body1992
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %480 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %480(i32 noundef %479) #5
  %481 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %481)
  %.pr4133 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr4133)
  %tobool2019.not = icmp eq i32 %.pr4133, 0
  br i1 %tobool2019.not, label %cond.false2013.cond.end2035_crit_edge, label %cond.false2031

cond.false2013.cond.end2035_crit_edge:            ; preds = %cond.false2013
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2035

cond.false2031:                                   ; preds = %cond.false2013
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %482 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %482(i32 noundef %.pr4133) #5
  br label %cond.end2035

cond.end2035:                                     ; preds = %cond.false2031, %cond.false2013.cond.end2035_crit_edge, %do.body1992.cond.end2035_crit_edge
  %483 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %port1185, align 4
  %and2039 = and i32 %484, 1048575
  %add2040 = or i32 %and2039, -18874368
  %485 = inttoptr i32 %add2040 to ptr
  %486 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %485) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !314
  %mul2047 = shl nuw i32 %k.14144, 1
  %arrayidx2048 = getelementptr i8, ptr %buf, i32 %mul2047
  %487 = ptrtoint ptr %arrayidx2048 to i32
  call void @__asan_store1_noabort(i32 %487)
  store i8 %486, ptr %arrayidx2048, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !315
  tail call void @arm_heavy_mb() #5
  %488 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %port1185, align 4
  %add2053 = add i32 %489, 2
  %and2054 = and i32 %add2053, 1048575
  %add2055 = or i32 %and2054, -18874368
  %490 = inttoptr i32 %add2055 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %490, i8 36) #5, !srcloc !45
  %491 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %492)
  %tobool2058.not = icmp eq i32 %492, 0
  br i1 %tobool2058.not, label %cond.end2035.cond.end2092_crit_edge, label %cond.false2070

cond.end2035.cond.end2092_crit_edge:              ; preds = %cond.end2035
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2092

cond.false2070:                                   ; preds = %cond.end2035
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %493 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %493(i32 noundef %492) #5
  %494 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %494)
  %.pr4135 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr4135)
  %tobool2076.not = icmp eq i32 %.pr4135, 0
  br i1 %tobool2076.not, label %cond.false2070.cond.end2092_crit_edge, label %cond.false2088

cond.false2070.cond.end2092_crit_edge:            ; preds = %cond.false2070
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2092

cond.false2088:                                   ; preds = %cond.false2070
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %495 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %495(i32 noundef %.pr4135) #5
  br label %cond.end2092

cond.end2092:                                     ; preds = %cond.false2088, %cond.false2070.cond.end2092_crit_edge, %cond.end2035.cond.end2092_crit_edge
  %496 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %port1185, align 4
  %and2096 = and i32 %497, 1048575
  %add2097 = or i32 %and2096, -18874368
  %498 = inttoptr i32 %add2097 to ptr
  %499 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %498) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !316
  %add2105 = or i32 %mul2047, 1
  %arrayidx2106 = getelementptr i8, ptr %buf, i32 %add2105
  %500 = ptrtoint ptr %arrayidx2106 to i32
  call void @__asan_store1_noabort(i32 %500)
  store i8 %499, ptr %arrayidx2106, align 1
  %inc2108 = add nuw nsw i32 %k.14144, 1
  %exitcond4149.not = icmp eq i32 %inc2108, %div
  br i1 %exitcond4149.not, label %cond.end2092.do.body2110_crit_edge, label %cond.end2092.do.body1992_crit_edge

cond.end2092.do.body1992_crit_edge:               ; preds = %cond.end2092
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1992

cond.end2092.do.body2110_crit_edge:               ; preds = %cond.end2092
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2110

do.body2110:                                      ; preds = %cond.end2092.do.body2110_crit_edge, %cond.end1987.do.body2110_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !317
  tail call void @arm_heavy_mb() #5
  %501 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %port1185, align 4
  %and2115 = and i32 %502, 1048575
  %add2116 = or i32 %and2115, -18874368
  %503 = inttoptr i32 %add2116 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %503, i8 2) #5, !srcloc !45
  %504 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %505)
  %tobool2119.not = icmp eq i32 %505, 0
  br i1 %tobool2119.not, label %do.body2110.do.body2136_crit_edge, label %cond.false2131

do.body2110.do.body2136_crit_edge:                ; preds = %do.body2110
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2136

cond.false2131:                                   ; preds = %do.body2110
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %506 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %506(i32 noundef %505) #5
  br label %do.body2136

do.body2136:                                      ; preds = %cond.false2131, %do.body2110.do.body2136_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !318
  tail call void @arm_heavy_mb() #5
  %507 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %port1185, align 4
  %add2140 = add i32 %508, 2
  %and2141 = and i32 %add2140, 1048575
  %add2142 = or i32 %and2141, -18874368
  %509 = inttoptr i32 %add2142 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %509, i8 5) #5, !srcloc !45
  %510 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %511)
  %tobool2145.not = icmp eq i32 %511, 0
  br i1 %tobool2145.not, label %do.body2136.do.body2162_crit_edge, label %cond.false2157

do.body2136.do.body2162_crit_edge:                ; preds = %do.body2136
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2162

cond.false2157:                                   ; preds = %do.body2136
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %512 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %512(i32 noundef %511) #5
  br label %do.body2162

do.body2162:                                      ; preds = %cond.false2157, %do.body2136.do.body2162_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !319
  tail call void @arm_heavy_mb() #5
  %513 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %port1185, align 4
  %add2166 = add i32 %514, 2
  %and2167 = and i32 %add2166, 1048575
  %add2168 = or i32 %and2167, -18874368
  %515 = inttoptr i32 %add2168 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %515, i8 13) #5, !srcloc !45
  %516 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %517)
  %tobool2171.not = icmp eq i32 %517, 0
  br i1 %tobool2171.not, label %do.body2162.do.body2188_crit_edge, label %cond.false2183

do.body2162.do.body2188_crit_edge:                ; preds = %do.body2162
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2188

cond.false2183:                                   ; preds = %do.body2162
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %518 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %518(i32 noundef %517) #5
  br label %do.body2188

do.body2188:                                      ; preds = %cond.false2183, %do.body2162.do.body2188_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !320
  tail call void @arm_heavy_mb() #5
  %519 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %port1185, align 4
  %add2192 = add i32 %520, 2
  %and2193 = and i32 %add2192, 1048575
  %add2194 = or i32 %and2193, -18874368
  %521 = inttoptr i32 %add2194 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %521, i8 5) #5, !srcloc !45
  %522 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %523)
  %tobool2197.not = icmp eq i32 %523, 0
  br i1 %tobool2197.not, label %do.body2188.do.body2214_crit_edge, label %cond.false2209

do.body2188.do.body2214_crit_edge:                ; preds = %do.body2188
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2214

cond.false2209:                                   ; preds = %do.body2188
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %524 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %524(i32 noundef %523) #5
  br label %do.body2214

do.body2214:                                      ; preds = %cond.false2209, %do.body2188.do.body2214_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !321
  tail call void @arm_heavy_mb() #5
  %525 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load i32, ptr %port1185, align 4
  %add2218 = add i32 %526, 2
  %and2219 = and i32 %add2218, 1048575
  %add2220 = or i32 %and2219, -18874368
  %527 = inttoptr i32 %add2220 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %527, i8 13) #5, !srcloc !45
  %528 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %529)
  %tobool2223.not = icmp eq i32 %529, 0
  br i1 %tobool2223.not, label %do.body2214.do.body2240_crit_edge, label %cond.false2235

do.body2214.do.body2240_crit_edge:                ; preds = %do.body2214
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2240

cond.false2235:                                   ; preds = %do.body2214
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %530 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %530(i32 noundef %529) #5
  br label %do.body2240

do.body2240:                                      ; preds = %cond.false2235, %do.body2214.do.body2240_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !322
  tail call void @arm_heavy_mb() #5
  %531 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %port1185, align 4
  %add2244 = add i32 %532, 2
  %and2245 = and i32 %add2244, 1048575
  %add2246 = or i32 %and2245, -18874368
  %533 = inttoptr i32 %add2246 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %533, i8 5) #5, !srcloc !45
  %534 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %535)
  %tobool2249.not = icmp eq i32 %535, 0
  br i1 %tobool2249.not, label %do.body2240.do.body2266_crit_edge, label %cond.false2261

do.body2240.do.body2266_crit_edge:                ; preds = %do.body2240
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2266

cond.false2261:                                   ; preds = %do.body2240
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %536 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %536(i32 noundef %535) #5
  br label %do.body2266

do.body2266:                                      ; preds = %cond.false2261, %do.body2240.do.body2266_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !323
  tail call void @arm_heavy_mb() #5
  %537 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load i32, ptr %port1185, align 4
  %add2270 = add i32 %538, 2
  %and2271 = and i32 %add2270, 1048575
  %add2272 = or i32 %and2271, -18874368
  %539 = inttoptr i32 %add2272 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %539, i8 4) #5, !srcloc !45
  %540 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %541)
  %tobool2275.not = icmp eq i32 %541, 0
  br i1 %tobool2275.not, label %do.body2266.do.body2292_crit_edge, label %cond.false2287

do.body2266.do.body2292_crit_edge:                ; preds = %do.body2266
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2292

cond.false2287:                                   ; preds = %do.body2266
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %542 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %542(i32 noundef %541) #5
  br label %do.body2292

do.body2292:                                      ; preds = %cond.false2287, %do.body2266.do.body2292_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !324
  tail call void @arm_heavy_mb() #5
  %543 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %port1185, align 4
  %and2297 = and i32 %544, 1048575
  %add2298 = or i32 %and2297, -18874368
  %545 = inttoptr i32 %add2298 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %545, i8 9) #5, !srcloc !45
  %546 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %547)
  %tobool2301.not = icmp eq i32 %547, 0
  br i1 %tobool2301.not, label %do.body2292.do.body2318_crit_edge, label %cond.false2313

do.body2292.do.body2318_crit_edge:                ; preds = %do.body2292
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2318

cond.false2313:                                   ; preds = %do.body2292
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %548 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %548(i32 noundef %547) #5
  br label %do.body2318

do.body2318:                                      ; preds = %cond.false2313, %do.body2292.do.body2318_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !325
  tail call void @arm_heavy_mb() #5
  %549 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %port1185, align 4
  %add2322 = add i32 %550, 2
  %and2323 = and i32 %add2322, 1048575
  %add2324 = or i32 %and2323, -18874368
  %551 = inttoptr i32 %add2324 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %551, i8 5) #5, !srcloc !45
  %552 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %553)
  %tobool2327.not = icmp eq i32 %553, 0
  br i1 %tobool2327.not, label %do.body2318.do.body2344_crit_edge, label %cond.false2339

do.body2318.do.body2344_crit_edge:                ; preds = %do.body2318
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2344

cond.false2339:                                   ; preds = %do.body2318
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %554 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %554(i32 noundef %553) #5
  br label %do.body2344

do.body2344:                                      ; preds = %cond.false2339, %do.body2318.do.body2344_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !326
  tail call void @arm_heavy_mb() #5
  %555 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %port1185, align 4
  %add2348 = add i32 %556, 2
  %and2349 = and i32 %add2348, 1048575
  %add2350 = or i32 %and2349, -18874368
  %557 = inttoptr i32 %add2350 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %557, i8 7) #5, !srcloc !45
  %558 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %559)
  %tobool2353.not = icmp eq i32 %559, 0
  br i1 %tobool2353.not, label %do.body2344.do.body2370_crit_edge, label %cond.false2365

do.body2344.do.body2370_crit_edge:                ; preds = %do.body2344
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2370

cond.false2365:                                   ; preds = %do.body2344
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %560 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %560(i32 noundef %559) #5
  br label %do.body2370

do.body2370:                                      ; preds = %cond.false2365, %do.body2344.do.body2370_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !327
  tail call void @arm_heavy_mb() #5
  %561 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %port1185, align 4
  %add2374 = add i32 %562, 2
  %and2375 = and i32 %add2374, 1048575
  %add2376 = or i32 %and2375, -18874368
  %563 = inttoptr i32 %add2376 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %563, i8 5) #5, !srcloc !45
  %564 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %565)
  %tobool2379.not = icmp eq i32 %565, 0
  br i1 %tobool2379.not, label %do.body2370.do.body2396_crit_edge, label %cond.false2391

do.body2370.do.body2396_crit_edge:                ; preds = %do.body2370
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2396

cond.false2391:                                   ; preds = %do.body2370
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %566 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %566(i32 noundef %565) #5
  br label %do.body2396

do.body2396:                                      ; preds = %cond.false2391, %do.body2370.do.body2396_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !328
  tail call void @arm_heavy_mb() #5
  %567 = ptrtoint ptr %port1185 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %port1185, align 4
  %add2400 = add i32 %568, 2
  %and2401 = and i32 %add2400, 1048575
  %add2402 = or i32 %and2401, -18874368
  %569 = inttoptr i32 %add2402 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %569, i8 4) #5, !srcloc !45
  %570 = ptrtoint ptr %delay1190 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load i32, ptr %delay1190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %571)
  %tobool2405.not = icmp eq i32 %571, 0
  br i1 %tobool2405.not, label %do.body2396.sw.epilog_crit_edge, label %do.body2396.sw.epilog.sink.split_crit_edge

do.body2396.sw.epilog.sink.split_crit_edge:       ; preds = %do.body2396
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body2396.sw.epilog_crit_edge:                  ; preds = %do.body2396
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body2423:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !329
  tail call void @arm_heavy_mb() #5
  %port2426 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %572 = ptrtoint ptr %port2426 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %port2426, align 4
  %add2427 = add i32 %573, 3
  %and2428 = and i32 %add2427, 1048575
  %add2429 = or i32 %and2428, -18874368
  %574 = inttoptr i32 %add2429 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %574, i8 1) #5, !srcloc !45
  %delay2431 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %575 = ptrtoint ptr %delay2431 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %delay2431, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %576)
  %tobool2432.not = icmp eq i32 %576, 0
  br i1 %tobool2432.not, label %do.body2423.do.body2449_crit_edge, label %cond.false2444

do.body2423.do.body2449_crit_edge:                ; preds = %do.body2423
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2449

cond.false2444:                                   ; preds = %do.body2423
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %577 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %577(i32 noundef %576) #5
  br label %do.body2449

do.body2449:                                      ; preds = %cond.false2444, %do.body2423.do.body2449_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !330
  tail call void @arm_heavy_mb() #5
  %578 = ptrtoint ptr %port2426 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %port2426, align 4
  %add2453 = add i32 %579, 3
  %and2454 = and i32 %add2453, 1048575
  %add2455 = or i32 %and2454, -18874368
  %580 = inttoptr i32 %add2455 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %580, i8 1) #5, !srcloc !45
  %581 = ptrtoint ptr %delay2431 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %delay2431, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %582)
  %tobool2458.not = icmp eq i32 %582, 0
  br i1 %tobool2458.not, label %do.body2449.do.body2475_crit_edge, label %cond.false2470

do.body2449.do.body2475_crit_edge:                ; preds = %do.body2449
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2475

cond.false2470:                                   ; preds = %do.body2449
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %583 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %583(i32 noundef %582) #5
  br label %do.body2475

do.body2475:                                      ; preds = %cond.false2470, %do.body2449.do.body2475_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !331
  tail call void @arm_heavy_mb() #5
  %584 = ptrtoint ptr %port2426 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %port2426, align 4
  %add2479 = add i32 %585, 2
  %and2480 = and i32 %add2479, 1048575
  %add2481 = or i32 %and2480, -18874368
  %586 = inttoptr i32 %add2481 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %586, i8 5) #5, !srcloc !45
  %587 = ptrtoint ptr %delay2431 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %delay2431, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %588)
  %tobool2484.not = icmp eq i32 %588, 0
  br i1 %tobool2484.not, label %do.body2475.do.body2501_crit_edge, label %cond.false2496

do.body2475.do.body2501_crit_edge:                ; preds = %do.body2475
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2501

cond.false2496:                                   ; preds = %do.body2475
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %589 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %589(i32 noundef %588) #5
  br label %do.body2501

do.body2501:                                      ; preds = %cond.false2496, %do.body2475.do.body2501_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !332
  tail call void @arm_heavy_mb() #5
  %590 = ptrtoint ptr %port2426 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %port2426, align 4
  %add2505 = add i32 %591, 4
  %and2506 = and i32 %add2505, 1048575
  %add2507 = or i32 %and2506, -18874368
  %592 = inttoptr i32 %add2507 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %592, i8 1) #5, !srcloc !45
  %593 = ptrtoint ptr %delay2431 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load i32, ptr %delay2431, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %594)
  %tobool2510.not = icmp eq i32 %594, 0
  br i1 %tobool2510.not, label %do.body2501.do.body2527_crit_edge, label %cond.false2522

do.body2501.do.body2527_crit_edge:                ; preds = %do.body2501
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2527

cond.false2522:                                   ; preds = %do.body2501
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %595 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %595(i32 noundef %594) #5
  br label %do.body2527

do.body2527:                                      ; preds = %cond.false2522, %do.body2501.do.body2527_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !333
  tail call void @arm_heavy_mb() #5
  %596 = ptrtoint ptr %port2426 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %port2426, align 4
  %add2531 = add i32 %597, 2
  %and2532 = and i32 %add2531, 1048575
  %add2533 = or i32 %and2532, -18874368
  %598 = inttoptr i32 %add2533 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %598, i8 4) #5, !srcloc !45
  %599 = ptrtoint ptr %delay2431 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %delay2431, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %600)
  %tobool2536.not = icmp eq i32 %600, 0
  br i1 %tobool2536.not, label %do.body2527.do.body2553_crit_edge, label %cond.false2548

do.body2527.do.body2553_crit_edge:                ; preds = %do.body2527
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2553

cond.false2548:                                   ; preds = %do.body2527
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %601 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %601(i32 noundef %600) #5
  br label %do.body2553

do.body2553:                                      ; preds = %cond.false2548, %do.body2527.do.body2553_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !334
  tail call void @arm_heavy_mb() #5
  %602 = ptrtoint ptr %port2426 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %port2426, align 4
  %add2557 = add i32 %603, 3
  %and2558 = and i32 %add2557, 1048575
  %add2559 = or i32 %and2558, -18874368
  %604 = inttoptr i32 %add2559 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %604, i8 0) #5, !srcloc !45
  %605 = ptrtoint ptr %delay2431 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %delay2431, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %606)
  %tobool2562.not = icmp eq i32 %606, 0
  br i1 %tobool2562.not, label %do.body2553.do.body2579_crit_edge, label %cond.false2574

do.body2553.do.body2579_crit_edge:                ; preds = %do.body2553
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2579

cond.false2574:                                   ; preds = %do.body2553
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %607 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %607(i32 noundef %606) #5
  br label %do.body2579

do.body2579:                                      ; preds = %cond.false2574, %do.body2553.do.body2579_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !335
  tail call void @arm_heavy_mb() #5
  %608 = ptrtoint ptr %port2426 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %port2426, align 4
  %add2583 = add i32 %609, 3
  %and2584 = and i32 %add2583, 1048575
  %add2585 = or i32 %and2584, -18874368
  %610 = inttoptr i32 %add2585 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %610, i8 0) #5, !srcloc !45
  %611 = ptrtoint ptr %delay2431 to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load i32, ptr %delay2431, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %612)
  %tobool2588.not = icmp eq i32 %612, 0
  br i1 %tobool2588.not, label %do.body2579.do.body2605_crit_edge, label %cond.false2600

do.body2579.do.body2605_crit_edge:                ; preds = %do.body2579
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2605

cond.false2600:                                   ; preds = %do.body2579
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %613 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %613(i32 noundef %612) #5
  br label %do.body2605

do.body2605:                                      ; preds = %cond.false2600, %do.body2579.do.body2605_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !336
  tail call void @arm_heavy_mb() #5
  %614 = ptrtoint ptr %port2426 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load i32, ptr %port2426, align 4
  %add2609 = add i32 %615, 2
  %and2610 = and i32 %add2609, 1048575
  %add2611 = or i32 %and2610, -18874368
  %616 = inttoptr i32 %add2611 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %616, i8 36) #5, !srcloc !45
  %617 = ptrtoint ptr %delay2431 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load i32, ptr %delay2431, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %618)
  %tobool2614.not = icmp eq i32 %618, 0
  br i1 %tobool2614.not, label %do.body2605.cond.end2630_crit_edge, label %cond.false2626

do.body2605.cond.end2630_crit_edge:               ; preds = %do.body2605
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2630

cond.false2626:                                   ; preds = %do.body2605
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %619 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %619(i32 noundef %618) #5
  br label %cond.end2630

cond.end2630:                                     ; preds = %cond.false2626, %do.body2605.cond.end2630_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %620 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %620(i32 noundef 2147480) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp26324141 = icmp sgt i32 %count, 0
  br i1 %cmp26324141, label %cond.end2630.for.body2634_crit_edge, label %cond.end2630.do.body2668_crit_edge

cond.end2630.do.body2668_crit_edge:               ; preds = %cond.end2630
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2668

cond.end2630.for.body2634_crit_edge:              ; preds = %cond.end2630
  br label %for.body2634

for.body2634:                                     ; preds = %cond.end2652.for.body2634_crit_edge, %cond.end2630.for.body2634_crit_edge
  %k.24142 = phi i32 [ %inc2666, %cond.end2652.for.body2634_crit_edge ], [ 0, %cond.end2630.for.body2634_crit_edge ]
  %621 = ptrtoint ptr %delay2431 to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %delay2431, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %622)
  %tobool2636.not = icmp eq i32 %622, 0
  br i1 %tobool2636.not, label %for.body2634.cond.end2652_crit_edge, label %cond.false2648

for.body2634.cond.end2652_crit_edge:              ; preds = %for.body2634
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2652

cond.false2648:                                   ; preds = %for.body2634
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %623 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %623(i32 noundef %622) #5
  br label %cond.end2652

cond.end2652:                                     ; preds = %cond.false2648, %for.body2634.cond.end2652_crit_edge
  %624 = ptrtoint ptr %port2426 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load i32, ptr %port2426, align 4
  %add2655 = add i32 %625, 4
  %and2656 = and i32 %add2655, 1048575
  %add2657 = or i32 %and2656, -18874368
  %626 = inttoptr i32 %add2657 to ptr
  %627 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %626) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !337
  %arrayidx2664 = getelementptr i8, ptr %buf, i32 %k.24142
  %628 = ptrtoint ptr %arrayidx2664 to i32
  call void @__asan_store1_noabort(i32 %628)
  store i8 %627, ptr %arrayidx2664, align 1
  %inc2666 = add nuw nsw i32 %k.24142, 1
  %exitcond4148.not = icmp eq i32 %inc2666, %count
  br i1 %exitcond4148.not, label %cond.end2652.do.body2668_crit_edge, label %cond.end2652.for.body2634_crit_edge

cond.end2652.for.body2634_crit_edge:              ; preds = %cond.end2652
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body2634

cond.end2652.do.body2668_crit_edge:               ; preds = %cond.end2652
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2668

do.body2668:                                      ; preds = %cond.end2652.do.body2668_crit_edge, %cond.end2630.do.body2668_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !338
  tail call void @arm_heavy_mb() #5
  %629 = ptrtoint ptr %port2426 to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load i32, ptr %port2426, align 4
  %add2672 = add i32 %630, 2
  %and2673 = and i32 %add2672, 1048575
  %add2674 = or i32 %and2673, -18874368
  %631 = inttoptr i32 %add2674 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %631, i8 4) #5, !srcloc !45
  %632 = ptrtoint ptr %delay2431 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %delay2431, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %633)
  %tobool2677.not = icmp eq i32 %633, 0
  br i1 %tobool2677.not, label %do.body2668.sw.epilog_crit_edge, label %do.body2668.sw.epilog.sink.split_crit_edge

do.body2668.sw.epilog.sink.split_crit_edge:       ; preds = %do.body2668
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body2668.sw.epilog_crit_edge:                  ; preds = %do.body2668
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body2695:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !339
  tail call void @arm_heavy_mb() #5
  %port2698 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %634 = ptrtoint ptr %port2698 to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load i32, ptr %port2698, align 4
  %add2699 = add i32 %635, 3
  %and2700 = and i32 %add2699, 1048575
  %add2701 = or i32 %and2700, -18874368
  %636 = inttoptr i32 %add2701 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %636, i8 1) #5, !srcloc !45
  %delay2703 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %637 = ptrtoint ptr %delay2703 to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load i32, ptr %delay2703, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %638)
  %tobool2704.not = icmp eq i32 %638, 0
  br i1 %tobool2704.not, label %do.body2695.do.body2721_crit_edge, label %cond.false2716

do.body2695.do.body2721_crit_edge:                ; preds = %do.body2695
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2721

cond.false2716:                                   ; preds = %do.body2695
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %639 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %639(i32 noundef %638) #5
  br label %do.body2721

do.body2721:                                      ; preds = %cond.false2716, %do.body2695.do.body2721_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !340
  tail call void @arm_heavy_mb() #5
  %640 = ptrtoint ptr %port2698 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load i32, ptr %port2698, align 4
  %add2725 = add i32 %641, 3
  %and2726 = and i32 %add2725, 1048575
  %add2727 = or i32 %and2726, -18874368
  %642 = inttoptr i32 %add2727 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %642, i8 1) #5, !srcloc !45
  %643 = ptrtoint ptr %delay2703 to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load i32, ptr %delay2703, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %644)
  %tobool2730.not = icmp eq i32 %644, 0
  br i1 %tobool2730.not, label %do.body2721.do.body2747_crit_edge, label %cond.false2742

do.body2721.do.body2747_crit_edge:                ; preds = %do.body2721
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2747

cond.false2742:                                   ; preds = %do.body2721
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %645 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %645(i32 noundef %644) #5
  br label %do.body2747

do.body2747:                                      ; preds = %cond.false2742, %do.body2721.do.body2747_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !341
  tail call void @arm_heavy_mb() #5
  %646 = ptrtoint ptr %port2698 to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load i32, ptr %port2698, align 4
  %add2751 = add i32 %647, 2
  %and2752 = and i32 %add2751, 1048575
  %add2753 = or i32 %and2752, -18874368
  %648 = inttoptr i32 %add2753 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %648, i8 5) #5, !srcloc !45
  %649 = ptrtoint ptr %delay2703 to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load i32, ptr %delay2703, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %650)
  %tobool2756.not = icmp eq i32 %650, 0
  br i1 %tobool2756.not, label %do.body2747.do.body2773_crit_edge, label %cond.false2768

do.body2747.do.body2773_crit_edge:                ; preds = %do.body2747
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2773

cond.false2768:                                   ; preds = %do.body2747
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %651 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %651(i32 noundef %650) #5
  br label %do.body2773

do.body2773:                                      ; preds = %cond.false2768, %do.body2747.do.body2773_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !342
  tail call void @arm_heavy_mb() #5
  %652 = ptrtoint ptr %port2698 to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load i32, ptr %port2698, align 4
  %add2777 = add i32 %653, 4
  %and2778 = and i32 %add2777, 1048575
  %add2779 = or i32 %and2778, -18874368
  %654 = inttoptr i32 %add2779 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %654, i8 1) #5, !srcloc !45
  %655 = ptrtoint ptr %delay2703 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %delay2703, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %656)
  %tobool2782.not = icmp eq i32 %656, 0
  br i1 %tobool2782.not, label %do.body2773.do.body2799_crit_edge, label %cond.false2794

do.body2773.do.body2799_crit_edge:                ; preds = %do.body2773
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2799

cond.false2794:                                   ; preds = %do.body2773
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %657 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %657(i32 noundef %656) #5
  br label %do.body2799

do.body2799:                                      ; preds = %cond.false2794, %do.body2773.do.body2799_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !343
  tail call void @arm_heavy_mb() #5
  %658 = ptrtoint ptr %port2698 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %port2698, align 4
  %add2803 = add i32 %659, 2
  %and2804 = and i32 %add2803, 1048575
  %add2805 = or i32 %and2804, -18874368
  %660 = inttoptr i32 %add2805 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %660, i8 4) #5, !srcloc !45
  %661 = ptrtoint ptr %delay2703 to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load i32, ptr %delay2703, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %662)
  %tobool2808.not = icmp eq i32 %662, 0
  br i1 %tobool2808.not, label %do.body2799.do.body2825_crit_edge, label %cond.false2820

do.body2799.do.body2825_crit_edge:                ; preds = %do.body2799
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2825

cond.false2820:                                   ; preds = %do.body2799
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %663 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %663(i32 noundef %662) #5
  br label %do.body2825

do.body2825:                                      ; preds = %cond.false2820, %do.body2799.do.body2825_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !344
  tail call void @arm_heavy_mb() #5
  %664 = ptrtoint ptr %port2698 to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load i32, ptr %port2698, align 4
  %add2829 = add i32 %665, 3
  %and2830 = and i32 %add2829, 1048575
  %add2831 = or i32 %and2830, -18874368
  %666 = inttoptr i32 %add2831 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %666, i8 0) #5, !srcloc !45
  %667 = ptrtoint ptr %delay2703 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load i32, ptr %delay2703, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %668)
  %tobool2834.not = icmp eq i32 %668, 0
  br i1 %tobool2834.not, label %do.body2825.do.body2851_crit_edge, label %cond.false2846

do.body2825.do.body2851_crit_edge:                ; preds = %do.body2825
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2851

cond.false2846:                                   ; preds = %do.body2825
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %669 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %669(i32 noundef %668) #5
  br label %do.body2851

do.body2851:                                      ; preds = %cond.false2846, %do.body2825.do.body2851_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !345
  tail call void @arm_heavy_mb() #5
  %670 = ptrtoint ptr %port2698 to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load i32, ptr %port2698, align 4
  %add2855 = add i32 %671, 3
  %and2856 = and i32 %add2855, 1048575
  %add2857 = or i32 %and2856, -18874368
  %672 = inttoptr i32 %add2857 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %672, i8 0) #5, !srcloc !45
  %673 = ptrtoint ptr %delay2703 to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load i32, ptr %delay2703, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %674)
  %tobool2860.not = icmp eq i32 %674, 0
  br i1 %tobool2860.not, label %do.body2851.do.body2877_crit_edge, label %cond.false2872

do.body2851.do.body2877_crit_edge:                ; preds = %do.body2851
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2877

cond.false2872:                                   ; preds = %do.body2851
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %675 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %675(i32 noundef %674) #5
  br label %do.body2877

do.body2877:                                      ; preds = %cond.false2872, %do.body2851.do.body2877_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !346
  tail call void @arm_heavy_mb() #5
  %676 = ptrtoint ptr %port2698 to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load i32, ptr %port2698, align 4
  %add2881 = add i32 %677, 2
  %and2882 = and i32 %add2881, 1048575
  %add2883 = or i32 %and2882, -18874368
  %678 = inttoptr i32 %add2883 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %678, i8 36) #5, !srcloc !45
  %679 = ptrtoint ptr %delay2703 to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load i32, ptr %delay2703, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %680)
  %tobool2886.not = icmp eq i32 %680, 0
  br i1 %tobool2886.not, label %do.body2877.cond.end2902_crit_edge, label %cond.false2898

do.body2877.cond.end2902_crit_edge:               ; preds = %do.body2877
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2902

cond.false2898:                                   ; preds = %do.body2877
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %681 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %681(i32 noundef %680) #5
  br label %cond.end2902

cond.end2902:                                     ; preds = %cond.false2898, %do.body2877.cond.end2902_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %682 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %682(i32 noundef 2147480) #5
  %div2904 = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp29054139 = icmp sgt i32 %count, 1
  br i1 %cmp29054139, label %cond.end2902.for.body2907_crit_edge, label %cond.end2902.do.body2941_crit_edge

cond.end2902.do.body2941_crit_edge:               ; preds = %cond.end2902
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2941

cond.end2902.for.body2907_crit_edge:              ; preds = %cond.end2902
  br label %for.body2907

for.body2907:                                     ; preds = %cond.end2925.for.body2907_crit_edge, %cond.end2902.for.body2907_crit_edge
  %k.34140 = phi i32 [ %inc2939, %cond.end2925.for.body2907_crit_edge ], [ 0, %cond.end2902.for.body2907_crit_edge ]
  %683 = ptrtoint ptr %delay2703 to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load i32, ptr %delay2703, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %684)
  %tobool2909.not = icmp eq i32 %684, 0
  br i1 %tobool2909.not, label %for.body2907.cond.end2925_crit_edge, label %cond.false2921

for.body2907.cond.end2925_crit_edge:              ; preds = %for.body2907
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2925

cond.false2921:                                   ; preds = %for.body2907
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %685 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %685(i32 noundef %684) #5
  br label %cond.end2925

cond.end2925:                                     ; preds = %cond.false2921, %for.body2907.cond.end2925_crit_edge
  %686 = ptrtoint ptr %port2698 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load i32, ptr %port2698, align 4
  %add2928 = add i32 %687, 4
  %and2929 = and i32 %add2928, 1048575
  %add2930 = or i32 %and2929, -18874368
  %688 = inttoptr i32 %add2930 to ptr
  %689 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %688) #5, !srcloc !347
  %690 = tail call i16 @llvm.bswap.i16(i16 %689)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !348
  %arrayidx2937 = getelementptr i16, ptr %buf, i32 %k.34140
  %691 = ptrtoint ptr %arrayidx2937 to i32
  call void @__asan_store2_noabort(i32 %691)
  store i16 %690, ptr %arrayidx2937, align 2
  %inc2939 = add nuw nsw i32 %k.34140, 1
  %exitcond4147.not = icmp eq i32 %inc2939, %div2904
  br i1 %exitcond4147.not, label %cond.end2925.do.body2941_crit_edge, label %cond.end2925.for.body2907_crit_edge

cond.end2925.for.body2907_crit_edge:              ; preds = %cond.end2925
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body2907

cond.end2925.do.body2941_crit_edge:               ; preds = %cond.end2925
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2941

do.body2941:                                      ; preds = %cond.end2925.do.body2941_crit_edge, %cond.end2902.do.body2941_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !349
  tail call void @arm_heavy_mb() #5
  %692 = ptrtoint ptr %port2698 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load i32, ptr %port2698, align 4
  %add2945 = add i32 %693, 2
  %and2946 = and i32 %add2945, 1048575
  %add2947 = or i32 %and2946, -18874368
  %694 = inttoptr i32 %add2947 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %694, i8 4) #5, !srcloc !45
  %695 = ptrtoint ptr %delay2703 to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load i32, ptr %delay2703, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %696)
  %tobool2950.not = icmp eq i32 %696, 0
  br i1 %tobool2950.not, label %do.body2941.sw.epilog_crit_edge, label %do.body2941.sw.epilog.sink.split_crit_edge

do.body2941.sw.epilog.sink.split_crit_edge:       ; preds = %do.body2941
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body2941.sw.epilog_crit_edge:                  ; preds = %do.body2941
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body2968:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !350
  tail call void @arm_heavy_mb() #5
  %port2971 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %697 = ptrtoint ptr %port2971 to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load i32, ptr %port2971, align 4
  %add2972 = add i32 %698, 3
  %and2973 = and i32 %add2972, 1048575
  %add2974 = or i32 %and2973, -18874368
  %699 = inttoptr i32 %add2974 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %699, i8 1) #5, !srcloc !45
  %delay2976 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %700 = ptrtoint ptr %delay2976 to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load i32, ptr %delay2976, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %701)
  %tobool2977.not = icmp eq i32 %701, 0
  br i1 %tobool2977.not, label %do.body2968.do.body2994_crit_edge, label %cond.false2989

do.body2968.do.body2994_crit_edge:                ; preds = %do.body2968
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2994

cond.false2989:                                   ; preds = %do.body2968
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %702 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %702(i32 noundef %701) #5
  br label %do.body2994

do.body2994:                                      ; preds = %cond.false2989, %do.body2968.do.body2994_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !351
  tail call void @arm_heavy_mb() #5
  %703 = ptrtoint ptr %port2971 to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load i32, ptr %port2971, align 4
  %add2998 = add i32 %704, 3
  %and2999 = and i32 %add2998, 1048575
  %add3000 = or i32 %and2999, -18874368
  %705 = inttoptr i32 %add3000 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %705, i8 1) #5, !srcloc !45
  %706 = ptrtoint ptr %delay2976 to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load i32, ptr %delay2976, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %707)
  %tobool3003.not = icmp eq i32 %707, 0
  br i1 %tobool3003.not, label %do.body2994.do.body3020_crit_edge, label %cond.false3015

do.body2994.do.body3020_crit_edge:                ; preds = %do.body2994
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3020

cond.false3015:                                   ; preds = %do.body2994
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %708 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %708(i32 noundef %707) #5
  br label %do.body3020

do.body3020:                                      ; preds = %cond.false3015, %do.body2994.do.body3020_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !352
  tail call void @arm_heavy_mb() #5
  %709 = ptrtoint ptr %port2971 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load i32, ptr %port2971, align 4
  %add3024 = add i32 %710, 2
  %and3025 = and i32 %add3024, 1048575
  %add3026 = or i32 %and3025, -18874368
  %711 = inttoptr i32 %add3026 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %711, i8 5) #5, !srcloc !45
  %712 = ptrtoint ptr %delay2976 to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load i32, ptr %delay2976, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %713)
  %tobool3029.not = icmp eq i32 %713, 0
  br i1 %tobool3029.not, label %do.body3020.do.body3046_crit_edge, label %cond.false3041

do.body3020.do.body3046_crit_edge:                ; preds = %do.body3020
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3046

cond.false3041:                                   ; preds = %do.body3020
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %714 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %714(i32 noundef %713) #5
  br label %do.body3046

do.body3046:                                      ; preds = %cond.false3041, %do.body3020.do.body3046_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !353
  tail call void @arm_heavy_mb() #5
  %715 = ptrtoint ptr %port2971 to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load i32, ptr %port2971, align 4
  %add3050 = add i32 %716, 4
  %and3051 = and i32 %add3050, 1048575
  %add3052 = or i32 %and3051, -18874368
  %717 = inttoptr i32 %add3052 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %717, i8 1) #5, !srcloc !45
  %718 = ptrtoint ptr %delay2976 to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load i32, ptr %delay2976, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %719)
  %tobool3055.not = icmp eq i32 %719, 0
  br i1 %tobool3055.not, label %do.body3046.do.body3072_crit_edge, label %cond.false3067

do.body3046.do.body3072_crit_edge:                ; preds = %do.body3046
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3072

cond.false3067:                                   ; preds = %do.body3046
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %720 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %720(i32 noundef %719) #5
  br label %do.body3072

do.body3072:                                      ; preds = %cond.false3067, %do.body3046.do.body3072_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !354
  tail call void @arm_heavy_mb() #5
  %721 = ptrtoint ptr %port2971 to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load i32, ptr %port2971, align 4
  %add3076 = add i32 %722, 2
  %and3077 = and i32 %add3076, 1048575
  %add3078 = or i32 %and3077, -18874368
  %723 = inttoptr i32 %add3078 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %723, i8 4) #5, !srcloc !45
  %724 = ptrtoint ptr %delay2976 to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load i32, ptr %delay2976, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %725)
  %tobool3081.not = icmp eq i32 %725, 0
  br i1 %tobool3081.not, label %do.body3072.do.body3098_crit_edge, label %cond.false3093

do.body3072.do.body3098_crit_edge:                ; preds = %do.body3072
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3098

cond.false3093:                                   ; preds = %do.body3072
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %726 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %726(i32 noundef %725) #5
  br label %do.body3098

do.body3098:                                      ; preds = %cond.false3093, %do.body3072.do.body3098_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !355
  tail call void @arm_heavy_mb() #5
  %727 = ptrtoint ptr %port2971 to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load i32, ptr %port2971, align 4
  %add3102 = add i32 %728, 3
  %and3103 = and i32 %add3102, 1048575
  %add3104 = or i32 %and3103, -18874368
  %729 = inttoptr i32 %add3104 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %729, i8 0) #5, !srcloc !45
  %730 = ptrtoint ptr %delay2976 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load i32, ptr %delay2976, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %731)
  %tobool3107.not = icmp eq i32 %731, 0
  br i1 %tobool3107.not, label %do.body3098.do.body3124_crit_edge, label %cond.false3119

do.body3098.do.body3124_crit_edge:                ; preds = %do.body3098
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3124

cond.false3119:                                   ; preds = %do.body3098
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %732 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %732(i32 noundef %731) #5
  br label %do.body3124

do.body3124:                                      ; preds = %cond.false3119, %do.body3098.do.body3124_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !356
  tail call void @arm_heavy_mb() #5
  %733 = ptrtoint ptr %port2971 to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load i32, ptr %port2971, align 4
  %add3128 = add i32 %734, 3
  %and3129 = and i32 %add3128, 1048575
  %add3130 = or i32 %and3129, -18874368
  %735 = inttoptr i32 %add3130 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %735, i8 0) #5, !srcloc !45
  %736 = ptrtoint ptr %delay2976 to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load i32, ptr %delay2976, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %737)
  %tobool3133.not = icmp eq i32 %737, 0
  br i1 %tobool3133.not, label %do.body3124.do.body3150_crit_edge, label %cond.false3145

do.body3124.do.body3150_crit_edge:                ; preds = %do.body3124
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3150

cond.false3145:                                   ; preds = %do.body3124
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %738 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %738(i32 noundef %737) #5
  br label %do.body3150

do.body3150:                                      ; preds = %cond.false3145, %do.body3124.do.body3150_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !357
  tail call void @arm_heavy_mb() #5
  %739 = ptrtoint ptr %port2971 to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load i32, ptr %port2971, align 4
  %add3154 = add i32 %740, 2
  %and3155 = and i32 %add3154, 1048575
  %add3156 = or i32 %and3155, -18874368
  %741 = inttoptr i32 %add3156 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %741, i8 36) #5, !srcloc !45
  %742 = ptrtoint ptr %delay2976 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load i32, ptr %delay2976, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %743)
  %tobool3159.not = icmp eq i32 %743, 0
  br i1 %tobool3159.not, label %do.body3150.cond.end3175_crit_edge, label %cond.false3171

do.body3150.cond.end3175_crit_edge:               ; preds = %do.body3150
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end3175

cond.false3171:                                   ; preds = %do.body3150
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %744 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %744(i32 noundef %743) #5
  br label %cond.end3175

cond.end3175:                                     ; preds = %cond.false3171, %do.body3150.cond.end3175_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %745 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %745(i32 noundef 2147480) #5
  %div3177 = sdiv i32 %count, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp31784137 = icmp sgt i32 %count, 3
  br i1 %cmp31784137, label %cond.end3175.for.body3180_crit_edge, label %cond.end3175.do.body3212_crit_edge

cond.end3175.do.body3212_crit_edge:               ; preds = %cond.end3175
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3212

cond.end3175.for.body3180_crit_edge:              ; preds = %cond.end3175
  br label %for.body3180

for.body3180:                                     ; preds = %cond.end3198.for.body3180_crit_edge, %cond.end3175.for.body3180_crit_edge
  %k.44138 = phi i32 [ %inc3210, %cond.end3198.for.body3180_crit_edge ], [ 0, %cond.end3175.for.body3180_crit_edge ]
  %746 = ptrtoint ptr %delay2976 to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load i32, ptr %delay2976, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %747)
  %tobool3182.not = icmp eq i32 %747, 0
  br i1 %tobool3182.not, label %for.body3180.cond.end3198_crit_edge, label %cond.false3194

for.body3180.cond.end3198_crit_edge:              ; preds = %for.body3180
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end3198

cond.false3194:                                   ; preds = %for.body3180
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %748 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %748(i32 noundef %747) #5
  br label %cond.end3198

cond.end3198:                                     ; preds = %cond.false3194, %for.body3180.cond.end3198_crit_edge
  %749 = ptrtoint ptr %port2971 to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load i32, ptr %port2971, align 4
  %add3201 = add i32 %750, 4
  %and3202 = and i32 %add3201, 1048575
  %add3203 = or i32 %and3202, -18874368
  %751 = inttoptr i32 %add3203 to ptr
  %752 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %751) #5, !srcloc !358
  %753 = tail call i32 @llvm.bswap.i32(i32 %752)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !359
  %arrayidx3208 = getelementptr i32, ptr %buf, i32 %k.44138
  %754 = ptrtoint ptr %arrayidx3208 to i32
  call void @__asan_store4_noabort(i32 %754)
  store i32 %753, ptr %arrayidx3208, align 4
  %inc3210 = add nuw nsw i32 %k.44138, 1
  %exitcond.not = icmp eq i32 %inc3210, %div3177
  br i1 %exitcond.not, label %cond.end3198.do.body3212_crit_edge, label %cond.end3198.for.body3180_crit_edge

cond.end3198.for.body3180_crit_edge:              ; preds = %cond.end3198
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3180

cond.end3198.do.body3212_crit_edge:               ; preds = %cond.end3198
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3212

do.body3212:                                      ; preds = %cond.end3198.do.body3212_crit_edge, %cond.end3175.do.body3212_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !360
  tail call void @arm_heavy_mb() #5
  %755 = ptrtoint ptr %port2971 to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load i32, ptr %port2971, align 4
  %add3216 = add i32 %756, 2
  %and3217 = and i32 %add3216, 1048575
  %add3218 = or i32 %and3217, -18874368
  %757 = inttoptr i32 %add3218 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %757, i8 4) #5, !srcloc !45
  %758 = ptrtoint ptr %delay2976 to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load i32, ptr %delay2976, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %759)
  %tobool3221.not = icmp eq i32 %759, 0
  br i1 %tobool3221.not, label %do.body3212.sw.epilog_crit_edge, label %do.body3212.sw.epilog.sink.split_crit_edge

do.body3212.sw.epilog.sink.split_crit_edge:       ; preds = %do.body3212
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body3212.sw.epilog_crit_edge:                  ; preds = %do.body3212
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body3212.sw.epilog.sink.split_crit_edge, %do.body2941.sw.epilog.sink.split_crit_edge, %do.body2668.sw.epilog.sink.split_crit_edge, %do.body2396.sw.epilog.sink.split_crit_edge, %do.body1155.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %287, %do.body1155.sw.epilog.sink.split_crit_edge ], [ %571, %do.body2396.sw.epilog.sink.split_crit_edge ], [ %633, %do.body2668.sw.epilog.sink.split_crit_edge ], [ %696, %do.body2941.sw.epilog.sink.split_crit_edge ], [ %759, %do.body3212.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %760 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %760(i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body3212.sw.epilog_crit_edge, %do.body2941.sw.epilog_crit_edge, %do.body2668.sw.epilog_crit_edge, %do.body2396.sw.epilog_crit_edge, %do.body1155.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @on26_connect(ptr noundef %pi) #2 align 64 {
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
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !361
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
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !362
  %conv40 = zext i8 %14 to i32
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %15 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv40, ptr %saved_r2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !363
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %and44 = and i32 %17, 1048575
  %add45 = or i32 %and44, -18874368
  %18 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 -2) #5, !srcloc !45
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !364
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %and70 = and i32 %23, 1048575
  %add71 = or i32 %and70, -18874368
  %24 = inttoptr i32 %add71 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 -86) #5, !srcloc !45
  %25 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool74.not = icmp eq i32 %26, 0
  br i1 %tobool74.not, label %do.body65.do.body91_crit_edge, label %cond.false86

do.body65.do.body91_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body91

cond.false86:                                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %27(i32 noundef %26) #5
  br label %do.body91

do.body91:                                        ; preds = %cond.false86, %do.body65.do.body91_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !365
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %and96 = and i32 %29, 1048575
  %add97 = or i32 %and96, -18874368
  %30 = inttoptr i32 %add97 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 85) #5, !srcloc !45
  %31 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool100.not = icmp eq i32 %32, 0
  br i1 %tobool100.not, label %do.body91.do.body117_crit_edge, label %cond.false112

do.body91.do.body117_crit_edge:                   ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body117

cond.false112:                                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %33(i32 noundef %32) #5
  br label %do.body117

do.body117:                                       ; preds = %cond.false112, %do.body91.do.body117_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !366
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %and122 = and i32 %35, 1048575
  %add123 = or i32 %and122, -18874368
  %36 = inttoptr i32 %add123 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 0) #5, !srcloc !45
  %37 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool126.not = icmp eq i32 %38, 0
  br i1 %tobool126.not, label %do.body117.do.body143_crit_edge, label %cond.false138

do.body117.do.body143_crit_edge:                  ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body143

cond.false138:                                    ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %39(i32 noundef %38) #5
  br label %do.body143

do.body143:                                       ; preds = %cond.false138, %do.body117.do.body143_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !367
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %and148 = and i32 %41, 1048575
  %add149 = or i32 %and148, -18874368
  %42 = inttoptr i32 %add149 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 -1) #5, !srcloc !45
  %43 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool152.not = icmp eq i32 %44, 0
  br i1 %tobool152.not, label %do.body143.do.body169_crit_edge, label %cond.false164

do.body143.do.body169_crit_edge:                  ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body169

cond.false164:                                    ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %45(i32 noundef %44) #5
  br label %do.body169

do.body169:                                       ; preds = %cond.false164, %do.body143.do.body169_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !368
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %and174 = and i32 %47, 1048575
  %add175 = or i32 %and174, -18874368
  %48 = inttoptr i32 %add175 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 -121) #5, !srcloc !45
  %49 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool178.not = icmp eq i32 %50, 0
  br i1 %tobool178.not, label %do.body169.do.body195_crit_edge, label %cond.false190

do.body169.do.body195_crit_edge:                  ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body195

cond.false190:                                    ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %51(i32 noundef %50) #5
  br label %do.body195

do.body195:                                       ; preds = %cond.false190, %do.body169.do.body195_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !369
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port, align 4
  %and200 = and i32 %53, 1048575
  %add201 = or i32 %and200, -18874368
  %54 = inttoptr i32 %add201 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 120) #5, !srcloc !45
  %55 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool204.not = icmp eq i32 %56, 0
  br i1 %tobool204.not, label %do.body195.do.body221_crit_edge, label %cond.false216

do.body195.do.body221_crit_edge:                  ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body221

cond.false216:                                    ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %57(i32 noundef %56) #5
  br label %do.body221

do.body221:                                       ; preds = %cond.false216, %do.body195.do.body221_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !370
  tail call void @arm_heavy_mb() #5
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port, align 4
  %and226 = and i32 %59, 1048575
  %add227 = or i32 %and226, -18874368
  %60 = inttoptr i32 %add227 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 32) #5, !srcloc !45
  %61 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool230.not = icmp eq i32 %62, 0
  br i1 %tobool230.not, label %do.body221.do.body247_crit_edge, label %cond.false242

do.body221.do.body247_crit_edge:                  ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body247

cond.false242:                                    ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %63(i32 noundef %62) #5
  br label %do.body247

do.body247:                                       ; preds = %cond.false242, %do.body221.do.body247_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !371
  tail call void @arm_heavy_mb() #5
  %64 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port, align 4
  %add251 = add i32 %65, 2
  %and252 = and i32 %add251, 1048575
  %add253 = or i32 %and252, -18874368
  %66 = inttoptr i32 %add253 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 4) #5, !srcloc !45
  %67 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool256.not = icmp eq i32 %68, 0
  br i1 %tobool256.not, label %do.body247.do.body273_crit_edge, label %cond.false268

do.body247.do.body273_crit_edge:                  ; preds = %do.body247
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body273

cond.false268:                                    ; preds = %do.body247
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %69(i32 noundef %68) #5
  br label %do.body273

do.body273:                                       ; preds = %cond.false268, %do.body247.do.body273_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !372
  tail call void @arm_heavy_mb() #5
  %70 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port, align 4
  %add277 = add i32 %71, 2
  %and278 = and i32 %add277, 1048575
  %add279 = or i32 %and278, -18874368
  %72 = inttoptr i32 %add279 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 5) #5, !srcloc !45
  %73 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool282.not = icmp eq i32 %74, 0
  br i1 %tobool282.not, label %do.body273.do.body299_crit_edge, label %cond.false294

do.body273.do.body299_crit_edge:                  ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body299

cond.false294:                                    ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %75(i32 noundef %74) #5
  br label %do.body299

do.body299:                                       ; preds = %cond.false294, %do.body273.do.body299_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !373
  tail call void @arm_heavy_mb() #5
  %76 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port, align 4
  %add303 = add i32 %77, 2
  %and304 = and i32 %add303, 1048575
  %add305 = or i32 %and304, -18874368
  %78 = inttoptr i32 %add305 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 4) #5, !srcloc !45
  %79 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool308.not = icmp eq i32 %80, 0
  br i1 %tobool308.not, label %do.body299.do.body325_crit_edge, label %cond.false320

do.body299.do.body325_crit_edge:                  ; preds = %do.body299
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body325

cond.false320:                                    ; preds = %do.body299
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %81(i32 noundef %80) #5
  br label %do.body325

do.body325:                                       ; preds = %cond.false320, %do.body299.do.body325_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !374
  tail call void @arm_heavy_mb() #5
  %82 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port, align 4
  %and330 = and i32 %83, 1048575
  %add331 = or i32 %and330, -18874368
  %84 = inttoptr i32 %add331 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 -1) #5, !srcloc !45
  %85 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool334.not = icmp eq i32 %86, 0
  br i1 %tobool334.not, label %do.body325.cond.end350_crit_edge, label %cond.false346

do.body325.cond.end350_crit_edge:                 ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end350

cond.false346:                                    ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %87(i32 noundef %86) #5
  br label %cond.end350

cond.end350:                                      ; preds = %cond.false346, %do.body325.cond.end350_crit_edge
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %88 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool351.not = icmp eq i32 %89, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !375
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port, align 4
  %and357 = and i32 %91, 1048575
  %add358 = or i32 %and357, -18874368
  %92 = inttoptr i32 %add358 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 2) #5, !srcloc !45
  %93 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool361.not = icmp eq i32 %94, 0
  br i1 %tobool361.not, label %cond.end350.do.body378_crit_edge, label %cond.false373

cond.end350.do.body378_crit_edge:                 ; preds = %cond.end350
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body378

cond.false373:                                    ; preds = %cond.end350
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %95(i32 noundef %94) #5
  br label %do.body378

do.body378:                                       ; preds = %cond.false373, %cond.end350.do.body378_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !376
  tail call void @arm_heavy_mb() #5
  %96 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port, align 4
  %add382 = add i32 %97, 2
  %and383 = and i32 %add382, 1048575
  %add384 = or i32 %and383, -18874368
  %98 = inttoptr i32 %add384 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 5) #5, !srcloc !45
  %99 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool387.not = icmp eq i32 %100, 0
  br i1 %tobool387.not, label %do.body378.do.body404_crit_edge, label %cond.false399

do.body378.do.body404_crit_edge:                  ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body404

cond.false399:                                    ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %101(i32 noundef %100) #5
  br label %do.body404

do.body404:                                       ; preds = %cond.false399, %do.body378.do.body404_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !377
  tail call void @arm_heavy_mb() #5
  %102 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %port, align 4
  %add408 = add i32 %103, 2
  %and409 = and i32 %add408, 1048575
  %add410 = or i32 %and409, -18874368
  %104 = inttoptr i32 %add410 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %104, i8 13) #5, !srcloc !45
  %105 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool413.not = icmp eq i32 %106, 0
  br i1 %tobool413.not, label %do.body404.do.body430_crit_edge, label %cond.false425

do.body404.do.body430_crit_edge:                  ; preds = %do.body404
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body430

cond.false425:                                    ; preds = %do.body404
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %107(i32 noundef %106) #5
  br label %do.body430

do.body430:                                       ; preds = %cond.false425, %do.body404.do.body430_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !378
  tail call void @arm_heavy_mb() #5
  %108 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %port, align 4
  %add434 = add i32 %109, 2
  %and435 = and i32 %add434, 1048575
  %add436 = or i32 %and435, -18874368
  %110 = inttoptr i32 %add436 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %110, i8 5) #5, !srcloc !45
  %111 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool439.not = icmp eq i32 %112, 0
  br i1 %tobool439.not, label %do.body430.do.body456_crit_edge, label %cond.false451

do.body430.do.body456_crit_edge:                  ; preds = %do.body430
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body456

cond.false451:                                    ; preds = %do.body430
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %113(i32 noundef %112) #5
  br label %do.body456

do.body456:                                       ; preds = %cond.false451, %do.body430.do.body456_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !379
  tail call void @arm_heavy_mb() #5
  %114 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %port, align 4
  %add460 = add i32 %115, 2
  %and461 = and i32 %add460, 1048575
  %add462 = or i32 %and461, -18874368
  %116 = inttoptr i32 %add462 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %116, i8 13) #5, !srcloc !45
  %117 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool465.not = icmp eq i32 %118, 0
  br i1 %tobool465.not, label %do.body456.do.body482_crit_edge, label %cond.false477

do.body456.do.body482_crit_edge:                  ; preds = %do.body456
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body482

cond.false477:                                    ; preds = %do.body456
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %119(i32 noundef %118) #5
  br label %do.body482

do.body482:                                       ; preds = %cond.false477, %do.body456.do.body482_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !380
  tail call void @arm_heavy_mb() #5
  %120 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %port, align 4
  %add486 = add i32 %121, 2
  %and487 = and i32 %add486, 1048575
  %add488 = or i32 %and487, -18874368
  %122 = inttoptr i32 %add488 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %122, i8 5) #5, !srcloc !45
  %123 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool491.not = icmp eq i32 %124, 0
  br i1 %tobool491.not, label %do.body482.do.body508_crit_edge, label %cond.false503

do.body482.do.body508_crit_edge:                  ; preds = %do.body482
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body508

cond.false503:                                    ; preds = %do.body482
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %125(i32 noundef %124) #5
  br label %do.body508

do.body508:                                       ; preds = %cond.false503, %do.body482.do.body508_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !381
  tail call void @arm_heavy_mb() #5
  %126 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %port, align 4
  %add512 = add i32 %127, 2
  %and513 = and i32 %add512, 1048575
  %add514 = or i32 %and513, -18874368
  %128 = inttoptr i32 %add514 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %128, i8 4) #5, !srcloc !45
  %129 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool517.not = icmp eq i32 %130, 0
  br i1 %tobool517.not, label %do.body508.do.body534_crit_edge, label %cond.false529

do.body508.do.body534_crit_edge:                  ; preds = %do.body508
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body534

cond.false529:                                    ; preds = %do.body508
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %131(i32 noundef %130) #5
  br label %do.body534

do.body534:                                       ; preds = %cond.false529, %do.body508.do.body534_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !382
  tail call void @arm_heavy_mb() #5
  %132 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %port, align 4
  %and539 = and i32 %133, 1048575
  %add540 = or i32 %and539, -18874368
  %134 = inttoptr i32 %add540 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %134, i8 8) #5, !srcloc !45
  %135 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool543.not = icmp eq i32 %136, 0
  br i1 %tobool543.not, label %do.body534.do.body560_crit_edge, label %cond.false555

do.body534.do.body560_crit_edge:                  ; preds = %do.body534
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body560

cond.false555:                                    ; preds = %do.body534
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %137(i32 noundef %136) #5
  br label %do.body560

do.body560:                                       ; preds = %cond.false555, %do.body534.do.body560_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !383
  tail call void @arm_heavy_mb() #5
  %138 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %port, align 4
  %add564 = add i32 %139, 2
  %and565 = and i32 %add564, 1048575
  %add566 = or i32 %and565, -18874368
  %140 = inttoptr i32 %add566 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %140, i8 5) #5, !srcloc !45
  %141 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool569.not = icmp eq i32 %142, 0
  br i1 %tobool569.not, label %do.body560.do.body586_crit_edge, label %cond.false581

do.body560.do.body586_crit_edge:                  ; preds = %do.body560
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body586

cond.false581:                                    ; preds = %do.body560
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %143(i32 noundef %142) #5
  br label %do.body586

do.body586:                                       ; preds = %cond.false581, %do.body560.do.body586_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !384
  tail call void @arm_heavy_mb() #5
  %144 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %port, align 4
  %add590 = add i32 %145, 2
  %and591 = and i32 %add590, 1048575
  %add592 = or i32 %and591, -18874368
  %146 = inttoptr i32 %add592 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %146, i8 7) #5, !srcloc !45
  %147 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool595.not = icmp eq i32 %148, 0
  br i1 %tobool595.not, label %do.body586.do.body612_crit_edge, label %cond.false607

do.body586.do.body612_crit_edge:                  ; preds = %do.body586
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body612

cond.false607:                                    ; preds = %do.body586
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %149(i32 noundef %148) #5
  br label %do.body612

do.body612:                                       ; preds = %cond.false607, %do.body586.do.body612_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !385
  tail call void @arm_heavy_mb() #5
  %150 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %port, align 4
  %add616 = add i32 %151, 2
  %and617 = and i32 %add616, 1048575
  %add618 = or i32 %and617, -18874368
  %152 = inttoptr i32 %add618 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %152, i8 5) #5, !srcloc !45
  %153 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool621.not = icmp eq i32 %154, 0
  br i1 %tobool621.not, label %do.body612.do.body638_crit_edge, label %cond.false633

do.body612.do.body638_crit_edge:                  ; preds = %do.body612
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body638

cond.false633:                                    ; preds = %do.body612
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %155(i32 noundef %154) #5
  br label %do.body638

do.body638:                                       ; preds = %cond.false633, %do.body612.do.body638_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !386
  tail call void @arm_heavy_mb() #5
  %156 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %port, align 4
  %add642 = add i32 %157, 2
  %and643 = and i32 %add642, 1048575
  %add644 = or i32 %and643, -18874368
  %158 = inttoptr i32 %add644 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %158, i8 4) #5, !srcloc !45
  %159 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool647.not = icmp eq i32 %160, 0
  br i1 %tobool647.not, label %do.body638.do.body664_crit_edge, label %cond.false659

do.body638.do.body664_crit_edge:                  ; preds = %do.body638
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body664

cond.false659:                                    ; preds = %do.body638
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %161(i32 noundef %160) #5
  br label %do.body664

do.body664:                                       ; preds = %cond.false659, %do.body638.do.body664_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !387
  tail call void @arm_heavy_mb() #5
  %162 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %port, align 4
  %and669 = and i32 %163, 1048575
  %add670 = or i32 %and669, -18874368
  %164 = inttoptr i32 %add670 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %164, i8 2) #5, !srcloc !45
  %165 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool673.not = icmp eq i32 %166, 0
  br i1 %tobool673.not, label %do.body664.do.body690_crit_edge, label %cond.false685

do.body664.do.body690_crit_edge:                  ; preds = %do.body664
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body690

cond.false685:                                    ; preds = %do.body664
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %167(i32 noundef %166) #5
  br label %do.body690

do.body690:                                       ; preds = %cond.false685, %do.body664.do.body690_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !388
  tail call void @arm_heavy_mb() #5
  %168 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %port, align 4
  %add694 = add i32 %169, 2
  %and695 = and i32 %add694, 1048575
  %add696 = or i32 %and695, -18874368
  %170 = inttoptr i32 %add696 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %170, i8 5) #5, !srcloc !45
  %171 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool699.not = icmp eq i32 %172, 0
  br i1 %tobool699.not, label %do.body690.do.body716_crit_edge, label %cond.false711

do.body690.do.body716_crit_edge:                  ; preds = %do.body690
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body716

cond.false711:                                    ; preds = %do.body690
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %173(i32 noundef %172) #5
  br label %do.body716

do.body716:                                       ; preds = %cond.false711, %do.body690.do.body716_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !389
  tail call void @arm_heavy_mb() #5
  %174 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %port, align 4
  %add720 = add i32 %175, 2
  %and721 = and i32 %add720, 1048575
  %add722 = or i32 %and721, -18874368
  %176 = inttoptr i32 %add722 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %176, i8 13) #5, !srcloc !45
  %177 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool725.not = icmp eq i32 %178, 0
  br i1 %tobool725.not, label %do.body716.do.body742_crit_edge, label %cond.false737

do.body716.do.body742_crit_edge:                  ; preds = %do.body716
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body742

cond.false737:                                    ; preds = %do.body716
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %179 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %179(i32 noundef %178) #5
  br label %do.body742

do.body742:                                       ; preds = %cond.false737, %do.body716.do.body742_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !390
  tail call void @arm_heavy_mb() #5
  %180 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %port, align 4
  %add746 = add i32 %181, 2
  %and747 = and i32 %add746, 1048575
  %add748 = or i32 %and747, -18874368
  %182 = inttoptr i32 %add748 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %182, i8 5) #5, !srcloc !45
  %183 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool751.not = icmp eq i32 %184, 0
  br i1 %tobool751.not, label %do.body742.do.body768_crit_edge, label %cond.false763

do.body742.do.body768_crit_edge:                  ; preds = %do.body742
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body768

cond.false763:                                    ; preds = %do.body742
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %185 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %185(i32 noundef %184) #5
  br label %do.body768

do.body768:                                       ; preds = %cond.false763, %do.body742.do.body768_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !391
  tail call void @arm_heavy_mb() #5
  %186 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %port, align 4
  %add772 = add i32 %187, 2
  %and773 = and i32 %add772, 1048575
  %add774 = or i32 %and773, -18874368
  %188 = inttoptr i32 %add774 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %188, i8 13) #5, !srcloc !45
  %189 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool777.not = icmp eq i32 %190, 0
  br i1 %tobool777.not, label %do.body768.do.body794_crit_edge, label %cond.false789

do.body768.do.body794_crit_edge:                  ; preds = %do.body768
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body794

cond.false789:                                    ; preds = %do.body768
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %191 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %191(i32 noundef %190) #5
  br label %do.body794

do.body794:                                       ; preds = %cond.false789, %do.body768.do.body794_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !392
  tail call void @arm_heavy_mb() #5
  %192 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %port, align 4
  %add798 = add i32 %193, 2
  %and799 = and i32 %add798, 1048575
  %add800 = or i32 %and799, -18874368
  %194 = inttoptr i32 %add800 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %194, i8 5) #5, !srcloc !45
  %195 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool803.not = icmp eq i32 %196, 0
  br i1 %tobool803.not, label %do.body794.do.body820_crit_edge, label %cond.false815

do.body794.do.body820_crit_edge:                  ; preds = %do.body794
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body820

cond.false815:                                    ; preds = %do.body794
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %197(i32 noundef %196) #5
  br label %do.body820

do.body820:                                       ; preds = %cond.false815, %do.body794.do.body820_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !393
  tail call void @arm_heavy_mb() #5
  %198 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %port, align 4
  %add824 = add i32 %199, 2
  %and825 = and i32 %add824, 1048575
  %add826 = or i32 %and825, -18874368
  %200 = inttoptr i32 %add826 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %200, i8 4) #5, !srcloc !45
  %201 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool829.not = icmp eq i32 %202, 0
  br i1 %tobool829.not, label %do.body820.do.body846_crit_edge, label %cond.false841

do.body820.do.body846_crit_edge:                  ; preds = %do.body820
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body846

cond.false841:                                    ; preds = %do.body820
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %203 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %203(i32 noundef %202) #5
  br label %do.body846

do.body846:                                       ; preds = %cond.false841, %do.body820.do.body846_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !394
  tail call void @arm_heavy_mb() #5
  %conv849 = select i1 %tobool351.not, i8 8, i8 9
  %204 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %port, align 4
  %and852 = and i32 %205, 1048575
  %add853 = or i32 %and852, -18874368
  %206 = inttoptr i32 %add853 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %206, i8 %conv849) #5, !srcloc !45
  %207 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool856.not = icmp eq i32 %208, 0
  br i1 %tobool856.not, label %do.body846.do.body873_crit_edge, label %cond.false868

do.body846.do.body873_crit_edge:                  ; preds = %do.body846
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body873

cond.false868:                                    ; preds = %do.body846
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %209 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %209(i32 noundef %208) #5
  br label %do.body873

do.body873:                                       ; preds = %cond.false868, %do.body846.do.body873_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !395
  tail call void @arm_heavy_mb() #5
  %210 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %port, align 4
  %add877 = add i32 %211, 2
  %and878 = and i32 %add877, 1048575
  %add879 = or i32 %and878, -18874368
  %212 = inttoptr i32 %add879 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %212, i8 5) #5, !srcloc !45
  %213 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool882.not = icmp eq i32 %214, 0
  br i1 %tobool882.not, label %do.body873.do.body899_crit_edge, label %cond.false894

do.body873.do.body899_crit_edge:                  ; preds = %do.body873
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body899

cond.false894:                                    ; preds = %do.body873
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %215 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %215(i32 noundef %214) #5
  br label %do.body899

do.body899:                                       ; preds = %cond.false894, %do.body873.do.body899_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !396
  tail call void @arm_heavy_mb() #5
  %216 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %port, align 4
  %add903 = add i32 %217, 2
  %and904 = and i32 %add903, 1048575
  %add905 = or i32 %and904, -18874368
  %218 = inttoptr i32 %add905 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %218, i8 7) #5, !srcloc !45
  %219 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool908.not = icmp eq i32 %220, 0
  br i1 %tobool908.not, label %do.body899.do.body925_crit_edge, label %cond.false920

do.body899.do.body925_crit_edge:                  ; preds = %do.body899
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body925

cond.false920:                                    ; preds = %do.body899
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %221 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %221(i32 noundef %220) #5
  br label %do.body925

do.body925:                                       ; preds = %cond.false920, %do.body899.do.body925_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !397
  tail call void @arm_heavy_mb() #5
  %222 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %port, align 4
  %add929 = add i32 %223, 2
  %and930 = and i32 %add929, 1048575
  %add931 = or i32 %and930, -18874368
  %224 = inttoptr i32 %add931 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %224, i8 5) #5, !srcloc !45
  %225 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool934.not = icmp eq i32 %226, 0
  br i1 %tobool934.not, label %do.body925.do.body951_crit_edge, label %cond.false946

do.body925.do.body951_crit_edge:                  ; preds = %do.body925
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body951

cond.false946:                                    ; preds = %do.body925
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %227 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %227(i32 noundef %226) #5
  br label %do.body951

do.body951:                                       ; preds = %cond.false946, %do.body925.do.body951_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !398
  tail call void @arm_heavy_mb() #5
  %228 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %port, align 4
  %add955 = add i32 %229, 2
  %and956 = and i32 %add955, 1048575
  %add957 = or i32 %and956, -18874368
  %230 = inttoptr i32 %add957 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %230, i8 4) #5, !srcloc !45
  %231 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool960.not = icmp eq i32 %232, 0
  br i1 %tobool960.not, label %do.body951.cond.end976_crit_edge, label %cond.false972

do.body951.cond.end976_crit_edge:                 ; preds = %do.body951
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end976

cond.false972:                                    ; preds = %do.body951
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %233 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %233(i32 noundef %232) #5
  br label %cond.end976

cond.end976:                                      ; preds = %cond.false972, %do.body951.cond.end976_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @on26_disconnect(ptr nocapture noundef readonly %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  br i1 %cmp, label %do.body, label %do.body85

do.body:                                          ; preds = %entry
  %add = add i32 %3, 3
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 4) #5, !srcloc !45
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %5 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body.do.body13_crit_edge, label %cond.false8

do.body.do.body13_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13

cond.false8:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %7(i32 noundef %6) #5
  br label %do.body13

do.body13:                                        ; preds = %cond.false8, %do.body.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !399
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add16 = add i32 %9, 3
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %10 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 4) #5, !srcloc !45
  %11 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool21.not = icmp eq i32 %12, 0
  br i1 %tobool21.not, label %do.body13.do.body37_crit_edge, label %cond.false32

do.body13.do.body37_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body37

cond.false32:                                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %12) #5
  br label %do.body37

do.body37:                                        ; preds = %cond.false32, %do.body13.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !400
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %add40 = add i32 %15, 3
  %and41 = and i32 %add40, 1048575
  %add42 = or i32 %and41, -18874368
  %16 = inttoptr i32 %add42 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 4) #5, !srcloc !45
  %17 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool45.not = icmp eq i32 %18, 0
  br i1 %tobool45.not, label %do.body37.do.body61_crit_edge, label %cond.false56

do.body37.do.body61_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body61

cond.false56:                                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %19(i32 noundef %18) #5
  br label %do.body61

do.body61:                                        ; preds = %cond.false56, %do.body37.do.body61_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !401
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %add64 = add i32 %21, 3
  %and65 = and i32 %add64, 1048575
  %add66 = or i32 %and65, -18874368
  %22 = inttoptr i32 %add66 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 4) #5, !srcloc !45
  %23 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool69.not = icmp eq i32 %24, 0
  br i1 %tobool69.not, label %do.body61.do.body421_crit_edge, label %do.body61.do.body421.sink.split_crit_edge

do.body61.do.body421.sink.split_crit_edge:        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body421.sink.split

do.body61.do.body421_crit_edge:                   ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body421

do.body85:                                        ; preds = %entry
  %and89 = and i32 %3, 1048575
  %add90 = or i32 %and89, -18874368
  %25 = inttoptr i32 %add90 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 4) #5, !srcloc !45
  %delay92 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %26 = ptrtoint ptr %delay92 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %delay92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool93.not = icmp eq i32 %27, 0
  br i1 %tobool93.not, label %do.body85.do.body109_crit_edge, label %cond.false104

do.body85.do.body109_crit_edge:                   ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body109

cond.false104:                                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %28(i32 noundef %27) #5
  br label %do.body109

do.body109:                                       ; preds = %cond.false104, %do.body85.do.body109_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !402
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port, align 4
  %add112 = add i32 %30, 2
  %and113 = and i32 %add112, 1048575
  %add114 = or i32 %and113, -18874368
  %31 = inttoptr i32 %add114 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 5) #5, !srcloc !45
  %32 = ptrtoint ptr %delay92 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %delay92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool117.not = icmp eq i32 %33, 0
  br i1 %tobool117.not, label %do.body109.do.body133_crit_edge, label %cond.false128

do.body109.do.body133_crit_edge:                  ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body133

cond.false128:                                    ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %34(i32 noundef %33) #5
  br label %do.body133

do.body133:                                       ; preds = %cond.false128, %do.body109.do.body133_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !403
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port, align 4
  %add136 = add i32 %36, 2
  %and137 = and i32 %add136, 1048575
  %add138 = or i32 %and137, -18874368
  %37 = inttoptr i32 %add138 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 13) #5, !srcloc !45
  %38 = ptrtoint ptr %delay92 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %delay92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool141.not = icmp eq i32 %39, 0
  br i1 %tobool141.not, label %do.body133.do.body157_crit_edge, label %cond.false152

do.body133.do.body157_crit_edge:                  ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body157

cond.false152:                                    ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %40(i32 noundef %39) #5
  br label %do.body157

do.body157:                                       ; preds = %cond.false152, %do.body133.do.body157_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !404
  tail call void @arm_heavy_mb() #5
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port, align 4
  %add160 = add i32 %42, 2
  %and161 = and i32 %add160, 1048575
  %add162 = or i32 %and161, -18874368
  %43 = inttoptr i32 %add162 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 5) #5, !srcloc !45
  %44 = ptrtoint ptr %delay92 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %delay92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool165.not = icmp eq i32 %45, 0
  br i1 %tobool165.not, label %do.body157.do.body181_crit_edge, label %cond.false176

do.body157.do.body181_crit_edge:                  ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body181

cond.false176:                                    ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %46(i32 noundef %45) #5
  br label %do.body181

do.body181:                                       ; preds = %cond.false176, %do.body157.do.body181_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !405
  tail call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port, align 4
  %add184 = add i32 %48, 2
  %and185 = and i32 %add184, 1048575
  %add186 = or i32 %and185, -18874368
  %49 = inttoptr i32 %add186 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 13) #5, !srcloc !45
  %50 = ptrtoint ptr %delay92 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %delay92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool189.not = icmp eq i32 %51, 0
  br i1 %tobool189.not, label %do.body181.do.body205_crit_edge, label %cond.false200

do.body181.do.body205_crit_edge:                  ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body205

cond.false200:                                    ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %52(i32 noundef %51) #5
  br label %do.body205

do.body205:                                       ; preds = %cond.false200, %do.body181.do.body205_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !406
  tail call void @arm_heavy_mb() #5
  %53 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port, align 4
  %add208 = add i32 %54, 2
  %and209 = and i32 %add208, 1048575
  %add210 = or i32 %and209, -18874368
  %55 = inttoptr i32 %add210 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 5) #5, !srcloc !45
  %56 = ptrtoint ptr %delay92 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %delay92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool213.not = icmp eq i32 %57, 0
  br i1 %tobool213.not, label %do.body205.do.body229_crit_edge, label %cond.false224

do.body205.do.body229_crit_edge:                  ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body229

cond.false224:                                    ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %58(i32 noundef %57) #5
  br label %do.body229

do.body229:                                       ; preds = %cond.false224, %do.body205.do.body229_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !407
  tail call void @arm_heavy_mb() #5
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port, align 4
  %add232 = add i32 %60, 2
  %and233 = and i32 %add232, 1048575
  %add234 = or i32 %and233, -18874368
  %61 = inttoptr i32 %add234 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 4) #5, !srcloc !45
  %62 = ptrtoint ptr %delay92 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %delay92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool237.not = icmp eq i32 %63, 0
  br i1 %tobool237.not, label %do.body229.do.body253_crit_edge, label %cond.false248

do.body229.do.body253_crit_edge:                  ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body253

cond.false248:                                    ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %64(i32 noundef %63) #5
  br label %do.body253

do.body253:                                       ; preds = %cond.false248, %do.body229.do.body253_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !408
  tail call void @arm_heavy_mb() #5
  %65 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port, align 4
  %and257 = and i32 %66, 1048575
  %add258 = or i32 %and257, -18874368
  %67 = inttoptr i32 %add258 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 4) #5, !srcloc !45
  %68 = ptrtoint ptr %delay92 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %delay92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool261.not = icmp eq i32 %69, 0
  br i1 %tobool261.not, label %do.body253.do.body277_crit_edge, label %cond.false272

do.body253.do.body277_crit_edge:                  ; preds = %do.body253
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body277

cond.false272:                                    ; preds = %do.body253
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %70(i32 noundef %69) #5
  br label %do.body277

do.body277:                                       ; preds = %cond.false272, %do.body253.do.body277_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !409
  tail call void @arm_heavy_mb() #5
  %71 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port, align 4
  %add280 = add i32 %72, 2
  %and281 = and i32 %add280, 1048575
  %add282 = or i32 %and281, -18874368
  %73 = inttoptr i32 %add282 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 5) #5, !srcloc !45
  %74 = ptrtoint ptr %delay92 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %delay92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool285.not = icmp eq i32 %75, 0
  br i1 %tobool285.not, label %do.body277.do.body301_crit_edge, label %cond.false296

do.body277.do.body301_crit_edge:                  ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body301

cond.false296:                                    ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %76(i32 noundef %75) #5
  br label %do.body301

do.body301:                                       ; preds = %cond.false296, %do.body277.do.body301_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !410
  tail call void @arm_heavy_mb() #5
  %77 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %port, align 4
  %add304 = add i32 %78, 2
  %and305 = and i32 %add304, 1048575
  %add306 = or i32 %and305, -18874368
  %79 = inttoptr i32 %add306 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 13) #5, !srcloc !45
  %80 = ptrtoint ptr %delay92 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %delay92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool309.not = icmp eq i32 %81, 0
  br i1 %tobool309.not, label %do.body301.do.body325_crit_edge, label %cond.false320

do.body301.do.body325_crit_edge:                  ; preds = %do.body301
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body325

cond.false320:                                    ; preds = %do.body301
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %82(i32 noundef %81) #5
  br label %do.body325

do.body325:                                       ; preds = %cond.false320, %do.body301.do.body325_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  tail call void @arm_heavy_mb() #5
  %83 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %port, align 4
  %add328 = add i32 %84, 2
  %and329 = and i32 %add328, 1048575
  %add330 = or i32 %and329, -18874368
  %85 = inttoptr i32 %add330 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 5) #5, !srcloc !45
  %86 = ptrtoint ptr %delay92 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %delay92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool333.not = icmp eq i32 %87, 0
  br i1 %tobool333.not, label %do.body325.do.body349_crit_edge, label %cond.false344

do.body325.do.body349_crit_edge:                  ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body349

cond.false344:                                    ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %88(i32 noundef %87) #5
  br label %do.body349

do.body349:                                       ; preds = %cond.false344, %do.body325.do.body349_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !412
  tail call void @arm_heavy_mb() #5
  %89 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %port, align 4
  %add352 = add i32 %90, 2
  %and353 = and i32 %add352, 1048575
  %add354 = or i32 %and353, -18874368
  %91 = inttoptr i32 %add354 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 13) #5, !srcloc !45
  %92 = ptrtoint ptr %delay92 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %delay92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool357.not = icmp eq i32 %93, 0
  br i1 %tobool357.not, label %do.body349.do.body373_crit_edge, label %cond.false368

do.body349.do.body373_crit_edge:                  ; preds = %do.body349
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body373

cond.false368:                                    ; preds = %do.body349
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %94(i32 noundef %93) #5
  br label %do.body373

do.body373:                                       ; preds = %cond.false368, %do.body349.do.body373_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !413
  tail call void @arm_heavy_mb() #5
  %95 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %port, align 4
  %add376 = add i32 %96, 2
  %and377 = and i32 %add376, 1048575
  %add378 = or i32 %and377, -18874368
  %97 = inttoptr i32 %add378 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 5) #5, !srcloc !45
  %98 = ptrtoint ptr %delay92 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %delay92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool381.not = icmp eq i32 %99, 0
  br i1 %tobool381.not, label %do.body373.do.body397_crit_edge, label %cond.false392

do.body373.do.body397_crit_edge:                  ; preds = %do.body373
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body397

cond.false392:                                    ; preds = %do.body373
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %100(i32 noundef %99) #5
  br label %do.body397

do.body397:                                       ; preds = %cond.false392, %do.body373.do.body397_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !414
  tail call void @arm_heavy_mb() #5
  %101 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %port, align 4
  %add400 = add i32 %102, 2
  %and401 = and i32 %add400, 1048575
  %add402 = or i32 %and401, -18874368
  %103 = inttoptr i32 %add402 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %103, i8 4) #5, !srcloc !45
  %104 = ptrtoint ptr %delay92 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %delay92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool405.not = icmp eq i32 %105, 0
  br i1 %tobool405.not, label %do.body397.do.body421_crit_edge, label %do.body397.do.body421.sink.split_crit_edge

do.body397.do.body421.sink.split_crit_edge:       ; preds = %do.body397
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body421.sink.split

do.body397.do.body421_crit_edge:                  ; preds = %do.body397
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body421

do.body421.sink.split:                            ; preds = %do.body397.do.body421.sink.split_crit_edge, %do.body61.do.body421.sink.split_crit_edge
  %.sink = phi i32 [ %24, %do.body61.do.body421.sink.split_crit_edge ], [ %105, %do.body397.do.body421.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %106(i32 noundef %.sink) #5
  br label %do.body421

do.body421:                                       ; preds = %do.body421.sink.split, %do.body397.do.body421_crit_edge, %do.body61.do.body421_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !415
  tail call void @arm_heavy_mb() #5
  %port423 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %107 = ptrtoint ptr %port423 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %port423, align 4
  %and425 = and i32 %108, 1048575
  %add426 = or i32 %and425, -18874368
  %109 = inttoptr i32 %add426 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 -2) #5, !srcloc !45
  %delay428 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %110 = ptrtoint ptr %delay428 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %delay428, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool429.not = icmp eq i32 %111, 0
  br i1 %tobool429.not, label %do.body421.do.body445_crit_edge, label %cond.false440

do.body421.do.body445_crit_edge:                  ; preds = %do.body421
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body445

cond.false440:                                    ; preds = %do.body421
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %112(i32 noundef %111) #5
  br label %do.body445

do.body445:                                       ; preds = %cond.false440, %do.body421.do.body445_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !416
  tail call void @arm_heavy_mb() #5
  %113 = ptrtoint ptr %port423 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %port423, align 4
  %and449 = and i32 %114, 1048575
  %add450 = or i32 %and449, -18874368
  %115 = inttoptr i32 %add450 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %115, i8 -86) #5, !srcloc !45
  %116 = ptrtoint ptr %delay428 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %delay428, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool453.not = icmp eq i32 %117, 0
  br i1 %tobool453.not, label %do.body445.do.body469_crit_edge, label %cond.false464

do.body445.do.body469_crit_edge:                  ; preds = %do.body445
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body469

cond.false464:                                    ; preds = %do.body445
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %118(i32 noundef %117) #5
  br label %do.body469

do.body469:                                       ; preds = %cond.false464, %do.body445.do.body469_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !417
  tail call void @arm_heavy_mb() #5
  %119 = ptrtoint ptr %port423 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %port423, align 4
  %and473 = and i32 %120, 1048575
  %add474 = or i32 %and473, -18874368
  %121 = inttoptr i32 %add474 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %121, i8 85) #5, !srcloc !45
  %122 = ptrtoint ptr %delay428 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %delay428, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool477.not = icmp eq i32 %123, 0
  br i1 %tobool477.not, label %do.body469.do.body493_crit_edge, label %cond.false488

do.body469.do.body493_crit_edge:                  ; preds = %do.body469
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body493

cond.false488:                                    ; preds = %do.body469
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %124(i32 noundef %123) #5
  br label %do.body493

do.body493:                                       ; preds = %cond.false488, %do.body469.do.body493_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !418
  tail call void @arm_heavy_mb() #5
  %125 = ptrtoint ptr %port423 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %port423, align 4
  %and497 = and i32 %126, 1048575
  %add498 = or i32 %and497, -18874368
  %127 = inttoptr i32 %add498 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %127, i8 0) #5, !srcloc !45
  %128 = ptrtoint ptr %delay428 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %delay428, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool501.not = icmp eq i32 %129, 0
  br i1 %tobool501.not, label %do.body493.do.body517_crit_edge, label %cond.false512

do.body493.do.body517_crit_edge:                  ; preds = %do.body493
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body517

cond.false512:                                    ; preds = %do.body493
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %130(i32 noundef %129) #5
  br label %do.body517

do.body517:                                       ; preds = %cond.false512, %do.body493.do.body517_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !419
  tail call void @arm_heavy_mb() #5
  %131 = ptrtoint ptr %port423 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %port423, align 4
  %and521 = and i32 %132, 1048575
  %add522 = or i32 %and521, -18874368
  %133 = inttoptr i32 %add522 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %133, i8 -1) #5, !srcloc !45
  %134 = ptrtoint ptr %delay428 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %delay428, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool525.not = icmp eq i32 %135, 0
  br i1 %tobool525.not, label %do.body517.do.body541_crit_edge, label %cond.false536

do.body517.do.body541_crit_edge:                  ; preds = %do.body517
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body541

cond.false536:                                    ; preds = %do.body517
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %136(i32 noundef %135) #5
  br label %do.body541

do.body541:                                       ; preds = %cond.false536, %do.body517.do.body541_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !420
  tail call void @arm_heavy_mb() #5
  %137 = ptrtoint ptr %port423 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %port423, align 4
  %and545 = and i32 %138, 1048575
  %add546 = or i32 %and545, -18874368
  %139 = inttoptr i32 %add546 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %139, i8 -121) #5, !srcloc !45
  %140 = ptrtoint ptr %delay428 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %delay428, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool549.not = icmp eq i32 %141, 0
  br i1 %tobool549.not, label %do.body541.do.body565_crit_edge, label %cond.false560

do.body541.do.body565_crit_edge:                  ; preds = %do.body541
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body565

cond.false560:                                    ; preds = %do.body541
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %142(i32 noundef %141) #5
  br label %do.body565

do.body565:                                       ; preds = %cond.false560, %do.body541.do.body565_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !421
  tail call void @arm_heavy_mb() #5
  %143 = ptrtoint ptr %port423 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %port423, align 4
  %and569 = and i32 %144, 1048575
  %add570 = or i32 %and569, -18874368
  %145 = inttoptr i32 %add570 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %145, i8 120) #5, !srcloc !45
  %146 = ptrtoint ptr %delay428 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %delay428, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool573.not = icmp eq i32 %147, 0
  br i1 %tobool573.not, label %do.body565.do.body589_crit_edge, label %cond.false584

do.body565.do.body589_crit_edge:                  ; preds = %do.body565
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body589

cond.false584:                                    ; preds = %do.body565
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %148(i32 noundef %147) #5
  br label %do.body589

do.body589:                                       ; preds = %cond.false584, %do.body565.do.body589_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !422
  tail call void @arm_heavy_mb() #5
  %149 = ptrtoint ptr %port423 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %port423, align 4
  %and593 = and i32 %150, 1048575
  %add594 = or i32 %and593, -18874368
  %151 = inttoptr i32 %add594 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %151, i8 48) #5, !srcloc !45
  %152 = ptrtoint ptr %delay428 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %delay428, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool597.not = icmp eq i32 %153, 0
  br i1 %tobool597.not, label %do.body589.do.body613_crit_edge, label %cond.false608

do.body589.do.body613_crit_edge:                  ; preds = %do.body589
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body613

cond.false608:                                    ; preds = %do.body589
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %154(i32 noundef %153) #5
  br label %do.body613

do.body613:                                       ; preds = %cond.false608, %do.body589.do.body613_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !423
  tail call void @arm_heavy_mb() #5
  %155 = ptrtoint ptr %port423 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %port423, align 4
  %add616 = add i32 %156, 2
  %and617 = and i32 %add616, 1048575
  %add618 = or i32 %and617, -18874368
  %157 = inttoptr i32 %add618 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %157, i8 4) #5, !srcloc !45
  %158 = ptrtoint ptr %delay428 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %delay428, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool621.not = icmp eq i32 %159, 0
  br i1 %tobool621.not, label %do.body613.do.body637_crit_edge, label %cond.false632

do.body613.do.body637_crit_edge:                  ; preds = %do.body613
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body637

cond.false632:                                    ; preds = %do.body613
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %160 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %160(i32 noundef %159) #5
  br label %do.body637

do.body637:                                       ; preds = %cond.false632, %do.body613.do.body637_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  tail call void @arm_heavy_mb() #5
  %161 = ptrtoint ptr %port423 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %port423, align 4
  %add640 = add i32 %162, 2
  %and641 = and i32 %add640, 1048575
  %add642 = or i32 %and641, -18874368
  %163 = inttoptr i32 %add642 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %163, i8 5) #5, !srcloc !45
  %164 = ptrtoint ptr %delay428 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %delay428, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool645.not = icmp eq i32 %165, 0
  br i1 %tobool645.not, label %do.body637.do.body661_crit_edge, label %cond.false656

do.body637.do.body661_crit_edge:                  ; preds = %do.body637
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body661

cond.false656:                                    ; preds = %do.body637
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %166(i32 noundef %165) #5
  br label %do.body661

do.body661:                                       ; preds = %cond.false656, %do.body637.do.body661_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %167 = ptrtoint ptr %port423 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %port423, align 4
  %add664 = add i32 %168, 2
  %and665 = and i32 %add664, 1048575
  %add666 = or i32 %and665, -18874368
  %169 = inttoptr i32 %add666 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %169, i8 4) #5, !srcloc !45
  %170 = ptrtoint ptr %delay428 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %delay428, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool669.not = icmp eq i32 %171, 0
  br i1 %tobool669.not, label %do.body661.do.body685_crit_edge, label %cond.false680

do.body661.do.body685_crit_edge:                  ; preds = %do.body661
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body685

cond.false680:                                    ; preds = %do.body661
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %172 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %172(i32 noundef %171) #5
  br label %do.body685

do.body685:                                       ; preds = %cond.false680, %do.body661.do.body685_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !426
  tail call void @arm_heavy_mb() #5
  %173 = ptrtoint ptr %port423 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %port423, align 4
  %and689 = and i32 %174, 1048575
  %add690 = or i32 %and689, -18874368
  %175 = inttoptr i32 %add690 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %175, i8 -1) #5, !srcloc !45
  %176 = ptrtoint ptr %delay428 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %delay428, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool693.not = icmp eq i32 %177, 0
  br i1 %tobool693.not, label %do.body685.do.body709_crit_edge, label %cond.false704

do.body685.do.body709_crit_edge:                  ; preds = %do.body685
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body709

cond.false704:                                    ; preds = %do.body685
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %178 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %178(i32 noundef %177) #5
  br label %do.body709

do.body709:                                       ; preds = %cond.false704, %do.body685.do.body709_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !427
  tail call void @arm_heavy_mb() #5
  %saved_r0 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 7
  %179 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %saved_r0, align 4
  %conv = trunc i32 %180 to i8
  %181 = ptrtoint ptr %port423 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %port423, align 4
  %and713 = and i32 %182, 1048575
  %add714 = or i32 %and713, -18874368
  %183 = inttoptr i32 %add714 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %183, i8 %conv) #5, !srcloc !45
  %184 = ptrtoint ptr %delay428 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %delay428, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool717.not = icmp eq i32 %185, 0
  br i1 %tobool717.not, label %do.body709.do.body734_crit_edge, label %cond.false729

do.body709.do.body734_crit_edge:                  ; preds = %do.body709
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body734

cond.false729:                                    ; preds = %do.body709
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %186 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %186(i32 noundef %185) #5
  br label %do.body734

do.body734:                                       ; preds = %cond.false729, %do.body709.do.body734_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !428
  tail call void @arm_heavy_mb() #5
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %187 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %saved_r2, align 4
  %conv736 = trunc i32 %188 to i8
  %189 = ptrtoint ptr %port423 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %port423, align 4
  %add738 = add i32 %190, 2
  %and739 = and i32 %add738, 1048575
  %add740 = or i32 %and739, -18874368
  %191 = inttoptr i32 %add740 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %191, i8 %conv736) #5, !srcloc !45
  %192 = ptrtoint ptr %delay428 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %delay428, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool743.not = icmp eq i32 %193, 0
  br i1 %tobool743.not, label %do.body734.cond.end759_crit_edge, label %cond.false755

do.body734.cond.end759_crit_edge:                 ; preds = %do.body734
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end759

cond.false755:                                    ; preds = %do.body734
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %194 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %194(i32 noundef %193) #5
  br label %cond.end759

cond.end759:                                      ; preds = %cond.false755, %do.body734.cond.end759_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @on26_test_port(ptr noundef %pi) #2 align 64 {
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
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !429
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
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !430
  %conv40 = zext i8 %14 to i32
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %15 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv40, ptr %saved_r2, align 4
  %16 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %delay, align 4
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode, align 4
  store i32 5, ptr %delay, align 4
  store i32 0, ptr %mode, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !431
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %add46 = add i32 %21, 2
  %and47 = and i32 %add46, 1048575
  %add48 = or i32 %and47, -18874368
  %22 = inttoptr i32 %add48 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 12) #5, !srcloc !45
  %23 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool51.not = icmp eq i32 %24, 0
  br i1 %tobool51.not, label %cond.end31.do.body68_crit_edge, label %cond.false63

cond.end31.do.body68_crit_edge:                   ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body68

cond.false63:                                     ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %25(i32 noundef %24) #5
  br label %do.body68

do.body68:                                        ; preds = %cond.false63, %cond.end31.do.body68_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !432
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %and73 = and i32 %27, 1048575
  %add74 = or i32 %and73, -18874368
  %28 = inttoptr i32 %add74 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 -2) #5, !srcloc !45
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool77.not = icmp eq i32 %30, 0
  br i1 %tobool77.not, label %do.body68.do.body94_crit_edge, label %cond.false89

do.body68.do.body94_crit_edge:                    ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body94

cond.false89:                                     ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #5
  br label %do.body94

do.body94:                                        ; preds = %cond.false89, %do.body68.do.body94_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !433
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %and99 = and i32 %33, 1048575
  %add100 = or i32 %and99, -18874368
  %34 = inttoptr i32 %add100 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 -86) #5, !srcloc !45
  %35 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool103.not = icmp eq i32 %36, 0
  br i1 %tobool103.not, label %do.body94.do.body120_crit_edge, label %cond.false115

do.body94.do.body120_crit_edge:                   ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body120

cond.false115:                                    ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %37(i32 noundef %36) #5
  br label %do.body120

do.body120:                                       ; preds = %cond.false115, %do.body94.do.body120_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !434
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port, align 4
  %and125 = and i32 %39, 1048575
  %add126 = or i32 %and125, -18874368
  %40 = inttoptr i32 %add126 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 85) #5, !srcloc !45
  %41 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool129.not = icmp eq i32 %42, 0
  br i1 %tobool129.not, label %do.body120.do.body146_crit_edge, label %cond.false141

do.body120.do.body146_crit_edge:                  ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body146

cond.false141:                                    ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %43(i32 noundef %42) #5
  br label %do.body146

do.body146:                                       ; preds = %cond.false141, %do.body120.do.body146_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !435
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port, align 4
  %and151 = and i32 %45, 1048575
  %add152 = or i32 %and151, -18874368
  %46 = inttoptr i32 %add152 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 0) #5, !srcloc !45
  %47 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool155.not = icmp eq i32 %48, 0
  br i1 %tobool155.not, label %do.body146.do.body172_crit_edge, label %cond.false167

do.body146.do.body172_crit_edge:                  ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body172

cond.false167:                                    ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %49(i32 noundef %48) #5
  br label %do.body172

do.body172:                                       ; preds = %cond.false167, %do.body146.do.body172_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !436
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port, align 4
  %and177 = and i32 %51, 1048575
  %add178 = or i32 %and177, -18874368
  %52 = inttoptr i32 %add178 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 -1) #5, !srcloc !45
  %53 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool181.not = icmp eq i32 %54, 0
  br i1 %tobool181.not, label %do.body172.do.body198_crit_edge, label %cond.false193

do.body172.do.body198_crit_edge:                  ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body198

cond.false193:                                    ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %55(i32 noundef %54) #5
  br label %do.body198

do.body198:                                       ; preds = %cond.false193, %do.body172.do.body198_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !437
  tail call void @arm_heavy_mb() #5
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port, align 4
  %and203 = and i32 %57, 1048575
  %add204 = or i32 %and203, -18874368
  %58 = inttoptr i32 %add204 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 -121) #5, !srcloc !45
  %59 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool207.not = icmp eq i32 %60, 0
  br i1 %tobool207.not, label %do.body198.do.body224_crit_edge, label %cond.false219

do.body198.do.body224_crit_edge:                  ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body224

cond.false219:                                    ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %61(i32 noundef %60) #5
  br label %do.body224

do.body224:                                       ; preds = %cond.false219, %do.body198.do.body224_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !438
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port, align 4
  %and229 = and i32 %63, 1048575
  %add230 = or i32 %and229, -18874368
  %64 = inttoptr i32 %add230 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 120) #5, !srcloc !45
  %65 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool233.not = icmp eq i32 %66, 0
  br i1 %tobool233.not, label %do.body224.do.body250_crit_edge, label %cond.false245

do.body224.do.body250_crit_edge:                  ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body250

cond.false245:                                    ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %67(i32 noundef %66) #5
  br label %do.body250

do.body250:                                       ; preds = %cond.false245, %do.body224.do.body250_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !439
  tail call void @arm_heavy_mb() #5
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %and255 = and i32 %69, 1048575
  %add256 = or i32 %and255, -18874368
  %70 = inttoptr i32 %add256 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 48) #5, !srcloc !45
  %71 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool259.not = icmp eq i32 %72, 0
  br i1 %tobool259.not, label %do.body250.do.body276_crit_edge, label %cond.false271

do.body250.do.body276_crit_edge:                  ; preds = %do.body250
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body276

cond.false271:                                    ; preds = %do.body250
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %73(i32 noundef %72) #5
  br label %do.body276

do.body276:                                       ; preds = %cond.false271, %do.body250.do.body276_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !440
  tail call void @arm_heavy_mb() #5
  %74 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port, align 4
  %add280 = add i32 %75, 2
  %and281 = and i32 %add280, 1048575
  %add282 = or i32 %and281, -18874368
  %76 = inttoptr i32 %add282 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %76, i8 4) #5, !srcloc !45
  %77 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool285.not = icmp eq i32 %78, 0
  br i1 %tobool285.not, label %do.body276.do.body302_crit_edge, label %cond.false297

do.body276.do.body302_crit_edge:                  ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body302

cond.false297:                                    ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %79(i32 noundef %78) #5
  br label %do.body302

do.body302:                                       ; preds = %cond.false297, %do.body276.do.body302_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !441
  tail call void @arm_heavy_mb() #5
  %80 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port, align 4
  %add306 = add i32 %81, 2
  %and307 = and i32 %add306, 1048575
  %add308 = or i32 %and307, -18874368
  %82 = inttoptr i32 %add308 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 5) #5, !srcloc !45
  %83 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool311.not = icmp eq i32 %84, 0
  br i1 %tobool311.not, label %do.body302.do.body328_crit_edge, label %cond.false323

do.body302.do.body328_crit_edge:                  ; preds = %do.body302
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body328

cond.false323:                                    ; preds = %do.body302
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %85(i32 noundef %84) #5
  br label %do.body328

do.body328:                                       ; preds = %cond.false323, %do.body302.do.body328_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !442
  tail call void @arm_heavy_mb() #5
  %86 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %port, align 4
  %add332 = add i32 %87, 2
  %and333 = and i32 %add332, 1048575
  %add334 = or i32 %and333, -18874368
  %88 = inttoptr i32 %add334 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 4) #5, !srcloc !45
  %89 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool337.not = icmp eq i32 %90, 0
  br i1 %tobool337.not, label %do.body328.do.body354_crit_edge, label %cond.false349

do.body328.do.body354_crit_edge:                  ; preds = %do.body328
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body354

cond.false349:                                    ; preds = %do.body328
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %91(i32 noundef %90) #5
  br label %do.body354

do.body354:                                       ; preds = %cond.false349, %do.body328.do.body354_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !443
  tail call void @arm_heavy_mb() #5
  %92 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %port, align 4
  %and359 = and i32 %93, 1048575
  %add360 = or i32 %and359, -18874368
  %94 = inttoptr i32 %add360 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 -1) #5, !srcloc !45
  %95 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool363.not = icmp eq i32 %96, 0
  br i1 %tobool363.not, label %do.body354.do.body380_crit_edge, label %cond.false375

do.body354.do.body380_crit_edge:                  ; preds = %do.body354
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body380

cond.false375:                                    ; preds = %do.body354
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %97(i32 noundef %96) #5
  br label %do.body380

do.body380:                                       ; preds = %cond.false375, %do.body354.do.body380_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !444
  tail call void @arm_heavy_mb() #5
  %98 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %port, align 4
  %and385 = and i32 %99, 1048575
  %add386 = or i32 %and385, -18874368
  %100 = inttoptr i32 %add386 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %100, i8 -2) #5, !srcloc !45
  %101 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool389.not = icmp eq i32 %102, 0
  br i1 %tobool389.not, label %do.body380.do.body406_crit_edge, label %cond.false401

do.body380.do.body406_crit_edge:                  ; preds = %do.body380
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body406

cond.false401:                                    ; preds = %do.body380
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %103(i32 noundef %102) #5
  br label %do.body406

do.body406:                                       ; preds = %cond.false401, %do.body380.do.body406_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !445
  tail call void @arm_heavy_mb() #5
  %104 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %port, align 4
  %and411 = and i32 %105, 1048575
  %add412 = or i32 %and411, -18874368
  %106 = inttoptr i32 %add412 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %106, i8 -86) #5, !srcloc !45
  %107 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool415.not = icmp eq i32 %108, 0
  br i1 %tobool415.not, label %do.body406.do.body432_crit_edge, label %cond.false427

do.body406.do.body432_crit_edge:                  ; preds = %do.body406
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body432

cond.false427:                                    ; preds = %do.body406
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %109(i32 noundef %108) #5
  br label %do.body432

do.body432:                                       ; preds = %cond.false427, %do.body406.do.body432_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !446
  tail call void @arm_heavy_mb() #5
  %110 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %port, align 4
  %and437 = and i32 %111, 1048575
  %add438 = or i32 %and437, -18874368
  %112 = inttoptr i32 %add438 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %112, i8 85) #5, !srcloc !45
  %113 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool441.not = icmp eq i32 %114, 0
  br i1 %tobool441.not, label %do.body432.do.body458_crit_edge, label %cond.false453

do.body432.do.body458_crit_edge:                  ; preds = %do.body432
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body458

cond.false453:                                    ; preds = %do.body432
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %115(i32 noundef %114) #5
  br label %do.body458

do.body458:                                       ; preds = %cond.false453, %do.body432.do.body458_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !447
  tail call void @arm_heavy_mb() #5
  %116 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %port, align 4
  %and463 = and i32 %117, 1048575
  %add464 = or i32 %and463, -18874368
  %118 = inttoptr i32 %add464 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %118, i8 0) #5, !srcloc !45
  %119 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool467.not = icmp eq i32 %120, 0
  br i1 %tobool467.not, label %do.body458.do.body484_crit_edge, label %cond.false479

do.body458.do.body484_crit_edge:                  ; preds = %do.body458
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body484

cond.false479:                                    ; preds = %do.body458
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %121(i32 noundef %120) #5
  br label %do.body484

do.body484:                                       ; preds = %cond.false479, %do.body458.do.body484_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !448
  tail call void @arm_heavy_mb() #5
  %122 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %port, align 4
  %and489 = and i32 %123, 1048575
  %add490 = or i32 %and489, -18874368
  %124 = inttoptr i32 %add490 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %124, i8 -1) #5, !srcloc !45
  %125 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool493.not = icmp eq i32 %126, 0
  br i1 %tobool493.not, label %do.body484.do.body510_crit_edge, label %cond.false505

do.body484.do.body510_crit_edge:                  ; preds = %do.body484
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body510

cond.false505:                                    ; preds = %do.body484
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %127(i32 noundef %126) #5
  br label %do.body510

do.body510:                                       ; preds = %cond.false505, %do.body484.do.body510_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !449
  tail call void @arm_heavy_mb() #5
  %128 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %port, align 4
  %and515 = and i32 %129, 1048575
  %add516 = or i32 %and515, -18874368
  %130 = inttoptr i32 %add516 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %130, i8 -121) #5, !srcloc !45
  %131 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool519.not = icmp eq i32 %132, 0
  br i1 %tobool519.not, label %do.body510.do.body536_crit_edge, label %cond.false531

do.body510.do.body536_crit_edge:                  ; preds = %do.body510
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body536

cond.false531:                                    ; preds = %do.body510
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %133(i32 noundef %132) #5
  br label %do.body536

do.body536:                                       ; preds = %cond.false531, %do.body510.do.body536_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !450
  tail call void @arm_heavy_mb() #5
  %134 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %port, align 4
  %and541 = and i32 %135, 1048575
  %add542 = or i32 %and541, -18874368
  %136 = inttoptr i32 %add542 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %136, i8 120) #5, !srcloc !45
  %137 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool545.not = icmp eq i32 %138, 0
  br i1 %tobool545.not, label %do.body536.do.body562_crit_edge, label %cond.false557

do.body536.do.body562_crit_edge:                  ; preds = %do.body536
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body562

cond.false557:                                    ; preds = %do.body536
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %139(i32 noundef %138) #5
  br label %do.body562

do.body562:                                       ; preds = %cond.false557, %do.body536.do.body562_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !451
  tail call void @arm_heavy_mb() #5
  %140 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %port, align 4
  %and567 = and i32 %141, 1048575
  %add568 = or i32 %and567, -18874368
  %142 = inttoptr i32 %add568 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %142, i8 0) #5, !srcloc !45
  %143 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool571.not = icmp eq i32 %144, 0
  br i1 %tobool571.not, label %do.body562.do.body588_crit_edge, label %cond.false583

do.body562.do.body588_crit_edge:                  ; preds = %do.body562
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body588

cond.false583:                                    ; preds = %do.body562
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %145(i32 noundef %144) #5
  br label %do.body588

do.body588:                                       ; preds = %cond.false583, %do.body562.do.body588_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !452
  tail call void @arm_heavy_mb() #5
  %146 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %port, align 4
  %add592 = add i32 %147, 2
  %and593 = and i32 %add592, 1048575
  %add594 = or i32 %and593, -18874368
  %148 = inttoptr i32 %add594 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %148, i8 4) #5, !srcloc !45
  %149 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool597.not = icmp eq i32 %150, 0
  br i1 %tobool597.not, label %do.body588.do.body614_crit_edge, label %cond.false609

do.body588.do.body614_crit_edge:                  ; preds = %do.body588
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body614

cond.false609:                                    ; preds = %do.body588
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %151(i32 noundef %150) #5
  br label %do.body614

do.body614:                                       ; preds = %cond.false609, %do.body588.do.body614_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !453
  tail call void @arm_heavy_mb() #5
  %152 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %port, align 4
  %add618 = add i32 %153, 2
  %and619 = and i32 %add618, 1048575
  %add620 = or i32 %and619, -18874368
  %154 = inttoptr i32 %add620 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %154, i8 5) #5, !srcloc !45
  %155 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool623.not = icmp eq i32 %156, 0
  br i1 %tobool623.not, label %do.body614.do.body640_crit_edge, label %cond.false635

do.body614.do.body640_crit_edge:                  ; preds = %do.body614
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body640

cond.false635:                                    ; preds = %do.body614
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %157(i32 noundef %156) #5
  br label %do.body640

do.body640:                                       ; preds = %cond.false635, %do.body614.do.body640_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !454
  tail call void @arm_heavy_mb() #5
  %158 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %port, align 4
  %add644 = add i32 %159, 2
  %and645 = and i32 %add644, 1048575
  %add646 = or i32 %and645, -18874368
  %160 = inttoptr i32 %add646 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %160, i8 4) #5, !srcloc !45
  %161 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool649.not = icmp eq i32 %162, 0
  br i1 %tobool649.not, label %do.body640.do.body666_crit_edge, label %cond.false661

do.body640.do.body666_crit_edge:                  ; preds = %do.body640
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body666

cond.false661:                                    ; preds = %do.body640
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %163 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %163(i32 noundef %162) #5
  br label %do.body666

do.body666:                                       ; preds = %cond.false661, %do.body640.do.body666_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !455
  tail call void @arm_heavy_mb() #5
  %164 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %port, align 4
  %and671 = and i32 %165, 1048575
  %add672 = or i32 %and671, -18874368
  %166 = inttoptr i32 %add672 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %166, i8 -1) #5, !srcloc !45
  %167 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool675.not = icmp eq i32 %168, 0
  br i1 %tobool675.not, label %do.body666.do.body692_crit_edge, label %cond.false687

do.body666.do.body692_crit_edge:                  ; preds = %do.body666
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body692

cond.false687:                                    ; preds = %do.body666
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %169 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %169(i32 noundef %168) #5
  br label %do.body692

do.body692:                                       ; preds = %cond.false687, %do.body666.do.body692_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !456
  tail call void @arm_heavy_mb() #5
  %170 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %port, align 4
  %and697 = and i32 %171, 1048575
  %add698 = or i32 %and697, -18874368
  %172 = inttoptr i32 %add698 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %172, i8 -2) #5, !srcloc !45
  %173 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool701.not = icmp eq i32 %174, 0
  br i1 %tobool701.not, label %do.body692.do.body718_crit_edge, label %cond.false713

do.body692.do.body718_crit_edge:                  ; preds = %do.body692
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body718

cond.false713:                                    ; preds = %do.body692
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %175 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %175(i32 noundef %174) #5
  br label %do.body718

do.body718:                                       ; preds = %cond.false713, %do.body692.do.body718_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !457
  tail call void @arm_heavy_mb() #5
  %176 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %port, align 4
  %and723 = and i32 %177, 1048575
  %add724 = or i32 %and723, -18874368
  %178 = inttoptr i32 %add724 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %178, i8 -86) #5, !srcloc !45
  %179 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool727.not = icmp eq i32 %180, 0
  br i1 %tobool727.not, label %do.body718.do.body744_crit_edge, label %cond.false739

do.body718.do.body744_crit_edge:                  ; preds = %do.body718
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body744

cond.false739:                                    ; preds = %do.body718
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %181 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %181(i32 noundef %180) #5
  br label %do.body744

do.body744:                                       ; preds = %cond.false739, %do.body718.do.body744_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !458
  tail call void @arm_heavy_mb() #5
  %182 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %port, align 4
  %and749 = and i32 %183, 1048575
  %add750 = or i32 %and749, -18874368
  %184 = inttoptr i32 %add750 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %184, i8 85) #5, !srcloc !45
  %185 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool753.not = icmp eq i32 %186, 0
  br i1 %tobool753.not, label %do.body744.do.body770_crit_edge, label %cond.false765

do.body744.do.body770_crit_edge:                  ; preds = %do.body744
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body770

cond.false765:                                    ; preds = %do.body744
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %187 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %187(i32 noundef %186) #5
  br label %do.body770

do.body770:                                       ; preds = %cond.false765, %do.body744.do.body770_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !459
  tail call void @arm_heavy_mb() #5
  %188 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %port, align 4
  %and775 = and i32 %189, 1048575
  %add776 = or i32 %and775, -18874368
  %190 = inttoptr i32 %add776 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %190, i8 0) #5, !srcloc !45
  %191 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool779.not = icmp eq i32 %192, 0
  br i1 %tobool779.not, label %do.body770.do.body796_crit_edge, label %cond.false791

do.body770.do.body796_crit_edge:                  ; preds = %do.body770
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body796

cond.false791:                                    ; preds = %do.body770
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %193 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %193(i32 noundef %192) #5
  br label %do.body796

do.body796:                                       ; preds = %cond.false791, %do.body770.do.body796_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !460
  tail call void @arm_heavy_mb() #5
  %194 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %port, align 4
  %and801 = and i32 %195, 1048575
  %add802 = or i32 %and801, -18874368
  %196 = inttoptr i32 %add802 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %196, i8 -1) #5, !srcloc !45
  %197 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool805.not = icmp eq i32 %198, 0
  br i1 %tobool805.not, label %do.body796.cond.end839_crit_edge, label %cond.false817

do.body796.cond.end839_crit_edge:                 ; preds = %do.body796
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end839

cond.false817:                                    ; preds = %do.body796
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %199 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %199(i32 noundef %198) #5
  %200 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %200)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool823.not = icmp eq i32 %.pr, 0
  br i1 %tobool823.not, label %cond.false817.cond.end839_crit_edge, label %cond.false835

cond.false817.cond.end839_crit_edge:              ; preds = %cond.false817
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end839

cond.false835:                                    ; preds = %cond.false817
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %201 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %201(i32 noundef %.pr) #5
  br label %cond.end839

cond.end839:                                      ; preds = %cond.false835, %cond.false817.cond.end839_crit_edge, %do.body796.cond.end839_crit_edge
  %202 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %port, align 4
  %add842 = add i32 %203, 1
  %and843 = and i32 %add842, 1048575
  %add844 = or i32 %and843, -18874368
  %204 = inttoptr i32 %add844 to ptr
  %205 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %204) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !461
  %206 = and i8 %205, -16
  %and850 = zext i8 %206 to i32
  %shl = shl nuw nsw i32 %and850, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !462
  tail call void @arm_heavy_mb() #5
  %207 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %port, align 4
  %and856 = and i32 %208, 1048575
  %add857 = or i32 %and856, -18874368
  %209 = inttoptr i32 %add857 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %209, i8 -121) #5, !srcloc !45
  %210 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool860.not = icmp eq i32 %211, 0
  br i1 %tobool860.not, label %cond.end839.cond.end894_crit_edge, label %cond.false872

cond.end839.cond.end894_crit_edge:                ; preds = %cond.end839
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end894

cond.false872:                                    ; preds = %cond.end839
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %212 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %212(i32 noundef %211) #5
  %213 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %213)
  %.pr4339 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr4339)
  %tobool878.not = icmp eq i32 %.pr4339, 0
  br i1 %tobool878.not, label %cond.false872.cond.end894_crit_edge, label %cond.false890

cond.false872.cond.end894_crit_edge:              ; preds = %cond.false872
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end894

cond.false890:                                    ; preds = %cond.false872
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %214 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %214(i32 noundef %.pr4339) #5
  br label %cond.end894

cond.end894:                                      ; preds = %cond.false890, %cond.false872.cond.end894_crit_edge, %cond.end839.cond.end894_crit_edge
  %215 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %port, align 4
  %add897 = add i32 %216, 1
  %and898 = and i32 %add897, 1048575
  %add899 = or i32 %and898, -18874368
  %217 = inttoptr i32 %add899 to ptr
  %218 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %217) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !463
  %219 = and i8 %218, -16
  %and905 = zext i8 %219 to i32
  %or = or i32 %shl, %and905
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !464
  tail call void @arm_heavy_mb() #5
  %220 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %port, align 4
  %and911 = and i32 %221, 1048575
  %add912 = or i32 %and911, -18874368
  %222 = inttoptr i32 %add912 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %222, i8 120) #5, !srcloc !45
  %223 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool915.not = icmp eq i32 %224, 0
  br i1 %tobool915.not, label %cond.end894.do.body932_crit_edge, label %cond.false927

cond.end894.do.body932_crit_edge:                 ; preds = %cond.end894
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body932

cond.false927:                                    ; preds = %cond.end894
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %225 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %225(i32 noundef %224) #5
  br label %do.body932

do.body932:                                       ; preds = %cond.false927, %cond.end894.do.body932_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !465
  tail call void @arm_heavy_mb() #5
  %226 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %port, align 4
  %and937 = and i32 %227, 1048575
  %add938 = or i32 %and937, -18874368
  %228 = inttoptr i32 %add938 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %228, i8 32) #5, !srcloc !45
  %229 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool941.not = icmp eq i32 %230, 0
  br i1 %tobool941.not, label %do.body932.do.body958_crit_edge, label %cond.false953

do.body932.do.body958_crit_edge:                  ; preds = %do.body932
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body958

cond.false953:                                    ; preds = %do.body932
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %231 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %231(i32 noundef %230) #5
  br label %do.body958

do.body958:                                       ; preds = %cond.false953, %do.body932.do.body958_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !466
  tail call void @arm_heavy_mb() #5
  %232 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %port, align 4
  %add962 = add i32 %233, 2
  %and963 = and i32 %add962, 1048575
  %add964 = or i32 %and963, -18874368
  %234 = inttoptr i32 %add964 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %234, i8 4) #5, !srcloc !45
  %235 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool967.not = icmp eq i32 %236, 0
  br i1 %tobool967.not, label %do.body958.do.body984_crit_edge, label %cond.false979

do.body958.do.body984_crit_edge:                  ; preds = %do.body958
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body984

cond.false979:                                    ; preds = %do.body958
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %237 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %237(i32 noundef %236) #5
  br label %do.body984

do.body984:                                       ; preds = %cond.false979, %do.body958.do.body984_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !467
  tail call void @arm_heavy_mb() #5
  %238 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %port, align 4
  %add988 = add i32 %239, 2
  %and989 = and i32 %add988, 1048575
  %add990 = or i32 %and989, -18874368
  %240 = inttoptr i32 %add990 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %240, i8 5) #5, !srcloc !45
  %241 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool993.not = icmp eq i32 %242, 0
  br i1 %tobool993.not, label %do.body984.cond.end1027_crit_edge, label %cond.false1005

do.body984.cond.end1027_crit_edge:                ; preds = %do.body984
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1027

cond.false1005:                                   ; preds = %do.body984
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %243 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %243(i32 noundef %242) #5
  %244 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %244)
  %.pr4341 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr4341)
  %tobool1011.not = icmp eq i32 %.pr4341, 0
  br i1 %tobool1011.not, label %cond.false1005.cond.end1027_crit_edge, label %cond.false1023

cond.false1005.cond.end1027_crit_edge:            ; preds = %cond.false1005
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1027

cond.false1023:                                   ; preds = %cond.false1005
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %245 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %245(i32 noundef %.pr4341) #5
  br label %cond.end1027

cond.end1027:                                     ; preds = %cond.false1023, %cond.false1005.cond.end1027_crit_edge, %do.body984.cond.end1027_crit_edge
  %246 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %port, align 4
  %add1030 = add i32 %247, 1
  %and1031 = and i32 %add1030, 1048575
  %add1032 = or i32 %and1031, -18874368
  %248 = inttoptr i32 %add1032 to ptr
  %249 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %248) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !468
  %250 = lshr i8 %249, 4
  %251 = zext i8 %250 to i32
  %or1039 = or i32 %or, %251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !469
  tail call void @arm_heavy_mb() #5
  %252 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %port, align 4
  %add1044 = add i32 %253, 2
  %and1045 = and i32 %add1044, 1048575
  %add1046 = or i32 %and1045, -18874368
  %254 = inttoptr i32 %add1046 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %254, i8 4) #5, !srcloc !45
  %255 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool1049.not = icmp eq i32 %256, 0
  br i1 %tobool1049.not, label %cond.end1027.do.body1066_crit_edge, label %cond.false1061

cond.end1027.do.body1066_crit_edge:               ; preds = %cond.end1027
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1066

cond.false1061:                                   ; preds = %cond.end1027
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %257 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %257(i32 noundef %256) #5
  br label %do.body1066

do.body1066:                                      ; preds = %cond.false1061, %cond.end1027.do.body1066_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !470
  tail call void @arm_heavy_mb() #5
  %258 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %port, align 4
  %and1071 = and i32 %259, 1048575
  %add1072 = or i32 %and1071, -18874368
  %260 = inttoptr i32 %add1072 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %260, i8 -1) #5, !srcloc !45
  %261 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %tobool1075.not = icmp eq i32 %262, 0
  br i1 %tobool1075.not, label %do.body1066.cond.end1091_crit_edge, label %cond.false1087

do.body1066.cond.end1091_crit_edge:               ; preds = %do.body1066
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1091

cond.false1087:                                   ; preds = %do.body1066
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %263 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %263(i32 noundef %262) #5
  br label %cond.end1091

cond.end1091:                                     ; preds = %cond.false1087, %do.body1066.cond.end1091_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2911, i32 %or1039)
  %cmp1092 = icmp eq i32 %or1039, 2911
  br i1 %cmp1092, label %do.body1094, label %cond.end1091.do.body3038_crit_edge

cond.end1091.do.body3038_crit_edge:               ; preds = %cond.end1091
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3038

do.body1094:                                      ; preds = %cond.end1091
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !471
  tail call void @arm_heavy_mb() #5
  %264 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %port, align 4
  %and1099 = and i32 %265, 1048575
  %add1100 = or i32 %and1099, -18874368
  %266 = inttoptr i32 %add1100 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %266, i8 2) #5, !srcloc !45
  %267 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %tobool1103.not = icmp eq i32 %268, 0
  br i1 %tobool1103.not, label %do.body1094.do.body1120_crit_edge, label %cond.false1115

do.body1094.do.body1120_crit_edge:                ; preds = %do.body1094
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1120

cond.false1115:                                   ; preds = %do.body1094
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %269 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %269(i32 noundef %268) #5
  br label %do.body1120

do.body1120:                                      ; preds = %cond.false1115, %do.body1094.do.body1120_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !472
  tail call void @arm_heavy_mb() #5
  %270 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %port, align 4
  %add1124 = add i32 %271, 2
  %and1125 = and i32 %add1124, 1048575
  %add1126 = or i32 %and1125, -18874368
  %272 = inttoptr i32 %add1126 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %272, i8 5) #5, !srcloc !45
  %273 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %tobool1129.not = icmp eq i32 %274, 0
  br i1 %tobool1129.not, label %do.body1120.do.body1146_crit_edge, label %cond.false1141

do.body1120.do.body1146_crit_edge:                ; preds = %do.body1120
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1146

cond.false1141:                                   ; preds = %do.body1120
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %275 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %275(i32 noundef %274) #5
  br label %do.body1146

do.body1146:                                      ; preds = %cond.false1141, %do.body1120.do.body1146_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !473
  tail call void @arm_heavy_mb() #5
  %276 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %port, align 4
  %add1150 = add i32 %277, 2
  %and1151 = and i32 %add1150, 1048575
  %add1152 = or i32 %and1151, -18874368
  %278 = inttoptr i32 %add1152 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %278, i8 13) #5, !srcloc !45
  %279 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %tobool1155.not = icmp eq i32 %280, 0
  br i1 %tobool1155.not, label %do.body1146.do.body1172_crit_edge, label %cond.false1167

do.body1146.do.body1172_crit_edge:                ; preds = %do.body1146
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1172

cond.false1167:                                   ; preds = %do.body1146
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %281 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %281(i32 noundef %280) #5
  br label %do.body1172

do.body1172:                                      ; preds = %cond.false1167, %do.body1146.do.body1172_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !474
  tail call void @arm_heavy_mb() #5
  %282 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %port, align 4
  %add1176 = add i32 %283, 2
  %and1177 = and i32 %add1176, 1048575
  %add1178 = or i32 %and1177, -18874368
  %284 = inttoptr i32 %add1178 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %284, i8 5) #5, !srcloc !45
  %285 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %286)
  %tobool1181.not = icmp eq i32 %286, 0
  br i1 %tobool1181.not, label %do.body1172.do.body1198_crit_edge, label %cond.false1193

do.body1172.do.body1198_crit_edge:                ; preds = %do.body1172
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1198

cond.false1193:                                   ; preds = %do.body1172
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %287 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %287(i32 noundef %286) #5
  br label %do.body1198

do.body1198:                                      ; preds = %cond.false1193, %do.body1172.do.body1198_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !475
  tail call void @arm_heavy_mb() #5
  %288 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %port, align 4
  %add1202 = add i32 %289, 2
  %and1203 = and i32 %add1202, 1048575
  %add1204 = or i32 %and1203, -18874368
  %290 = inttoptr i32 %add1204 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %290, i8 13) #5, !srcloc !45
  %291 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %tobool1207.not = icmp eq i32 %292, 0
  br i1 %tobool1207.not, label %do.body1198.do.body1224_crit_edge, label %cond.false1219

do.body1198.do.body1224_crit_edge:                ; preds = %do.body1198
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1224

cond.false1219:                                   ; preds = %do.body1198
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %293 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %293(i32 noundef %292) #5
  br label %do.body1224

do.body1224:                                      ; preds = %cond.false1219, %do.body1198.do.body1224_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !476
  tail call void @arm_heavy_mb() #5
  %294 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %port, align 4
  %add1228 = add i32 %295, 2
  %and1229 = and i32 %add1228, 1048575
  %add1230 = or i32 %and1229, -18874368
  %296 = inttoptr i32 %add1230 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %296, i8 5) #5, !srcloc !45
  %297 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %tobool1233.not = icmp eq i32 %298, 0
  br i1 %tobool1233.not, label %do.body1224.do.body1250_crit_edge, label %cond.false1245

do.body1224.do.body1250_crit_edge:                ; preds = %do.body1224
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1250

cond.false1245:                                   ; preds = %do.body1224
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %299 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %299(i32 noundef %298) #5
  br label %do.body1250

do.body1250:                                      ; preds = %cond.false1245, %do.body1224.do.body1250_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !477
  tail call void @arm_heavy_mb() #5
  %300 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %port, align 4
  %add1254 = add i32 %301, 2
  %and1255 = and i32 %add1254, 1048575
  %add1256 = or i32 %and1255, -18874368
  %302 = inttoptr i32 %add1256 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %302, i8 4) #5, !srcloc !45
  %303 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %304)
  %tobool1259.not = icmp eq i32 %304, 0
  br i1 %tobool1259.not, label %do.body1250.do.body1276_crit_edge, label %cond.false1271

do.body1250.do.body1276_crit_edge:                ; preds = %do.body1250
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1276

cond.false1271:                                   ; preds = %do.body1250
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %305 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %305(i32 noundef %304) #5
  br label %do.body1276

do.body1276:                                      ; preds = %cond.false1271, %do.body1250.do.body1276_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !478
  tail call void @arm_heavy_mb() #5
  %306 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %port, align 4
  %and1281 = and i32 %307, 1048575
  %add1282 = or i32 %and1281, -18874368
  %308 = inttoptr i32 %add1282 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %308, i8 0) #5, !srcloc !45
  %309 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %tobool1285.not = icmp eq i32 %310, 0
  br i1 %tobool1285.not, label %do.body1276.do.body1302_crit_edge, label %cond.false1297

do.body1276.do.body1302_crit_edge:                ; preds = %do.body1276
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1302

cond.false1297:                                   ; preds = %do.body1276
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %311 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %311(i32 noundef %310) #5
  br label %do.body1302

do.body1302:                                      ; preds = %cond.false1297, %do.body1276.do.body1302_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !479
  tail call void @arm_heavy_mb() #5
  %312 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %port, align 4
  %add1306 = add i32 %313, 2
  %and1307 = and i32 %add1306, 1048575
  %add1308 = or i32 %and1307, -18874368
  %314 = inttoptr i32 %add1308 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %314, i8 5) #5, !srcloc !45
  %315 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %316)
  %tobool1311.not = icmp eq i32 %316, 0
  br i1 %tobool1311.not, label %do.body1302.do.body1328_crit_edge, label %cond.false1323

do.body1302.do.body1328_crit_edge:                ; preds = %do.body1302
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1328

cond.false1323:                                   ; preds = %do.body1302
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %317 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %317(i32 noundef %316) #5
  br label %do.body1328

do.body1328:                                      ; preds = %cond.false1323, %do.body1302.do.body1328_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !480
  tail call void @arm_heavy_mb() #5
  %318 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %port, align 4
  %add1332 = add i32 %319, 2
  %and1333 = and i32 %add1332, 1048575
  %add1334 = or i32 %and1333, -18874368
  %320 = inttoptr i32 %add1334 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %320, i8 7) #5, !srcloc !45
  %321 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %322)
  %tobool1337.not = icmp eq i32 %322, 0
  br i1 %tobool1337.not, label %do.body1328.do.body1354_crit_edge, label %cond.false1349

do.body1328.do.body1354_crit_edge:                ; preds = %do.body1328
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1354

cond.false1349:                                   ; preds = %do.body1328
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %323 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %323(i32 noundef %322) #5
  br label %do.body1354

do.body1354:                                      ; preds = %cond.false1349, %do.body1328.do.body1354_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !481
  tail call void @arm_heavy_mb() #5
  %324 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %port, align 4
  %add1358 = add i32 %325, 2
  %and1359 = and i32 %add1358, 1048575
  %add1360 = or i32 %and1359, -18874368
  %326 = inttoptr i32 %add1360 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %326, i8 5) #5, !srcloc !45
  %327 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %tobool1363.not = icmp eq i32 %328, 0
  br i1 %tobool1363.not, label %do.body1354.do.body1380_crit_edge, label %cond.false1375

do.body1354.do.body1380_crit_edge:                ; preds = %do.body1354
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1380

cond.false1375:                                   ; preds = %do.body1354
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %329 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %329(i32 noundef %328) #5
  br label %do.body1380

do.body1380:                                      ; preds = %cond.false1375, %do.body1354.do.body1380_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !482
  tail call void @arm_heavy_mb() #5
  %330 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %port, align 4
  %add1384 = add i32 %331, 2
  %and1385 = and i32 %add1384, 1048575
  %add1386 = or i32 %and1385, -18874368
  %332 = inttoptr i32 %add1386 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %332, i8 4) #5, !srcloc !45
  %333 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %334)
  %tobool1389.not = icmp eq i32 %334, 0
  br i1 %tobool1389.not, label %do.body1380.do.body1406_crit_edge, label %cond.false1401

do.body1380.do.body1406_crit_edge:                ; preds = %do.body1380
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1406

cond.false1401:                                   ; preds = %do.body1380
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %335 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %335(i32 noundef %334) #5
  br label %do.body1406

do.body1406:                                      ; preds = %cond.false1401, %do.body1380.do.body1406_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !483
  tail call void @arm_heavy_mb() #5
  %336 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %port, align 4
  %and1411 = and i32 %337, 1048575
  %add1412 = or i32 %and1411, -18874368
  %338 = inttoptr i32 %add1412 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %338, i8 3) #5, !srcloc !45
  %339 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %340)
  %tobool1415.not = icmp eq i32 %340, 0
  br i1 %tobool1415.not, label %do.body1406.do.body1432_crit_edge, label %cond.false1427

do.body1406.do.body1432_crit_edge:                ; preds = %do.body1406
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1432

cond.false1427:                                   ; preds = %do.body1406
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %341 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %341(i32 noundef %340) #5
  br label %do.body1432

do.body1432:                                      ; preds = %cond.false1427, %do.body1406.do.body1432_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !484
  tail call void @arm_heavy_mb() #5
  %342 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %port, align 4
  %add1436 = add i32 %343, 2
  %and1437 = and i32 %add1436, 1048575
  %add1438 = or i32 %and1437, -18874368
  %344 = inttoptr i32 %add1438 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %344, i8 5) #5, !srcloc !45
  %345 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %tobool1441.not = icmp eq i32 %346, 0
  br i1 %tobool1441.not, label %do.body1432.do.body1458_crit_edge, label %cond.false1453

do.body1432.do.body1458_crit_edge:                ; preds = %do.body1432
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1458

cond.false1453:                                   ; preds = %do.body1432
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %347 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %347(i32 noundef %346) #5
  br label %do.body1458

do.body1458:                                      ; preds = %cond.false1453, %do.body1432.do.body1458_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !485
  tail call void @arm_heavy_mb() #5
  %348 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %port, align 4
  %add1462 = add i32 %349, 2
  %and1463 = and i32 %add1462, 1048575
  %add1464 = or i32 %and1463, -18874368
  %350 = inttoptr i32 %add1464 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %350, i8 13) #5, !srcloc !45
  %351 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %352)
  %tobool1467.not = icmp eq i32 %352, 0
  br i1 %tobool1467.not, label %do.body1458.do.body1484_crit_edge, label %cond.false1479

do.body1458.do.body1484_crit_edge:                ; preds = %do.body1458
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1484

cond.false1479:                                   ; preds = %do.body1458
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %353 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %353(i32 noundef %352) #5
  br label %do.body1484

do.body1484:                                      ; preds = %cond.false1479, %do.body1458.do.body1484_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !486
  tail call void @arm_heavy_mb() #5
  %354 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %port, align 4
  %add1488 = add i32 %355, 2
  %and1489 = and i32 %add1488, 1048575
  %add1490 = or i32 %and1489, -18874368
  %356 = inttoptr i32 %add1490 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %356, i8 5) #5, !srcloc !45
  %357 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %358)
  %tobool1493.not = icmp eq i32 %358, 0
  br i1 %tobool1493.not, label %do.body1484.do.body1510_crit_edge, label %cond.false1505

do.body1484.do.body1510_crit_edge:                ; preds = %do.body1484
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1510

cond.false1505:                                   ; preds = %do.body1484
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %359 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %359(i32 noundef %358) #5
  br label %do.body1510

do.body1510:                                      ; preds = %cond.false1505, %do.body1484.do.body1510_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !487
  tail call void @arm_heavy_mb() #5
  %360 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %port, align 4
  %add1514 = add i32 %361, 2
  %and1515 = and i32 %add1514, 1048575
  %add1516 = or i32 %and1515, -18874368
  %362 = inttoptr i32 %add1516 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %362, i8 13) #5, !srcloc !45
  %363 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %364)
  %tobool1519.not = icmp eq i32 %364, 0
  br i1 %tobool1519.not, label %do.body1510.do.body1536_crit_edge, label %cond.false1531

do.body1510.do.body1536_crit_edge:                ; preds = %do.body1510
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1536

cond.false1531:                                   ; preds = %do.body1510
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %365 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %365(i32 noundef %364) #5
  br label %do.body1536

do.body1536:                                      ; preds = %cond.false1531, %do.body1510.do.body1536_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !488
  tail call void @arm_heavy_mb() #5
  %366 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %port, align 4
  %add1540 = add i32 %367, 2
  %and1541 = and i32 %add1540, 1048575
  %add1542 = or i32 %and1541, -18874368
  %368 = inttoptr i32 %add1542 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %368, i8 5) #5, !srcloc !45
  %369 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %370)
  %tobool1545.not = icmp eq i32 %370, 0
  br i1 %tobool1545.not, label %do.body1536.do.body1562_crit_edge, label %cond.false1557

do.body1536.do.body1562_crit_edge:                ; preds = %do.body1536
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1562

cond.false1557:                                   ; preds = %do.body1536
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %371 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %371(i32 noundef %370) #5
  br label %do.body1562

do.body1562:                                      ; preds = %cond.false1557, %do.body1536.do.body1562_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !489
  tail call void @arm_heavy_mb() #5
  %372 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %port, align 4
  %add1566 = add i32 %373, 2
  %and1567 = and i32 %add1566, 1048575
  %add1568 = or i32 %and1567, -18874368
  %374 = inttoptr i32 %add1568 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %374, i8 4) #5, !srcloc !45
  %375 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %376)
  %tobool1571.not = icmp eq i32 %376, 0
  br i1 %tobool1571.not, label %do.body1562.do.body1588_crit_edge, label %cond.false1583

do.body1562.do.body1588_crit_edge:                ; preds = %do.body1562
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1588

cond.false1583:                                   ; preds = %do.body1562
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %377 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %377(i32 noundef %376) #5
  br label %do.body1588

do.body1588:                                      ; preds = %cond.false1583, %do.body1562.do.body1588_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !490
  tail call void @arm_heavy_mb() #5
  %378 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %port, align 4
  %and1593 = and i32 %379, 1048575
  %add1594 = or i32 %and1593, -18874368
  %380 = inttoptr i32 %add1594 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %380, i8 0) #5, !srcloc !45
  %381 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %382)
  %tobool1597.not = icmp eq i32 %382, 0
  br i1 %tobool1597.not, label %do.body1588.do.body1614_crit_edge, label %cond.false1609

do.body1588.do.body1614_crit_edge:                ; preds = %do.body1588
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1614

cond.false1609:                                   ; preds = %do.body1588
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %383 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %383(i32 noundef %382) #5
  br label %do.body1614

do.body1614:                                      ; preds = %cond.false1609, %do.body1588.do.body1614_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !491
  tail call void @arm_heavy_mb() #5
  %384 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %port, align 4
  %add1618 = add i32 %385, 2
  %and1619 = and i32 %add1618, 1048575
  %add1620 = or i32 %and1619, -18874368
  %386 = inttoptr i32 %add1620 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %386, i8 5) #5, !srcloc !45
  %387 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %388)
  %tobool1623.not = icmp eq i32 %388, 0
  br i1 %tobool1623.not, label %do.body1614.do.body1640_crit_edge, label %cond.false1635

do.body1614.do.body1640_crit_edge:                ; preds = %do.body1614
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1640

cond.false1635:                                   ; preds = %do.body1614
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %389 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %389(i32 noundef %388) #5
  br label %do.body1640

do.body1640:                                      ; preds = %cond.false1635, %do.body1614.do.body1640_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !492
  tail call void @arm_heavy_mb() #5
  %390 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %port, align 4
  %add1644 = add i32 %391, 2
  %and1645 = and i32 %add1644, 1048575
  %add1646 = or i32 %and1645, -18874368
  %392 = inttoptr i32 %add1646 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %392, i8 7) #5, !srcloc !45
  %393 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %394)
  %tobool1649.not = icmp eq i32 %394, 0
  br i1 %tobool1649.not, label %do.body1640.do.body1666_crit_edge, label %cond.false1661

do.body1640.do.body1666_crit_edge:                ; preds = %do.body1640
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1666

cond.false1661:                                   ; preds = %do.body1640
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %395 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %395(i32 noundef %394) #5
  br label %do.body1666

do.body1666:                                      ; preds = %cond.false1661, %do.body1640.do.body1666_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !493
  tail call void @arm_heavy_mb() #5
  %396 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %port, align 4
  %add1670 = add i32 %397, 2
  %and1671 = and i32 %add1670, 1048575
  %add1672 = or i32 %and1671, -18874368
  %398 = inttoptr i32 %add1672 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %398, i8 5) #5, !srcloc !45
  %399 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %400)
  %tobool1675.not = icmp eq i32 %400, 0
  br i1 %tobool1675.not, label %do.body1666.do.body1692_crit_edge, label %cond.false1687

do.body1666.do.body1692_crit_edge:                ; preds = %do.body1666
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1692

cond.false1687:                                   ; preds = %do.body1666
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %401 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %401(i32 noundef %400) #5
  br label %do.body1692

do.body1692:                                      ; preds = %cond.false1687, %do.body1666.do.body1692_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !494
  tail call void @arm_heavy_mb() #5
  %402 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %port, align 4
  %add1696 = add i32 %403, 2
  %and1697 = and i32 %add1696, 1048575
  %add1698 = or i32 %and1697, -18874368
  %404 = inttoptr i32 %add1698 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %404, i8 4) #5, !srcloc !45
  %405 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %406)
  %tobool1701.not = icmp eq i32 %406, 0
  br i1 %tobool1701.not, label %do.body1692.do.body1718_crit_edge, label %cond.false1713

do.body1692.do.body1718_crit_edge:                ; preds = %do.body1692
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1718

cond.false1713:                                   ; preds = %do.body1692
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %407 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %407(i32 noundef %406) #5
  br label %do.body1718

do.body1718:                                      ; preds = %cond.false1713, %do.body1692.do.body1718_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !495
  tail call void @arm_heavy_mb() #5
  %408 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %port, align 4
  %and1723 = and i32 %409, 1048575
  %add1724 = or i32 %and1723, -18874368
  %410 = inttoptr i32 %add1724 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %410, i8 2) #5, !srcloc !45
  %411 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %412)
  %tobool1727.not = icmp eq i32 %412, 0
  br i1 %tobool1727.not, label %do.body1718.do.body1744_crit_edge, label %cond.false1739

do.body1718.do.body1744_crit_edge:                ; preds = %do.body1718
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1744

cond.false1739:                                   ; preds = %do.body1718
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %413 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %413(i32 noundef %412) #5
  br label %do.body1744

do.body1744:                                      ; preds = %cond.false1739, %do.body1718.do.body1744_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !496
  tail call void @arm_heavy_mb() #5
  %414 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %port, align 4
  %add1748 = add i32 %415, 2
  %and1749 = and i32 %add1748, 1048575
  %add1750 = or i32 %and1749, -18874368
  %416 = inttoptr i32 %add1750 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %416, i8 5) #5, !srcloc !45
  %417 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %418)
  %tobool1753.not = icmp eq i32 %418, 0
  br i1 %tobool1753.not, label %do.body1744.do.body1770_crit_edge, label %cond.false1765

do.body1744.do.body1770_crit_edge:                ; preds = %do.body1744
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1770

cond.false1765:                                   ; preds = %do.body1744
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %419 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %419(i32 noundef %418) #5
  br label %do.body1770

do.body1770:                                      ; preds = %cond.false1765, %do.body1744.do.body1770_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !497
  tail call void @arm_heavy_mb() #5
  %420 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %port, align 4
  %add1774 = add i32 %421, 2
  %and1775 = and i32 %add1774, 1048575
  %add1776 = or i32 %and1775, -18874368
  %422 = inttoptr i32 %add1776 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %422, i8 13) #5, !srcloc !45
  %423 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %424)
  %tobool1779.not = icmp eq i32 %424, 0
  br i1 %tobool1779.not, label %do.body1770.do.body1796_crit_edge, label %cond.false1791

do.body1770.do.body1796_crit_edge:                ; preds = %do.body1770
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1796

cond.false1791:                                   ; preds = %do.body1770
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %425 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %425(i32 noundef %424) #5
  br label %do.body1796

do.body1796:                                      ; preds = %cond.false1791, %do.body1770.do.body1796_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !498
  tail call void @arm_heavy_mb() #5
  %426 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %port, align 4
  %add1800 = add i32 %427, 2
  %and1801 = and i32 %add1800, 1048575
  %add1802 = or i32 %and1801, -18874368
  %428 = inttoptr i32 %add1802 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %428, i8 5) #5, !srcloc !45
  %429 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %430)
  %tobool1805.not = icmp eq i32 %430, 0
  br i1 %tobool1805.not, label %do.body1796.do.body1822_crit_edge, label %cond.false1817

do.body1796.do.body1822_crit_edge:                ; preds = %do.body1796
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1822

cond.false1817:                                   ; preds = %do.body1796
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %431 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %431(i32 noundef %430) #5
  br label %do.body1822

do.body1822:                                      ; preds = %cond.false1817, %do.body1796.do.body1822_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !499
  tail call void @arm_heavy_mb() #5
  %432 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %port, align 4
  %add1826 = add i32 %433, 2
  %and1827 = and i32 %add1826, 1048575
  %add1828 = or i32 %and1827, -18874368
  %434 = inttoptr i32 %add1828 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %434, i8 13) #5, !srcloc !45
  %435 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %436)
  %tobool1831.not = icmp eq i32 %436, 0
  br i1 %tobool1831.not, label %do.body1822.do.body1848_crit_edge, label %cond.false1843

do.body1822.do.body1848_crit_edge:                ; preds = %do.body1822
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1848

cond.false1843:                                   ; preds = %do.body1822
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %437 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %437(i32 noundef %436) #5
  br label %do.body1848

do.body1848:                                      ; preds = %cond.false1843, %do.body1822.do.body1848_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !500
  tail call void @arm_heavy_mb() #5
  %438 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %port, align 4
  %add1852 = add i32 %439, 2
  %and1853 = and i32 %add1852, 1048575
  %add1854 = or i32 %and1853, -18874368
  %440 = inttoptr i32 %add1854 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %440, i8 5) #5, !srcloc !45
  %441 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %442)
  %tobool1857.not = icmp eq i32 %442, 0
  br i1 %tobool1857.not, label %do.body1848.do.body1874_crit_edge, label %cond.false1869

do.body1848.do.body1874_crit_edge:                ; preds = %do.body1848
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1874

cond.false1869:                                   ; preds = %do.body1848
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %443 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %443(i32 noundef %442) #5
  br label %do.body1874

do.body1874:                                      ; preds = %cond.false1869, %do.body1848.do.body1874_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !501
  tail call void @arm_heavy_mb() #5
  %444 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %port, align 4
  %add1878 = add i32 %445, 2
  %and1879 = and i32 %add1878, 1048575
  %add1880 = or i32 %and1879, -18874368
  %446 = inttoptr i32 %add1880 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %446, i8 4) #5, !srcloc !45
  %447 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %448)
  %tobool1883.not = icmp eq i32 %448, 0
  br i1 %tobool1883.not, label %do.body1874.do.body1900_crit_edge, label %cond.false1895

do.body1874.do.body1900_crit_edge:                ; preds = %do.body1874
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1900

cond.false1895:                                   ; preds = %do.body1874
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %449 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %449(i32 noundef %448) #5
  br label %do.body1900

do.body1900:                                      ; preds = %cond.false1895, %do.body1874.do.body1900_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !502
  tail call void @arm_heavy_mb() #5
  %450 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %port, align 4
  %and1905 = and i32 %451, 1048575
  %add1906 = or i32 %and1905, -18874368
  %452 = inttoptr i32 %add1906 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %452, i8 8) #5, !srcloc !45
  %453 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %454)
  %tobool1909.not = icmp eq i32 %454, 0
  br i1 %tobool1909.not, label %do.body1900.do.body1926_crit_edge, label %cond.false1921

do.body1900.do.body1926_crit_edge:                ; preds = %do.body1900
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1926

cond.false1921:                                   ; preds = %do.body1900
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %455 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %455(i32 noundef %454) #5
  br label %do.body1926

do.body1926:                                      ; preds = %cond.false1921, %do.body1900.do.body1926_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !503
  tail call void @arm_heavy_mb() #5
  %456 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %port, align 4
  %add1930 = add i32 %457, 2
  %and1931 = and i32 %add1930, 1048575
  %add1932 = or i32 %and1931, -18874368
  %458 = inttoptr i32 %add1932 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %458, i8 5) #5, !srcloc !45
  %459 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %460)
  %tobool1935.not = icmp eq i32 %460, 0
  br i1 %tobool1935.not, label %do.body1926.do.body1952_crit_edge, label %cond.false1947

do.body1926.do.body1952_crit_edge:                ; preds = %do.body1926
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1952

cond.false1947:                                   ; preds = %do.body1926
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %461 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %461(i32 noundef %460) #5
  br label %do.body1952

do.body1952:                                      ; preds = %cond.false1947, %do.body1926.do.body1952_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !504
  tail call void @arm_heavy_mb() #5
  %462 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %port, align 4
  %add1956 = add i32 %463, 2
  %and1957 = and i32 %add1956, 1048575
  %add1958 = or i32 %and1957, -18874368
  %464 = inttoptr i32 %add1958 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %464, i8 7) #5, !srcloc !45
  %465 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %466)
  %tobool1961.not = icmp eq i32 %466, 0
  br i1 %tobool1961.not, label %do.body1952.do.body1978_crit_edge, label %cond.false1973

do.body1952.do.body1978_crit_edge:                ; preds = %do.body1952
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1978

cond.false1973:                                   ; preds = %do.body1952
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %467 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %467(i32 noundef %466) #5
  br label %do.body1978

do.body1978:                                      ; preds = %cond.false1973, %do.body1952.do.body1978_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !505
  tail call void @arm_heavy_mb() #5
  %468 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %port, align 4
  %add1982 = add i32 %469, 2
  %and1983 = and i32 %add1982, 1048575
  %add1984 = or i32 %and1983, -18874368
  %470 = inttoptr i32 %add1984 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %470, i8 5) #5, !srcloc !45
  %471 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %472)
  %tobool1987.not = icmp eq i32 %472, 0
  br i1 %tobool1987.not, label %do.body1978.do.body2004_crit_edge, label %cond.false1999

do.body1978.do.body2004_crit_edge:                ; preds = %do.body1978
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2004

cond.false1999:                                   ; preds = %do.body1978
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %473 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %473(i32 noundef %472) #5
  br label %do.body2004

do.body2004:                                      ; preds = %cond.false1999, %do.body1978.do.body2004_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !506
  tail call void @arm_heavy_mb() #5
  %474 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %port, align 4
  %add2008 = add i32 %475, 2
  %and2009 = and i32 %add2008, 1048575
  %add2010 = or i32 %and2009, -18874368
  %476 = inttoptr i32 %add2010 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %476, i8 4) #5, !srcloc !45
  %477 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %478)
  %tobool2013.not = icmp eq i32 %478, 0
  br i1 %tobool2013.not, label %do.body2004.cond.end2029_crit_edge, label %cond.false2025

do.body2004.cond.end2029_crit_edge:               ; preds = %do.body2004
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2029

cond.false2025:                                   ; preds = %do.body2004
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %479 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %479(i32 noundef %478) #5
  br label %cond.end2029

cond.end2029:                                     ; preds = %cond.false2025, %do.body2004.cond.end2029_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %480 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %480(i32 noundef 21474800) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !507
  tail call void @arm_heavy_mb() #5
  %481 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %port, align 4
  %and2035 = and i32 %482, 1048575
  %add2036 = or i32 %and2035, -18874368
  %483 = inttoptr i32 %add2036 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %483, i8 2) #5, !srcloc !45
  %484 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %485)
  %tobool2039.not = icmp eq i32 %485, 0
  br i1 %tobool2039.not, label %cond.end2029.do.body2056_crit_edge, label %cond.false2051

cond.end2029.do.body2056_crit_edge:               ; preds = %cond.end2029
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2056

cond.false2051:                                   ; preds = %cond.end2029
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %486 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %486(i32 noundef %485) #5
  br label %do.body2056

do.body2056:                                      ; preds = %cond.false2051, %cond.end2029.do.body2056_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !508
  tail call void @arm_heavy_mb() #5
  %487 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %port, align 4
  %add2060 = add i32 %488, 2
  %and2061 = and i32 %add2060, 1048575
  %add2062 = or i32 %and2061, -18874368
  %489 = inttoptr i32 %add2062 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %489, i8 5) #5, !srcloc !45
  %490 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %491)
  %tobool2065.not = icmp eq i32 %491, 0
  br i1 %tobool2065.not, label %do.body2056.do.body2082_crit_edge, label %cond.false2077

do.body2056.do.body2082_crit_edge:                ; preds = %do.body2056
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2082

cond.false2077:                                   ; preds = %do.body2056
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %492 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %492(i32 noundef %491) #5
  br label %do.body2082

do.body2082:                                      ; preds = %cond.false2077, %do.body2056.do.body2082_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !509
  tail call void @arm_heavy_mb() #5
  %493 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %port, align 4
  %add2086 = add i32 %494, 2
  %and2087 = and i32 %add2086, 1048575
  %add2088 = or i32 %and2087, -18874368
  %495 = inttoptr i32 %add2088 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %495, i8 13) #5, !srcloc !45
  %496 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %497)
  %tobool2091.not = icmp eq i32 %497, 0
  br i1 %tobool2091.not, label %do.body2082.do.body2108_crit_edge, label %cond.false2103

do.body2082.do.body2108_crit_edge:                ; preds = %do.body2082
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2108

cond.false2103:                                   ; preds = %do.body2082
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %498 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %498(i32 noundef %497) #5
  br label %do.body2108

do.body2108:                                      ; preds = %cond.false2103, %do.body2082.do.body2108_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !510
  tail call void @arm_heavy_mb() #5
  %499 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %port, align 4
  %add2112 = add i32 %500, 2
  %and2113 = and i32 %add2112, 1048575
  %add2114 = or i32 %and2113, -18874368
  %501 = inttoptr i32 %add2114 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %501, i8 5) #5, !srcloc !45
  %502 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %503)
  %tobool2117.not = icmp eq i32 %503, 0
  br i1 %tobool2117.not, label %do.body2108.do.body2134_crit_edge, label %cond.false2129

do.body2108.do.body2134_crit_edge:                ; preds = %do.body2108
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2134

cond.false2129:                                   ; preds = %do.body2108
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %504 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %504(i32 noundef %503) #5
  br label %do.body2134

do.body2134:                                      ; preds = %cond.false2129, %do.body2108.do.body2134_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !511
  tail call void @arm_heavy_mb() #5
  %505 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %port, align 4
  %add2138 = add i32 %506, 2
  %and2139 = and i32 %add2138, 1048575
  %add2140 = or i32 %and2139, -18874368
  %507 = inttoptr i32 %add2140 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %507, i8 13) #5, !srcloc !45
  %508 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %509)
  %tobool2143.not = icmp eq i32 %509, 0
  br i1 %tobool2143.not, label %do.body2134.do.body2160_crit_edge, label %cond.false2155

do.body2134.do.body2160_crit_edge:                ; preds = %do.body2134
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2160

cond.false2155:                                   ; preds = %do.body2134
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %510 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %510(i32 noundef %509) #5
  br label %do.body2160

do.body2160:                                      ; preds = %cond.false2155, %do.body2134.do.body2160_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !512
  tail call void @arm_heavy_mb() #5
  %511 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %port, align 4
  %add2164 = add i32 %512, 2
  %and2165 = and i32 %add2164, 1048575
  %add2166 = or i32 %and2165, -18874368
  %513 = inttoptr i32 %add2166 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %513, i8 5) #5, !srcloc !45
  %514 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %515)
  %tobool2169.not = icmp eq i32 %515, 0
  br i1 %tobool2169.not, label %do.body2160.do.body2186_crit_edge, label %cond.false2181

do.body2160.do.body2186_crit_edge:                ; preds = %do.body2160
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2186

cond.false2181:                                   ; preds = %do.body2160
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %516 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %516(i32 noundef %515) #5
  br label %do.body2186

do.body2186:                                      ; preds = %cond.false2181, %do.body2160.do.body2186_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !513
  tail call void @arm_heavy_mb() #5
  %517 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %port, align 4
  %add2190 = add i32 %518, 2
  %and2191 = and i32 %add2190, 1048575
  %add2192 = or i32 %and2191, -18874368
  %519 = inttoptr i32 %add2192 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %519, i8 4) #5, !srcloc !45
  %520 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %521)
  %tobool2195.not = icmp eq i32 %521, 0
  br i1 %tobool2195.not, label %do.body2186.do.body2212_crit_edge, label %cond.false2207

do.body2186.do.body2212_crit_edge:                ; preds = %do.body2186
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2212

cond.false2207:                                   ; preds = %do.body2186
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %522 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %522(i32 noundef %521) #5
  br label %do.body2212

do.body2212:                                      ; preds = %cond.false2207, %do.body2186.do.body2212_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !514
  tail call void @arm_heavy_mb() #5
  %523 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %port, align 4
  %and2217 = and i32 %524, 1048575
  %add2218 = or i32 %and2217, -18874368
  %525 = inttoptr i32 %add2218 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %525, i8 10) #5, !srcloc !45
  %526 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %527)
  %tobool2221.not = icmp eq i32 %527, 0
  br i1 %tobool2221.not, label %do.body2212.do.body2238_crit_edge, label %cond.false2233

do.body2212.do.body2238_crit_edge:                ; preds = %do.body2212
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2238

cond.false2233:                                   ; preds = %do.body2212
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %528 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %528(i32 noundef %527) #5
  br label %do.body2238

do.body2238:                                      ; preds = %cond.false2233, %do.body2212.do.body2238_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !515
  tail call void @arm_heavy_mb() #5
  %529 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %port, align 4
  %add2242 = add i32 %530, 2
  %and2243 = and i32 %add2242, 1048575
  %add2244 = or i32 %and2243, -18874368
  %531 = inttoptr i32 %add2244 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %531, i8 5) #5, !srcloc !45
  %532 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %533)
  %tobool2247.not = icmp eq i32 %533, 0
  br i1 %tobool2247.not, label %do.body2238.do.body2264_crit_edge, label %cond.false2259

do.body2238.do.body2264_crit_edge:                ; preds = %do.body2238
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2264

cond.false2259:                                   ; preds = %do.body2238
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %534 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %534(i32 noundef %533) #5
  br label %do.body2264

do.body2264:                                      ; preds = %cond.false2259, %do.body2238.do.body2264_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !516
  tail call void @arm_heavy_mb() #5
  %535 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %port, align 4
  %add2268 = add i32 %536, 2
  %and2269 = and i32 %add2268, 1048575
  %add2270 = or i32 %and2269, -18874368
  %537 = inttoptr i32 %add2270 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %537, i8 7) #5, !srcloc !45
  %538 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %539)
  %tobool2273.not = icmp eq i32 %539, 0
  br i1 %tobool2273.not, label %do.body2264.do.body2290_crit_edge, label %cond.false2285

do.body2264.do.body2290_crit_edge:                ; preds = %do.body2264
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2290

cond.false2285:                                   ; preds = %do.body2264
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %540 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %540(i32 noundef %539) #5
  br label %do.body2290

do.body2290:                                      ; preds = %cond.false2285, %do.body2264.do.body2290_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !517
  tail call void @arm_heavy_mb() #5
  %541 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %port, align 4
  %add2294 = add i32 %542, 2
  %and2295 = and i32 %add2294, 1048575
  %add2296 = or i32 %and2295, -18874368
  %543 = inttoptr i32 %add2296 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %543, i8 5) #5, !srcloc !45
  %544 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %545)
  %tobool2299.not = icmp eq i32 %545, 0
  br i1 %tobool2299.not, label %do.body2290.do.body2316_crit_edge, label %cond.false2311

do.body2290.do.body2316_crit_edge:                ; preds = %do.body2290
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2316

cond.false2311:                                   ; preds = %do.body2290
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %546 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %546(i32 noundef %545) #5
  br label %do.body2316

do.body2316:                                      ; preds = %cond.false2311, %do.body2290.do.body2316_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !518
  tail call void @arm_heavy_mb() #5
  %547 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %port, align 4
  %add2320 = add i32 %548, 2
  %and2321 = and i32 %add2320, 1048575
  %add2322 = or i32 %and2321, -18874368
  %549 = inttoptr i32 %add2322 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %549, i8 4) #5, !srcloc !45
  %550 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %551)
  %tobool2325.not = icmp eq i32 %551, 0
  br i1 %tobool2325.not, label %do.body2316.cond.end2341_crit_edge, label %cond.false2337

do.body2316.cond.end2341_crit_edge:               ; preds = %do.body2316
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2341

cond.false2337:                                   ; preds = %do.body2316
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %552 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %552(i32 noundef %551) #5
  br label %cond.end2341

cond.end2341:                                     ; preds = %cond.false2337, %do.body2316.cond.end2341_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %553 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %553(i32 noundef 21474800) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !519
  tail call void @arm_heavy_mb() #5
  %554 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %port, align 4
  %and2347 = and i32 %555, 1048575
  %add2348 = or i32 %and2347, -18874368
  %556 = inttoptr i32 %add2348 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %556, i8 2) #5, !srcloc !45
  %557 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %558)
  %tobool2351.not = icmp eq i32 %558, 0
  br i1 %tobool2351.not, label %cond.end2341.do.body2368_crit_edge, label %cond.false2363

cond.end2341.do.body2368_crit_edge:               ; preds = %cond.end2341
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2368

cond.false2363:                                   ; preds = %cond.end2341
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %559 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %559(i32 noundef %558) #5
  br label %do.body2368

do.body2368:                                      ; preds = %cond.false2363, %cond.end2341.do.body2368_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !520
  tail call void @arm_heavy_mb() #5
  %560 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %port, align 4
  %add2372 = add i32 %561, 2
  %and2373 = and i32 %add2372, 1048575
  %add2374 = or i32 %and2373, -18874368
  %562 = inttoptr i32 %add2374 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %562, i8 5) #5, !srcloc !45
  %563 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %564)
  %tobool2377.not = icmp eq i32 %564, 0
  br i1 %tobool2377.not, label %do.body2368.do.body2394_crit_edge, label %cond.false2389

do.body2368.do.body2394_crit_edge:                ; preds = %do.body2368
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2394

cond.false2389:                                   ; preds = %do.body2368
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %565 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %565(i32 noundef %564) #5
  br label %do.body2394

do.body2394:                                      ; preds = %cond.false2389, %do.body2368.do.body2394_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !521
  tail call void @arm_heavy_mb() #5
  %566 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %port, align 4
  %add2398 = add i32 %567, 2
  %and2399 = and i32 %add2398, 1048575
  %add2400 = or i32 %and2399, -18874368
  %568 = inttoptr i32 %add2400 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %568, i8 13) #5, !srcloc !45
  %569 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %570)
  %tobool2403.not = icmp eq i32 %570, 0
  br i1 %tobool2403.not, label %do.body2394.do.body2420_crit_edge, label %cond.false2415

do.body2394.do.body2420_crit_edge:                ; preds = %do.body2394
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2420

cond.false2415:                                   ; preds = %do.body2394
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %571 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %571(i32 noundef %570) #5
  br label %do.body2420

do.body2420:                                      ; preds = %cond.false2415, %do.body2394.do.body2420_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !522
  tail call void @arm_heavy_mb() #5
  %572 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %port, align 4
  %add2424 = add i32 %573, 2
  %and2425 = and i32 %add2424, 1048575
  %add2426 = or i32 %and2425, -18874368
  %574 = inttoptr i32 %add2426 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %574, i8 5) #5, !srcloc !45
  %575 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %576)
  %tobool2429.not = icmp eq i32 %576, 0
  br i1 %tobool2429.not, label %do.body2420.do.body2446_crit_edge, label %cond.false2441

do.body2420.do.body2446_crit_edge:                ; preds = %do.body2420
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2446

cond.false2441:                                   ; preds = %do.body2420
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %577 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %577(i32 noundef %576) #5
  br label %do.body2446

do.body2446:                                      ; preds = %cond.false2441, %do.body2420.do.body2446_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !523
  tail call void @arm_heavy_mb() #5
  %578 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %port, align 4
  %add2450 = add i32 %579, 2
  %and2451 = and i32 %add2450, 1048575
  %add2452 = or i32 %and2451, -18874368
  %580 = inttoptr i32 %add2452 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %580, i8 13) #5, !srcloc !45
  %581 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %582)
  %tobool2455.not = icmp eq i32 %582, 0
  br i1 %tobool2455.not, label %do.body2446.do.body2472_crit_edge, label %cond.false2467

do.body2446.do.body2472_crit_edge:                ; preds = %do.body2446
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2472

cond.false2467:                                   ; preds = %do.body2446
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %583 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %583(i32 noundef %582) #5
  br label %do.body2472

do.body2472:                                      ; preds = %cond.false2467, %do.body2446.do.body2472_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !524
  tail call void @arm_heavy_mb() #5
  %584 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %port, align 4
  %add2476 = add i32 %585, 2
  %and2477 = and i32 %add2476, 1048575
  %add2478 = or i32 %and2477, -18874368
  %586 = inttoptr i32 %add2478 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %586, i8 5) #5, !srcloc !45
  %587 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %588)
  %tobool2481.not = icmp eq i32 %588, 0
  br i1 %tobool2481.not, label %do.body2472.do.body2498_crit_edge, label %cond.false2493

do.body2472.do.body2498_crit_edge:                ; preds = %do.body2472
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2498

cond.false2493:                                   ; preds = %do.body2472
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %589 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %589(i32 noundef %588) #5
  br label %do.body2498

do.body2498:                                      ; preds = %cond.false2493, %do.body2472.do.body2498_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !525
  tail call void @arm_heavy_mb() #5
  %590 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %port, align 4
  %add2502 = add i32 %591, 2
  %and2503 = and i32 %add2502, 1048575
  %add2504 = or i32 %and2503, -18874368
  %592 = inttoptr i32 %add2504 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %592, i8 4) #5, !srcloc !45
  %593 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %594)
  %tobool2507.not = icmp eq i32 %594, 0
  br i1 %tobool2507.not, label %do.body2498.do.body2524_crit_edge, label %cond.false2519

do.body2498.do.body2524_crit_edge:                ; preds = %do.body2498
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2524

cond.false2519:                                   ; preds = %do.body2498
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %595 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %595(i32 noundef %594) #5
  br label %do.body2524

do.body2524:                                      ; preds = %cond.false2519, %do.body2498.do.body2524_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !526
  tail call void @arm_heavy_mb() #5
  %596 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %port, align 4
  %and2529 = and i32 %597, 1048575
  %add2530 = or i32 %and2529, -18874368
  %598 = inttoptr i32 %add2530 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %598, i8 8) #5, !srcloc !45
  %599 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %600)
  %tobool2533.not = icmp eq i32 %600, 0
  br i1 %tobool2533.not, label %do.body2524.do.body2550_crit_edge, label %cond.false2545

do.body2524.do.body2550_crit_edge:                ; preds = %do.body2524
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2550

cond.false2545:                                   ; preds = %do.body2524
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %601 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %601(i32 noundef %600) #5
  br label %do.body2550

do.body2550:                                      ; preds = %cond.false2545, %do.body2524.do.body2550_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !527
  tail call void @arm_heavy_mb() #5
  %602 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %port, align 4
  %add2554 = add i32 %603, 2
  %and2555 = and i32 %add2554, 1048575
  %add2556 = or i32 %and2555, -18874368
  %604 = inttoptr i32 %add2556 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %604, i8 5) #5, !srcloc !45
  %605 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %606)
  %tobool2559.not = icmp eq i32 %606, 0
  br i1 %tobool2559.not, label %do.body2550.do.body2576_crit_edge, label %cond.false2571

do.body2550.do.body2576_crit_edge:                ; preds = %do.body2550
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2576

cond.false2571:                                   ; preds = %do.body2550
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %607 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %607(i32 noundef %606) #5
  br label %do.body2576

do.body2576:                                      ; preds = %cond.false2571, %do.body2550.do.body2576_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !528
  tail call void @arm_heavy_mb() #5
  %608 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %port, align 4
  %add2580 = add i32 %609, 2
  %and2581 = and i32 %add2580, 1048575
  %add2582 = or i32 %and2581, -18874368
  %610 = inttoptr i32 %add2582 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %610, i8 7) #5, !srcloc !45
  %611 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %612)
  %tobool2585.not = icmp eq i32 %612, 0
  br i1 %tobool2585.not, label %do.body2576.do.body2602_crit_edge, label %cond.false2597

do.body2576.do.body2602_crit_edge:                ; preds = %do.body2576
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2602

cond.false2597:                                   ; preds = %do.body2576
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %613 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %613(i32 noundef %612) #5
  br label %do.body2602

do.body2602:                                      ; preds = %cond.false2597, %do.body2576.do.body2602_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !529
  tail call void @arm_heavy_mb() #5
  %614 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load i32, ptr %port, align 4
  %add2606 = add i32 %615, 2
  %and2607 = and i32 %add2606, 1048575
  %add2608 = or i32 %and2607, -18874368
  %616 = inttoptr i32 %add2608 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %616, i8 5) #5, !srcloc !45
  %617 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %618)
  %tobool2611.not = icmp eq i32 %618, 0
  br i1 %tobool2611.not, label %do.body2602.do.body2628_crit_edge, label %cond.false2623

do.body2602.do.body2628_crit_edge:                ; preds = %do.body2602
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2628

cond.false2623:                                   ; preds = %do.body2602
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %619 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %619(i32 noundef %618) #5
  br label %do.body2628

do.body2628:                                      ; preds = %cond.false2623, %do.body2602.do.body2628_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !530
  tail call void @arm_heavy_mb() #5
  %620 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load i32, ptr %port, align 4
  %add2632 = add i32 %621, 2
  %and2633 = and i32 %add2632, 1048575
  %add2634 = or i32 %and2633, -18874368
  %622 = inttoptr i32 %add2634 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %622, i8 4) #5, !srcloc !45
  %623 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %624)
  %tobool2637.not = icmp eq i32 %624, 0
  br i1 %tobool2637.not, label %do.body2628.cond.end2653_crit_edge, label %cond.false2649

do.body2628.cond.end2653_crit_edge:               ; preds = %do.body2628
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2653

cond.false2649:                                   ; preds = %do.body2628
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %625 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %625(i32 noundef %624) #5
  br label %cond.end2653

cond.end2653:                                     ; preds = %cond.false2649, %do.body2628.cond.end2653_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %626 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %626(i32 noundef 214748000) #5
  tail call void @on26_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 6, i32 noundef 160)
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %cond.end2653
  %i.04350 = phi i32 [ 0, %cond.end2653 ], [ %inc, %while.end.for.body_crit_edge ]
  tail call void @on26_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 6, i32 noundef 160)
  %call2656 = tail call i32 @on26_read_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 7)
  tail call void @on26_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 6, i32 noundef 176)
  %call2657 = tail call i32 @on26_read_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 7)
  %and2658 = and i32 %call2656, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2658)
  %tobool2659.not = icmp eq i32 %and2658, 0
  %and2660 = and i32 %call2657, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2660)
  %tobool2661.not = icmp eq i32 %and2660, 0
  %or.cond = select i1 %tobool2659.not, i1 %tobool2661.not, i1 false
  br i1 %or.cond, label %for.body.do.body2673_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.do.body2673_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2673

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body.while.body_crit_edge
  %__ms.04349 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %for.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.04349, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %627 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %627(i32 noundef 214748000) #5
  %tobool2663.not = icmp eq i32 %dec, 0
  br i1 %tobool2663.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  %inc = add nuw nsw i32 %i.04350, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %do.end2669, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end2669:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %call2671 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call2656, i32 noundef %call2657) #8
  br label %do.body2673

do.body2673:                                      ; preds = %do.end2669, %for.body.do.body2673_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !531
  tail call void @arm_heavy_mb() #5
  %628 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load i32, ptr %port, align 4
  %and2678 = and i32 %629, 1048575
  %add2679 = or i32 %and2678, -18874368
  %630 = inttoptr i32 %add2679 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %630, i8 4) #5, !srcloc !45
  %631 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %632)
  %tobool2682.not = icmp eq i32 %632, 0
  br i1 %tobool2682.not, label %do.body2673.do.body2699_crit_edge, label %cond.false2694

do.body2673.do.body2699_crit_edge:                ; preds = %do.body2673
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2699

cond.false2694:                                   ; preds = %do.body2673
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %633 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %633(i32 noundef %632) #5
  br label %do.body2699

do.body2699:                                      ; preds = %cond.false2694, %do.body2673.do.body2699_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !532
  tail call void @arm_heavy_mb() #5
  %634 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load i32, ptr %port, align 4
  %add2703 = add i32 %635, 2
  %and2704 = and i32 %add2703, 1048575
  %add2705 = or i32 %and2704, -18874368
  %636 = inttoptr i32 %add2705 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %636, i8 5) #5, !srcloc !45
  %637 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %638)
  %tobool2708.not = icmp eq i32 %638, 0
  br i1 %tobool2708.not, label %do.body2699.do.body2725_crit_edge, label %cond.false2720

do.body2699.do.body2725_crit_edge:                ; preds = %do.body2699
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2725

cond.false2720:                                   ; preds = %do.body2699
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %639 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %639(i32 noundef %638) #5
  br label %do.body2725

do.body2725:                                      ; preds = %cond.false2720, %do.body2699.do.body2725_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !533
  tail call void @arm_heavy_mb() #5
  %640 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load i32, ptr %port, align 4
  %add2729 = add i32 %641, 2
  %and2730 = and i32 %add2729, 1048575
  %add2731 = or i32 %and2730, -18874368
  %642 = inttoptr i32 %add2731 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %642, i8 13) #5, !srcloc !45
  %643 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %644)
  %tobool2734.not = icmp eq i32 %644, 0
  br i1 %tobool2734.not, label %do.body2725.do.body2751_crit_edge, label %cond.false2746

do.body2725.do.body2751_crit_edge:                ; preds = %do.body2725
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2751

cond.false2746:                                   ; preds = %do.body2725
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %645 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %645(i32 noundef %644) #5
  br label %do.body2751

do.body2751:                                      ; preds = %cond.false2746, %do.body2725.do.body2751_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !534
  tail call void @arm_heavy_mb() #5
  %646 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load i32, ptr %port, align 4
  %add2755 = add i32 %647, 2
  %and2756 = and i32 %add2755, 1048575
  %add2757 = or i32 %and2756, -18874368
  %648 = inttoptr i32 %add2757 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %648, i8 5) #5, !srcloc !45
  %649 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %650)
  %tobool2760.not = icmp eq i32 %650, 0
  br i1 %tobool2760.not, label %do.body2751.do.body2777_crit_edge, label %cond.false2772

do.body2751.do.body2777_crit_edge:                ; preds = %do.body2751
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2777

cond.false2772:                                   ; preds = %do.body2751
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %651 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %651(i32 noundef %650) #5
  br label %do.body2777

do.body2777:                                      ; preds = %cond.false2772, %do.body2751.do.body2777_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !535
  tail call void @arm_heavy_mb() #5
  %652 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load i32, ptr %port, align 4
  %add2781 = add i32 %653, 2
  %and2782 = and i32 %add2781, 1048575
  %add2783 = or i32 %and2782, -18874368
  %654 = inttoptr i32 %add2783 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %654, i8 13) #5, !srcloc !45
  %655 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %656)
  %tobool2786.not = icmp eq i32 %656, 0
  br i1 %tobool2786.not, label %do.body2777.do.body2803_crit_edge, label %cond.false2798

do.body2777.do.body2803_crit_edge:                ; preds = %do.body2777
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2803

cond.false2798:                                   ; preds = %do.body2777
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %657 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %657(i32 noundef %656) #5
  br label %do.body2803

do.body2803:                                      ; preds = %cond.false2798, %do.body2777.do.body2803_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !536
  tail call void @arm_heavy_mb() #5
  %658 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %port, align 4
  %add2807 = add i32 %659, 2
  %and2808 = and i32 %add2807, 1048575
  %add2809 = or i32 %and2808, -18874368
  %660 = inttoptr i32 %add2809 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %660, i8 5) #5, !srcloc !45
  %661 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %662)
  %tobool2812.not = icmp eq i32 %662, 0
  br i1 %tobool2812.not, label %do.body2803.do.body2829_crit_edge, label %cond.false2824

do.body2803.do.body2829_crit_edge:                ; preds = %do.body2803
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2829

cond.false2824:                                   ; preds = %do.body2803
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %663 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %663(i32 noundef %662) #5
  br label %do.body2829

do.body2829:                                      ; preds = %cond.false2824, %do.body2803.do.body2829_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !537
  tail call void @arm_heavy_mb() #5
  %664 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load i32, ptr %port, align 4
  %add2833 = add i32 %665, 2
  %and2834 = and i32 %add2833, 1048575
  %add2835 = or i32 %and2834, -18874368
  %666 = inttoptr i32 %add2835 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %666, i8 4) #5, !srcloc !45
  %667 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %668)
  %tobool2838.not = icmp eq i32 %668, 0
  br i1 %tobool2838.not, label %do.body2829.do.body2855_crit_edge, label %cond.false2850

do.body2829.do.body2855_crit_edge:                ; preds = %do.body2829
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2855

cond.false2850:                                   ; preds = %do.body2829
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %669 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %669(i32 noundef %668) #5
  br label %do.body2855

do.body2855:                                      ; preds = %cond.false2850, %do.body2829.do.body2855_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !538
  tail call void @arm_heavy_mb() #5
  %670 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load i32, ptr %port, align 4
  %and2860 = and i32 %671, 1048575
  %add2861 = or i32 %and2860, -18874368
  %672 = inttoptr i32 %add2861 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %672, i8 4) #5, !srcloc !45
  %673 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %674)
  %tobool2864.not = icmp eq i32 %674, 0
  br i1 %tobool2864.not, label %do.body2855.do.body2881_crit_edge, label %cond.false2876

do.body2855.do.body2881_crit_edge:                ; preds = %do.body2855
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2881

cond.false2876:                                   ; preds = %do.body2855
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %675 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %675(i32 noundef %674) #5
  br label %do.body2881

do.body2881:                                      ; preds = %cond.false2876, %do.body2855.do.body2881_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !539
  tail call void @arm_heavy_mb() #5
  %676 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load i32, ptr %port, align 4
  %add2885 = add i32 %677, 2
  %and2886 = and i32 %add2885, 1048575
  %add2887 = or i32 %and2886, -18874368
  %678 = inttoptr i32 %add2887 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %678, i8 5) #5, !srcloc !45
  %679 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %680)
  %tobool2890.not = icmp eq i32 %680, 0
  br i1 %tobool2890.not, label %do.body2881.do.body2907_crit_edge, label %cond.false2902

do.body2881.do.body2907_crit_edge:                ; preds = %do.body2881
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2907

cond.false2902:                                   ; preds = %do.body2881
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %681 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %681(i32 noundef %680) #5
  br label %do.body2907

do.body2907:                                      ; preds = %cond.false2902, %do.body2881.do.body2907_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !540
  tail call void @arm_heavy_mb() #5
  %682 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load i32, ptr %port, align 4
  %add2911 = add i32 %683, 2
  %and2912 = and i32 %add2911, 1048575
  %add2913 = or i32 %and2912, -18874368
  %684 = inttoptr i32 %add2913 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %684, i8 13) #5, !srcloc !45
  %685 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %686)
  %tobool2916.not = icmp eq i32 %686, 0
  br i1 %tobool2916.not, label %do.body2907.do.body2933_crit_edge, label %cond.false2928

do.body2907.do.body2933_crit_edge:                ; preds = %do.body2907
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2933

cond.false2928:                                   ; preds = %do.body2907
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %687 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %687(i32 noundef %686) #5
  br label %do.body2933

do.body2933:                                      ; preds = %cond.false2928, %do.body2907.do.body2933_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !541
  tail call void @arm_heavy_mb() #5
  %688 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load i32, ptr %port, align 4
  %add2937 = add i32 %689, 2
  %and2938 = and i32 %add2937, 1048575
  %add2939 = or i32 %and2938, -18874368
  %690 = inttoptr i32 %add2939 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %690, i8 5) #5, !srcloc !45
  %691 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %692)
  %tobool2942.not = icmp eq i32 %692, 0
  br i1 %tobool2942.not, label %do.body2933.do.body2959_crit_edge, label %cond.false2954

do.body2933.do.body2959_crit_edge:                ; preds = %do.body2933
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2959

cond.false2954:                                   ; preds = %do.body2933
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %693 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %693(i32 noundef %692) #5
  br label %do.body2959

do.body2959:                                      ; preds = %cond.false2954, %do.body2933.do.body2959_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !542
  tail call void @arm_heavy_mb() #5
  %694 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load i32, ptr %port, align 4
  %add2963 = add i32 %695, 2
  %and2964 = and i32 %add2963, 1048575
  %add2965 = or i32 %and2964, -18874368
  %696 = inttoptr i32 %add2965 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %696, i8 13) #5, !srcloc !45
  %697 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %698)
  %tobool2968.not = icmp eq i32 %698, 0
  br i1 %tobool2968.not, label %do.body2959.do.body2985_crit_edge, label %cond.false2980

do.body2959.do.body2985_crit_edge:                ; preds = %do.body2959
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2985

cond.false2980:                                   ; preds = %do.body2959
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %699 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %699(i32 noundef %698) #5
  br label %do.body2985

do.body2985:                                      ; preds = %cond.false2980, %do.body2959.do.body2985_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !543
  tail call void @arm_heavy_mb() #5
  %700 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load i32, ptr %port, align 4
  %add2989 = add i32 %701, 2
  %and2990 = and i32 %add2989, 1048575
  %add2991 = or i32 %and2990, -18874368
  %702 = inttoptr i32 %add2991 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %702, i8 5) #5, !srcloc !45
  %703 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %704)
  %tobool2994.not = icmp eq i32 %704, 0
  br i1 %tobool2994.not, label %do.body2985.do.body3011_crit_edge, label %cond.false3006

do.body2985.do.body3011_crit_edge:                ; preds = %do.body2985
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3011

cond.false3006:                                   ; preds = %do.body2985
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %705 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %705(i32 noundef %704) #5
  br label %do.body3011

do.body3011:                                      ; preds = %cond.false3006, %do.body2985.do.body3011_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !544
  tail call void @arm_heavy_mb() #5
  %706 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load i32, ptr %port, align 4
  %add3015 = add i32 %707, 2
  %and3016 = and i32 %add3015, 1048575
  %add3017 = or i32 %and3016, -18874368
  %708 = inttoptr i32 %add3017 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %708, i8 4) #5, !srcloc !45
  %709 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %710)
  %tobool3020.not = icmp eq i32 %710, 0
  br i1 %tobool3020.not, label %do.body3011.do.body3038_crit_edge, label %cond.false3032

do.body3011.do.body3038_crit_edge:                ; preds = %do.body3011
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3038

cond.false3032:                                   ; preds = %do.body3011
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %711 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %711(i32 noundef %710) #5
  br label %do.body3038

do.body3038:                                      ; preds = %cond.false3032, %do.body3011.do.body3038_crit_edge, %cond.end1091.do.body3038_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !545
  tail call void @arm_heavy_mb() #5
  %712 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load i32, ptr %port, align 4
  %and3043 = and i32 %713, 1048575
  %add3044 = or i32 %and3043, -18874368
  %714 = inttoptr i32 %add3044 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %714, i8 -2) #5, !srcloc !45
  %715 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %716)
  %tobool3047.not = icmp eq i32 %716, 0
  br i1 %tobool3047.not, label %do.body3038.do.body3064_crit_edge, label %cond.false3059

do.body3038.do.body3064_crit_edge:                ; preds = %do.body3038
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3064

cond.false3059:                                   ; preds = %do.body3038
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %717 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %717(i32 noundef %716) #5
  br label %do.body3064

do.body3064:                                      ; preds = %cond.false3059, %do.body3038.do.body3064_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !546
  tail call void @arm_heavy_mb() #5
  %718 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load i32, ptr %port, align 4
  %and3069 = and i32 %719, 1048575
  %add3070 = or i32 %and3069, -18874368
  %720 = inttoptr i32 %add3070 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %720, i8 -86) #5, !srcloc !45
  %721 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %722)
  %tobool3073.not = icmp eq i32 %722, 0
  br i1 %tobool3073.not, label %do.body3064.do.body3090_crit_edge, label %cond.false3085

do.body3064.do.body3090_crit_edge:                ; preds = %do.body3064
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3090

cond.false3085:                                   ; preds = %do.body3064
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %723 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %723(i32 noundef %722) #5
  br label %do.body3090

do.body3090:                                      ; preds = %cond.false3085, %do.body3064.do.body3090_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !547
  tail call void @arm_heavy_mb() #5
  %724 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load i32, ptr %port, align 4
  %and3095 = and i32 %725, 1048575
  %add3096 = or i32 %and3095, -18874368
  %726 = inttoptr i32 %add3096 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %726, i8 85) #5, !srcloc !45
  %727 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %728)
  %tobool3099.not = icmp eq i32 %728, 0
  br i1 %tobool3099.not, label %do.body3090.do.body3116_crit_edge, label %cond.false3111

do.body3090.do.body3116_crit_edge:                ; preds = %do.body3090
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3116

cond.false3111:                                   ; preds = %do.body3090
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %729 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %729(i32 noundef %728) #5
  br label %do.body3116

do.body3116:                                      ; preds = %cond.false3111, %do.body3090.do.body3116_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !548
  tail call void @arm_heavy_mb() #5
  %730 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load i32, ptr %port, align 4
  %and3121 = and i32 %731, 1048575
  %add3122 = or i32 %and3121, -18874368
  %732 = inttoptr i32 %add3122 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %732, i8 0) #5, !srcloc !45
  %733 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %734)
  %tobool3125.not = icmp eq i32 %734, 0
  br i1 %tobool3125.not, label %do.body3116.do.body3142_crit_edge, label %cond.false3137

do.body3116.do.body3142_crit_edge:                ; preds = %do.body3116
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3142

cond.false3137:                                   ; preds = %do.body3116
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %735 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %735(i32 noundef %734) #5
  br label %do.body3142

do.body3142:                                      ; preds = %cond.false3137, %do.body3116.do.body3142_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !549
  tail call void @arm_heavy_mb() #5
  %736 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load i32, ptr %port, align 4
  %and3147 = and i32 %737, 1048575
  %add3148 = or i32 %and3147, -18874368
  %738 = inttoptr i32 %add3148 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %738, i8 -1) #5, !srcloc !45
  %739 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %740)
  %tobool3151.not = icmp eq i32 %740, 0
  br i1 %tobool3151.not, label %do.body3142.do.body3168_crit_edge, label %cond.false3163

do.body3142.do.body3168_crit_edge:                ; preds = %do.body3142
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3168

cond.false3163:                                   ; preds = %do.body3142
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %741 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %741(i32 noundef %740) #5
  br label %do.body3168

do.body3168:                                      ; preds = %cond.false3163, %do.body3142.do.body3168_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !550
  tail call void @arm_heavy_mb() #5
  %742 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load i32, ptr %port, align 4
  %and3173 = and i32 %743, 1048575
  %add3174 = or i32 %and3173, -18874368
  %744 = inttoptr i32 %add3174 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %744, i8 -121) #5, !srcloc !45
  %745 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %746)
  %tobool3177.not = icmp eq i32 %746, 0
  br i1 %tobool3177.not, label %do.body3168.do.body3194_crit_edge, label %cond.false3189

do.body3168.do.body3194_crit_edge:                ; preds = %do.body3168
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3194

cond.false3189:                                   ; preds = %do.body3168
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %747 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %747(i32 noundef %746) #5
  br label %do.body3194

do.body3194:                                      ; preds = %cond.false3189, %do.body3168.do.body3194_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !551
  tail call void @arm_heavy_mb() #5
  %748 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load i32, ptr %port, align 4
  %and3199 = and i32 %749, 1048575
  %add3200 = or i32 %and3199, -18874368
  %750 = inttoptr i32 %add3200 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %750, i8 120) #5, !srcloc !45
  %751 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %752)
  %tobool3203.not = icmp eq i32 %752, 0
  br i1 %tobool3203.not, label %do.body3194.do.body3220_crit_edge, label %cond.false3215

do.body3194.do.body3220_crit_edge:                ; preds = %do.body3194
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3220

cond.false3215:                                   ; preds = %do.body3194
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %753 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %753(i32 noundef %752) #5
  br label %do.body3220

do.body3220:                                      ; preds = %cond.false3215, %do.body3194.do.body3220_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !552
  tail call void @arm_heavy_mb() #5
  %754 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load i32, ptr %port, align 4
  %and3225 = and i32 %755, 1048575
  %add3226 = or i32 %and3225, -18874368
  %756 = inttoptr i32 %add3226 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %756, i8 48) #5, !srcloc !45
  %757 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %758)
  %tobool3229.not = icmp eq i32 %758, 0
  br i1 %tobool3229.not, label %do.body3220.do.body3246_crit_edge, label %cond.false3241

do.body3220.do.body3246_crit_edge:                ; preds = %do.body3220
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3246

cond.false3241:                                   ; preds = %do.body3220
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %759 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %759(i32 noundef %758) #5
  br label %do.body3246

do.body3246:                                      ; preds = %cond.false3241, %do.body3220.do.body3246_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !553
  tail call void @arm_heavy_mb() #5
  %760 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load i32, ptr %port, align 4
  %add3250 = add i32 %761, 2
  %and3251 = and i32 %add3250, 1048575
  %add3252 = or i32 %and3251, -18874368
  %762 = inttoptr i32 %add3252 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %762, i8 4) #5, !srcloc !45
  %763 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %764)
  %tobool3255.not = icmp eq i32 %764, 0
  br i1 %tobool3255.not, label %do.body3246.do.body3272_crit_edge, label %cond.false3267

do.body3246.do.body3272_crit_edge:                ; preds = %do.body3246
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3272

cond.false3267:                                   ; preds = %do.body3246
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %765 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %765(i32 noundef %764) #5
  br label %do.body3272

do.body3272:                                      ; preds = %cond.false3267, %do.body3246.do.body3272_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !554
  tail call void @arm_heavy_mb() #5
  %766 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load i32, ptr %port, align 4
  %add3276 = add i32 %767, 2
  %and3277 = and i32 %add3276, 1048575
  %add3278 = or i32 %and3277, -18874368
  %768 = inttoptr i32 %add3278 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %768, i8 5) #5, !srcloc !45
  %769 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %770)
  %tobool3281.not = icmp eq i32 %770, 0
  br i1 %tobool3281.not, label %do.body3272.do.body3298_crit_edge, label %cond.false3293

do.body3272.do.body3298_crit_edge:                ; preds = %do.body3272
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3298

cond.false3293:                                   ; preds = %do.body3272
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %771 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %771(i32 noundef %770) #5
  br label %do.body3298

do.body3298:                                      ; preds = %cond.false3293, %do.body3272.do.body3298_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !555
  tail call void @arm_heavy_mb() #5
  %772 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load i32, ptr %port, align 4
  %add3302 = add i32 %773, 2
  %and3303 = and i32 %add3302, 1048575
  %add3304 = or i32 %and3303, -18874368
  %774 = inttoptr i32 %add3304 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %774, i8 4) #5, !srcloc !45
  %775 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %776)
  %tobool3307.not = icmp eq i32 %776, 0
  br i1 %tobool3307.not, label %do.body3298.do.body3324_crit_edge, label %cond.false3319

do.body3298.do.body3324_crit_edge:                ; preds = %do.body3298
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3324

cond.false3319:                                   ; preds = %do.body3298
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %777 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %777(i32 noundef %776) #5
  br label %do.body3324

do.body3324:                                      ; preds = %cond.false3319, %do.body3298.do.body3324_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !556
  tail call void @arm_heavy_mb() #5
  %778 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load i32, ptr %port, align 4
  %and3329 = and i32 %779, 1048575
  %add3330 = or i32 %and3329, -18874368
  %780 = inttoptr i32 %add3330 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %780, i8 -1) #5, !srcloc !45
  %781 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %782)
  %tobool3333.not = icmp eq i32 %782, 0
  br i1 %tobool3333.not, label %do.body3324.cond.end3349_crit_edge, label %cond.false3345

do.body3324.cond.end3349_crit_edge:               ; preds = %do.body3324
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end3349

cond.false3345:                                   ; preds = %do.body3324
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %783 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %783(i32 noundef %782) #5
  br label %cond.end3349

cond.end3349:                                     ; preds = %cond.false3345, %do.body3324.cond.end3349_crit_edge
  %784 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %784)
  store i32 %17, ptr %delay, align 4
  %785 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %785)
  store i32 %19, ptr %mode, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !557
  tail call void @arm_heavy_mb() #5
  %786 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load i32, ptr %saved_r0, align 4
  %conv3356 = trunc i32 %787 to i8
  %788 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load i32, ptr %port, align 4
  %and3359 = and i32 %789, 1048575
  %add3360 = or i32 %and3359, -18874368
  %790 = inttoptr i32 %add3360 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %790, i8 %conv3356) #5, !srcloc !45
  %791 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %792)
  %tobool3363.not = icmp eq i32 %792, 0
  br i1 %tobool3363.not, label %cond.end3349.do.body3380_crit_edge, label %cond.false3375

cond.end3349.do.body3380_crit_edge:               ; preds = %cond.end3349
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3380

cond.false3375:                                   ; preds = %cond.end3349
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %793 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %793(i32 noundef %792) #5
  br label %do.body3380

do.body3380:                                      ; preds = %cond.false3375, %cond.end3349.do.body3380_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !558
  tail call void @arm_heavy_mb() #5
  %794 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load i32, ptr %saved_r2, align 4
  %conv3384 = trunc i32 %795 to i8
  %796 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load i32, ptr %port, align 4
  %add3386 = add i32 %797, 2
  %and3387 = and i32 %add3386, 1048575
  %add3388 = or i32 %and3387, -18874368
  %798 = inttoptr i32 %add3388 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %798, i8 %conv3384) #5, !srcloc !45
  %799 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %800)
  %tobool3391.not = icmp eq i32 %800, 0
  br i1 %tobool3391.not, label %do.body3380.cond.end3407_crit_edge, label %cond.false3403

do.body3380.cond.end3407_crit_edge:               ; preds = %do.body3380
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end3407

cond.false3403:                                   ; preds = %do.body3380
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %801 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %801(i32 noundef %800) #5
  br label %cond.end3407

cond.end3407:                                     ; preds = %cond.false3403, %do.body3380.cond.end3407_crit_edge
  ret i32 5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @on26_log_adapter(ptr nocapture noundef readonly %pi, ptr nocapture noundef readnone %scratch, i32 noundef %verbose) #2 align 64 {
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %3) #8
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @__const.on26_log_adapter.mode_string, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %5, ptr noundef %7, i32 noundef %9) #8
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !33, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__UNIQUE_ID_file160, !1, !"__UNIQUE_ID_file160", i1 false, i1 false}
!1 = !{!"../drivers/block/paride/on26.c", i32 317, i32 1}
!2 = !{ptr @__UNIQUE_ID_license161, !1, !"__UNIQUE_ID_license161", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_on26__162_318_on26_init6, !4, !"__initcall__kmod_on26__162_318_on26_init6", i1 false, i1 false}
!4 = !{!"../drivers/block/paride/on26.c", i32 318, i32 1}
!5 = !{ptr @__exitcall_on26_exit, !6, !"__exitcall_on26_exit", i1 false, i1 false}
!6 = !{!"../drivers/block/paride/on26.c", i32 319, i32 1}
!7 = !{ptr @on26, !8, !"on26", i1 false, i1 false}
!8 = !{!"../drivers/block/paride/on26.c", i32 290, i32 27}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/block/paride/on26.c", i32 170, i32 3}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @on26_test_port._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @on26_test_port._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/block/paride/on26.c", i32 280, i32 36}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/block/paride/on26.c", i32 280, i32 44}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/block/paride/on26.c", i32 280, i32 52}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/block/paride/on26.c", i32 281, i32 8}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/block/paride/on26.c", i32 281, i32 17}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/block/paride/on26.c", i32 283, i32 9}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @on26_log_adapter._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @on26_log_adapter._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/block/paride/on26.c", i32 285, i32 9}
!33 = !{ptr @on26_log_adapter._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @on26_log_adapter._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 2152177834}
!45 = !{i64 4535756}
!46 = !{i64 2152178885}
!47 = !{i64 2152179901}
!48 = !{i64 2152180911}
!49 = !{i64 2152181927}
!50 = !{i64 2152182937}
!51 = !{i64 2152183947}
!52 = !{i64 2152184957}
!53 = !{i64 2152185992}
!54 = !{i64 2152187002}
!55 = !{i64 2152188012}
!56 = !{i64 2152189022}
!57 = !{i64 2152190032}
!58 = !{i64 2152191083}
!59 = !{i64 2152192099}
!60 = !{i64 2152193109}
!61 = !{i64 2152194125}
!62 = !{i64 2152195135}
!63 = !{i64 2152196145}
!64 = !{i64 2152197161}
!65 = !{i64 2152198196}
!66 = !{i64 2152199206}
!67 = !{i64 2152200216}
!68 = !{i64 2152201226}
!69 = !{i64 2152202242}
!70 = !{i64 2152203277}
!71 = !{i64 2152204287}
!72 = !{i64 2152205297}
!73 = !{i64 2152206307}
!74 = !{i64 2152207317}
!75 = !{i64 2152208327}
!76 = !{i64 2152209337}
!77 = !{i64 2152210347}
!78 = !{i64 2152211357}
!79 = !{i64 2152212367}
!80 = !{i64 2152213377}
!81 = !{i64 2152214387}
!82 = !{i64 2152215403}
!83 = !{i64 2152216413}
!84 = !{i64 2152217423}
!85 = !{i64 2152218439}
!86 = !{i64 2152219449}
!87 = !{i64 2152107071}
!88 = !{i64 2152108122}
!89 = !{i64 2152109138}
!90 = !{i64 2152110148}
!91 = !{i64 2152111164}
!92 = !{i64 2152112174}
!93 = !{i64 2152113184}
!94 = !{i64 2152114194}
!95 = !{i64 2152115229}
!96 = !{i64 2152116239}
!97 = !{i64 2152117249}
!98 = !{i64 2152118259}
!99 = !{i64 2152119269}
!100 = !{i64 2152120320}
!101 = !{i64 2152121336}
!102 = !{i64 2152122346}
!103 = !{i64 2152123362}
!104 = !{i64 2152124372}
!105 = !{i64 2152125382}
!106 = !{i64 2152126392}
!107 = !{i64 4536151}
!108 = !{i64 2152128087}
!109 = !{i64 2152128355}
!110 = !{i64 2152129365}
!111 = !{i64 2152131060}
!112 = !{i64 2152131328}
!113 = !{i64 2152132338}
!114 = !{i64 2152133348}
!115 = !{i64 2152134358}
!116 = !{i64 2152135368}
!117 = !{i64 2152136407}
!118 = !{i64 2152137458}
!119 = !{i64 2152138474}
!120 = !{i64 2152139484}
!121 = !{i64 2152140500}
!122 = !{i64 2152145571}
!123 = !{i64 2152146581}
!124 = !{i64 2152147591}
!125 = !{i64 2152148626}
!126 = !{i64 2152149636}
!127 = !{i64 2152150646}
!128 = !{i64 2152151656}
!129 = !{i64 2152152666}
!130 = !{i64 2152153717}
!131 = !{i64 2152154733}
!132 = !{i64 2152155743}
!133 = !{i64 2152156759}
!134 = !{i64 2152157769}
!135 = !{i64 2152158779}
!136 = !{i64 2152159798}
!137 = !{i64 2152161493}
!138 = !{i64 2152161761}
!139 = !{i64 2152162780}
!140 = !{i64 2152163790}
!141 = !{i64 2152164800}
!142 = !{i64 2152165810}
!143 = !{i64 2152166820}
!144 = !{i64 2152167830}
!145 = !{i64 2152168840}
!146 = !{i64 2152169850}
!147 = !{i64 2152170860}
!148 = !{i64 2152171879}
!149 = !{i64 2152173574}
!150 = !{i64 2152173842}
!151 = !{i64 2152174861}
!152 = !{i64 2152176556}
!153 = !{i64 2152176824}
!154 = !{i64 2152561254}
!155 = !{i64 2152562305}
!156 = !{i64 2152563321}
!157 = !{i64 2152564331}
!158 = !{i64 2152565347}
!159 = !{i64 2152566357}
!160 = !{i64 2152567367}
!161 = !{i64 2152568377}
!162 = !{i64 2152569412}
!163 = !{i64 2152570422}
!164 = !{i64 2152571432}
!165 = !{i64 2152572442}
!166 = !{i64 2152573452}
!167 = !{i64 2152574503}
!168 = !{i64 2152575519}
!169 = !{i64 2152576529}
!170 = !{i64 2152577545}
!171 = !{i64 2152578555}
!172 = !{i64 2152579565}
!173 = !{i64 2152580611}
!174 = !{i64 2152581646}
!175 = !{i64 2152582656}
!176 = !{i64 2152583666}
!177 = !{i64 2152584676}
!178 = !{i64 2152585686}
!179 = !{i64 2152586737}
!180 = !{i64 2152587753}
!181 = !{i64 2152588763}
!182 = !{i64 2152589779}
!183 = !{i64 2152590789}
!184 = !{i64 2152591799}
!185 = !{i64 2152593351}
!186 = !{i64 2152594382}
!187 = !{i64 2152595392}
!188 = !{i64 2152596429}
!189 = !{i64 2152597439}
!190 = !{i64 2152598449}
!191 = !{i64 2152599459}
!192 = !{i64 2152600510}
!193 = !{i64 2152601526}
!194 = !{i64 2152602536}
!195 = !{i64 2152603552}
!196 = !{i64 2152604562}
!197 = !{i64 2152605572}
!198 = !{i64 2152606609}
!199 = !{i64 2152607644}
!200 = !{i64 2152608654}
!201 = !{i64 2152609664}
!202 = !{i64 2152610674}
!203 = !{i64 2152611684}
!204 = !{i64 2152612694}
!205 = !{i64 2152613704}
!206 = !{i64 2152614714}
!207 = !{i64 2152615724}
!208 = !{i64 2152616734}
!209 = !{i64 2152617744}
!210 = !{i64 2152618763}
!211 = !{i64 2152620330}
!212 = !{i64 2152621349}
!213 = !{i64 2152622359}
!214 = !{i64 2152623369}
!215 = !{i64 2152624379}
!216 = !{i64 2152625389}
!217 = !{i64 2152626399}
!218 = !{i64 2152627409}
!219 = !{i64 2152628419}
!220 = !{i64 2152629438}
!221 = !{i64 2152631031}
!222 = !{i64 4535333}
!223 = !{i64 2152632168}
!224 = !{i64 2152633178}
!225 = !{i64 2152634188}
!226 = !{i64 2152635198}
!227 = !{i64 2152636208}
!228 = !{i64 2152637218}
!229 = !{i64 2152638228}
!230 = !{i64 2152639238}
!231 = !{i64 2152640257}
!232 = !{i64 2152641850}
!233 = !{i64 4535953}
!234 = !{i64 2152642987}
!235 = !{i64 2152428268}
!236 = !{i64 2152429319}
!237 = !{i64 2152430335}
!238 = !{i64 2152431345}
!239 = !{i64 2152432361}
!240 = !{i64 2152433371}
!241 = !{i64 2152434381}
!242 = !{i64 2152435391}
!243 = !{i64 2152436426}
!244 = !{i64 2152437436}
!245 = !{i64 2152438446}
!246 = !{i64 2152439456}
!247 = !{i64 2152440466}
!248 = !{i64 2152441517}
!249 = !{i64 2152442533}
!250 = !{i64 2152443543}
!251 = !{i64 2152444559}
!252 = !{i64 2152445569}
!253 = !{i64 2152446579}
!254 = !{i64 2152447598}
!255 = !{i64 2152448633}
!256 = !{i64 2152449643}
!257 = !{i64 2152450653}
!258 = !{i64 2152451663}
!259 = !{i64 2152452673}
!260 = !{i64 2152453724}
!261 = !{i64 2152454740}
!262 = !{i64 2152455750}
!263 = !{i64 2152456766}
!264 = !{i64 2152457776}
!265 = !{i64 2152458786}
!266 = !{i64 2152460338}
!267 = !{i64 2152462033}
!268 = !{i64 2152462301}
!269 = !{i64 2152463996}
!270 = !{i64 2152464293}
!271 = !{i64 2152465344}
!272 = !{i64 2152466360}
!273 = !{i64 2152467370}
!274 = !{i64 2152468386}
!275 = !{i64 2152469396}
!276 = !{i64 2152470406}
!277 = !{i64 2152471416}
!278 = !{i64 2152472451}
!279 = !{i64 2152473461}
!280 = !{i64 2152474471}
!281 = !{i64 2152475481}
!282 = !{i64 2152476491}
!283 = !{i64 2152477542}
!284 = !{i64 2152478558}
!285 = !{i64 2152479568}
!286 = !{i64 2152480584}
!287 = !{i64 2152481594}
!288 = !{i64 2152482604}
!289 = !{i64 2152483614}
!290 = !{i64 2152484649}
!291 = !{i64 2152485659}
!292 = !{i64 2152486669}
!293 = !{i64 2152487679}
!294 = !{i64 2152488689}
!295 = !{i64 2152489740}
!296 = !{i64 2152490756}
!297 = !{i64 2152491766}
!298 = !{i64 2152492782}
!299 = !{i64 2152493792}
!300 = !{i64 2152494802}
!301 = !{i64 2152495821}
!302 = !{i64 2152496856}
!303 = !{i64 2152497866}
!304 = !{i64 2152498876}
!305 = !{i64 2152499886}
!306 = !{i64 2152500896}
!307 = !{i64 2152501947}
!308 = !{i64 2152502963}
!309 = !{i64 2152503973}
!310 = !{i64 2152504989}
!311 = !{i64 2152505999}
!312 = !{i64 2152507009}
!313 = !{i64 2152508570}
!314 = !{i64 2152510265}
!315 = !{i64 2152510542}
!316 = !{i64 2152512237}
!317 = !{i64 2152512505}
!318 = !{i64 2152513556}
!319 = !{i64 2152518633}
!320 = !{i64 2152519643}
!321 = !{i64 2152520659}
!322 = !{i64 2152521669}
!323 = !{i64 2152522679}
!324 = !{i64 2152523689}
!325 = !{i64 2152524724}
!326 = !{i64 2152525734}
!327 = !{i64 2152526744}
!328 = !{i64 2152527754}
!329 = !{i64 2152528764}
!330 = !{i64 2152529774}
!331 = !{i64 2152530784}
!332 = !{i64 2152531794}
!333 = !{i64 2152532804}
!334 = !{i64 2152533814}
!335 = !{i64 2152534824}
!336 = !{i64 2152535843}
!337 = !{i64 2152538080}
!338 = !{i64 2152538348}
!339 = !{i64 2152539358}
!340 = !{i64 2152540368}
!341 = !{i64 2152541378}
!342 = !{i64 2152542388}
!343 = !{i64 2152543398}
!344 = !{i64 2152544408}
!345 = !{i64 2152545418}
!346 = !{i64 2152546437}
!347 = !{i64 4535533}
!348 = !{i64 2152549026}
!349 = !{i64 2152549294}
!350 = !{i64 2152550304}
!351 = !{i64 2152551314}
!352 = !{i64 2152552324}
!353 = !{i64 2152553334}
!354 = !{i64 2152554344}
!355 = !{i64 2152555354}
!356 = !{i64 2152556364}
!357 = !{i64 2152557383}
!358 = !{i64 4536371}
!359 = !{i64 2152559976}
!360 = !{i64 2152560244}
!361 = !{i64 2152221144}
!362 = !{i64 2152222097}
!363 = !{i64 2152222478}
!364 = !{i64 2152223497}
!365 = !{i64 2152224516}
!366 = !{i64 2152225526}
!367 = !{i64 2152226545}
!368 = !{i64 2152227564}
!369 = !{i64 2152228583}
!370 = !{i64 2152229602}
!371 = !{i64 2152230612}
!372 = !{i64 2152231622}
!373 = !{i64 2152232632}
!374 = !{i64 2152233651}
!375 = !{i64 2152234661}
!376 = !{i64 2152235712}
!377 = !{i64 2152236728}
!378 = !{i64 2152237738}
!379 = !{i64 2152238754}
!380 = !{i64 2152239764}
!381 = !{i64 2152240774}
!382 = !{i64 2152241784}
!383 = !{i64 2152242819}
!384 = !{i64 2152243829}
!385 = !{i64 2152244839}
!386 = !{i64 2152245849}
!387 = !{i64 2152246859}
!388 = !{i64 2152247910}
!389 = !{i64 2152248926}
!390 = !{i64 2152249936}
!391 = !{i64 2152250952}
!392 = !{i64 2152251962}
!393 = !{i64 2152252972}
!394 = !{i64 2152253982}
!395 = !{i64 2152255017}
!396 = !{i64 2152256027}
!397 = !{i64 2152257037}
!398 = !{i64 2152258047}
!399 = !{i64 2152260067}
!400 = !{i64 2152261077}
!401 = !{i64 2152262087}
!402 = !{i64 2152264148}
!403 = !{i64 2152265164}
!404 = !{i64 2152266174}
!405 = !{i64 2152267190}
!406 = !{i64 2152268200}
!407 = !{i64 2152269210}
!408 = !{i64 2152270220}
!409 = !{i64 2152271271}
!410 = !{i64 2152272287}
!411 = !{i64 2152273297}
!412 = !{i64 2152274313}
!413 = !{i64 2152275323}
!414 = !{i64 2152276333}
!415 = !{i64 2152277456}
!416 = !{i64 2152278475}
!417 = !{i64 2152279494}
!418 = !{i64 2152280504}
!419 = !{i64 2152281523}
!420 = !{i64 2152282542}
!421 = !{i64 2152283561}
!422 = !{i64 2152284580}
!423 = !{i64 2152285590}
!424 = !{i64 2152286600}
!425 = !{i64 2152287610}
!426 = !{i64 2152288629}
!427 = !{i64 2152289672}
!428 = !{i64 2152290715}
!429 = !{i64 2152292410}
!430 = !{i64 2152293363}
!431 = !{i64 2152293637}
!432 = !{i64 2152294760}
!433 = !{i64 2152295779}
!434 = !{i64 2152296798}
!435 = !{i64 2152297808}
!436 = !{i64 2152298827}
!437 = !{i64 2152299846}
!438 = !{i64 2152300865}
!439 = !{i64 2152301884}
!440 = !{i64 2152302894}
!441 = !{i64 2152303904}
!442 = !{i64 2152304914}
!443 = !{i64 2152305933}
!444 = !{i64 2152307053}
!445 = !{i64 2152308072}
!446 = !{i64 2152309091}
!447 = !{i64 2152310101}
!448 = !{i64 2152311120}
!449 = !{i64 2152312139}
!450 = !{i64 2152313158}
!451 = !{i64 2152314168}
!452 = !{i64 2152315178}
!453 = !{i64 2152316188}
!454 = !{i64 2152317198}
!455 = !{i64 2152318217}
!456 = !{i64 2152319236}
!457 = !{i64 2152320255}
!458 = !{i64 2152321274}
!459 = !{i64 2152322284}
!460 = !{i64 2152323303}
!461 = !{i64 2152324998}
!462 = !{i64 2152325275}
!463 = !{i64 2152326970}
!464 = !{i64 2152327247}
!465 = !{i64 2152328266}
!466 = !{i64 2152329276}
!467 = !{i64 2152330286}
!468 = !{i64 2152331981}
!469 = !{i64 2152332249}
!470 = !{i64 2152333268}
!471 = !{i64 2152334278}
!472 = !{i64 2152335329}
!473 = !{i64 2152336345}
!474 = !{i64 2152337355}
!475 = !{i64 2152338371}
!476 = !{i64 2152339381}
!477 = !{i64 2152340391}
!478 = !{i64 2152341401}
!479 = !{i64 2152342436}
!480 = !{i64 2152343446}
!481 = !{i64 2152344456}
!482 = !{i64 2152345466}
!483 = !{i64 2152346476}
!484 = !{i64 2152347527}
!485 = !{i64 2152348543}
!486 = !{i64 2152349553}
!487 = !{i64 2152350569}
!488 = !{i64 2152351579}
!489 = !{i64 2152352589}
!490 = !{i64 2152353599}
!491 = !{i64 2152354634}
!492 = !{i64 2152355644}
!493 = !{i64 2152356654}
!494 = !{i64 2152357664}
!495 = !{i64 2152358674}
!496 = !{i64 2152359725}
!497 = !{i64 2152360741}
!498 = !{i64 2152361751}
!499 = !{i64 2152362767}
!500 = !{i64 2152363777}
!501 = !{i64 2152364787}
!502 = !{i64 2152365797}
!503 = !{i64 2152366832}
!504 = !{i64 2152367842}
!505 = !{i64 2152368852}
!506 = !{i64 2152369862}
!507 = !{i64 2152371420}
!508 = !{i64 2152372471}
!509 = !{i64 2152373487}
!510 = !{i64 2152374497}
!511 = !{i64 2152375513}
!512 = !{i64 2152376523}
!513 = !{i64 2152377533}
!514 = !{i64 2152378549}
!515 = !{i64 2152379584}
!516 = !{i64 2152380594}
!517 = !{i64 2152381604}
!518 = !{i64 2152382614}
!519 = !{i64 2152384172}
!520 = !{i64 2152385223}
!521 = !{i64 2152386239}
!522 = !{i64 2152387249}
!523 = !{i64 2152388265}
!524 = !{i64 2152389275}
!525 = !{i64 2152390285}
!526 = !{i64 2152391295}
!527 = !{i64 2152392330}
!528 = !{i64 2152393340}
!529 = !{i64 2152394350}
!530 = !{i64 2152395360}
!531 = !{i64 2152399640}
!532 = !{i64 2152400691}
!533 = !{i64 2152401707}
!534 = !{i64 2152402717}
!535 = !{i64 2152403733}
!536 = !{i64 2152404743}
!537 = !{i64 2152405753}
!538 = !{i64 2152406763}
!539 = !{i64 2152407814}
!540 = !{i64 2152408830}
!541 = !{i64 2152409840}
!542 = !{i64 2152410856}
!543 = !{i64 2152411866}
!544 = !{i64 2152412876}
!545 = !{i64 2152413999}
!546 = !{i64 2152415018}
!547 = !{i64 2152416037}
!548 = !{i64 2152417047}
!549 = !{i64 2152418066}
!550 = !{i64 2152419085}
!551 = !{i64 2152420104}
!552 = !{i64 2152421123}
!553 = !{i64 2152422133}
!554 = !{i64 2152423143}
!555 = !{i64 2152424153}
!556 = !{i64 2152425172}
!557 = !{i64 2152426215}
!558 = !{i64 2152427258}

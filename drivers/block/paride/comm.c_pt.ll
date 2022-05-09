; ModuleID = '/llk/IR_all_yes/drivers/block/paride/comm.c_pt.bc'
source_filename = "../drivers/block/paride/comm.c"
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

@comm = internal global { %struct.pi_protocol, [48 x i8] } { %struct.pi_protocol { [8 x i8] c"comm\00\00\00\00", i32 0, i32 5, i32 2, i32 1, i32 1, ptr @comm_write_regr, ptr @comm_read_regr, ptr @comm_write_block, ptr @comm_read_block, ptr @comm_connect, ptr @comm_disconnect, ptr null, ptr null, ptr null, ptr @comm_log_adapter, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file160 = internal constant [36 x i8] c"comm.file=drivers/block/paride/comm\00", section ".modinfo", align 1
@__UNIQUE_ID_license161 = internal constant [17 x i8] c"comm.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_comm__162_217_comm_init6 = internal global ptr @comm_init, section ".initcall6.init", align 4
@__exitcall_comm_exit = internal global ptr @comm_exit, section ".exitcall.exit", align 4
@cont_map = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8, i32 16], [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EPP-8\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EPP-16\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EPP-32\00", [25 x i8] zeroinitializer }, align 32
@__const.comm_log_adapter.mode_string = private unnamed_addr constant [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], align 4
@comm_log_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: comm %s, DataStor Commuter at 0x%x, \00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"comm_log_adapter\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/block/paride/comm.c\00", [36 x i8] zeroinitializer }, align 32
@comm_log_adapter._entry_ptr = internal global ptr @comm_log_adapter._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.01\00", [27 x i8] zeroinitializer }, align 32
@comm_log_adapter._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.7, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mode %d (%s), delay %d\0A\00", [40 x i8] zeroinitializer }, align 32
@comm_log_adapter._entry_ptr.11 = internal global ptr @comm_log_adapter._entry.9, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.12 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.13 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.15 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 190, i32 27 }
@___asan_gen_.18 = private unnamed_addr constant [9 x i8] c"cont_map\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 43, i32 13 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 181, i32 36 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 181, i32 44 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 181, i32 52 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 181, i32 60 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 181, i32 69 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 183, i32 9 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [31 x i8] c"../drivers/block/paride/comm.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 185, i32 9 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_file160, ptr @__UNIQUE_ID_license161, ptr @__exitcall_comm_exit, ptr @__initcall__kmod_comm__162_217_comm_init6, ptr @comm_exit, ptr @comm_log_adapter._entry, ptr @comm_log_adapter._entry.9, ptr @comm_log_adapter._entry_ptr, ptr @comm_log_adapter._entry_ptr.11, ptr @comm, ptr @cont_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comm to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cont_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comm_log_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comm_log_adapter._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @comm_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @paride_unregister(ptr noundef nonnull @comm) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @paride_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @comm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @paride_register(ptr noundef nonnull @comm) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @comm_write_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %regr, i32 noundef %val) #2 align 64 {
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
    i32 0, label %entry.do.body_crit_edge
    i32 1, label %entry.do.body_crit_edge490
    i32 2, label %entry.do.body302_crit_edge
    i32 3, label %entry.do.body302_crit_edge491
    i32 4, label %entry.do.body302_crit_edge492
  ]

entry.do.body302_crit_edge492:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body302

entry.do.body302_crit_edge491:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body302

entry.do.body302_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body302

entry.do.body_crit_edge490:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge490
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %add to i8
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %and = and i32 %6, 1048575
  %add2 = or i32 %and, -18874368
  %7 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv) #5, !srcloc !42
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.body.do.body14_crit_edge, label %cond.false9

do.body.do.body14_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14

cond.false9:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %9) #5
  br label %do.body14

do.body14:                                        ; preds = %cond.false9, %do.body.do.body14_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add18 = add i32 %12, 2
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %13 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 5) #5, !srcloc !42
  %14 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool23.not = icmp eq i32 %15, 0
  br i1 %tobool23.not, label %do.body14.do.body40_crit_edge, label %cond.false35

do.body14.do.body40_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body40

cond.false35:                                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %16(i32 noundef %15) #5
  br label %do.body40

do.body40:                                        ; preds = %cond.false35, %do.body14.do.body40_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port, align 4
  %add44 = add i32 %18, 2
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %19 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 13) #5, !srcloc !42
  %20 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool49.not = icmp eq i32 %21, 0
  br i1 %tobool49.not, label %do.body40.do.body66_crit_edge, label %cond.false61

do.body40.do.body66_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body66

cond.false61:                                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %22(i32 noundef %21) #5
  br label %do.body66

do.body66:                                        ; preds = %cond.false61, %do.body40.do.body66_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port, align 4
  %add70 = add i32 %24, 2
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %25 = inttoptr i32 %add72 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 13) #5, !srcloc !42
  %26 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool75.not = icmp eq i32 %27, 0
  br i1 %tobool75.not, label %do.body66.do.body92_crit_edge, label %cond.false87

do.body66.do.body92_crit_edge:                    ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body92

cond.false87:                                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %28(i32 noundef %27) #5
  br label %do.body92

do.body92:                                        ; preds = %cond.false87, %do.body66.do.body92_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port, align 4
  %add96 = add i32 %30, 2
  %and97 = and i32 %add96, 1048575
  %add98 = or i32 %and97, -18874368
  %31 = inttoptr i32 %add98 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 5) #5, !srcloc !42
  %32 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool101.not = icmp eq i32 %33, 0
  br i1 %tobool101.not, label %do.body92.do.body118_crit_edge, label %cond.false113

do.body92.do.body118_crit_edge:                   ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body118

cond.false113:                                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %34(i32 noundef %33) #5
  br label %do.body118

do.body118:                                       ; preds = %cond.false113, %do.body92.do.body118_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port, align 4
  %add122 = add i32 %36, 2
  %and123 = and i32 %add122, 1048575
  %add124 = or i32 %and123, -18874368
  %37 = inttoptr i32 %add124 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 4) #5, !srcloc !42
  %38 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool127.not = icmp eq i32 %39, 0
  br i1 %tobool127.not, label %do.body118.do.body144_crit_edge, label %cond.false139

do.body118.do.body144_crit_edge:                  ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body144

cond.false139:                                    ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %40(i32 noundef %39) #5
  br label %do.body144

do.body144:                                       ; preds = %cond.false139, %do.body118.do.body144_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %conv147 = trunc i32 %val to i8
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port, align 4
  %and150 = and i32 %42, 1048575
  %add151 = or i32 %and150, -18874368
  %43 = inttoptr i32 %add151 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %conv147) #5, !srcloc !42
  %44 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool154.not = icmp eq i32 %45, 0
  br i1 %tobool154.not, label %do.body144.do.body171_crit_edge, label %cond.false166

do.body144.do.body171_crit_edge:                  ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body171

cond.false166:                                    ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %46(i32 noundef %45) #5
  br label %do.body171

do.body171:                                       ; preds = %cond.false166, %do.body144.do.body171_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port, align 4
  %add175 = add i32 %48, 2
  %and176 = and i32 %add175, 1048575
  %add177 = or i32 %and176, -18874368
  %49 = inttoptr i32 %add177 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 5) #5, !srcloc !42
  %50 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool180.not = icmp eq i32 %51, 0
  br i1 %tobool180.not, label %do.body171.do.body197_crit_edge, label %cond.false192

do.body171.do.body197_crit_edge:                  ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body197

cond.false192:                                    ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %52(i32 noundef %51) #5
  br label %do.body197

do.body197:                                       ; preds = %cond.false192, %do.body171.do.body197_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %53 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port, align 4
  %add201 = add i32 %54, 2
  %and202 = and i32 %add201, 1048575
  %add203 = or i32 %and202, -18874368
  %55 = inttoptr i32 %add203 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 7) #5, !srcloc !42
  %56 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool206.not = icmp eq i32 %57, 0
  br i1 %tobool206.not, label %do.body197.do.body223_crit_edge, label %cond.false218

do.body197.do.body223_crit_edge:                  ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body223

cond.false218:                                    ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %58(i32 noundef %57) #5
  br label %do.body223

do.body223:                                       ; preds = %cond.false218, %do.body197.do.body223_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port, align 4
  %add227 = add i32 %60, 2
  %and228 = and i32 %add227, 1048575
  %add229 = or i32 %and228, -18874368
  %61 = inttoptr i32 %add229 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 7) #5, !srcloc !42
  %62 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool232.not = icmp eq i32 %63, 0
  br i1 %tobool232.not, label %do.body223.do.body249_crit_edge, label %cond.false244

do.body223.do.body249_crit_edge:                  ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body249

cond.false244:                                    ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %64(i32 noundef %63) #5
  br label %do.body249

do.body249:                                       ; preds = %cond.false244, %do.body223.do.body249_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %65 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port, align 4
  %add253 = add i32 %66, 2
  %and254 = and i32 %add253, 1048575
  %add255 = or i32 %and254, -18874368
  %67 = inttoptr i32 %add255 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 5) #5, !srcloc !42
  %68 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool258.not = icmp eq i32 %69, 0
  br i1 %tobool258.not, label %do.body249.do.body275_crit_edge, label %cond.false270

do.body249.do.body275_crit_edge:                  ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body275

cond.false270:                                    ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %70(i32 noundef %69) #5
  br label %do.body275

do.body275:                                       ; preds = %cond.false270, %do.body249.do.body275_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %71 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port, align 4
  %add279 = add i32 %72, 2
  %and280 = and i32 %add279, 1048575
  %add281 = or i32 %and280, -18874368
  %73 = inttoptr i32 %add281 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 4) #5, !srcloc !42
  %74 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool284.not = icmp eq i32 %75, 0
  br i1 %tobool284.not, label %do.body275.sw.epilog_crit_edge, label %do.body275.sw.epilog.sink.split_crit_edge

do.body275.sw.epilog.sink.split_crit_edge:        ; preds = %do.body275
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body275.sw.epilog_crit_edge:                   ; preds = %do.body275
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body302:                                       ; preds = %entry.do.body302_crit_edge, %entry.do.body302_crit_edge491, %entry.do.body302_crit_edge492
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %conv305 = trunc i32 %add to i8
  %port306 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %76 = ptrtoint ptr %port306 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port306, align 4
  %add307 = add i32 %77, 3
  %and308 = and i32 %add307, 1048575
  %add309 = or i32 %and308, -18874368
  %78 = inttoptr i32 %add309 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 %conv305) #5, !srcloc !42
  %delay311 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %79 = ptrtoint ptr %delay311 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %delay311, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool312.not = icmp eq i32 %80, 0
  br i1 %tobool312.not, label %do.body302.cond.end346_crit_edge, label %cond.false324

do.body302.cond.end346_crit_edge:                 ; preds = %do.body302
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end346

cond.false324:                                    ; preds = %do.body302
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %81(i32 noundef %80) #5
  %82 = ptrtoint ptr %delay311 to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pr = load i32, ptr %delay311, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool330.not = icmp eq i32 %.pr, 0
  br i1 %tobool330.not, label %cond.false324.cond.end346_crit_edge, label %cond.false342

cond.false324.cond.end346_crit_edge:              ; preds = %cond.false324
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end346

cond.false342:                                    ; preds = %cond.false324
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %83(i32 noundef %.pr) #5
  br label %cond.end346

cond.end346:                                      ; preds = %cond.false342, %cond.false324.cond.end346_crit_edge, %do.body302.cond.end346_crit_edge
  %84 = ptrtoint ptr %port306 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port306, align 4
  %add348 = add i32 %85, 1
  %and349 = and i32 %add348, 1048575
  %add350 = or i32 %and349, -18874368
  %86 = inttoptr i32 %add350 to ptr
  %87 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %86) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %conv358 = trunc i32 %val to i8
  %88 = ptrtoint ptr %port306 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port306, align 4
  %add360 = add i32 %89, 4
  %and361 = and i32 %add360, 1048575
  %add362 = or i32 %and361, -18874368
  %90 = inttoptr i32 %add362 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 %conv358) #5, !srcloc !42
  %91 = ptrtoint ptr %delay311 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %delay311, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool365.not = icmp eq i32 %92, 0
  br i1 %tobool365.not, label %cond.end346.sw.epilog_crit_edge, label %cond.end346.sw.epilog.sink.split_crit_edge

cond.end346.sw.epilog.sink.split_crit_edge:       ; preds = %cond.end346
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

cond.end346.sw.epilog_crit_edge:                  ; preds = %cond.end346
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %cond.end346.sw.epilog.sink.split_crit_edge, %do.body275.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %75, %do.body275.sw.epilog.sink.split_crit_edge ], [ %92, %cond.end346.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %93(i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %cond.end346.sw.epilog_crit_edge, %do.body275.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comm_read_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %regr) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body305
    i32 2, label %entry.do.body570_crit_edge
    i32 3, label %entry.do.body570_crit_edge909
    i32 4, label %entry.do.body570_crit_edge910
  ]

entry.do.body570_crit_edge910:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body570

entry.do.body570_crit_edge909:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body570

entry.do.body570_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body570

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %add to i8
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %and = and i32 %6, 1048575
  %add2 = or i32 %and, -18874368
  %7 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv) #5, !srcloc !42
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.body.do.body14_crit_edge, label %cond.false9

do.body.do.body14_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14

cond.false9:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %9) #5
  br label %do.body14

do.body14:                                        ; preds = %cond.false9, %do.body.do.body14_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add18 = add i32 %12, 2
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %13 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 5) #5, !srcloc !42
  %14 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool23.not = icmp eq i32 %15, 0
  br i1 %tobool23.not, label %do.body14.do.body40_crit_edge, label %cond.false35

do.body14.do.body40_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body40

cond.false35:                                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %16(i32 noundef %15) #5
  br label %do.body40

do.body40:                                        ; preds = %cond.false35, %do.body14.do.body40_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port, align 4
  %add44 = add i32 %18, 2
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %19 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 13) #5, !srcloc !42
  %20 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool49.not = icmp eq i32 %21, 0
  br i1 %tobool49.not, label %do.body40.do.body66_crit_edge, label %cond.false61

do.body40.do.body66_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body66

cond.false61:                                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %22(i32 noundef %21) #5
  br label %do.body66

do.body66:                                        ; preds = %cond.false61, %do.body40.do.body66_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port, align 4
  %add70 = add i32 %24, 2
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %25 = inttoptr i32 %add72 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 13) #5, !srcloc !42
  %26 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool75.not = icmp eq i32 %27, 0
  br i1 %tobool75.not, label %do.body66.do.body92_crit_edge, label %cond.false87

do.body66.do.body92_crit_edge:                    ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body92

cond.false87:                                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %28(i32 noundef %27) #5
  br label %do.body92

do.body92:                                        ; preds = %cond.false87, %do.body66.do.body92_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port, align 4
  %add96 = add i32 %30, 2
  %and97 = and i32 %add96, 1048575
  %add98 = or i32 %and97, -18874368
  %31 = inttoptr i32 %add98 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 5) #5, !srcloc !42
  %32 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool101.not = icmp eq i32 %33, 0
  br i1 %tobool101.not, label %do.body92.do.body118_crit_edge, label %cond.false113

do.body92.do.body118_crit_edge:                   ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body118

cond.false113:                                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %34(i32 noundef %33) #5
  br label %do.body118

do.body118:                                       ; preds = %cond.false113, %do.body92.do.body118_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port, align 4
  %add122 = add i32 %36, 2
  %and123 = and i32 %add122, 1048575
  %add124 = or i32 %and123, -18874368
  %37 = inttoptr i32 %add124 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 4) #5, !srcloc !42
  %38 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool127.not = icmp eq i32 %39, 0
  br i1 %tobool127.not, label %do.body118.do.body144_crit_edge, label %cond.false139

do.body118.do.body144_crit_edge:                  ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body144

cond.false139:                                    ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %40(i32 noundef %39) #5
  br label %do.body144

do.body144:                                       ; preds = %cond.false139, %do.body118.do.body144_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port, align 4
  %and149 = and i32 %42, 1048575
  %add150 = or i32 %and149, -18874368
  %43 = inttoptr i32 %add150 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 0) #5, !srcloc !42
  %44 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool153.not = icmp eq i32 %45, 0
  br i1 %tobool153.not, label %do.body144.do.body170_crit_edge, label %cond.false165

do.body144.do.body170_crit_edge:                  ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body170

cond.false165:                                    ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %46(i32 noundef %45) #5
  br label %do.body170

do.body170:                                       ; preds = %cond.false165, %do.body144.do.body170_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port, align 4
  %add174 = add i32 %48, 2
  %and175 = and i32 %add174, 1048575
  %add176 = or i32 %and175, -18874368
  %49 = inttoptr i32 %add176 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 6) #5, !srcloc !42
  %50 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool179.not = icmp eq i32 %51, 0
  br i1 %tobool179.not, label %do.body170.cond.end213_crit_edge, label %cond.false191

do.body170.cond.end213_crit_edge:                 ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end213

cond.false191:                                    ; preds = %do.body170
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %52(i32 noundef %51) #5
  %53 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool197.not = icmp eq i32 %.pr, 0
  br i1 %tobool197.not, label %cond.false191.cond.end213_crit_edge, label %cond.false209

cond.false191.cond.end213_crit_edge:              ; preds = %cond.false191
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end213

cond.false209:                                    ; preds = %cond.false191
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %54(i32 noundef %.pr) #5
  br label %cond.end213

cond.end213:                                      ; preds = %cond.false209, %cond.false191.cond.end213_crit_edge, %do.body170.cond.end213_crit_edge
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port, align 4
  %add215 = add i32 %56, 1
  %and216 = and i32 %add215, 1048575
  %add217 = or i32 %and216, -18874368
  %57 = inttoptr i32 %add217 to ptr
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %57) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port, align 4
  %and227 = and i32 %60, 1048575
  %add228 = or i32 %and227, -18874368
  %61 = inttoptr i32 %add228 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 -128) #5, !srcloc !42
  %62 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool231.not = icmp eq i32 %63, 0
  br i1 %tobool231.not, label %cond.end213.cond.end265_crit_edge, label %cond.false243

cond.end213.cond.end265_crit_edge:                ; preds = %cond.end213
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end265

cond.false243:                                    ; preds = %cond.end213
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %64(i32 noundef %63) #5
  %65 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr901 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr901)
  %tobool249.not = icmp eq i32 %.pr901, 0
  br i1 %tobool249.not, label %cond.false243.cond.end265_crit_edge, label %cond.false261

cond.false243.cond.end265_crit_edge:              ; preds = %cond.false243
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end265

cond.false261:                                    ; preds = %cond.false243
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %66(i32 noundef %.pr901) #5
  br label %cond.end265

cond.end265:                                      ; preds = %cond.false261, %cond.false243.cond.end265_crit_edge, %cond.end213.cond.end265_crit_edge
  %67 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port, align 4
  %add268 = add i32 %68, 1
  %and269 = and i32 %add268, 1048575
  %add270 = or i32 %and269, -18874368
  %69 = inttoptr i32 %add270 to ptr
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %69) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %conv274 = zext i8 %70 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %71 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port, align 4
  %add280 = add i32 %72, 2
  %and281 = and i32 %add280, 1048575
  %add282 = or i32 %and281, -18874368
  %73 = inttoptr i32 %add282 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 4) #5, !srcloc !42
  %74 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool285.not = icmp eq i32 %75, 0
  br i1 %tobool285.not, label %cond.end265.cond.end301_crit_edge, label %cond.false297

cond.end265.cond.end301_crit_edge:                ; preds = %cond.end265
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end301

cond.false297:                                    ; preds = %cond.end265
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %76(i32 noundef %75) #5
  br label %cond.end301

cond.end301:                                      ; preds = %cond.false297, %cond.end265.cond.end301_crit_edge
  %77 = lshr i8 %58, 3
  %78 = and i8 %77, 15
  %and302 = zext i8 %78 to i32
  %shl = shl nuw nsw i32 %conv274, 1
  %and303 = and i32 %shl, 240
  %or = or i32 %and303, %and302
  br label %cleanup

do.body305:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %79 = trunc i32 %add to i8
  %conv309 = add i8 %79, 32
  %port310 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %80 = ptrtoint ptr %port310 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port310, align 4
  %and312 = and i32 %81, 1048575
  %add313 = or i32 %and312, -18874368
  %82 = inttoptr i32 %add313 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 %conv309) #5, !srcloc !42
  %delay315 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %83 = ptrtoint ptr %delay315 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %delay315, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool316.not = icmp eq i32 %84, 0
  br i1 %tobool316.not, label %do.body305.do.body333_crit_edge, label %cond.false328

do.body305.do.body333_crit_edge:                  ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body333

cond.false328:                                    ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %85(i32 noundef %84) #5
  br label %do.body333

do.body333:                                       ; preds = %cond.false328, %do.body305.do.body333_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %86 = ptrtoint ptr %port310 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %port310, align 4
  %add337 = add i32 %87, 2
  %and338 = and i32 %add337, 1048575
  %add339 = or i32 %and338, -18874368
  %88 = inttoptr i32 %add339 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 5) #5, !srcloc !42
  %89 = ptrtoint ptr %delay315 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %delay315, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool342.not = icmp eq i32 %90, 0
  br i1 %tobool342.not, label %do.body333.do.body359_crit_edge, label %cond.false354

do.body333.do.body359_crit_edge:                  ; preds = %do.body333
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body359

cond.false354:                                    ; preds = %do.body333
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %91(i32 noundef %90) #5
  br label %do.body359

do.body359:                                       ; preds = %cond.false354, %do.body333.do.body359_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %92 = ptrtoint ptr %port310 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %port310, align 4
  %add363 = add i32 %93, 2
  %and364 = and i32 %add363, 1048575
  %add365 = or i32 %and364, -18874368
  %94 = inttoptr i32 %add365 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 13) #5, !srcloc !42
  %95 = ptrtoint ptr %delay315 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %delay315, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool368.not = icmp eq i32 %96, 0
  br i1 %tobool368.not, label %do.body359.do.body385_crit_edge, label %cond.false380

do.body359.do.body385_crit_edge:                  ; preds = %do.body359
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body385

cond.false380:                                    ; preds = %do.body359
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %97(i32 noundef %96) #5
  br label %do.body385

do.body385:                                       ; preds = %cond.false380, %do.body359.do.body385_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %98 = ptrtoint ptr %port310 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %port310, align 4
  %add389 = add i32 %99, 2
  %and390 = and i32 %add389, 1048575
  %add391 = or i32 %and390, -18874368
  %100 = inttoptr i32 %add391 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %100, i8 13) #5, !srcloc !42
  %101 = ptrtoint ptr %delay315 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %delay315, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool394.not = icmp eq i32 %102, 0
  br i1 %tobool394.not, label %do.body385.do.body411_crit_edge, label %cond.false406

do.body385.do.body411_crit_edge:                  ; preds = %do.body385
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body411

cond.false406:                                    ; preds = %do.body385
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %103(i32 noundef %102) #5
  br label %do.body411

do.body411:                                       ; preds = %cond.false406, %do.body385.do.body411_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %104 = ptrtoint ptr %port310 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %port310, align 4
  %add415 = add i32 %105, 2
  %and416 = and i32 %add415, 1048575
  %add417 = or i32 %and416, -18874368
  %106 = inttoptr i32 %add417 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %106, i8 5) #5, !srcloc !42
  %107 = ptrtoint ptr %delay315 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %delay315, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool420.not = icmp eq i32 %108, 0
  br i1 %tobool420.not, label %do.body411.do.body437_crit_edge, label %cond.false432

do.body411.do.body437_crit_edge:                  ; preds = %do.body411
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body437

cond.false432:                                    ; preds = %do.body411
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %109(i32 noundef %108) #5
  br label %do.body437

do.body437:                                       ; preds = %cond.false432, %do.body411.do.body437_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %110 = ptrtoint ptr %port310 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %port310, align 4
  %add441 = add i32 %111, 2
  %and442 = and i32 %add441, 1048575
  %add443 = or i32 %and442, -18874368
  %112 = inttoptr i32 %add443 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %112, i8 4) #5, !srcloc !42
  %113 = ptrtoint ptr %delay315 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %delay315, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool446.not = icmp eq i32 %114, 0
  br i1 %tobool446.not, label %do.body437.do.body463_crit_edge, label %cond.false458

do.body437.do.body463_crit_edge:                  ; preds = %do.body437
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body463

cond.false458:                                    ; preds = %do.body437
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %115(i32 noundef %114) #5
  br label %do.body463

do.body463:                                       ; preds = %cond.false458, %do.body437.do.body463_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %116 = ptrtoint ptr %port310 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %port310, align 4
  %and468 = and i32 %117, 1048575
  %add469 = or i32 %and468, -18874368
  %118 = inttoptr i32 %add469 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %118, i8 0) #5, !srcloc !42
  %119 = ptrtoint ptr %delay315 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %delay315, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool472.not = icmp eq i32 %120, 0
  br i1 %tobool472.not, label %do.body463.do.body489_crit_edge, label %cond.false484

do.body463.do.body489_crit_edge:                  ; preds = %do.body463
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body489

cond.false484:                                    ; preds = %do.body463
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %121(i32 noundef %120) #5
  br label %do.body489

do.body489:                                       ; preds = %cond.false484, %do.body463.do.body489_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %122 = ptrtoint ptr %port310 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %port310, align 4
  %add493 = add i32 %123, 2
  %and494 = and i32 %add493, 1048575
  %add495 = or i32 %and494, -18874368
  %124 = inttoptr i32 %add495 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %124, i8 38) #5, !srcloc !42
  %125 = ptrtoint ptr %delay315 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %delay315, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool498.not = icmp eq i32 %126, 0
  br i1 %tobool498.not, label %do.body489.cond.end532_crit_edge, label %cond.false510

do.body489.cond.end532_crit_edge:                 ; preds = %do.body489
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end532

cond.false510:                                    ; preds = %do.body489
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %127(i32 noundef %126) #5
  %128 = ptrtoint ptr %delay315 to i32
  call void @__asan_load4_noabort(i32 %128)
  %.pr903 = load i32, ptr %delay315, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr903)
  %tobool516.not = icmp eq i32 %.pr903, 0
  br i1 %tobool516.not, label %cond.false510.cond.end532_crit_edge, label %cond.false528

cond.false510.cond.end532_crit_edge:              ; preds = %cond.false510
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end532

cond.false528:                                    ; preds = %cond.false510
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %129(i32 noundef %.pr903) #5
  br label %cond.end532

cond.end532:                                      ; preds = %cond.false528, %cond.false510.cond.end532_crit_edge, %do.body489.cond.end532_crit_edge
  %130 = ptrtoint ptr %port310 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %port310, align 4
  %and536 = and i32 %131, 1048575
  %add537 = or i32 %and536, -18874368
  %132 = inttoptr i32 %add537 to ptr
  %133 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %132) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %conv541 = zext i8 %133 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %134 = ptrtoint ptr %port310 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %port310, align 4
  %add547 = add i32 %135, 2
  %and548 = and i32 %add547, 1048575
  %add549 = or i32 %and548, -18874368
  %136 = inttoptr i32 %add549 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %136, i8 4) #5, !srcloc !42
  %137 = ptrtoint ptr %delay315 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %delay315, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool552.not = icmp eq i32 %138, 0
  br i1 %tobool552.not, label %cond.end532.cleanup_crit_edge, label %cond.false564

cond.end532.cleanup_crit_edge:                    ; preds = %cond.end532
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.false564:                                    ; preds = %cond.end532
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %139(i32 noundef %138) #5
  br label %cleanup

do.body570:                                       ; preds = %entry.do.body570_crit_edge, %entry.do.body570_crit_edge909, %entry.do.body570_crit_edge910
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %140 = trunc i32 %add to i8
  %conv574 = add i8 %140, 32
  %port575 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %141 = ptrtoint ptr %port575 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %port575, align 4
  %add576 = add i32 %142, 3
  %and577 = and i32 %add576, 1048575
  %add578 = or i32 %and577, -18874368
  %143 = inttoptr i32 %add578 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %143, i8 %conv574) #5, !srcloc !42
  %delay580 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %144 = ptrtoint ptr %delay580 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %delay580, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool581.not = icmp eq i32 %145, 0
  br i1 %tobool581.not, label %do.body570.cond.end615_crit_edge, label %cond.false593

do.body570.cond.end615_crit_edge:                 ; preds = %do.body570
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end615

cond.false593:                                    ; preds = %do.body570
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %146(i32 noundef %145) #5
  %147 = ptrtoint ptr %delay580 to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pr905 = load i32, ptr %delay580, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr905)
  %tobool599.not = icmp eq i32 %.pr905, 0
  br i1 %tobool599.not, label %cond.false593.cond.end615_crit_edge, label %cond.false611

cond.false593.cond.end615_crit_edge:              ; preds = %cond.false593
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end615

cond.false611:                                    ; preds = %cond.false593
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %148(i32 noundef %.pr905) #5
  br label %cond.end615

cond.end615:                                      ; preds = %cond.false611, %cond.false593.cond.end615_crit_edge, %do.body570.cond.end615_crit_edge
  %149 = ptrtoint ptr %port575 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %port575, align 4
  %add618 = add i32 %150, 1
  %and619 = and i32 %add618, 1048575
  %add620 = or i32 %and619, -18874368
  %151 = inttoptr i32 %add620 to ptr
  %152 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %151) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %153 = ptrtoint ptr %port575 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %port575, align 4
  %add630 = add i32 %154, 2
  %and631 = and i32 %add630, 1048575
  %add632 = or i32 %and631, -18874368
  %155 = inttoptr i32 %add632 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %155, i8 36) #5, !srcloc !42
  %156 = ptrtoint ptr %delay580 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %delay580, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool635.not = icmp eq i32 %157, 0
  br i1 %tobool635.not, label %cond.end615.cond.end669_crit_edge, label %cond.false647

cond.end615.cond.end669_crit_edge:                ; preds = %cond.end615
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end669

cond.false647:                                    ; preds = %cond.end615
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %158(i32 noundef %157) #5
  %159 = ptrtoint ptr %delay580 to i32
  call void @__asan_load4_noabort(i32 %159)
  %.pr907 = load i32, ptr %delay580, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr907)
  %tobool653.not = icmp eq i32 %.pr907, 0
  br i1 %tobool653.not, label %cond.false647.cond.end669_crit_edge, label %cond.false665

cond.false647.cond.end669_crit_edge:              ; preds = %cond.false647
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end669

cond.false665:                                    ; preds = %cond.false647
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %160 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %160(i32 noundef %.pr907) #5
  br label %cond.end669

cond.end669:                                      ; preds = %cond.false665, %cond.false647.cond.end669_crit_edge, %cond.end615.cond.end669_crit_edge
  %161 = ptrtoint ptr %port575 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %port575, align 4
  %add672 = add i32 %162, 4
  %and673 = and i32 %add672, 1048575
  %add674 = or i32 %and673, -18874368
  %163 = inttoptr i32 %add674 to ptr
  %164 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %163) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  %conv678 = zext i8 %164 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  %165 = ptrtoint ptr %port575 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %port575, align 4
  %add684 = add i32 %166, 2
  %and685 = and i32 %add684, 1048575
  %add686 = or i32 %and685, -18874368
  %167 = inttoptr i32 %add686 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %167, i8 4) #5, !srcloc !42
  %168 = ptrtoint ptr %delay580 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %delay580, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool689.not = icmp eq i32 %169, 0
  br i1 %tobool689.not, label %cond.end669.cleanup_crit_edge, label %cond.false701

cond.end669.cleanup_crit_edge:                    ; preds = %cond.end669
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.false701:                                    ; preds = %cond.end669
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %170 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %170(i32 noundef %169) #5
  br label %cleanup

cleanup:                                          ; preds = %cond.false701, %cond.end669.cleanup_crit_edge, %cond.false564, %cond.end532.cleanup_crit_edge, %cond.end301, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %cond.end301 ], [ %conv541, %cond.end532.cleanup_crit_edge ], [ %conv541, %cond.false564 ], [ %conv678, %cond.end669.cleanup_crit_edge ], [ %conv678, %cond.false701 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @comm_write_block(ptr nocapture noundef readonly %pi, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.do.body_crit_edge
    i32 1, label %entry.do.body_crit_edge717
    i32 2, label %do.body264
    i32 3, label %do.body349
    i32 4, label %do.body438
  ]

entry.do.body_crit_edge717:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge717
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 104) #5, !srcloc !42
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 5) #5, !srcloc !42
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 13) #5, !srcloc !42
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 13) #5, !srcloc !42
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 5) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %add116 = add i32 %34, 2
  %and117 = and i32 %add116, 1048575
  %add118 = or i32 %and117, -18874368
  %35 = inttoptr i32 %add118 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 4) #5, !srcloc !42
  %36 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool121.not = icmp eq i32 %37, 0
  br i1 %tobool121.not, label %do.body112.cond.end136_crit_edge, label %cond.false132

do.body112.cond.end136_crit_edge:                 ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end136

cond.false132:                                    ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %38(i32 noundef %37) #5
  br label %cond.end136

cond.end136:                                      ; preds = %cond.false132, %do.body112.cond.end136_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp137704 = icmp sgt i32 %count, 0
  br i1 %cmp137704, label %cond.end136.do.body138_crit_edge, label %cond.end136.do.body213_crit_edge

cond.end136.do.body213_crit_edge:                 ; preds = %cond.end136
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body213

cond.end136.do.body138_crit_edge:                 ; preds = %cond.end136
  br label %do.body138

do.body138:                                       ; preds = %for.inc.do.body138_crit_edge, %cond.end136.do.body138_crit_edge
  %k.0705 = phi i32 [ %inc, %for.inc.do.body138_crit_edge ], [ 0, %cond.end136.do.body138_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %add142 = add i32 %40, 2
  %and143 = and i32 %add142, 1048575
  %add144 = or i32 %and143, -18874368
  %41 = inttoptr i32 %add144 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 5) #5, !srcloc !42
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool147.not = icmp eq i32 %43, 0
  br i1 %tobool147.not, label %do.body138.do.body163_crit_edge, label %cond.false158

do.body138.do.body163_crit_edge:                  ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body163

cond.false158:                                    ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %44(i32 noundef %43) #5
  br label %do.body163

do.body163:                                       ; preds = %cond.false158, %do.body138.do.body163_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %xor = xor i32 %k.0705, 1
  %arrayidx = getelementptr i8, ptr %buf, i32 %xor
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx, align 1
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port, align 4
  %and168 = and i32 %48, 1048575
  %add169 = or i32 %and168, -18874368
  %49 = inttoptr i32 %add169 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 %46) #5, !srcloc !42
  %50 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool172.not = icmp eq i32 %51, 0
  br i1 %tobool172.not, label %do.body163.do.body188_crit_edge, label %cond.false183

do.body163.do.body188_crit_edge:                  ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body188

cond.false183:                                    ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %52(i32 noundef %51) #5
  br label %do.body188

do.body188:                                       ; preds = %cond.false183, %do.body163.do.body188_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %53 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port, align 4
  %add192 = add i32 %54, 2
  %and193 = and i32 %add192, 1048575
  %add194 = or i32 %and193, -18874368
  %55 = inttoptr i32 %add194 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 7) #5, !srcloc !42
  %56 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool197.not = icmp eq i32 %57, 0
  br i1 %tobool197.not, label %do.body188.for.inc_crit_edge, label %cond.false208

do.body188.for.inc_crit_edge:                     ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cond.false208:                                    ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %58(i32 noundef %57) #5
  br label %for.inc

for.inc:                                          ; preds = %cond.false208, %do.body188.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.0705, 1
  %exitcond710.not = icmp eq i32 %inc, %count
  br i1 %exitcond710.not, label %for.inc.do.body213_crit_edge, label %for.inc.do.body138_crit_edge

for.inc.do.body138_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body138

for.inc.do.body213_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body213

do.body213:                                       ; preds = %for.inc.do.body213_crit_edge, %cond.end136.do.body213_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port, align 4
  %add217 = add i32 %60, 2
  %and218 = and i32 %add217, 1048575
  %add219 = or i32 %and218, -18874368
  %61 = inttoptr i32 %add219 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 5) #5, !srcloc !42
  %62 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool222.not = icmp eq i32 %63, 0
  br i1 %tobool222.not, label %do.body213.do.body238_crit_edge, label %cond.false233

do.body213.do.body238_crit_edge:                  ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body238

cond.false233:                                    ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %64(i32 noundef %63) #5
  br label %do.body238

do.body238:                                       ; preds = %cond.false233, %do.body213.do.body238_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %65 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port, align 4
  %add242 = add i32 %66, 2
  %and243 = and i32 %add242, 1048575
  %add244 = or i32 %and243, -18874368
  %67 = inttoptr i32 %add244 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 4) #5, !srcloc !42
  %68 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool247.not = icmp eq i32 %69, 0
  br i1 %tobool247.not, label %do.body238.sw.epilog_crit_edge, label %cond.false258

do.body238.sw.epilog_crit_edge:                   ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

cond.false258:                                    ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %70(i32 noundef %69) #5
  br label %sw.epilog

do.body264:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %port267 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %71 = ptrtoint ptr %port267 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port267, align 4
  %add268 = add i32 %72, 3
  %and269 = and i32 %add268, 1048575
  %add270 = or i32 %and269, -18874368
  %73 = inttoptr i32 %add270 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 72) #5, !srcloc !42
  %delay272 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %74 = ptrtoint ptr %delay272 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %delay272, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool273.not = icmp eq i32 %75, 0
  br i1 %tobool273.not, label %do.body264.cond.end305_crit_edge, label %cond.false284

do.body264.cond.end305_crit_edge:                 ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end305

cond.false284:                                    ; preds = %do.body264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %76(i32 noundef %75) #5
  %77 = ptrtoint ptr %delay272 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pr = load i32, ptr %delay272, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool290.not = icmp eq i32 %.pr, 0
  br i1 %tobool290.not, label %cond.false284.cond.end305_crit_edge, label %cond.false301

cond.false284.cond.end305_crit_edge:              ; preds = %cond.false284
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end305

cond.false301:                                    ; preds = %cond.false284
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %78(i32 noundef %.pr) #5
  br label %cond.end305

cond.end305:                                      ; preds = %cond.false301, %cond.false284.cond.end305_crit_edge, %do.body264.cond.end305_crit_edge
  %79 = ptrtoint ptr %port267 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %port267, align 4
  %add307 = add i32 %80, 1
  %and308 = and i32 %add307, 1048575
  %add309 = or i32 %and308, -18874368
  %81 = inttoptr i32 %add309 to ptr
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %81) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp314702 = icmp sgt i32 %count, 0
  br i1 %cmp314702, label %cond.end305.do.body317_crit_edge, label %cond.end305.sw.epilog_crit_edge

cond.end305.sw.epilog_crit_edge:                  ; preds = %cond.end305
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

cond.end305.do.body317_crit_edge:                 ; preds = %cond.end305
  br label %do.body317

do.body317:                                       ; preds = %for.inc345.do.body317_crit_edge, %cond.end305.do.body317_crit_edge
  %k.1703 = phi i32 [ %inc346, %for.inc345.do.body317_crit_edge ], [ 0, %cond.end305.do.body317_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %xor320 = xor i32 %k.1703, 1
  %arrayidx321 = getelementptr i8, ptr %buf, i32 %xor320
  %83 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx321, align 1
  %85 = ptrtoint ptr %port267 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %port267, align 4
  %add323 = add i32 %86, 4
  %and324 = and i32 %add323, 1048575
  %add325 = or i32 %and324, -18874368
  %87 = inttoptr i32 %add325 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %87, i8 %84) #5, !srcloc !42
  %88 = ptrtoint ptr %delay272 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %delay272, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool328.not = icmp eq i32 %89, 0
  br i1 %tobool328.not, label %do.body317.for.inc345_crit_edge, label %cond.false340

do.body317.for.inc345_crit_edge:                  ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc345

cond.false340:                                    ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %90(i32 noundef %89) #5
  br label %for.inc345

for.inc345:                                       ; preds = %cond.false340, %do.body317.for.inc345_crit_edge
  %inc346 = add nuw nsw i32 %k.1703, 1
  %exitcond709.not = icmp eq i32 %inc346, %count
  br i1 %exitcond709.not, label %for.inc345.sw.epilog_crit_edge, label %for.inc345.do.body317_crit_edge

for.inc345.do.body317_crit_edge:                  ; preds = %for.inc345
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body317

for.inc345.sw.epilog_crit_edge:                   ; preds = %for.inc345
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body349:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %port352 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %91 = ptrtoint ptr %port352 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %port352, align 4
  %add353 = add i32 %92, 3
  %and354 = and i32 %add353, 1048575
  %add355 = or i32 %and354, -18874368
  %93 = inttoptr i32 %add355 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 72) #5, !srcloc !42
  %delay357 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %94 = ptrtoint ptr %delay357 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %delay357, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool358.not = icmp eq i32 %95, 0
  br i1 %tobool358.not, label %do.body349.cond.end392_crit_edge, label %cond.false370

do.body349.cond.end392_crit_edge:                 ; preds = %do.body349
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end392

cond.false370:                                    ; preds = %do.body349
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %96(i32 noundef %95) #5
  %97 = ptrtoint ptr %delay357 to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pr692 = load i32, ptr %delay357, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr692)
  %tobool376.not = icmp eq i32 %.pr692, 0
  br i1 %tobool376.not, label %cond.false370.cond.end392_crit_edge, label %cond.false388

cond.false370.cond.end392_crit_edge:              ; preds = %cond.false370
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end392

cond.false388:                                    ; preds = %cond.false370
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %98(i32 noundef %.pr692) #5
  br label %cond.end392

cond.end392:                                      ; preds = %cond.false388, %cond.false370.cond.end392_crit_edge, %do.body349.cond.end392_crit_edge
  %99 = ptrtoint ptr %port352 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %port352, align 4
  %add395 = add i32 %100, 1
  %and396 = and i32 %add395, 1048575
  %add397 = or i32 %and396, -18874368
  %101 = inttoptr i32 %add397 to ptr
  %102 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %101) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp404700 = icmp sgt i32 %count, 1
  br i1 %cmp404700, label %cond.end392.do.body407_crit_edge, label %cond.end392.sw.epilog_crit_edge

cond.end392.sw.epilog_crit_edge:                  ; preds = %cond.end392
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

cond.end392.do.body407_crit_edge:                 ; preds = %cond.end392
  br label %do.body407

do.body407:                                       ; preds = %for.inc434.do.body407_crit_edge, %cond.end392.do.body407_crit_edge
  %k.2701 = phi i32 [ %inc435, %for.inc434.do.body407_crit_edge ], [ 0, %cond.end392.do.body407_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %mul.i = shl nuw i32 %k.2701, 1
  %add.i = or i32 %mul.i, 1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %add.i
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %buf, i32 %mul.i
  %105 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx3.i, align 1
  %r.sroa.5.0.insert.ext.i = zext i8 %106 to i16
  %r.sroa.0.0.insert.ext.i = zext i8 %104 to i16
  %r.sroa.0.0.insert.shift.i = shl nuw i16 %r.sroa.0.0.insert.ext.i, 8
  %r.sroa.0.0.insert.insert.i = or i16 %r.sroa.0.0.insert.shift.i, %r.sroa.5.0.insert.ext.i
  %107 = tail call i16 @llvm.bswap.i16(i16 %r.sroa.0.0.insert.insert.i)
  %108 = ptrtoint ptr %port352 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %port352, align 4
  %add412 = add i32 %109, 4
  %and413 = and i32 %add412, 1048575
  %add414 = or i32 %and413, -18874368
  %110 = inttoptr i32 %add414 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %110, i16 %107) #5, !srcloc !102
  %111 = ptrtoint ptr %delay357 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %delay357, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool417.not = icmp eq i32 %112, 0
  br i1 %tobool417.not, label %do.body407.for.inc434_crit_edge, label %cond.false429

do.body407.for.inc434_crit_edge:                  ; preds = %do.body407
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc434

cond.false429:                                    ; preds = %do.body407
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %113(i32 noundef %112) #5
  br label %for.inc434

for.inc434:                                       ; preds = %cond.false429, %do.body407.for.inc434_crit_edge
  %inc435 = add nuw nsw i32 %k.2701, 1
  %exitcond708.not = icmp eq i32 %inc435, %div
  br i1 %exitcond708.not, label %for.inc434.sw.epilog_crit_edge, label %for.inc434.do.body407_crit_edge

for.inc434.do.body407_crit_edge:                  ; preds = %for.inc434
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body407

for.inc434.sw.epilog_crit_edge:                   ; preds = %for.inc434
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body438:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %port441 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %114 = ptrtoint ptr %port441 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %port441, align 4
  %add442 = add i32 %115, 3
  %and443 = and i32 %add442, 1048575
  %add444 = or i32 %and443, -18874368
  %116 = inttoptr i32 %add444 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %116, i8 72) #5, !srcloc !42
  %delay446 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %117 = ptrtoint ptr %delay446 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %delay446, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool447.not = icmp eq i32 %118, 0
  br i1 %tobool447.not, label %do.body438.cond.end481_crit_edge, label %cond.false459

do.body438.cond.end481_crit_edge:                 ; preds = %do.body438
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end481

cond.false459:                                    ; preds = %do.body438
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %119(i32 noundef %118) #5
  %120 = ptrtoint ptr %delay446 to i32
  call void @__asan_load4_noabort(i32 %120)
  %.pr694 = load i32, ptr %delay446, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr694)
  %tobool465.not = icmp eq i32 %.pr694, 0
  br i1 %tobool465.not, label %cond.false459.cond.end481_crit_edge, label %cond.false477

cond.false459.cond.end481_crit_edge:              ; preds = %cond.false459
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end481

cond.false477:                                    ; preds = %cond.false459
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %121(i32 noundef %.pr694) #5
  br label %cond.end481

cond.end481:                                      ; preds = %cond.false477, %cond.false459.cond.end481_crit_edge, %do.body438.cond.end481_crit_edge
  %122 = ptrtoint ptr %port441 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %port441, align 4
  %add484 = add i32 %123, 1
  %and485 = and i32 %add484, 1048575
  %add486 = or i32 %and485, -18874368
  %124 = inttoptr i32 %add486 to ptr
  %125 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %124) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %div493 = sdiv i32 %count, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp494698 = icmp sgt i32 %count, 3
  br i1 %cmp494698, label %cond.end481.do.body497_crit_edge, label %cond.end481.sw.epilog_crit_edge

cond.end481.sw.epilog_crit_edge:                  ; preds = %cond.end481
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

cond.end481.do.body497_crit_edge:                 ; preds = %cond.end481
  br label %do.body497

do.body497:                                       ; preds = %for.inc524.do.body497_crit_edge, %cond.end481.do.body497_crit_edge
  %k.3699 = phi i32 [ %inc525, %for.inc524.do.body497_crit_edge ], [ 0, %cond.end481.do.body497_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %mul.i683 = shl i32 %k.3699, 2
  %add.i684 = or i32 %mul.i683, 1
  %arrayidx.i685 = getelementptr i8, ptr %buf, i32 %add.i684
  %126 = ptrtoint ptr %arrayidx.i685 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx.i685, align 1
  %arrayidx3.i686 = getelementptr i8, ptr %buf, i32 %mul.i683
  %128 = ptrtoint ptr %arrayidx3.i686 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx3.i686, align 1
  %add6.i = or i32 %mul.i683, 3
  %arrayidx7.i = getelementptr i8, ptr %buf, i32 %add6.i
  %130 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx7.i, align 1
  %add10.i = or i32 %mul.i683, 2
  %arrayidx11.i = getelementptr i8, ptr %buf, i32 %add10.i
  %132 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx11.i, align 1
  %r.sroa.7.0.insert.ext.i = zext i8 %133 to i32
  %r.sroa.6.0.insert.ext.i = zext i8 %131 to i32
  %r.sroa.6.0.insert.shift.i = shl nuw nsw i32 %r.sroa.6.0.insert.ext.i, 8
  %r.sroa.5.0.insert.ext.i687 = zext i8 %129 to i32
  %r.sroa.5.0.insert.shift.i = shl nuw nsw i32 %r.sroa.5.0.insert.ext.i687, 16
  %r.sroa.0.0.insert.ext.i688 = zext i8 %127 to i32
  %r.sroa.0.0.insert.shift.i689 = shl nuw i32 %r.sroa.0.0.insert.ext.i688, 24
  %r.sroa.6.0.insert.insert.i = or i32 %r.sroa.5.0.insert.shift.i, %r.sroa.0.0.insert.shift.i689
  %r.sroa.5.0.insert.insert.i = or i32 %r.sroa.6.0.insert.insert.i, %r.sroa.7.0.insert.ext.i
  %r.sroa.0.0.insert.insert.i690 = or i32 %r.sroa.5.0.insert.insert.i, %r.sroa.6.0.insert.shift.i
  %134 = tail call i32 @llvm.bswap.i32(i32 %r.sroa.0.0.insert.insert.i690)
  %135 = ptrtoint ptr %port441 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %port441, align 4
  %add502 = add i32 %136, 4
  %and503 = and i32 %add502, 1048575
  %add504 = or i32 %and503, -18874368
  %137 = inttoptr i32 %add504 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %137, i32 %134) #5, !srcloc !106
  %138 = ptrtoint ptr %delay446 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %delay446, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool507.not = icmp eq i32 %139, 0
  br i1 %tobool507.not, label %do.body497.for.inc524_crit_edge, label %cond.false519

do.body497.for.inc524_crit_edge:                  ; preds = %do.body497
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc524

cond.false519:                                    ; preds = %do.body497
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %140(i32 noundef %139) #5
  br label %for.inc524

for.inc524:                                       ; preds = %cond.false519, %do.body497.for.inc524_crit_edge
  %inc525 = add nuw nsw i32 %k.3699, 1
  %exitcond.not = icmp eq i32 %inc525, %div493
  br i1 %exitcond.not, label %for.inc524.sw.epilog_crit_edge, label %for.inc524.do.body497_crit_edge

for.inc524.do.body497_crit_edge:                  ; preds = %for.inc524
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body497

for.inc524.sw.epilog_crit_edge:                   ; preds = %for.inc524
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.inc524.sw.epilog_crit_edge, %cond.end481.sw.epilog_crit_edge, %for.inc434.sw.epilog_crit_edge, %cond.end392.sw.epilog_crit_edge, %for.inc345.sw.epilog_crit_edge, %cond.end305.sw.epilog_crit_edge, %cond.false258, %do.body238.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @comm_read_block(ptr nocapture noundef readonly %pi, ptr nocapture noundef writeonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body296
    i32 2, label %do.body594
    i32 3, label %do.body738
    i32 4, label %do.body882
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 72) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add16 = add i32 %10, 2
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %11 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 5) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add41 = add i32 %16, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %17 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 13) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %add66 = add i32 %22, 2
  %and67 = and i32 %add66, 1048575
  %add68 = or i32 %and67, -18874368
  %23 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 13) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add91 = add i32 %28, 2
  %and92 = and i32 %add91, 1048575
  %add93 = or i32 %and92, -18874368
  %29 = inttoptr i32 %add93 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 5) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %add116 = add i32 %34, 2
  %and117 = and i32 %add116, 1048575
  %add118 = or i32 %and117, -18874368
  %35 = inttoptr i32 %add118 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 4) #5, !srcloc !42
  %36 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool121.not = icmp eq i32 %37, 0
  br i1 %tobool121.not, label %do.body112.cond.end136_crit_edge, label %cond.false132

do.body112.cond.end136_crit_edge:                 ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end136

cond.false132:                                    ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %38(i32 noundef %37) #5
  br label %cond.end136

cond.end136:                                      ; preds = %cond.false132, %do.body112.cond.end136_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp1371330 = icmp sgt i32 %count, 0
  br i1 %cmp1371330, label %cond.end136.do.body138_crit_edge, label %cond.end136.sw.epilog_crit_edge

cond.end136.sw.epilog_crit_edge:                  ; preds = %cond.end136
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

cond.end136.do.body138_crit_edge:                 ; preds = %cond.end136
  br label %do.body138

do.body138:                                       ; preds = %cond.end291.do.body138_crit_edge, %cond.end136.do.body138_crit_edge
  %i.01331 = phi i32 [ %inc, %cond.end291.do.body138_crit_edge ], [ 0, %cond.end136.do.body138_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %and143 = and i32 %40, 1048575
  %add144 = or i32 %and143, -18874368
  %41 = inttoptr i32 %add144 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 0) #5, !srcloc !42
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool147.not = icmp eq i32 %43, 0
  br i1 %tobool147.not, label %do.body138.do.body163_crit_edge, label %cond.false158

do.body138.do.body163_crit_edge:                  ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body163

cond.false158:                                    ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %44(i32 noundef %43) #5
  br label %do.body163

do.body163:                                       ; preds = %cond.false158, %do.body138.do.body163_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port, align 4
  %add167 = add i32 %46, 2
  %and168 = and i32 %add167, 1048575
  %add169 = or i32 %and168, -18874368
  %47 = inttoptr i32 %add169 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 6) #5, !srcloc !42
  %48 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool172.not = icmp eq i32 %49, 0
  br i1 %tobool172.not, label %do.body163.cond.end204_crit_edge, label %cond.false183

do.body163.cond.end204_crit_edge:                 ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end204

cond.false183:                                    ; preds = %do.body163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %50(i32 noundef %49) #5
  %51 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool189.not = icmp eq i32 %.pr, 0
  br i1 %tobool189.not, label %cond.false183.cond.end204_crit_edge, label %cond.false200

cond.false183.cond.end204_crit_edge:              ; preds = %cond.false183
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end204

cond.false200:                                    ; preds = %cond.false183
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %52(i32 noundef %.pr) #5
  br label %cond.end204

cond.end204:                                      ; preds = %cond.false200, %cond.false183.cond.end204_crit_edge, %do.body163.cond.end204_crit_edge
  %53 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port, align 4
  %add206 = add i32 %54, 1
  %and207 = and i32 %add206, 1048575
  %add208 = or i32 %and207, -18874368
  %55 = inttoptr i32 %add208 to ptr
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %55) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %57 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port, align 4
  %and217 = and i32 %58, 1048575
  %add218 = or i32 %and217, -18874368
  %59 = inttoptr i32 %add218 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 -128) #5, !srcloc !42
  %60 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool221.not = icmp eq i32 %61, 0
  br i1 %tobool221.not, label %cond.end204.cond.end255_crit_edge, label %cond.false233

cond.end204.cond.end255_crit_edge:                ; preds = %cond.end204
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end255

cond.false233:                                    ; preds = %cond.end204
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %62(i32 noundef %61) #5
  %63 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr1312 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1312)
  %tobool239.not = icmp eq i32 %.pr1312, 0
  br i1 %tobool239.not, label %cond.false233.cond.end255_crit_edge, label %cond.false251

cond.false233.cond.end255_crit_edge:              ; preds = %cond.false233
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end255

cond.false251:                                    ; preds = %cond.false233
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %64(i32 noundef %.pr1312) #5
  br label %cond.end255

cond.end255:                                      ; preds = %cond.false251, %cond.false233.cond.end255_crit_edge, %cond.end204.cond.end255_crit_edge
  %65 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port, align 4
  %add258 = add i32 %66, 1
  %and259 = and i32 %add258, 1048575
  %add260 = or i32 %and259, -18874368
  %67 = inttoptr i32 %add260 to ptr
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %67) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  tail call void @arm_heavy_mb() #5
  %69 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port, align 4
  %add270 = add i32 %70, 2
  %and271 = and i32 %add270, 1048575
  %add272 = or i32 %and271, -18874368
  %71 = inttoptr i32 %add272 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 4) #5, !srcloc !42
  %72 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool275.not = icmp eq i32 %73, 0
  br i1 %tobool275.not, label %cond.end255.cond.end291_crit_edge, label %cond.false287

cond.end255.cond.end291_crit_edge:                ; preds = %cond.end255
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end291

cond.false287:                                    ; preds = %cond.end255
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %74(i32 noundef %73) #5
  br label %cond.end291

cond.end291:                                      ; preds = %cond.false287, %cond.end255.cond.end291_crit_edge
  %75 = lshr i8 %56, 3
  %76 = and i8 %75, 15
  %shl = shl i8 %68, 1
  %and293 = and i8 %shl, -16
  %or = or i8 %and293, %76
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.01331
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %or, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.01331, 1
  %exitcond1335.not = icmp eq i32 %inc, %count
  br i1 %exitcond1335.not, label %cond.end291.sw.epilog_crit_edge, label %cond.end291.do.body138_crit_edge

cond.end291.do.body138_crit_edge:                 ; preds = %cond.end291
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body138

cond.end291.sw.epilog_crit_edge:                  ; preds = %cond.end291
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body296:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  tail call void @arm_heavy_mb() #5
  %port299 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %78 = ptrtoint ptr %port299 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port299, align 4
  %and301 = and i32 %79, 1048575
  %add302 = or i32 %and301, -18874368
  %80 = inttoptr i32 %add302 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 104) #5, !srcloc !42
  %delay304 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %81 = ptrtoint ptr %delay304 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %delay304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool305.not = icmp eq i32 %82, 0
  br i1 %tobool305.not, label %do.body296.do.body322_crit_edge, label %cond.false317

do.body296.do.body322_crit_edge:                  ; preds = %do.body296
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body322

cond.false317:                                    ; preds = %do.body296
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %83(i32 noundef %82) #5
  br label %do.body322

do.body322:                                       ; preds = %cond.false317, %do.body296.do.body322_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  tail call void @arm_heavy_mb() #5
  %84 = ptrtoint ptr %port299 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port299, align 4
  %add326 = add i32 %85, 2
  %and327 = and i32 %add326, 1048575
  %add328 = or i32 %and327, -18874368
  %86 = inttoptr i32 %add328 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 5) #5, !srcloc !42
  %87 = ptrtoint ptr %delay304 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %delay304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool331.not = icmp eq i32 %88, 0
  br i1 %tobool331.not, label %do.body322.do.body348_crit_edge, label %cond.false343

do.body322.do.body348_crit_edge:                  ; preds = %do.body322
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body348

cond.false343:                                    ; preds = %do.body322
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %89(i32 noundef %88) #5
  br label %do.body348

do.body348:                                       ; preds = %cond.false343, %do.body322.do.body348_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %port299 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port299, align 4
  %add352 = add i32 %91, 2
  %and353 = and i32 %add352, 1048575
  %add354 = or i32 %and353, -18874368
  %92 = inttoptr i32 %add354 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 13) #5, !srcloc !42
  %93 = ptrtoint ptr %delay304 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %delay304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool357.not = icmp eq i32 %94, 0
  br i1 %tobool357.not, label %do.body348.do.body374_crit_edge, label %cond.false369

do.body348.do.body374_crit_edge:                  ; preds = %do.body348
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body374

cond.false369:                                    ; preds = %do.body348
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %95(i32 noundef %94) #5
  br label %do.body374

do.body374:                                       ; preds = %cond.false369, %do.body348.do.body374_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void @arm_heavy_mb() #5
  %96 = ptrtoint ptr %port299 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port299, align 4
  %add378 = add i32 %97, 2
  %and379 = and i32 %add378, 1048575
  %add380 = or i32 %and379, -18874368
  %98 = inttoptr i32 %add380 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 13) #5, !srcloc !42
  %99 = ptrtoint ptr %delay304 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %delay304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool383.not = icmp eq i32 %100, 0
  br i1 %tobool383.not, label %do.body374.do.body400_crit_edge, label %cond.false395

do.body374.do.body400_crit_edge:                  ; preds = %do.body374
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body400

cond.false395:                                    ; preds = %do.body374
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %101(i32 noundef %100) #5
  br label %do.body400

do.body400:                                       ; preds = %cond.false395, %do.body374.do.body400_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @arm_heavy_mb() #5
  %102 = ptrtoint ptr %port299 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %port299, align 4
  %add404 = add i32 %103, 2
  %and405 = and i32 %add404, 1048575
  %add406 = or i32 %and405, -18874368
  %104 = inttoptr i32 %add406 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %104, i8 5) #5, !srcloc !42
  %105 = ptrtoint ptr %delay304 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %delay304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool409.not = icmp eq i32 %106, 0
  br i1 %tobool409.not, label %do.body400.do.body426_crit_edge, label %cond.false421

do.body400.do.body426_crit_edge:                  ; preds = %do.body400
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body426

cond.false421:                                    ; preds = %do.body400
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %107(i32 noundef %106) #5
  br label %do.body426

do.body426:                                       ; preds = %cond.false421, %do.body400.do.body426_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %108 = ptrtoint ptr %port299 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %port299, align 4
  %add430 = add i32 %109, 2
  %and431 = and i32 %add430, 1048575
  %add432 = or i32 %and431, -18874368
  %110 = inttoptr i32 %add432 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %110, i8 4) #5, !srcloc !42
  %111 = ptrtoint ptr %delay304 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %delay304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool435.not = icmp eq i32 %112, 0
  br i1 %tobool435.not, label %do.body426.do.body452_crit_edge, label %cond.false447

do.body426.do.body452_crit_edge:                  ; preds = %do.body426
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body452

cond.false447:                                    ; preds = %do.body426
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %113(i32 noundef %112) #5
  br label %do.body452

do.body452:                                       ; preds = %cond.false447, %do.body426.do.body452_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  tail call void @arm_heavy_mb() #5
  %114 = ptrtoint ptr %port299 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %port299, align 4
  %and457 = and i32 %115, 1048575
  %add458 = or i32 %and457, -18874368
  %116 = inttoptr i32 %add458 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %116, i8 0) #5, !srcloc !42
  %117 = ptrtoint ptr %delay304 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %delay304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool461.not = icmp eq i32 %118, 0
  br i1 %tobool461.not, label %do.body452.cond.end477_crit_edge, label %cond.false473

do.body452.cond.end477_crit_edge:                 ; preds = %do.body452
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end477

cond.false473:                                    ; preds = %do.body452
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %119(i32 noundef %118) #5
  br label %cond.end477

cond.end477:                                      ; preds = %cond.false473, %do.body452.cond.end477_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp4791328 = icmp sgt i32 %count, 0
  br i1 %cmp4791328, label %cond.end477.do.body482_crit_edge, label %cond.end477.do.body567_crit_edge

cond.end477.do.body567_crit_edge:                 ; preds = %cond.end477
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body567

cond.end477.do.body482_crit_edge:                 ; preds = %cond.end477
  br label %do.body482

do.body482:                                       ; preds = %for.inc564.do.body482_crit_edge, %cond.end477.do.body482_crit_edge
  %i.11329 = phi i32 [ %inc565, %for.inc564.do.body482_crit_edge ], [ 0, %cond.end477.do.body482_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void @arm_heavy_mb() #5
  %120 = ptrtoint ptr %port299 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %port299, align 4
  %add486 = add i32 %121, 2
  %and487 = and i32 %add486, 1048575
  %add488 = or i32 %and487, -18874368
  %122 = inttoptr i32 %add488 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %122, i8 38) #5, !srcloc !42
  %123 = ptrtoint ptr %delay304 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %delay304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool491.not = icmp eq i32 %124, 0
  br i1 %tobool491.not, label %do.body482.cond.end525_crit_edge, label %cond.false503

do.body482.cond.end525_crit_edge:                 ; preds = %do.body482
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end525

cond.false503:                                    ; preds = %do.body482
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %125(i32 noundef %124) #5
  %126 = ptrtoint ptr %delay304 to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pr1314 = load i32, ptr %delay304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1314)
  %tobool509.not = icmp eq i32 %.pr1314, 0
  br i1 %tobool509.not, label %cond.false503.cond.end525_crit_edge, label %cond.false521

cond.false503.cond.end525_crit_edge:              ; preds = %cond.false503
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end525

cond.false521:                                    ; preds = %cond.false503
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %127(i32 noundef %.pr1314) #5
  br label %cond.end525

cond.end525:                                      ; preds = %cond.false521, %cond.false503.cond.end525_crit_edge, %do.body482.cond.end525_crit_edge
  %128 = ptrtoint ptr %port299 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %port299, align 4
  %and529 = and i32 %129, 1048575
  %add530 = or i32 %and529, -18874368
  %130 = inttoptr i32 %add530 to ptr
  %131 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %130) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  %arrayidx537 = getelementptr i8, ptr %buf, i32 %i.11329
  %132 = ptrtoint ptr %arrayidx537 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %arrayidx537, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  tail call void @arm_heavy_mb() #5
  %133 = ptrtoint ptr %port299 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %port299, align 4
  %add542 = add i32 %134, 2
  %and543 = and i32 %add542, 1048575
  %add544 = or i32 %and543, -18874368
  %135 = inttoptr i32 %add544 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %135, i8 36) #5, !srcloc !42
  %136 = ptrtoint ptr %delay304 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %delay304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool547.not = icmp eq i32 %137, 0
  br i1 %tobool547.not, label %cond.end525.for.inc564_crit_edge, label %cond.false559

cond.end525.for.inc564_crit_edge:                 ; preds = %cond.end525
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc564

cond.false559:                                    ; preds = %cond.end525
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %138(i32 noundef %137) #5
  br label %for.inc564

for.inc564:                                       ; preds = %cond.false559, %cond.end525.for.inc564_crit_edge
  %inc565 = add nuw nsw i32 %i.11329, 1
  %exitcond1334.not = icmp eq i32 %inc565, %count
  br i1 %exitcond1334.not, label %for.inc564.do.body567_crit_edge, label %for.inc564.do.body482_crit_edge

for.inc564.do.body482_crit_edge:                  ; preds = %for.inc564
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body482

for.inc564.do.body567_crit_edge:                  ; preds = %for.inc564
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body567

do.body567:                                       ; preds = %for.inc564.do.body567_crit_edge, %cond.end477.do.body567_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %139 = ptrtoint ptr %port299 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %port299, align 4
  %add571 = add i32 %140, 2
  %and572 = and i32 %add571, 1048575
  %add573 = or i32 %and572, -18874368
  %141 = inttoptr i32 %add573 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %141, i8 4) #5, !srcloc !42
  %142 = ptrtoint ptr %delay304 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %delay304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool576.not = icmp eq i32 %143, 0
  br i1 %tobool576.not, label %do.body567.sw.epilog_crit_edge, label %do.body567.sw.epilog.sink.split_crit_edge

do.body567.sw.epilog.sink.split_crit_edge:        ; preds = %do.body567
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body567.sw.epilog_crit_edge:                   ; preds = %do.body567
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body594:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void @arm_heavy_mb() #5
  %port597 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %144 = ptrtoint ptr %port597 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %port597, align 4
  %add598 = add i32 %145, 3
  %and599 = and i32 %add598, 1048575
  %add600 = or i32 %and599, -18874368
  %146 = inttoptr i32 %add600 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %146, i8 104) #5, !srcloc !42
  %delay602 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %147 = ptrtoint ptr %delay602 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %delay602, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool603.not = icmp eq i32 %148, 0
  br i1 %tobool603.not, label %do.body594.cond.end637_crit_edge, label %cond.false615

do.body594.cond.end637_crit_edge:                 ; preds = %do.body594
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end637

cond.false615:                                    ; preds = %do.body594
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %149(i32 noundef %148) #5
  %150 = ptrtoint ptr %delay602 to i32
  call void @__asan_load4_noabort(i32 %150)
  %.pr1316 = load i32, ptr %delay602, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1316)
  %tobool621.not = icmp eq i32 %.pr1316, 0
  br i1 %tobool621.not, label %cond.false615.cond.end637_crit_edge, label %cond.false633

cond.false615.cond.end637_crit_edge:              ; preds = %cond.false615
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end637

cond.false633:                                    ; preds = %cond.false615
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %151(i32 noundef %.pr1316) #5
  br label %cond.end637

cond.end637:                                      ; preds = %cond.false633, %cond.false615.cond.end637_crit_edge, %do.body594.cond.end637_crit_edge
  %152 = ptrtoint ptr %port597 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %port597, align 4
  %add640 = add i32 %153, 1
  %and641 = and i32 %add640, 1048575
  %add642 = or i32 %and641, -18874368
  %154 = inttoptr i32 %add642 to ptr
  %155 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %154) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %156 = ptrtoint ptr %port597 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %port597, align 4
  %add652 = add i32 %157, 2
  %and653 = and i32 %add652, 1048575
  %add654 = or i32 %and653, -18874368
  %158 = inttoptr i32 %add654 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %158, i8 36) #5, !srcloc !42
  %159 = ptrtoint ptr %delay602 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %delay602, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool657.not = icmp eq i32 %160, 0
  br i1 %tobool657.not, label %cond.end637.cond.end673_crit_edge, label %cond.false669

cond.end637.cond.end673_crit_edge:                ; preds = %cond.end637
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end673

cond.false669:                                    ; preds = %cond.end637
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %161(i32 noundef %160) #5
  br label %cond.end673

cond.end673:                                      ; preds = %cond.false669, %cond.end637.cond.end673_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp6751326 = icmp sgt i32 %count, 0
  br i1 %cmp6751326, label %cond.end673.for.body677_crit_edge, label %cond.end673.do.body711_crit_edge

cond.end673.do.body711_crit_edge:                 ; preds = %cond.end673
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body711

cond.end673.for.body677_crit_edge:                ; preds = %cond.end673
  br label %for.body677

for.body677:                                      ; preds = %cond.end695.for.body677_crit_edge, %cond.end673.for.body677_crit_edge
  %i.21327 = phi i32 [ %inc709, %cond.end695.for.body677_crit_edge ], [ 0, %cond.end673.for.body677_crit_edge ]
  %162 = ptrtoint ptr %delay602 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %delay602, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool679.not = icmp eq i32 %163, 0
  br i1 %tobool679.not, label %for.body677.cond.end695_crit_edge, label %cond.false691

for.body677.cond.end695_crit_edge:                ; preds = %for.body677
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end695

cond.false691:                                    ; preds = %for.body677
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %164(i32 noundef %163) #5
  br label %cond.end695

cond.end695:                                      ; preds = %cond.false691, %for.body677.cond.end695_crit_edge
  %165 = ptrtoint ptr %port597 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %port597, align 4
  %add698 = add i32 %166, 4
  %and699 = and i32 %add698, 1048575
  %add700 = or i32 %and699, -18874368
  %167 = inttoptr i32 %add700 to ptr
  %168 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %167) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  %arrayidx707 = getelementptr i8, ptr %buf, i32 %i.21327
  %169 = ptrtoint ptr %arrayidx707 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %arrayidx707, align 1
  %inc709 = add nuw nsw i32 %i.21327, 1
  %exitcond1333.not = icmp eq i32 %inc709, %count
  br i1 %exitcond1333.not, label %cond.end695.do.body711_crit_edge, label %cond.end695.for.body677_crit_edge

cond.end695.for.body677_crit_edge:                ; preds = %cond.end695
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body677

cond.end695.do.body711_crit_edge:                 ; preds = %cond.end695
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body711

do.body711:                                       ; preds = %cond.end695.do.body711_crit_edge, %cond.end673.do.body711_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %170 = ptrtoint ptr %port597 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %port597, align 4
  %add715 = add i32 %171, 2
  %and716 = and i32 %add715, 1048575
  %add717 = or i32 %and716, -18874368
  %172 = inttoptr i32 %add717 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %172, i8 4) #5, !srcloc !42
  %173 = ptrtoint ptr %delay602 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %delay602, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool720.not = icmp eq i32 %174, 0
  br i1 %tobool720.not, label %do.body711.sw.epilog_crit_edge, label %do.body711.sw.epilog.sink.split_crit_edge

do.body711.sw.epilog.sink.split_crit_edge:        ; preds = %do.body711
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body711.sw.epilog_crit_edge:                   ; preds = %do.body711
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body738:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %port741 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %175 = ptrtoint ptr %port741 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %port741, align 4
  %add742 = add i32 %176, 3
  %and743 = and i32 %add742, 1048575
  %add744 = or i32 %and743, -18874368
  %177 = inttoptr i32 %add744 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %177, i8 104) #5, !srcloc !42
  %delay746 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %178 = ptrtoint ptr %delay746 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %delay746, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool747.not = icmp eq i32 %179, 0
  br i1 %tobool747.not, label %do.body738.cond.end781_crit_edge, label %cond.false759

do.body738.cond.end781_crit_edge:                 ; preds = %do.body738
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end781

cond.false759:                                    ; preds = %do.body738
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %180 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %180(i32 noundef %179) #5
  %181 = ptrtoint ptr %delay746 to i32
  call void @__asan_load4_noabort(i32 %181)
  %.pr1318 = load i32, ptr %delay746, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1318)
  %tobool765.not = icmp eq i32 %.pr1318, 0
  br i1 %tobool765.not, label %cond.false759.cond.end781_crit_edge, label %cond.false777

cond.false759.cond.end781_crit_edge:              ; preds = %cond.false759
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end781

cond.false777:                                    ; preds = %cond.false759
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %182 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %182(i32 noundef %.pr1318) #5
  br label %cond.end781

cond.end781:                                      ; preds = %cond.false777, %cond.false759.cond.end781_crit_edge, %do.body738.cond.end781_crit_edge
  %183 = ptrtoint ptr %port741 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %port741, align 4
  %add784 = add i32 %184, 1
  %and785 = and i32 %add784, 1048575
  %add786 = or i32 %and785, -18874368
  %185 = inttoptr i32 %add786 to ptr
  %186 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %185) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %187 = ptrtoint ptr %port741 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %port741, align 4
  %add796 = add i32 %188, 2
  %and797 = and i32 %add796, 1048575
  %add798 = or i32 %and797, -18874368
  %189 = inttoptr i32 %add798 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %189, i8 36) #5, !srcloc !42
  %190 = ptrtoint ptr %delay746 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %delay746, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool801.not = icmp eq i32 %191, 0
  br i1 %tobool801.not, label %cond.end781.cond.end817_crit_edge, label %cond.false813

cond.end781.cond.end817_crit_edge:                ; preds = %cond.end781
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end817

cond.false813:                                    ; preds = %cond.end781
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %192 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %192(i32 noundef %191) #5
  br label %cond.end817

cond.end817:                                      ; preds = %cond.false813, %cond.end781.cond.end817_crit_edge
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp8191324 = icmp sgt i32 %count, 1
  br i1 %cmp8191324, label %cond.end817.for.body821_crit_edge, label %cond.end817.do.body855_crit_edge

cond.end817.do.body855_crit_edge:                 ; preds = %cond.end817
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body855

cond.end817.for.body821_crit_edge:                ; preds = %cond.end817
  br label %for.body821

for.body821:                                      ; preds = %cond.end839.for.body821_crit_edge, %cond.end817.for.body821_crit_edge
  %i.31325 = phi i32 [ %inc853, %cond.end839.for.body821_crit_edge ], [ 0, %cond.end817.for.body821_crit_edge ]
  %193 = ptrtoint ptr %delay746 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %delay746, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool823.not = icmp eq i32 %194, 0
  br i1 %tobool823.not, label %for.body821.cond.end839_crit_edge, label %cond.false835

for.body821.cond.end839_crit_edge:                ; preds = %for.body821
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end839

cond.false835:                                    ; preds = %for.body821
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %195 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %195(i32 noundef %194) #5
  br label %cond.end839

cond.end839:                                      ; preds = %cond.false835, %for.body821.cond.end839_crit_edge
  %196 = ptrtoint ptr %port741 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %port741, align 4
  %add842 = add i32 %197, 4
  %and843 = and i32 %add842, 1048575
  %add844 = or i32 %and843, -18874368
  %198 = inttoptr i32 %add844 to ptr
  %199 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %198) #5, !srcloc !138
  %200 = tail call i16 @llvm.bswap.i16(i16 %199)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %arrayidx851 = getelementptr i16, ptr %buf, i32 %i.31325
  %201 = ptrtoint ptr %arrayidx851 to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %200, ptr %arrayidx851, align 2
  %inc853 = add nuw nsw i32 %i.31325, 1
  %exitcond1332.not = icmp eq i32 %inc853, %div
  br i1 %exitcond1332.not, label %cond.end839.do.body855_crit_edge, label %cond.end839.for.body821_crit_edge

cond.end839.for.body821_crit_edge:                ; preds = %cond.end839
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body821

cond.end839.do.body855_crit_edge:                 ; preds = %cond.end839
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body855

do.body855:                                       ; preds = %cond.end839.do.body855_crit_edge, %cond.end817.do.body855_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %202 = ptrtoint ptr %port741 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %port741, align 4
  %add859 = add i32 %203, 2
  %and860 = and i32 %add859, 1048575
  %add861 = or i32 %and860, -18874368
  %204 = inttoptr i32 %add861 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %204, i8 4) #5, !srcloc !42
  %205 = ptrtoint ptr %delay746 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %delay746, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool864.not = icmp eq i32 %206, 0
  br i1 %tobool864.not, label %do.body855.sw.epilog_crit_edge, label %do.body855.sw.epilog.sink.split_crit_edge

do.body855.sw.epilog.sink.split_crit_edge:        ; preds = %do.body855
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body855.sw.epilog_crit_edge:                   ; preds = %do.body855
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body882:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  tail call void @arm_heavy_mb() #5
  %port885 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %207 = ptrtoint ptr %port885 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %port885, align 4
  %add886 = add i32 %208, 3
  %and887 = and i32 %add886, 1048575
  %add888 = or i32 %and887, -18874368
  %209 = inttoptr i32 %add888 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %209, i8 104) #5, !srcloc !42
  %delay890 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %210 = ptrtoint ptr %delay890 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %delay890, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool891.not = icmp eq i32 %211, 0
  br i1 %tobool891.not, label %do.body882.cond.end925_crit_edge, label %cond.false903

do.body882.cond.end925_crit_edge:                 ; preds = %do.body882
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end925

cond.false903:                                    ; preds = %do.body882
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %212 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %212(i32 noundef %211) #5
  %213 = ptrtoint ptr %delay890 to i32
  call void @__asan_load4_noabort(i32 %213)
  %.pr1320 = load i32, ptr %delay890, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1320)
  %tobool909.not = icmp eq i32 %.pr1320, 0
  br i1 %tobool909.not, label %cond.false903.cond.end925_crit_edge, label %cond.false921

cond.false903.cond.end925_crit_edge:              ; preds = %cond.false903
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end925

cond.false921:                                    ; preds = %cond.false903
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %214 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %214(i32 noundef %.pr1320) #5
  br label %cond.end925

cond.end925:                                      ; preds = %cond.false921, %cond.false903.cond.end925_crit_edge, %do.body882.cond.end925_crit_edge
  %215 = ptrtoint ptr %port885 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %port885, align 4
  %add928 = add i32 %216, 1
  %and929 = and i32 %add928, 1048575
  %add930 = or i32 %and929, -18874368
  %217 = inttoptr i32 %add930 to ptr
  %218 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %217) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %219 = ptrtoint ptr %port885 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %port885, align 4
  %add940 = add i32 %220, 2
  %and941 = and i32 %add940, 1048575
  %add942 = or i32 %and941, -18874368
  %221 = inttoptr i32 %add942 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %221, i8 36) #5, !srcloc !42
  %222 = ptrtoint ptr %delay890 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %delay890, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool945.not = icmp eq i32 %223, 0
  br i1 %tobool945.not, label %cond.end925.cond.end961_crit_edge, label %cond.false957

cond.end925.cond.end961_crit_edge:                ; preds = %cond.end925
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end961

cond.false957:                                    ; preds = %cond.end925
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %224 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %224(i32 noundef %223) #5
  br label %cond.end961

cond.end961:                                      ; preds = %cond.false957, %cond.end925.cond.end961_crit_edge
  %div963 = sdiv i32 %count, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp9641322 = icmp sgt i32 %count, 3
  br i1 %cmp9641322, label %cond.end961.for.body966_crit_edge, label %cond.end961.do.body998_crit_edge

cond.end961.do.body998_crit_edge:                 ; preds = %cond.end961
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body998

cond.end961.for.body966_crit_edge:                ; preds = %cond.end961
  br label %for.body966

for.body966:                                      ; preds = %cond.end984.for.body966_crit_edge, %cond.end961.for.body966_crit_edge
  %i.41323 = phi i32 [ %inc996, %cond.end984.for.body966_crit_edge ], [ 0, %cond.end961.for.body966_crit_edge ]
  %225 = ptrtoint ptr %delay890 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %delay890, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool968.not = icmp eq i32 %226, 0
  br i1 %tobool968.not, label %for.body966.cond.end984_crit_edge, label %cond.false980

for.body966.cond.end984_crit_edge:                ; preds = %for.body966
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end984

cond.false980:                                    ; preds = %for.body966
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %227 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %227(i32 noundef %226) #5
  br label %cond.end984

cond.end984:                                      ; preds = %cond.false980, %for.body966.cond.end984_crit_edge
  %228 = ptrtoint ptr %port885 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %port885, align 4
  %add987 = add i32 %229, 4
  %and988 = and i32 %add987, 1048575
  %add989 = or i32 %and988, -18874368
  %230 = inttoptr i32 %add989 to ptr
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %230) #5, !srcloc !144
  %232 = tail call i32 @llvm.bswap.i32(i32 %231)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  %arrayidx994 = getelementptr i32, ptr %buf, i32 %i.41323
  %233 = ptrtoint ptr %arrayidx994 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %arrayidx994, align 4
  %inc996 = add nuw nsw i32 %i.41323, 1
  %exitcond.not = icmp eq i32 %inc996, %div963
  br i1 %exitcond.not, label %cond.end984.do.body998_crit_edge, label %cond.end984.for.body966_crit_edge

cond.end984.for.body966_crit_edge:                ; preds = %cond.end984
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body966

cond.end984.do.body998_crit_edge:                 ; preds = %cond.end984
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body998

do.body998:                                       ; preds = %cond.end984.do.body998_crit_edge, %cond.end961.do.body998_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  tail call void @arm_heavy_mb() #5
  %234 = ptrtoint ptr %port885 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %port885, align 4
  %add1002 = add i32 %235, 2
  %and1003 = and i32 %add1002, 1048575
  %add1004 = or i32 %and1003, -18874368
  %236 = inttoptr i32 %add1004 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %236, i8 4) #5, !srcloc !42
  %237 = ptrtoint ptr %delay890 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %delay890, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool1007.not = icmp eq i32 %238, 0
  br i1 %tobool1007.not, label %do.body998.sw.epilog_crit_edge, label %do.body998.sw.epilog.sink.split_crit_edge

do.body998.sw.epilog.sink.split_crit_edge:        ; preds = %do.body998
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body998.sw.epilog_crit_edge:                   ; preds = %do.body998
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body998.sw.epilog.sink.split_crit_edge, %do.body855.sw.epilog.sink.split_crit_edge, %do.body711.sw.epilog.sink.split_crit_edge, %do.body567.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %143, %do.body567.sw.epilog.sink.split_crit_edge ], [ %174, %do.body711.sw.epilog.sink.split_crit_edge ], [ %206, %do.body855.sw.epilog.sink.split_crit_edge ], [ %238, %do.body998.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %239 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %239(i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body998.sw.epilog_crit_edge, %do.body855.sw.epilog_crit_edge, %do.body711.sw.epilog_crit_edge, %do.body567.sw.epilog_crit_edge, %cond.end291.sw.epilog_crit_edge, %cond.end136.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @comm_connect(ptr nocapture noundef %pi) #2 align 64 {
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
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
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
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  %conv40 = zext i8 %14 to i32
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %15 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv40, ptr %saved_r2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add43 = add i32 %17, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %18 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 4) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %and69 = and i32 %23, 1048575
  %add70 = or i32 %and69, -18874368
  %24 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 -1) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %add93 = add i32 %29, 2
  %and94 = and i32 %add93, 1048575
  %add95 = or i32 %and94, -18874368
  %30 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 6) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %add118 = add i32 %35, 2
  %and119 = and i32 %add118, 1048575
  %add120 = or i32 %and119, -18874368
  %36 = inttoptr i32 %add120 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 4) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %and144 = and i32 %41, 1048575
  %add145 = or i32 %and144, -18874368
  %42 = inttoptr i32 %add145 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 -86) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %add168 = add i32 %47, 2
  %and169 = and i32 %add168, 1048575
  %add170 = or i32 %and169, -18874368
  %48 = inttoptr i32 %add170 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 6) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port, align 4
  %add193 = add i32 %53, 2
  %and194 = and i32 %add193, 1048575
  %add195 = or i32 %and194, -18874368
  %54 = inttoptr i32 %add195 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 4) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !156
  tail call void @arm_heavy_mb() #5
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port, align 4
  %and219 = and i32 %59, 1048575
  %add220 = or i32 %and219, -18874368
  %60 = inttoptr i32 %add220 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 0) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %64 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port, align 4
  %add243 = add i32 %65, 2
  %and244 = and i32 %add243, 1048575
  %add245 = or i32 %and244, -18874368
  %66 = inttoptr i32 %add245 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 6) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  tail call void @arm_heavy_mb() #5
  %70 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port, align 4
  %add268 = add i32 %71, 2
  %and269 = and i32 %add268, 1048575
  %add270 = or i32 %and269, -18874368
  %72 = inttoptr i32 %add270 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 4) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  tail call void @arm_heavy_mb() #5
  %76 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port, align 4
  %and294 = and i32 %77, 1048575
  %add295 = or i32 %and294, -18874368
  %78 = inttoptr i32 %add295 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 -121) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  tail call void @arm_heavy_mb() #5
  %82 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port, align 4
  %add318 = add i32 %83, 2
  %and319 = and i32 %add318, 1048575
  %add320 = or i32 %and319, -18874368
  %84 = inttoptr i32 %add320 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 6) #5, !srcloc !42
  %85 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool323.not = icmp eq i32 %86, 0
  br i1 %tobool323.not, label %do.body315.do.body340_crit_edge, label %cond.false335

do.body315.do.body340_crit_edge:                  ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body340

cond.false335:                                    ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %87(i32 noundef %86) #5
  br label %do.body340

do.body340:                                       ; preds = %cond.false335, %do.body315.do.body340_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void @arm_heavy_mb() #5
  %88 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port, align 4
  %add343 = add i32 %89, 2
  %and344 = and i32 %add343, 1048575
  %add345 = or i32 %and344, -18874368
  %90 = inttoptr i32 %add345 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 4) #5, !srcloc !42
  %91 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool348.not = icmp eq i32 %92, 0
  br i1 %tobool348.not, label %do.body340.do.body365_crit_edge, label %cond.false360

do.body340.do.body365_crit_edge:                  ; preds = %do.body340
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body365

cond.false360:                                    ; preds = %do.body340
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %93(i32 noundef %92) #5
  br label %do.body365

do.body365:                                       ; preds = %cond.false360, %do.body340.do.body365_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void @arm_heavy_mb() #5
  %94 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %port, align 4
  %and369 = and i32 %95, 1048575
  %add370 = or i32 %and369, -18874368
  %96 = inttoptr i32 %add370 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 -32) #5, !srcloc !42
  %97 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool373.not = icmp eq i32 %98, 0
  br i1 %tobool373.not, label %do.body365.do.body390_crit_edge, label %cond.false385

do.body365.do.body390_crit_edge:                  ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body390

cond.false385:                                    ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %99(i32 noundef %98) #5
  br label %do.body390

do.body390:                                       ; preds = %cond.false385, %do.body365.do.body390_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  tail call void @arm_heavy_mb() #5
  %100 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %port, align 4
  %add393 = add i32 %101, 2
  %and394 = and i32 %add393, 1048575
  %add395 = or i32 %and394, -18874368
  %102 = inttoptr i32 %add395 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 12) #5, !srcloc !42
  %103 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool398.not = icmp eq i32 %104, 0
  br i1 %tobool398.not, label %do.body390.do.body415_crit_edge, label %cond.false410

do.body390.do.body415_crit_edge:                  ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body415

cond.false410:                                    ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %105(i32 noundef %104) #5
  br label %do.body415

do.body415:                                       ; preds = %cond.false410, %do.body390.do.body415_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %106 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %port, align 4
  %add418 = add i32 %107, 2
  %and419 = and i32 %add418, 1048575
  %add420 = or i32 %and419, -18874368
  %108 = inttoptr i32 %add420 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %108, i8 12) #5, !srcloc !42
  %109 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool423.not = icmp eq i32 %110, 0
  br i1 %tobool423.not, label %do.body415.do.body440_crit_edge, label %cond.false435

do.body415.do.body440_crit_edge:                  ; preds = %do.body415
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body440

cond.false435:                                    ; preds = %do.body415
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %111(i32 noundef %110) #5
  br label %do.body440

do.body440:                                       ; preds = %cond.false435, %do.body415.do.body440_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  tail call void @arm_heavy_mb() #5
  %112 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %port, align 4
  %add443 = add i32 %113, 2
  %and444 = and i32 %add443, 1048575
  %add445 = or i32 %and444, -18874368
  %114 = inttoptr i32 %add445 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %114, i8 4) #5, !srcloc !42
  %115 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool448.not = icmp eq i32 %116, 0
  br i1 %tobool448.not, label %do.body440.cond.end464_crit_edge, label %cond.false460

do.body440.cond.end464_crit_edge:                 ; preds = %do.body440
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end464

cond.false460:                                    ; preds = %do.body440
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %117(i32 noundef %116) #5
  br label %cond.end464

cond.end464:                                      ; preds = %cond.false460, %do.body440.cond.end464_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @comm_disconnect(ptr nocapture noundef readonly %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add15 = add i32 %7, 2
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %8 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add39 = add i32 %13, 2
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %14 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add63 = add i32 %19, 2
  %and64 = and i32 %add63, 1048575
  %add65 = or i32 %and64, -18874368
  %20 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 4) #5, !srcloc !42
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void @arm_heavy_mb() #5
  %saved_r0 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 7
  %24 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %saved_r0, align 4
  %conv = trunc i32 %25 to i8
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %and88 = and i32 %27, 1048575
  %add89 = or i32 %and88, -18874368
  %28 = inttoptr i32 %add89 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv) #5, !srcloc !42
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool92.not = icmp eq i32 %30, 0
  br i1 %tobool92.not, label %do.body84.do.body109_crit_edge, label %cond.false104

do.body84.do.body109_crit_edge:                   ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body109

cond.false104:                                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #5
  br label %do.body109

do.body109:                                       ; preds = %cond.false104, %do.body84.do.body109_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !171
  tail call void @arm_heavy_mb() #5
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %32 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %saved_r2, align 4
  %conv111 = trunc i32 %33 to i8
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %add113 = add i32 %35, 2
  %and114 = and i32 %add113, 1048575
  %add115 = or i32 %and114, -18874368
  %36 = inttoptr i32 %add115 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %conv111) #5, !srcloc !42
  %37 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool118.not = icmp eq i32 %38, 0
  br i1 %tobool118.not, label %do.body109.cond.end134_crit_edge, label %cond.false130

do.body109.cond.end134_crit_edge:                 ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end134

cond.false130:                                    ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %39(i32 noundef %38) #5
  br label %cond.end134

cond.end134:                                      ; preds = %cond.false130, %do.body109.cond.end134_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @comm_log_adapter(ptr nocapture noundef readonly %pi, ptr nocapture noundef readnone %scratch, i32 noundef %verbose) #2 align 64 {
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %3) #8
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @__const.comm_log_adapter.mode_string, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %5, ptr noundef %7, i32 noundef %9) #8
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

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__UNIQUE_ID_file160, !1, !"__UNIQUE_ID_file160", i1 false, i1 false}
!1 = !{!"../drivers/block/paride/comm.c", i32 216, i32 1}
!2 = !{ptr @__UNIQUE_ID_license161, !1, !"__UNIQUE_ID_license161", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_comm__162_217_comm_init6, !4, !"__initcall__kmod_comm__162_217_comm_init6", i1 false, i1 false}
!4 = !{!"../drivers/block/paride/comm.c", i32 217, i32 1}
!5 = !{ptr @__exitcall_comm_exit, !6, !"__exitcall_comm_exit", i1 false, i1 false}
!6 = !{!"../drivers/block/paride/comm.c", i32 218, i32 1}
!7 = !{ptr @comm, !8, !"comm", i1 false, i1 false}
!8 = !{!"../drivers/block/paride/comm.c", i32 190, i32 27}
!9 = !{ptr @cont_map, !10, !"cont_map", i1 false, i1 false}
!10 = !{!"../drivers/block/paride/comm.c", i32 43, i32 13}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/block/paride/comm.c", i32 181, i32 36}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/block/paride/comm.c", i32 181, i32 44}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/block/paride/comm.c", i32 181, i32 52}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/block/paride/comm.c", i32 181, i32 60}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/block/paride/comm.c", i32 181, i32 69}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/block/paride/comm.c", i32 183, i32 9}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @comm_log_adapter._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @comm_log_adapter._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/block/paride/comm.c", i32 185, i32 9}
!30 = !{ptr @comm_log_adapter._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @comm_log_adapter._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 2152131659}
!42 = !{i64 4533174}
!43 = !{i64 2152132704}
!44 = !{i64 2152133720}
!45 = !{i64 2152134736}
!46 = !{i64 2152135746}
!47 = !{i64 2152136756}
!48 = !{i64 2152137772}
!49 = !{i64 2152142874}
!50 = !{i64 2152143884}
!51 = !{i64 2152144894}
!52 = !{i64 2152145904}
!53 = !{i64 2152146914}
!54 = !{i64 2152147924}
!55 = !{i64 4533569}
!56 = !{i64 2152149619}
!57 = !{i64 2152149893}
!58 = !{i64 2152104489}
!59 = !{i64 2152105534}
!60 = !{i64 2152106550}
!61 = !{i64 2152107566}
!62 = !{i64 2152108576}
!63 = !{i64 2152109586}
!64 = !{i64 2152110596}
!65 = !{i64 2152111606}
!66 = !{i64 2152113301}
!67 = !{i64 2152113578}
!68 = !{i64 2152115273}
!69 = !{i64 2152115541}
!70 = !{i64 2152116600}
!71 = !{i64 2152117645}
!72 = !{i64 2152118661}
!73 = !{i64 2152119677}
!74 = !{i64 2152120687}
!75 = !{i64 2152121697}
!76 = !{i64 2152122707}
!77 = !{i64 2152123726}
!78 = !{i64 2152125421}
!79 = !{i64 2152125689}
!80 = !{i64 2152126714}
!81 = !{i64 2152128409}
!82 = !{i64 2152128686}
!83 = !{i64 2152130381}
!84 = !{i64 2152130649}
!85 = !{i64 2152214973}
!86 = !{i64 2152216018}
!87 = !{i64 2152217034}
!88 = !{i64 2152218050}
!89 = !{i64 2152219060}
!90 = !{i64 2152220070}
!91 = !{i64 2152221080}
!92 = !{i64 2152222111}
!93 = !{i64 2152223121}
!94 = !{i64 2152224131}
!95 = !{i64 2152225141}
!96 = !{i64 2152226160}
!97 = !{i64 2152227855}
!98 = !{i64 2152228144}
!99 = !{i64 2152229163}
!100 = !{i64 2152230858}
!101 = !{i64 2152231169}
!102 = !{i64 4532751}
!103 = !{i64 2152232308}
!104 = !{i64 2152234003}
!105 = !{i64 2152234314}
!106 = !{i64 4533371}
!107 = !{i64 2152176171}
!108 = !{i64 2152177216}
!109 = !{i64 2152178232}
!110 = !{i64 2152179248}
!111 = !{i64 2152180258}
!112 = !{i64 2152181268}
!113 = !{i64 2152182278}
!114 = !{i64 2152183288}
!115 = !{i64 2152184983}
!116 = !{i64 2152185260}
!117 = !{i64 2152186955}
!118 = !{i64 2152187223}
!119 = !{i64 2152188276}
!120 = !{i64 2152189321}
!121 = !{i64 2152190337}
!122 = !{i64 2152191353}
!123 = !{i64 2152192363}
!124 = !{i64 2152193373}
!125 = !{i64 2152194383}
!126 = !{i64 2152195402}
!127 = !{i64 2152197097}
!128 = !{i64 2152197374}
!129 = !{i64 2152198384}
!130 = !{i64 2152199403}
!131 = !{i64 2152201098}
!132 = !{i64 2152201375}
!133 = !{i64 2152203070}
!134 = !{i64 2152203338}
!135 = !{i64 2152204357}
!136 = !{i64 2152206052}
!137 = !{i64 2152206329}
!138 = !{i64 4532951}
!139 = !{i64 2152208376}
!140 = !{i64 2152208644}
!141 = !{i64 2152209663}
!142 = !{i64 2152211358}
!143 = !{i64 2152211635}
!144 = !{i64 4533789}
!145 = !{i64 2152213686}
!146 = !{i64 2152213954}
!147 = !{i64 2152151588}
!148 = !{i64 2152152541}
!149 = !{i64 2152152809}
!150 = !{i64 2152153828}
!151 = !{i64 2152154838}
!152 = !{i64 2152155848}
!153 = !{i64 2152156867}
!154 = !{i64 2152157877}
!155 = !{i64 2152158887}
!156 = !{i64 2152159906}
!157 = !{i64 2152160916}
!158 = !{i64 2152161926}
!159 = !{i64 2152162945}
!160 = !{i64 2152163955}
!161 = !{i64 2152164965}
!162 = !{i64 2152165984}
!163 = !{i64 2152167000}
!164 = !{i64 2152168016}
!165 = !{i64 2152169026}
!166 = !{i64 2152170036}
!167 = !{i64 2152171046}
!168 = !{i64 2152172056}
!169 = !{i64 2152173066}
!170 = !{i64 2152174109}
!171 = !{i64 2152175152}

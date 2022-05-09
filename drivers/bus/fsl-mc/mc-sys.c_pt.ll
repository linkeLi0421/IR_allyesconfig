; ModuleID = '/llk/IR_all_yes/drivers/bus/fsl-mc/mc-sys.c_pt.bc'
source_filename = "../drivers/bus/fsl-mc/mc-sys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mc_send_command\22, \22a\22\09"
module asm "\09.weak\09__crc_mc_send_command\09\09\09\09"
module asm "\09.long\09__crc_mc_send_command\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc_send_command:\09\09\09\09\09"
module asm "\09.asciz \09\22mc_send_command\22\09\09\09\09\09"
module asm "__kstrtabns_mc_send_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mc_cmd_header = type { i8, i8, i8, i8, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fsl_mc_io = type { ptr, i16, i32, i32, ptr, ptr, %union.anon.43 }
%union.anon.43 = type { %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fsl_mc_command = type { i64, [7 x i64] }

@mc_send_command.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mc_bus_driver\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mc_send_command\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/bus/fsl-mc/mc-sys.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"MC command failed: portal: %pa, dprc handle: %#x, command: %#x, status: %s (%#x)\0A\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_mc_send_command = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc_send_command = external dso_local constant [0 x i8], align 1
@__ksymtab_mc_send_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc_send_command to i32), ptr @__kstrtab_mc_send_command, ptr @__kstrtabns_mc_send_command }, section "___ksymtab_gpl+mc_send_command", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mc_polling_wait_preemptible.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mc_polling_wait_preemptible\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"MC command timed out (portal: %pa, dprc handle: %#x, command: %#x)\0A\00", [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mc_polling_wait_atomic.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.5, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mc_polling_wait_atomic\00", [41 x i8] zeroinitializer }, align 32
@mc_status_to_string.status_strings = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.7, ptr @.str.8, ptr null, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Command completed successfully\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Command ready to be processed\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Authentication error\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No privilege\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DMA or I/O error\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Configuration error\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Operation timed out\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No resources\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No memory available\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Device is busy\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unsupported operation\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Invalid state\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Unknown MC error\00", [47 x i8] zeroinitializer }, align 32
@mc_status_to_error.mc_status_to_error_map = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 0, i32 0, i32 -13, i32 -1, i32 -5, i32 -6, i32 -110, i32 -119, i32 -12, i32 -16, i32 -524, i32 -19], [44 x i8] zeroinitializer }, align 32
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 276, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 183, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 223, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"status_strings\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 70, i32 27 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 71, i32 24 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 72, i32 27 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 73, i32 30 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 74, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 75, i32 29 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 76, i32 32 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 77, i32 29 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 78, i32 33 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 79, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 80, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 81, i32 36 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 82, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 86, i32 10 }
@___asan_gen_.83 = private unnamed_addr constant [23 x i8] c"mc_status_to_error_map\00", align 1
@___asan_gen_.84 = private constant [31 x i8] c"../drivers/bus/fsl-mc/mc-sys.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 48, i32 19 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab_mc_send_command, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mc_status_to_string.status_strings, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @mc_status_to_error.mc_status_to_error_map], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_status_to_string.status_strings to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_status_to_error.mc_status_to_error_map to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @mc_cmd_hdr_read_cmdid(ptr nocapture noundef readonly %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_id1 = getelementptr inbounds %struct.mc_cmd_header, ptr %cmd, i32 0, i32 5
  %0 = ptrtoint ptr %cmd_id1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cmd_id1, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  ret i16 %2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mc_send_command(ptr noundef %mc_io, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !45) #6
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.fsl_mc_io, ptr %mc_io, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 4
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool2.not = icmp eq i16 %6, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %flags3 = getelementptr inbounds %struct.fsl_mc_io, ptr %mc_io, i32 0, i32 1
  %7 = ptrtoint ptr %flags3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags3, align 4
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool6.not = icmp eq i16 %9, 0
  %10 = getelementptr inbounds %struct.fsl_mc_io, ptr %mc_io, i32 0, i32 6
  br i1 %tobool6.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #6
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_lock_nested(ptr noundef %10, i32 noundef 0) #6
  br label %if.end10

if.end10:                                         ; preds = %if.else, %do.body
  %irq_flags.0 = phi i32 [ %call9, %do.body ], [ 0, %if.else ]
  %portal_virt_addr = getelementptr inbounds %struct.fsl_mc_io, ptr %mc_io, i32 0, i32 4
  %11 = ptrtoint ptr %portal_virt_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %portal_virt_addr, align 4
  %arrayidx.i = getelementptr %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 0
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx.i, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #6
  %arrayidx2.i = getelementptr %struct.fsl_mc_command, ptr %12, i32 0, i32 1, i32 0
  %shr.i.i = lshr i64 %15, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #6
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx2.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #6, !srcloc !55
  %17 = lshr i64 %14, 32
  %18 = trunc i64 %17 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx2.i, i32 %18) #6, !srcloc !55
  %arrayidx.1.i = getelementptr %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx.1.i, align 8
  %21 = tail call i64 @llvm.bswap.i64(i64 %20) #6
  %arrayidx2.1.i = getelementptr %struct.fsl_mc_command, ptr %12, i32 0, i32 1, i32 1
  %shr.i.1.i = lshr i64 %21, 32
  %conv.i.1.i = trunc i64 %shr.i.1.i to i32
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv.i.1.i) #6
  %add.ptr.i.1.i = getelementptr i8, ptr %arrayidx2.1.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 %22) #6, !srcloc !55
  %23 = lshr i64 %20, 32
  %24 = trunc i64 %23 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx2.1.i, i32 %24) #6, !srcloc !55
  %arrayidx.2.i = getelementptr %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.2.i, align 8
  %27 = tail call i64 @llvm.bswap.i64(i64 %26) #6
  %arrayidx2.2.i = getelementptr %struct.fsl_mc_command, ptr %12, i32 0, i32 1, i32 2
  %shr.i.2.i = lshr i64 %27, 32
  %conv.i.2.i = trunc i64 %shr.i.2.i to i32
  %28 = tail call i32 @llvm.bswap.i32(i32 %conv.i.2.i) #6
  %add.ptr.i.2.i = getelementptr i8, ptr %arrayidx2.2.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i, i32 %28) #6, !srcloc !55
  %29 = lshr i64 %26, 32
  %30 = trunc i64 %29 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx2.2.i, i32 %30) #6, !srcloc !55
  %arrayidx.3.i = getelementptr %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.3.i, align 8
  %33 = tail call i64 @llvm.bswap.i64(i64 %32) #6
  %arrayidx2.3.i = getelementptr %struct.fsl_mc_command, ptr %12, i32 0, i32 1, i32 3
  %shr.i.3.i = lshr i64 %33, 32
  %conv.i.3.i = trunc i64 %shr.i.3.i to i32
  %34 = tail call i32 @llvm.bswap.i32(i32 %conv.i.3.i) #6
  %add.ptr.i.3.i = getelementptr i8, ptr %arrayidx2.3.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i, i32 %34) #6, !srcloc !55
  %35 = lshr i64 %32, 32
  %36 = trunc i64 %35 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx2.3.i, i32 %36) #6, !srcloc !55
  %arrayidx.4.i = getelementptr %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 4
  %37 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx.4.i, align 8
  %39 = tail call i64 @llvm.bswap.i64(i64 %38) #6
  %arrayidx2.4.i = getelementptr %struct.fsl_mc_command, ptr %12, i32 0, i32 1, i32 4
  %shr.i.4.i = lshr i64 %39, 32
  %conv.i.4.i = trunc i64 %shr.i.4.i to i32
  %40 = tail call i32 @llvm.bswap.i32(i32 %conv.i.4.i) #6
  %add.ptr.i.4.i = getelementptr i8, ptr %arrayidx2.4.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4.i, i32 %40) #6, !srcloc !55
  %41 = lshr i64 %38, 32
  %42 = trunc i64 %41 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx2.4.i, i32 %42) #6, !srcloc !55
  %arrayidx.5.i = getelementptr %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 5
  %43 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx.5.i, align 8
  %45 = tail call i64 @llvm.bswap.i64(i64 %44) #6
  %arrayidx2.5.i = getelementptr %struct.fsl_mc_command, ptr %12, i32 0, i32 1, i32 5
  %shr.i.5.i = lshr i64 %45, 32
  %conv.i.5.i = trunc i64 %shr.i.5.i to i32
  %46 = tail call i32 @llvm.bswap.i32(i32 %conv.i.5.i) #6
  %add.ptr.i.5.i = getelementptr i8, ptr %arrayidx2.5.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5.i, i32 %46) #6, !srcloc !55
  %47 = lshr i64 %44, 32
  %48 = trunc i64 %47 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx2.5.i, i32 %48) #6, !srcloc !55
  %arrayidx.6.i = getelementptr %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 6
  %49 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx.6.i, align 8
  %51 = tail call i64 @llvm.bswap.i64(i64 %50) #6
  %arrayidx2.6.i = getelementptr %struct.fsl_mc_command, ptr %12, i32 0, i32 1, i32 6
  %shr.i.6.i = lshr i64 %51, 32
  %conv.i.6.i = trunc i64 %shr.i.6.i to i32
  %52 = tail call i32 @llvm.bswap.i32(i32 %conv.i.6.i) #6
  %add.ptr.i.6.i = getelementptr i8, ptr %arrayidx2.6.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6.i, i32 %52) #6, !srcloc !55
  %53 = lshr i64 %50, 32
  %54 = trunc i64 %53 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx2.6.i, i32 %54) #6, !srcloc !55
  %55 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %cmd, align 8
  %57 = tail call i64 @llvm.bswap.i64(i64 %56) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %shr.i9.i = lshr i64 %57, 32
  %conv.i10.i = trunc i64 %shr.i9.i to i32
  %58 = tail call i32 @llvm.bswap.i32(i32 %conv.i10.i) #6
  %add.ptr.i11.i = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %58) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %59 = lshr i64 %56, 32
  %60 = trunc i64 %59 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %60) #6, !srcloc !55
  %61 = ptrtoint ptr %flags3 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %flags3, align 4
  %63 = and i16 %62, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool14.not = icmp eq i16 %63, 0
  br i1 %tobool14.not, label %if.then15, label %if.end10.for.cond.i81_crit_edge

if.end10.for.cond.i81_crit_edge:                  ; preds = %if.end10
  br label %for.cond.i81

if.then15:                                        ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -50, %64
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %if.then15
  %65 = ptrtoint ptr %portal_virt_addr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %portal_virt_addr, align 4
  %call1.i = tail call fastcc i32 @mc_read_response(ptr noundef %66, ptr noundef %cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 1
  br i1 %cmp.not.i, label %if.end.i, label %for.cond.i.if.end23_crit_edge

for.cond.i.if.end23_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.end.i:                                         ; preds = %for.cond.i
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 500, i32 noundef 2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %67
  %cmp2.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp2.i, label %do.body.i, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc_polling_wait_preemptible.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc_send_command, %if.then7.i)) #6
          to label %common_exit [label %if.then7.i], !srcloc !58

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mc_io, align 4
  %portal_phys_addr.i = getelementptr inbounds %struct.fsl_mc_io, ptr %mc_io, i32 0, i32 3
  %token1.i.i = getelementptr inbounds %struct.mc_cmd_header, ptr %cmd, i32 0, i32 4
  %70 = ptrtoint ptr %token1.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %token1.i.i, align 2
  %72 = tail call i16 @llvm.bswap.i16(i16 %71) #6
  %conv.i = zext i16 %72 to i32
  %cmd_id1.i.i = getelementptr inbounds %struct.mc_cmd_header, ptr %cmd, i32 0, i32 5
  %73 = ptrtoint ptr %cmd_id1.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %cmd_id1.i.i, align 2
  %75 = tail call i16 @llvm.bswap.i16(i16 %74) #6
  %conv10.i = zext i16 %75 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc_polling_wait_preemptible.__UNIQUE_ID_ddebug187, ptr noundef %69, ptr noundef nonnull @.str.5, ptr noundef %portal_phys_addr.i, i32 noundef %conv.i, i32 noundef %conv10.i) #6
  br label %common_exit

for.cond.i81:                                     ; preds = %if.end.i83.for.cond.i81_crit_edge, %if.end10.for.cond.i81_crit_edge
  %timeout_usecs.0.i = phi i32 [ %sub.i82, %if.end.i83.for.cond.i81_crit_edge ], [ 500000, %if.end10.for.cond.i81_crit_edge ]
  %76 = ptrtoint ptr %portal_virt_addr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %portal_virt_addr, align 4
  %call.i = tail call fastcc i32 @mc_read_response(ptr noundef %77, ptr noundef %cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i80 = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i80, label %if.end.i83, label %for.cond.i81.if.end23_crit_edge

for.cond.i81.if.end23_crit_edge:                  ; preds = %for.cond.i81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.end.i83:                                       ; preds = %for.cond.i81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 107374000) #6
  %sub.i82 = add nsw i32 %timeout_usecs.0.i, -500
  %cmp1.i = icmp eq i32 %sub.i82, 0
  br i1 %cmp1.i, label %do.body3.i, label %if.end.i83.for.cond.i81_crit_edge

if.end.i83.for.cond.i81_crit_edge:                ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i81

do.body3.i:                                       ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc_polling_wait_atomic.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc_send_command, %if.then7.i89)) #6
          to label %common_exit [label %if.then7.i89], !srcloc !58

if.then7.i89:                                     ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mc_io, align 4
  %portal_phys_addr.i84 = getelementptr inbounds %struct.fsl_mc_io, ptr %mc_io, i32 0, i32 3
  %token1.i.i85 = getelementptr inbounds %struct.mc_cmd_header, ptr %cmd, i32 0, i32 4
  %81 = ptrtoint ptr %token1.i.i85 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %token1.i.i85, align 2
  %83 = tail call i16 @llvm.bswap.i16(i16 %82) #6
  %conv.i86 = zext i16 %83 to i32
  %cmd_id1.i.i87 = getelementptr inbounds %struct.mc_cmd_header, ptr %cmd, i32 0, i32 5
  %84 = ptrtoint ptr %cmd_id1.i.i87 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %cmd_id1.i.i87, align 2
  %86 = tail call i16 @llvm.bswap.i16(i16 %85) #6
  %conv10.i88 = zext i16 %86 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc_polling_wait_atomic.__UNIQUE_ID_ddebug189, ptr noundef %80, ptr noundef nonnull @.str.5, ptr noundef %portal_phys_addr.i84, i32 noundef %conv.i86, i32 noundef %conv10.i88) #6
  br label %common_exit

if.end23:                                         ; preds = %for.cond.i81.if.end23_crit_edge, %for.cond.i.if.end23_crit_edge
  %status.2.ph = phi i32 [ %call1.i, %for.cond.i.if.end23_crit_edge ], [ %call.i, %for.cond.i81.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2.ph)
  %cmp24.not = icmp eq i32 %status.2.ph, 0
  br i1 %cmp24.not, label %if.end23.common_exit_crit_edge, label %do.body27

if.end23.common_exit_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %common_exit

do.body27:                                        ; preds = %if.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc_send_command.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc_send_command, %if.then33)) #6
          to label %do.end41 [label %if.then33], !srcloc !58

if.then33:                                        ; preds = %do.body27
  %87 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mc_io, align 4
  %portal_phys_addr = getelementptr inbounds %struct.fsl_mc_io, ptr %mc_io, i32 0, i32 3
  %token1.i = getelementptr inbounds %struct.mc_cmd_header, ptr %cmd, i32 0, i32 4
  %89 = ptrtoint ptr %token1.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %token1.i, align 2
  %91 = tail call i16 @llvm.bswap.i16(i16 %90) #6
  %conv35 = zext i16 %91 to i32
  %cmd_id1.i = getelementptr inbounds %struct.mc_cmd_header, ptr %cmd, i32 0, i32 5
  %92 = ptrtoint ptr %cmd_id1.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %cmd_id1.i, align 2
  %94 = tail call i16 @llvm.bswap.i16(i16 %93) #6
  %conv37 = zext i16 %94 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %status.2.ph)
  %cmp.i = icmp ugt i32 %status.2.ph, 12
  br i1 %cmp.i, label %if.then33.mc_status_to_string.exit_crit_edge, label %if.end.i93

if.then33.mc_status_to_string.exit_crit_edge:     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %mc_status_to_string.exit

if.end.i93:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i92 = getelementptr [13 x ptr], ptr @mc_status_to_string.status_strings, i32 0, i32 %status.2.ph
  %95 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i92, align 4
  br label %mc_status_to_string.exit

mc_status_to_string.exit:                         ; preds = %if.end.i93, %if.then33.mc_status_to_string.exit_crit_edge
  %retval.0.i94 = phi ptr [ %96, %if.end.i93 ], [ @.str.19, %if.then33.mc_status_to_string.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc_send_command.__UNIQUE_ID_ddebug190, ptr noundef %88, ptr noundef nonnull @.str.3, ptr noundef %portal_phys_addr, i32 noundef %conv35, i32 noundef %conv37, ptr noundef %retval.0.i94, i32 noundef %status.2.ph) #6
  br label %do.end41

do.end41:                                         ; preds = %mc_status_to_string.exit, %do.body27
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %status.2.ph)
  %cmp.i95 = icmp ugt i32 %status.2.ph, 12
  br i1 %cmp.i95, label %do.end41.common_exit_crit_edge, label %if.end.i97

do.end41.common_exit_crit_edge:                   ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %common_exit

if.end.i97:                                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i96 = getelementptr [13 x i32], ptr @mc_status_to_error.mc_status_to_error_map, i32 0, i32 %status.2.ph
  %97 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i96, align 4
  br label %common_exit

common_exit:                                      ; preds = %if.end.i97, %do.end41.common_exit_crit_edge, %if.end23.common_exit_crit_edge, %if.then7.i89, %do.body3.i, %if.then7.i, %do.body.i
  %error.1 = phi i32 [ 0, %if.end23.common_exit_crit_edge ], [ -110, %do.body.i ], [ -110, %do.body3.i ], [ %98, %if.end.i97 ], [ -22, %do.end41.common_exit_crit_edge ], [ -110, %if.then7.i ], [ -110, %if.then7.i89 ]
  %99 = ptrtoint ptr %flags3 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %flags3, align 4
  %101 = and i16 %100, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %tobool47.not = icmp eq i16 %101, 0
  %102 = getelementptr inbounds %struct.fsl_mc_io, ptr %mc_io, i32 0, i32 6
  br i1 %tobool47.not, label %if.else57, label %do.body49

do.body49:                                        ; preds = %common_exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %102, i32 noundef %irq_flags.0) #6
  br label %cleanup

if.else57:                                        ; preds = %common_exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %102) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else57, %do.body49, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ %error.1, %if.else57 ], [ %error.1, %do.body49 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mc_read_response(ptr noundef %portal, ptr nocapture noundef %resp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i32, ptr %portal, i32 1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !59
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portal) #6, !srcloc !59
  %2 = zext i32 %0 to i64
  %3 = zext i32 %1 to i64
  %4 = shl nuw i64 %3, 32
  %5 = or i64 %4, %2
  %6 = ptrtoint ptr %resp to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %resp, align 8
  %7 = lshr i64 %3, 8
  %8 = trunc i64 %7 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not = icmp eq i8 %8, 0
  br i1 %cmp.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.fsl_mc_command, ptr %portal, i32 0, i32 1, i32 0
  %add.ptr.i16 = getelementptr i32, ptr %arrayidx, i32 1
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #6, !srcloc !59
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #6, !srcloc !59
  %11 = zext i32 %9 to i64
  %12 = zext i32 %10 to i64
  %13 = shl nuw i64 %12, 32
  %14 = or i64 %13, %11
  %arrayidx6 = getelementptr %struct.fsl_mc_command, ptr %resp, i32 0, i32 1, i32 0
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %arrayidx6, align 8
  %arrayidx.1 = getelementptr %struct.fsl_mc_command, ptr %portal, i32 0, i32 1, i32 1
  %add.ptr.i16.1 = getelementptr i32, ptr %arrayidx.1, i32 1
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.1) #6, !srcloc !59
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.1) #6, !srcloc !59
  %18 = zext i32 %16 to i64
  %19 = zext i32 %17 to i64
  %20 = shl nuw i64 %19, 32
  %21 = or i64 %20, %18
  %arrayidx6.1 = getelementptr %struct.fsl_mc_command, ptr %resp, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %arrayidx6.1, align 8
  %arrayidx.2 = getelementptr %struct.fsl_mc_command, ptr %portal, i32 0, i32 1, i32 2
  %add.ptr.i16.2 = getelementptr i32, ptr %arrayidx.2, i32 1
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.2) #6, !srcloc !59
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.2) #6, !srcloc !59
  %25 = zext i32 %23 to i64
  %26 = zext i32 %24 to i64
  %27 = shl nuw i64 %26, 32
  %28 = or i64 %27, %25
  %arrayidx6.2 = getelementptr %struct.fsl_mc_command, ptr %resp, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx6.2, align 8
  %arrayidx.3 = getelementptr %struct.fsl_mc_command, ptr %portal, i32 0, i32 1, i32 3
  %add.ptr.i16.3 = getelementptr i32, ptr %arrayidx.3, i32 1
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.3) #6, !srcloc !59
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.3) #6, !srcloc !59
  %32 = zext i32 %30 to i64
  %33 = zext i32 %31 to i64
  %34 = shl nuw i64 %33, 32
  %35 = or i64 %34, %32
  %arrayidx6.3 = getelementptr %struct.fsl_mc_command, ptr %resp, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx6.3, align 8
  %arrayidx.4 = getelementptr %struct.fsl_mc_command, ptr %portal, i32 0, i32 1, i32 4
  %add.ptr.i16.4 = getelementptr i32, ptr %arrayidx.4, i32 1
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.4) #6, !srcloc !59
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.4) #6, !srcloc !59
  %39 = zext i32 %37 to i64
  %40 = zext i32 %38 to i64
  %41 = shl nuw i64 %40, 32
  %42 = or i64 %41, %39
  %arrayidx6.4 = getelementptr %struct.fsl_mc_command, ptr %resp, i32 0, i32 1, i32 4
  %43 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %arrayidx6.4, align 8
  %arrayidx.5 = getelementptr %struct.fsl_mc_command, ptr %portal, i32 0, i32 1, i32 5
  %add.ptr.i16.5 = getelementptr i32, ptr %arrayidx.5, i32 1
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.5) #6, !srcloc !59
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.5) #6, !srcloc !59
  %46 = zext i32 %44 to i64
  %47 = zext i32 %45 to i64
  %48 = shl nuw i64 %47, 32
  %49 = or i64 %48, %46
  %arrayidx6.5 = getelementptr %struct.fsl_mc_command, ptr %resp, i32 0, i32 1, i32 5
  %50 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %arrayidx6.5, align 8
  %arrayidx.6 = getelementptr %struct.fsl_mc_command, ptr %portal, i32 0, i32 1, i32 6
  %add.ptr.i16.6 = getelementptr i32, ptr %arrayidx.6, i32 1
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.6) #6, !srcloc !59
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.6) #6, !srcloc !59
  %53 = zext i32 %51 to i64
  %54 = zext i32 %52 to i64
  %55 = shl nuw i64 %54, 32
  %56 = or i64 %55, %53
  %arrayidx6.6 = getelementptr %struct.fsl_mc_command, ptr %resp, i32 0, i32 1, i32 6
  %57 = ptrtoint ptr %arrayidx6.6 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %arrayidx6.6, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  %58 = trunc i64 %7 to i32
  %conv.i = and i32 %58, 255
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43}
!llvm.named.register.sp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bus/fsl-mc/mc-sys.c", i32 276, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mc_send_command.__UNIQUE_ID_ddebug190, !1, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!6 = !{ptr @__ksymtab_mc_send_command, !7, !"__ksymtab_mc_send_command", i1 false, i1 false}
!7 = !{!"../drivers/bus/fsl-mc/mc-sys.c", i32 297, i32 1}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/bus/fsl-mc/mc-sys.c", i32 183, i32 4}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mc_polling_wait_preemptible.__UNIQUE_ID_ddebug187, !9, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/bus/fsl-mc/mc-sys.c", i32 223, i32 4}
!14 = !{ptr @mc_polling_wait_atomic.__UNIQUE_ID_ddebug189, !13, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/bus/fsl-mc/mc-sys.c", i32 71, i32 24}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/bus/fsl-mc/mc-sys.c", i32 72, i32 27}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/bus/fsl-mc/mc-sys.c", i32 73, i32 30}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/bus/fsl-mc/mc-sys.c", i32 74, i32 34}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/bus/fsl-mc/mc-sys.c", i32 75, i32 29}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/bus/fsl-mc/mc-sys.c", i32 76, i32 32}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/bus/fsl-mc/mc-sys.c", i32 77, i32 29}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/bus/fsl-mc/mc-sys.c", i32 78, i32 33}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/bus/fsl-mc/mc-sys.c", i32 79, i32 31}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/bus/fsl-mc/mc-sys.c", i32 80, i32 26}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/bus/fsl-mc/mc-sys.c", i32 81, i32 36}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/bus/fsl-mc/mc-sys.c", i32 82, i32 35}
!39 = !{ptr @mc_status_to_string.status_strings, !40, !"status_strings", i1 false, i1 false}
!40 = !{!"../drivers/bus/fsl-mc/mc-sys.c", i32 70, i32 27}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/bus/fsl-mc/mc-sys.c", i32 86, i32 10}
!43 = !{ptr @mc_status_to_error.mc_status_to_error_map, !44, !"mc_status_to_error_map", i1 false, i1 false}
!44 = !{!"../drivers/bus/fsl-mc/mc-sys.c", i32 48, i32 19}
!45 = !{!"sp"}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 5177388}
!56 = !{i64 2152739242}
!57 = !{i64 2152739627}
!58 = !{i64 2148763349, i64 2148763354, i64 2148763367, i64 2148763411, i64 2148763445, i64 2148763466}
!59 = !{i64 5177806}

; ModuleID = '/llk/IR_all_yes/init/calibrate.c_pt.bc'
source_filename = "../init/calibrate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__setup_str_lpj_setup = internal constant [5 x i8] c"lpj=\00", section ".init.rodata", align 1
@__setup_lpj_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_lpj_setup, ptr @lpj_setup, i32 0 }, section ".init.setup", align 4
@cpu_loops_per_jiffy = weak dso_local global i32 0, section ".data..percpu", align 4
@calibrate_delay.printed = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@calibrate_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016Calibrating delay loop (skipped) already calibrated this CPU\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"calibrate_delay\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"init/calibrate.c\00", [47 x i8] zeroinitializer }, align 32
@calibrate_delay._entry_ptr = internal global ptr @calibrate_delay._entry, section ".printk_index", align 4
@preset_lpj = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@calibrate_delay._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016Calibrating delay loop (skipped) preset value.. \00", [45 x i8] zeroinitializer }, align 32
@calibrate_delay._entry_ptr.5 = internal global ptr @calibrate_delay._entry.3, section ".printk_index", align 4
@lpj_fine = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@calibrate_delay._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016Calibrating delay loop (skipped), value calculated using timer frequency.. \00", [50 x i8] zeroinitializer }, align 32
@calibrate_delay._entry_ptr.8 = internal global ptr @calibrate_delay._entry.6, section ".printk_index", align 4
@calibrate_delay._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016Calibrating delay using timer specific routine.. \00", [44 x i8] zeroinitializer }, align 32
@calibrate_delay._entry_ptr.11 = internal global ptr @calibrate_delay._entry.9, section ".printk_index", align 4
@calibrate_delay._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016Calibrating delay loop... \00", [35 x i8] zeroinitializer }, align 32
@calibrate_delay._entry_ptr.14 = internal global ptr @calibrate_delay._entry.12, section ".printk_index", align 4
@calibrate_delay._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\01c%lu.%02lu BogoMIPS (lpj=%lu)\0A\00", [32 x i8] zeroinitializer }, align 32
@calibrate_delay._entry_ptr.17 = internal global ptr @calibrate_delay._entry.15, section ".printk_index", align 4
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@__pcpu_unique_cpu_loops_per_jiffy = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@calibrate_delay_direct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\015calibrate_delay_direct() ignoring timer_rate as we had a TSC wrap around start=%lu >=post_end=%lu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"calibrate_delay_direct\00", [41 x i8] zeroinitializer }, align 32
@calibrate_delay_direct._entry_ptr = internal global ptr @calibrate_delay_direct._entry, section ".printk_index", align 4
@calibrate_delay_direct._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\015calibrate_delay_direct() dropping min bogoMips estimate %d = %lu\0A\00", [60 x i8] zeroinitializer }, align 32
@calibrate_delay_direct._entry_ptr.22 = internal global ptr @calibrate_delay_direct._entry.20, section ".printk_index", align 4
@calibrate_delay_direct._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\015calibrate_delay_direct() dropping max bogoMips estimate %d = %lu\0A\00", [60 x i8] zeroinitializer }, align 32
@calibrate_delay_direct._entry_ptr.25 = internal global ptr @calibrate_delay_direct._entry.23, section ".printk_index", align 4
@calibrate_delay_direct._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [156 x i8], [36 x i8] } { [156 x i8] c"\015calibrate_delay_direct() failed to get a good estimate for loops_per_jiffy.\0AProbably due to long platform interrupts. Consider using \22lpj=\22 boot option.\0A\00", [36 x i8] zeroinitializer }, align 32
@calibrate_delay_direct._entry_ptr.28 = internal global ptr @calibrate_delay_direct._entry.26, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.29 = private unnamed_addr constant [24 x i8] c"calibrate_delay.printed\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 284, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"preset_lpj\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 16, i32 15 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 289, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant [9 x i8] c"lpj_fine\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 15, i32 15 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 293, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 299, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 303, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 308, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 99, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 138, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 144, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [20 x i8] c"../init/calibrate.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 164, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__setup_lpj_setup, ptr @calibrate_delay._entry, ptr @calibrate_delay._entry.12, ptr @calibrate_delay._entry.15, ptr @calibrate_delay._entry.3, ptr @calibrate_delay._entry.6, ptr @calibrate_delay._entry.9, ptr @calibrate_delay._entry_ptr, ptr @calibrate_delay._entry_ptr.11, ptr @calibrate_delay._entry_ptr.14, ptr @calibrate_delay._entry_ptr.17, ptr @calibrate_delay._entry_ptr.5, ptr @calibrate_delay._entry_ptr.8, ptr @calibrate_delay_direct._entry, ptr @calibrate_delay_direct._entry.20, ptr @calibrate_delay_direct._entry.23, ptr @calibrate_delay_direct._entry.26, ptr @calibrate_delay_direct._entry_ptr, ptr @calibrate_delay_direct._entry_ptr.22, ptr @calibrate_delay_direct._entry_ptr.25, ptr @calibrate_delay_direct._entry_ptr.28, ptr @calibrate_delay.printed, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @preset_lpj, ptr @.str.4, ptr @lpj_fine, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_delay.printed to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preset_lpj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_delay._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpj_fine to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_delay._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_delay._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_delay._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_delay._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_delay_direct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_delay_direct._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_delay_direct._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_delay_direct._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpj_setup(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtoul(ptr noundef %str, ptr noundef null, i32 noundef 0) #6
  store i32 %call, ptr @preset_lpj, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @calibrate_delay_is_known() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @calibration_delay_done() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @calibrate_delay() local_unnamed_addr #1 align 64 {
entry:
  %pre_start.i = alloca i32, align 4
  %start.i = alloca i32, align 4
  %post_start.i = alloca i32, align 4
  %end.i = alloca i32, align 4
  %post_end.i = alloca i32, align 4
  %measured_times.i = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #6
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
  %add = add i32 %5, ptrtoint (ptr @cpu_loops_per_jiffy to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %do.body2

do.body2:                                         ; preds = %entry
  %.b97103 = load i1, ptr @calibrate_delay.printed, align 1
  br i1 %.b97103, label %do.body2.if.end66.thread_crit_edge, label %do.end15

do.body2.if.end66.thread_crit_edge:               ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.thread

do.end15:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %if.end66

if.else:                                          ; preds = %entry
  %9 = load i32, ptr @preset_lpj, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool18.not = icmp eq i32 %9, 0
  %.b9598 = load i1, ptr @calibrate_delay.printed, align 1
  br i1 %tobool18.not, label %if.else28, label %if.then19

if.then19:                                        ; preds = %if.else
  br i1 %.b9598, label %if.then19.if.end66.thread_crit_edge, label %do.end24

if.then19.if.end66.thread_crit_edge:              ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.thread

do.end24:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %if.end66

if.else28:                                        ; preds = %if.else
  br i1 %.b9598, label %if.else28.if.else37_crit_edge, label %land.lhs.true

if.else28.if.else37_crit_edge:                    ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else37

land.lhs.true:                                    ; preds = %if.else28
  %10 = load i32, ptr @lpj_fine, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool30.not = icmp eq i32 %10, 0
  br i1 %tobool30.not, label %land.lhs.true.if.else37_crit_edge, label %if.then31

land.lhs.true.if.else37_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else37

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %if.end66

if.else37:                                        ; preds = %land.lhs.true.if.else37_crit_edge, %if.else28.if.else37_crit_edge
  %call38 = tail call i32 @calibrate_delay_is_known()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.else41, label %if.else37.if.end66_crit_edge

if.else37.if.end66_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.else41:                                        ; preds = %if.else37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pre_start.i) #6
  %11 = ptrtoint ptr %pre_start.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %pre_start.i, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start.i) #6
  %12 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %start.i, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %post_start.i) #6
  %13 = ptrtoint ptr %post_start.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %post_start.i, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end.i) #6
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %end.i, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %post_end.i) #6
  %15 = ptrtoint ptr %post_end.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %post_end.i, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %measured_times.i) #6
  %16 = getelementptr inbounds [5 x i32], ptr %measured_times.i, i32 0, i32 1
  %17 = getelementptr inbounds [5 x i32], ptr %measured_times.i, i32 0, i32 2
  %18 = getelementptr inbounds [5 x i32], ptr %measured_times.i, i32 0, i32 3
  %19 = getelementptr inbounds [5 x i32], ptr %measured_times.i, i32 0, i32 4
  %20 = call ptr @memset(ptr %measured_times.i, i32 255, i32 20)
  %call.i = call i32 @read_current_timer(ptr noundef nonnull %pre_start.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.else41.calibrate_delay_direct.exit.thread_crit_edge, label %if.else41.for.body.i_crit_edge

if.else41.for.body.i_crit_edge:                   ; preds = %if.else41
  br label %for.body.i

if.else41.calibrate_delay_direct.exit.thread_crit_edge: ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #8
  br label %calibrate_delay_direct.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else41.for.body.i_crit_edge
  %i.0189.i = phi i32 [ %inc44.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else41.for.body.i_crit_edge ]
  %min.0187.i = phi i32 [ %min.1.i, %for.inc.i.for.body.i_crit_edge ], [ -1, %if.else41.for.body.i_crit_edge ]
  %max.0185.i = phi i32 [ %max.2.i, %for.inc.i.for.body.i_crit_edge ], [ -1, %if.else41.for.body.i_crit_edge ]
  %good_timer_count.0184.i = phi i32 [ %good_timer_count.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else41.for.body.i_crit_edge ]
  %good_timer_sum.0183.i = phi i32 [ %good_timer_sum.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else41.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %pre_start.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %pre_start.i, align 4
  %call2.i = call i32 @read_current_timer(ptr noundef nonnull %start.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %22, 1
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub178.i = sub i32 %add.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub178.i)
  %cmp3179.i = icmp sgt i32 %sub178.i, -1
  br i1 %cmp3179.i, label %for.body.i.while.body.i_crit_edge, label %for.body.i.while.end.i_crit_edge

for.body.i.while.end.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

for.body.i.while.body.i_crit_edge:                ; preds = %for.body.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body.i.while.body.i_crit_edge
  %24 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %start.i, align 4
  %26 = ptrtoint ptr %pre_start.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %pre_start.i, align 4
  %call4.i = call i32 @read_current_timer(ptr noundef nonnull %start.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %27
  %cmp3.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp3.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %for.body.i.while.end.i_crit_edge
  %call5.i = call i32 @read_current_timer(ptr noundef nonnull %post_start.i) #6
  %28 = ptrtoint ptr %post_start.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %post_start.i, align 4
  %30 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %end.i, align 4
  %add8.i = add i32 %22, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub9181.i = sub i32 %add8.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub9181.i)
  %cmp10182.i = icmp sgt i32 %sub9181.i, -1
  br i1 %cmp10182.i, label %while.end.i.while.body11.i_crit_edge, label %while.end.i.while.end13.i_crit_edge

while.end.i.while.end13.i_crit_edge:              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end13.i

while.end.i.while.body11.i_crit_edge:             ; preds = %while.end.i
  br label %while.body11.i

while.body11.i:                                   ; preds = %while.body11.i.while.body11.i_crit_edge, %while.end.i.while.body11.i_crit_edge
  %32 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %end.i, align 4
  %call12.i = call i32 @read_current_timer(ptr noundef nonnull %end.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %sub9.i = sub i32 %add8.i, %34
  %cmp10.i = icmp sgt i32 %sub9.i, -1
  br i1 %cmp10.i, label %while.body11.i.while.body11.i_crit_edge, label %while.body11.i.while.end13.i_crit_edge

while.body11.i.while.end13.i_crit_edge:           ; preds = %while.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end13.i

while.body11.i.while.body11.i_crit_edge:          ; preds = %while.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body11.i

while.end13.i:                                    ; preds = %while.body11.i.while.end13.i_crit_edge, %while.end.i.while.end13.i_crit_edge
  %pre_end.0.lcssa.i = phi i32 [ 0, %while.end.i.while.end13.i_crit_edge ], [ %33, %while.body11.i.while.end13.i_crit_edge ]
  %call14.i = call i32 @read_current_timer(ptr noundef nonnull %post_end.i) #6
  %35 = ptrtoint ptr %post_end.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %post_end.i, align 4
  %37 = ptrtoint ptr %pre_start.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pre_start.i, align 4
  %sub15.i = sub i32 %36, %38
  %39 = ptrtoint ptr %post_start.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %post_start.i, align 4
  %sub16.neg.i = sub i32 %40, %pre_end.0.lcssa.i
  %41 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %start.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %36)
  %cmp18.not.i = icmp ult i32 %42, %36
  br i1 %cmp18.not.i, label %while.end13.i.if.end21.i_crit_edge, label %do.end.i

while.end13.i.if.end21.i_crit_edge:               ; preds = %while.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

do.end.i:                                         ; preds = %while.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %42, i32 noundef %36) #9
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end.i, %while.end13.i.if.end21.i_crit_edge
  %43 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %start.i, align 4
  %45 = ptrtoint ptr %post_end.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %post_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp22.i = icmp ult i32 %44, %46
  br i1 %cmp22.i, label %land.lhs.true.i, label %if.end21.i.if.else.i_crit_edge

if.end21.i.if.else.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end21.i
  %47 = ptrtoint ptr %pre_start.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pre_start.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp23.not.i = icmp ne i32 %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pre_end.0.lcssa.i)
  %cmp25.not.i = icmp ne i32 %pre_end.0.lcssa.i, 0
  %or.cond.i = select i1 %cmp23.not.i, i1 %cmp25.not.i, i1 false
  %sub27.i = add i32 %sub16.neg.i, %sub15.i
  %shr.i = lshr i32 %sub15.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub27.i, i32 %shr.i)
  %cmp28.i = icmp ult i32 %sub27.i, %shr.i
  %or.cond169.i = select i1 %or.cond.i, i1 %cmp28.i, i1 false
  br i1 %or.cond169.i, label %if.then29.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then29.i:                                      ; preds = %land.lhs.true.i
  %inc.i = add i32 %good_timer_count.0184.i, 1
  %add30.i = add i32 %sub15.i, %good_timer_sum.0183.i
  %arrayidx.i = getelementptr [5 x i32], ptr %measured_times.i, i32 0, i32 %i.0189.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub15.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max.0185.i)
  %cmp31.i = icmp slt i32 %max.0185.i, 0
  br i1 %cmp31.i, label %if.then29.i.if.then34.i_crit_edge, label %lor.lhs.false.i

if.then29.i.if.then34.i_crit_edge:                ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34.i

lor.lhs.false.i:                                  ; preds = %if.then29.i
  %arrayidx32.i = getelementptr [5 x i32], ptr %measured_times.i, i32 0, i32 %max.0185.i
  %50 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx32.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15.i, i32 %51)
  %cmp33.i = icmp ugt i32 %sub15.i, %51
  br i1 %cmp33.i, label %lor.lhs.false.i.if.then34.i_crit_edge, label %lor.lhs.false.i.if.end35.i_crit_edge

lor.lhs.false.i.if.end35.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

lor.lhs.false.i.if.then34.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34.i

if.then34.i:                                      ; preds = %lor.lhs.false.i.if.then34.i_crit_edge, %if.then29.i.if.then34.i_crit_edge
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then34.i, %lor.lhs.false.i.if.end35.i_crit_edge
  %max.1.i = phi i32 [ %i.0189.i, %if.then34.i ], [ %max.0185.i, %lor.lhs.false.i.if.end35.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min.0187.i)
  %cmp36.i = icmp slt i32 %min.0187.i, 0
  br i1 %cmp36.i, label %if.end35.i.if.then40.i_crit_edge, label %lor.lhs.false37.i

if.end35.i.if.then40.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.i

lor.lhs.false37.i:                                ; preds = %if.end35.i
  %arrayidx38.i = getelementptr [5 x i32], ptr %measured_times.i, i32 0, i32 %min.0187.i
  %52 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx38.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15.i, i32 %53)
  %cmp39.i = icmp ult i32 %sub15.i, %53
  br i1 %cmp39.i, label %lor.lhs.false37.i.if.then40.i_crit_edge, label %lor.lhs.false37.i.for.inc.i_crit_edge

lor.lhs.false37.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

lor.lhs.false37.i.if.then40.i_crit_edge:          ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.i

if.then40.i:                                      ; preds = %lor.lhs.false37.i.if.then40.i_crit_edge, %if.end35.i.if.then40.i_crit_edge
  br label %for.inc.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end21.i.if.else.i_crit_edge
  %arrayidx42.i = getelementptr [5 x i32], ptr %measured_times.i, i32 0, i32 %i.0189.i
  %54 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %arrayidx42.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then40.i, %lor.lhs.false37.i.for.inc.i_crit_edge
  %good_timer_sum.1.i = phi i32 [ %add30.i, %if.then40.i ], [ %add30.i, %lor.lhs.false37.i.for.inc.i_crit_edge ], [ %good_timer_sum.0183.i, %if.else.i ]
  %good_timer_count.1.i = phi i32 [ %inc.i, %if.then40.i ], [ %inc.i, %lor.lhs.false37.i.for.inc.i_crit_edge ], [ %good_timer_count.0184.i, %if.else.i ]
  %max.2.i = phi i32 [ %max.1.i, %if.then40.i ], [ %max.1.i, %lor.lhs.false37.i.for.inc.i_crit_edge ], [ %max.0185.i, %if.else.i ]
  %min.1.i = phi i32 [ %i.0189.i, %if.then40.i ], [ %min.0187.i, %lor.lhs.false37.i.for.inc.i_crit_edge ], [ %min.0187.i, %if.else.i ]
  %inc44.i = add nuw nsw i32 %i.0189.i, 1
  %exitcond.not.i = icmp eq i32 %inc44.i, 5
  br i1 %exitcond.not.i, label %while.cond45.i.preheader, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

while.cond45.i.preheader:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %good_timer_count.1.i)
  %cmp46.i113 = icmp ugt i32 %good_timer_count.1.i, 1
  br i1 %cmp46.i113, label %while.cond45.i.preheader.while.body47.i_crit_edge, label %while.cond45.i.preheader.do.end105.i_crit_edge

while.cond45.i.preheader.do.end105.i_crit_edge:   ; preds = %while.cond45.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end105.i

while.cond45.i.preheader.while.body47.i_crit_edge: ; preds = %while.cond45.i.preheader
  br label %while.body47.i

while.body47.i:                                   ; preds = %for.inc98.4.i.while.body47.i_crit_edge, %while.cond45.i.preheader.while.body47.i_crit_edge
  %min.2.i117 = phi i32 [ %min.6.4.i, %for.inc98.4.i.while.body47.i_crit_edge ], [ %min.1.i, %while.cond45.i.preheader.while.body47.i_crit_edge ]
  %max.3.i116 = phi i32 [ %max.6.4.i, %for.inc98.4.i.while.body47.i_crit_edge ], [ %max.2.i, %while.cond45.i.preheader.while.body47.i_crit_edge ]
  %good_timer_count.2.i115 = phi i32 [ %good_timer_count.4.4.i, %for.inc98.4.i.while.body47.i_crit_edge ], [ %good_timer_count.1.i, %while.cond45.i.preheader.while.body47.i_crit_edge ]
  %good_timer_sum.2.i114 = phi i32 [ %good_timer_sum.4.4.i, %for.inc98.4.i.while.body47.i_crit_edge ], [ %good_timer_sum.1.i, %while.cond45.i.preheader.while.body47.i_crit_edge ]
  %div48.i = udiv i32 %good_timer_sum.2.i114, %good_timer_count.2.i115
  %shr49.i = lshr i32 %div48.i, 3
  %arrayidx50.i = getelementptr [5 x i32], ptr %measured_times.i, i32 0, i32 %max.3.i116
  %55 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx50.i, align 4
  %arrayidx51.i = getelementptr [5 x i32], ptr %measured_times.i, i32 0, i32 %min.2.i117
  %57 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx51.i, align 4
  %sub52.i = sub i32 %56, %58
  call void @__sanitizer_cov_trace_cmp4(i32 %sub52.i, i32 %shr49.i)
  %cmp53.i = icmp ult i32 %sub52.i, %shr49.i
  br i1 %cmp53.i, label %calibrate_delay_direct.exit, label %if.end55.i

if.end55.i:                                       ; preds = %while.body47.i
  %sub57.i = sub i32 %56, %div48.i
  %sub59.i = sub i32 %div48.i, %58
  call void @__sanitizer_cov_trace_cmp4(i32 %sub57.i, i32 %sub59.i)
  %cmp60.i = icmp ult i32 %sub57.i, %sub59.i
  br i1 %cmp60.i, label %do.end64.i, label %do.end72.i

do.end64.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  %call67.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %min.2.i117, i32 noundef %58) #9
  br label %if.end77.i

do.end72.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  %call75.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %max.3.i116, i32 noundef %56) #9
  br label %if.end77.i

if.end77.i:                                       ; preds = %do.end72.i, %do.end64.i
  %arrayidx50.sink.i = phi ptr [ %arrayidx50.i, %do.end72.i ], [ %arrayidx51.i, %do.end64.i ]
  %min.3.i = phi i32 [ %min.2.i117, %do.end72.i ], [ %max.3.i116, %do.end64.i ]
  %59 = ptrtoint ptr %arrayidx50.sink.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %arrayidx50.sink.i, align 4
  %60 = ptrtoint ptr %measured_times.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %measured_times.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp82.i = icmp eq i32 %61, 0
  br i1 %cmp82.i, label %if.end77.i.for.inc98.i_crit_edge, label %if.end84.i

if.end77.i.for.inc98.i_crit_edge:                 ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc98.i

if.end84.i:                                       ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx89.i = getelementptr [5 x i32], ptr %measured_times.i, i32 0, i32 %min.3.i
  %62 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx89.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp90.i = icmp ult i32 %61, %63
  %spec.select.i = select i1 %cmp90.i, i32 0, i32 %min.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp95.i = icmp ugt i32 %61, %63
  %spec.select170.i = select i1 %cmp95.i, i32 0, i32 %min.3.i
  br label %for.inc98.i

for.inc98.i:                                      ; preds = %if.end84.i, %if.end77.i.for.inc98.i_crit_edge
  %good_timer_count.4.i = phi i32 [ 0, %if.end77.i.for.inc98.i_crit_edge ], [ 1, %if.end84.i ]
  %max.6.i = phi i32 [ %min.3.i, %if.end77.i.for.inc98.i_crit_edge ], [ %spec.select170.i, %if.end84.i ]
  %min.6.i = phi i32 [ %min.3.i, %if.end77.i.for.inc98.i_crit_edge ], [ %spec.select.i, %if.end84.i ]
  %64 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp82.1.i = icmp eq i32 %65, 0
  br i1 %cmp82.1.i, label %for.inc98.i.for.inc98.1.i_crit_edge, label %if.end84.1.i

for.inc98.i.for.inc98.1.i_crit_edge:              ; preds = %for.inc98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc98.1.i

if.end84.1.i:                                     ; preds = %for.inc98.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc85.1.i = add nuw nsw i32 %good_timer_count.4.i, 1
  %add87.1.i = add i32 %65, %61
  %arrayidx89.1.i = getelementptr [5 x i32], ptr %measured_times.i, i32 0, i32 %min.6.i
  %66 = ptrtoint ptr %arrayidx89.1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx89.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp90.1.i = icmp ult i32 %65, %67
  %spec.select.1.i = select i1 %cmp90.1.i, i32 1, i32 %min.6.i
  %arrayidx94.1.i = getelementptr [5 x i32], ptr %measured_times.i, i32 0, i32 %max.6.i
  %68 = ptrtoint ptr %arrayidx94.1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx94.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %69)
  %cmp95.1.i = icmp ugt i32 %65, %69
  %spec.select170.1.i = select i1 %cmp95.1.i, i32 1, i32 %max.6.i
  br label %for.inc98.1.i

for.inc98.1.i:                                    ; preds = %if.end84.1.i, %for.inc98.i.for.inc98.1.i_crit_edge
  %good_timer_sum.4.1.i = phi i32 [ %61, %for.inc98.i.for.inc98.1.i_crit_edge ], [ %add87.1.i, %if.end84.1.i ]
  %good_timer_count.4.1.i = phi i32 [ %good_timer_count.4.i, %for.inc98.i.for.inc98.1.i_crit_edge ], [ %inc85.1.i, %if.end84.1.i ]
  %max.6.1.i = phi i32 [ %max.6.i, %for.inc98.i.for.inc98.1.i_crit_edge ], [ %spec.select170.1.i, %if.end84.1.i ]
  %min.6.1.i = phi i32 [ %min.6.i, %for.inc98.i.for.inc98.1.i_crit_edge ], [ %spec.select.1.i, %if.end84.1.i ]
  %70 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp82.2.i = icmp eq i32 %71, 0
  br i1 %cmp82.2.i, label %for.inc98.1.i.for.inc98.2.i_crit_edge, label %if.end84.2.i

for.inc98.1.i.for.inc98.2.i_crit_edge:            ; preds = %for.inc98.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc98.2.i

if.end84.2.i:                                     ; preds = %for.inc98.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc85.2.i = add nuw nsw i32 %good_timer_count.4.1.i, 1
  %add87.2.i = add i32 %71, %good_timer_sum.4.1.i
  %arrayidx89.2.i = getelementptr [5 x i32], ptr %measured_times.i, i32 0, i32 %min.6.1.i
  %72 = ptrtoint ptr %arrayidx89.2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx89.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp90.2.i = icmp ult i32 %71, %73
  %spec.select.2.i = select i1 %cmp90.2.i, i32 2, i32 %min.6.1.i
  %arrayidx94.2.i = getelementptr [5 x i32], ptr %measured_times.i, i32 0, i32 %max.6.1.i
  %74 = ptrtoint ptr %arrayidx94.2.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx94.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %75)
  %cmp95.2.i = icmp ugt i32 %71, %75
  %spec.select170.2.i = select i1 %cmp95.2.i, i32 2, i32 %max.6.1.i
  br label %for.inc98.2.i

for.inc98.2.i:                                    ; preds = %if.end84.2.i, %for.inc98.1.i.for.inc98.2.i_crit_edge
  %good_timer_sum.4.2.i = phi i32 [ %good_timer_sum.4.1.i, %for.inc98.1.i.for.inc98.2.i_crit_edge ], [ %add87.2.i, %if.end84.2.i ]
  %good_timer_count.4.2.i = phi i32 [ %good_timer_count.4.1.i, %for.inc98.1.i.for.inc98.2.i_crit_edge ], [ %inc85.2.i, %if.end84.2.i ]
  %max.6.2.i = phi i32 [ %max.6.1.i, %for.inc98.1.i.for.inc98.2.i_crit_edge ], [ %spec.select170.2.i, %if.end84.2.i ]
  %min.6.2.i = phi i32 [ %min.6.1.i, %for.inc98.1.i.for.inc98.2.i_crit_edge ], [ %spec.select.2.i, %if.end84.2.i ]
  %76 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp82.3.i = icmp eq i32 %77, 0
  br i1 %cmp82.3.i, label %for.inc98.2.i.for.inc98.3.i_crit_edge, label %if.end84.3.i

for.inc98.2.i.for.inc98.3.i_crit_edge:            ; preds = %for.inc98.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc98.3.i

if.end84.3.i:                                     ; preds = %for.inc98.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc85.3.i = add nuw nsw i32 %good_timer_count.4.2.i, 1
  %add87.3.i = add i32 %77, %good_timer_sum.4.2.i
  %arrayidx89.3.i = getelementptr [5 x i32], ptr %measured_times.i, i32 0, i32 %min.6.2.i
  %78 = ptrtoint ptr %arrayidx89.3.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx89.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp90.3.i = icmp ult i32 %77, %79
  %spec.select.3.i = select i1 %cmp90.3.i, i32 3, i32 %min.6.2.i
  %arrayidx94.3.i = getelementptr [5 x i32], ptr %measured_times.i, i32 0, i32 %max.6.2.i
  %80 = ptrtoint ptr %arrayidx94.3.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx94.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %81)
  %cmp95.3.i = icmp ugt i32 %77, %81
  %spec.select170.3.i = select i1 %cmp95.3.i, i32 3, i32 %max.6.2.i
  br label %for.inc98.3.i

for.inc98.3.i:                                    ; preds = %if.end84.3.i, %for.inc98.2.i.for.inc98.3.i_crit_edge
  %good_timer_sum.4.3.i = phi i32 [ %good_timer_sum.4.2.i, %for.inc98.2.i.for.inc98.3.i_crit_edge ], [ %add87.3.i, %if.end84.3.i ]
  %good_timer_count.4.3.i = phi i32 [ %good_timer_count.4.2.i, %for.inc98.2.i.for.inc98.3.i_crit_edge ], [ %inc85.3.i, %if.end84.3.i ]
  %max.6.3.i = phi i32 [ %max.6.2.i, %for.inc98.2.i.for.inc98.3.i_crit_edge ], [ %spec.select170.3.i, %if.end84.3.i ]
  %min.6.3.i = phi i32 [ %min.6.2.i, %for.inc98.2.i.for.inc98.3.i_crit_edge ], [ %spec.select.3.i, %if.end84.3.i ]
  %82 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp82.4.i = icmp eq i32 %83, 0
  br i1 %cmp82.4.i, label %for.inc98.3.i.for.inc98.4.i_crit_edge, label %if.end84.4.i

for.inc98.3.i.for.inc98.4.i_crit_edge:            ; preds = %for.inc98.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc98.4.i

if.end84.4.i:                                     ; preds = %for.inc98.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc85.4.i = add nuw nsw i32 %good_timer_count.4.3.i, 1
  %add87.4.i = add i32 %83, %good_timer_sum.4.3.i
  %arrayidx89.4.i = getelementptr [5 x i32], ptr %measured_times.i, i32 0, i32 %min.6.3.i
  %84 = ptrtoint ptr %arrayidx89.4.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx89.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %85)
  %cmp90.4.i = icmp ult i32 %83, %85
  %spec.select.4.i = select i1 %cmp90.4.i, i32 4, i32 %min.6.3.i
  %arrayidx94.4.i = getelementptr [5 x i32], ptr %measured_times.i, i32 0, i32 %max.6.3.i
  %86 = ptrtoint ptr %arrayidx94.4.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx94.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %87)
  %cmp95.4.i = icmp ugt i32 %83, %87
  %spec.select170.4.i = select i1 %cmp95.4.i, i32 4, i32 %max.6.3.i
  br label %for.inc98.4.i

for.inc98.4.i:                                    ; preds = %if.end84.4.i, %for.inc98.3.i.for.inc98.4.i_crit_edge
  %good_timer_sum.4.4.i = phi i32 [ %good_timer_sum.4.3.i, %for.inc98.3.i.for.inc98.4.i_crit_edge ], [ %add87.4.i, %if.end84.4.i ]
  %good_timer_count.4.4.i = phi i32 [ %good_timer_count.4.3.i, %for.inc98.3.i.for.inc98.4.i_crit_edge ], [ %inc85.4.i, %if.end84.4.i ]
  %max.6.4.i = phi i32 [ %max.6.3.i, %for.inc98.3.i.for.inc98.4.i_crit_edge ], [ %spec.select170.4.i, %if.end84.4.i ]
  %min.6.4.i = phi i32 [ %min.6.3.i, %for.inc98.3.i.for.inc98.4.i_crit_edge ], [ %spec.select.4.i, %if.end84.4.i ]
  %cmp46.i = icmp ugt i32 %good_timer_count.4.4.i, 1
  br i1 %cmp46.i, label %for.inc98.4.i.while.body47.i_crit_edge, label %for.inc98.4.i.do.end105.i_crit_edge

for.inc98.4.i.do.end105.i_crit_edge:              ; preds = %for.inc98.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end105.i

for.inc98.4.i.while.body47.i_crit_edge:           ; preds = %for.inc98.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body47.i

do.end105.i:                                      ; preds = %for.inc98.4.i.do.end105.i_crit_edge, %while.cond45.i.preheader.do.end105.i_crit_edge
  %call107.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #9
  br label %calibrate_delay_direct.exit.thread

calibrate_delay_direct.exit.thread:               ; preds = %do.end105.i, %if.else41.calibrate_delay_direct.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %measured_times.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %post_end.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %post_start.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pre_start.i) #6
  br label %if.else52

calibrate_delay_direct.exit:                      ; preds = %while.body47.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %measured_times.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %post_end.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %post_start.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pre_start.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %good_timer_count.2.i115, i32 %good_timer_sum.2.i114)
  %cmp.not = icmp ugt i32 %good_timer_count.2.i115, %good_timer_sum.2.i114
  br i1 %cmp.not, label %calibrate_delay_direct.exit.if.else52_crit_edge, label %if.then43

calibrate_delay_direct.exit.if.else52_crit_edge:  ; preds = %calibrate_delay_direct.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else52

if.then43:                                        ; preds = %calibrate_delay_direct.exit
  %.b94101 = load i1, ptr @calibrate_delay.printed, align 1
  br i1 %.b94101, label %if.then43.if.end66.thread_crit_edge, label %do.end48

if.then43.if.end66.thread_crit_edge:              ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.thread

do.end48:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %if.end66

if.else52:                                        ; preds = %calibrate_delay_direct.exit.if.else52_crit_edge, %calibrate_delay_direct.exit.thread
  %.b9399 = load i1, ptr @calibrate_delay.printed, align 1
  br i1 %.b9399, label %if.else52.if.end60_crit_edge, label %do.end57

if.else52.if.end60_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

do.end57:                                         ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #8
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %if.end60

if.end60:                                         ; preds = %do.end57, %if.else52.if.end60_crit_edge
  %call61 = call fastcc i32 @calibrate_delay_converge()
  br label %if.end66

if.end66.thread:                                  ; preds = %if.then43.if.end66.thread_crit_edge, %if.then19.if.end66.thread_crit_edge, %do.body2.if.end66.thread_crit_edge
  %lpj.0.ph106 = phi i32 [ %div48.i, %if.then43.if.end66.thread_crit_edge ], [ %9, %if.then19.if.end66.thread_crit_edge ], [ %8, %do.body2.if.end66.thread_crit_edge ]
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx, align 4
  %add75109 = add i32 %89, ptrtoint (ptr @cpu_loops_per_jiffy to i32)
  %90 = inttoptr i32 %add75109 to ptr
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %lpj.0.ph106, ptr %90, align 4
  br label %if.end84

if.end66:                                         ; preds = %if.end60, %do.end48, %if.else37.if.end66_crit_edge, %if.then31, %do.end24, %do.end15
  %lpj.0.ph = phi i32 [ %10, %if.then31 ], [ %call61, %if.end60 ], [ %div48.i, %do.end48 ], [ %call38, %if.else37.if.end66_crit_edge ], [ %9, %do.end24 ], [ %8, %do.end15 ]
  %.b100.pr = load i1, ptr @calibrate_delay.printed, align 1
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx, align 4
  %add75 = add i32 %93, ptrtoint (ptr @cpu_loops_per_jiffy to i32)
  %94 = inttoptr i32 %add75 to ptr
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %lpj.0.ph, ptr %94, align 4
  br i1 %.b100.pr, label %if.end66.if.end84_crit_edge, label %do.end80

if.end66.if.end84_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

do.end80:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %div = udiv i32 %lpj.0.ph, 5000
  %div82 = udiv i32 %lpj.0.ph, 50
  %rem = urem i32 %div82, 100
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %div, i32 noundef %rem, i32 noundef %lpj.0.ph) #9
  br label %if.end84

if.end84:                                         ; preds = %do.end80, %if.end66.if.end84_crit_edge, %if.end66.thread
  %lpj.0110 = phi i32 [ %lpj.0.ph106, %if.end66.thread ], [ %lpj.0.ph, %do.end80 ], [ %lpj.0.ph, %if.end66.if.end84_crit_edge ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  store i32 %lpj.0110, ptr @loops_per_jiffy, align 4
  store i1 true, ptr @calibrate_delay.printed, align 1
  call void @calibration_delay_done()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calibrate_delay_converge() unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %while.end
  %trials.0 = phi i32 [ 0, %while.end ], [ %add, %do.body.do.body_crit_edge ]
  %band.0 = phi i32 [ 0, %while.end ], [ %spec.select, %do.body.do.body_crit_edge ]
  %trial_in_band.0 = phi i32 [ 0, %while.end ], [ %spec.select54, %do.body.do.body_crit_edge ]
  %inc = add i32 %trial_in_band.0, 1
  %shl = shl nuw i32 1, %band.0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %shl)
  %cmp1 = icmp eq i32 %inc, %shl
  %inc2 = zext i1 %cmp1 to i32
  %spec.select = add i32 %band.0, %inc2
  %spec.select54 = select i1 %cmp1, i32 0, i32 %inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arm_delay_ops to i32))
  %3 = load ptr, ptr @arm_delay_ops, align 4
  %mul = shl i32 %spec.select, 12
  tail call void %3(i32 noundef %mul) #6
  %add = add i32 %spec.select, %trials.0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %cmp3 = icmp eq i32 %2, %4
  br i1 %cmp3, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %do.body
  %mul5 = shl i32 %trials.0, 12
  br label %recalibrate

recalibrate:                                      ; preds = %while.end19.recalibrate_crit_edge, %do.end
  %lpj_base.0 = phi i32 [ %mul5, %do.end ], [ %lpj.0.lcssa, %while.end19.recalibrate_crit_edge ]
  %loopadd_base.0 = phi i32 [ %mul, %do.end ], [ %shl26, %while.end19.recalibrate_crit_edge ]
  %shr = lshr i32 %lpj_base.0, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %loopadd_base.0, i32 %shr)
  %cmp756 = icmp ugt i32 %loopadd_base.0, %shr
  br i1 %cmp756, label %recalibrate.while.body8_crit_edge, label %recalibrate.while.end19_crit_edge

recalibrate.while.end19_crit_edge:                ; preds = %recalibrate
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end19

recalibrate.while.body8_crit_edge:                ; preds = %recalibrate
  br label %while.body8

while.body8:                                      ; preds = %while.end13.while.body8_crit_edge, %recalibrate.while.body8_crit_edge
  %loopadd.058 = phi i32 [ %shr18, %while.end13.while.body8_crit_edge ], [ %loopadd_base.0, %recalibrate.while.body8_crit_edge ]
  %lpj.057 = phi i32 [ %spec.select55, %while.end13.while.body8_crit_edge ], [ %lpj_base.0, %recalibrate.while.body8_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  br label %while.cond10

while.cond10:                                     ; preds = %while.cond10.while.cond10_crit_edge, %while.body8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %cmp11 = icmp eq i32 %5, %6
  br i1 %cmp11, label %while.cond10.while.cond10_crit_edge, label %while.end13

while.cond10.while.cond10_crit_edge:              ; preds = %while.cond10
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond10

while.end13:                                      ; preds = %while.cond10
  %add9 = add i32 %loopadd.058, %lpj.057
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arm_delay_ops to i32))
  %8 = load ptr, ptr @arm_delay_ops, align 4
  tail call void %8(i32 noundef %add9) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp14.not = icmp eq i32 %9, %7
  %spec.select55 = select i1 %cmp14.not, i32 %add9, i32 %lpj.057
  %shr18 = lshr i32 %loopadd.058, 1
  %cmp7 = icmp ugt i32 %shr18, %shr
  br i1 %cmp7, label %while.end13.while.body8_crit_edge, label %while.end13.while.end19_crit_edge

while.end13.while.end19_crit_edge:                ; preds = %while.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end19

while.end13.while.body8_crit_edge:                ; preds = %while.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body8

while.end19:                                      ; preds = %while.end13.while.end19_crit_edge, %recalibrate.while.end19_crit_edge
  %lpj.0.lcssa = phi i32 [ %lpj_base.0, %recalibrate.while.end19_crit_edge ], [ %spec.select55, %while.end13.while.end19_crit_edge ]
  %loopadd.0.lcssa = phi i32 [ %loopadd_base.0, %recalibrate.while.end19_crit_edge ], [ %shr18, %while.end13.while.end19_crit_edge ]
  %mul20 = shl i32 %loopadd.0.lcssa, 1
  %add21 = add i32 %mul20, %lpj.0.lcssa
  %mul22 = shl i32 %loopadd_base.0, 1
  %add23 = add i32 %mul22, %lpj_base.0
  %cmp24 = icmp eq i32 %add21, %add23
  %shl26 = shl i32 %loopadd_base.0, 2
  br i1 %cmp24, label %while.end19.recalibrate_crit_edge, label %if.end27

while.end19.recalibrate_crit_edge:                ; preds = %while.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %recalibrate

if.end27:                                         ; preds = %while.end19
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 %lpj.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_current_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__setup_lpj_setup, !1, !"__setup_lpj_setup", i1 false, i1 false}
!1 = !{!"../init/calibrate.c", i32 23, i32 1}
!2 = !{ptr @cpu_loops_per_jiffy, !3, !"cpu_loops_per_jiffy", i1 false, i1 false}
!3 = !{!"../init/calibrate.c", i32 251, i32 8}
!4 = distinct !{null, !5, !"printed", i1 false, i1 false}
!5 = !{!"../init/calibrate.c", i32 278, i32 14}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../init/calibrate.c", i32 284, i32 4}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @calibrate_delay._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @calibrate_delay._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../init/calibrate.c", i32 289, i32 4}
!14 = !{ptr @calibrate_delay._entry.3, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @calibrate_delay._entry_ptr.5, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../init/calibrate.c", i32 293, i32 3}
!18 = !{ptr @calibrate_delay._entry.6, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @calibrate_delay._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../init/calibrate.c", i32 299, i32 4}
!22 = !{ptr @calibrate_delay._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @calibrate_delay._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../init/calibrate.c", i32 303, i32 4}
!26 = !{ptr @calibrate_delay._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @calibrate_delay._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../init/calibrate.c", i32 308, i32 3}
!30 = !{ptr @calibrate_delay._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @calibrate_delay._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @lpj_fine, !33, !"lpj_fine", i1 false, i1 false}
!33 = !{!"../init/calibrate.c", i32 15, i32 15}
!34 = !{ptr @preset_lpj, !35, !"preset_lpj", i1 false, i1 false}
!35 = !{!"../init/calibrate.c", i32 16, i32 15}
!36 = !{ptr @__pcpu_unique_cpu_loops_per_jiffy, !3, !"__pcpu_unique_cpu_loops_per_jiffy", i1 false, i1 false}
!37 = !{ptr @__setup_str_lpj_setup, !1, !"__setup_str_lpj_setup", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../init/calibrate.c", i32 99, i32 4}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @calibrate_delay_direct._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @calibrate_delay_direct._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../init/calibrate.c", i32 138, i32 4}
!45 = !{ptr @calibrate_delay_direct._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @calibrate_delay_direct._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../init/calibrate.c", i32 144, i32 4}
!49 = !{ptr @calibrate_delay_direct._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @calibrate_delay_direct._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../init/calibrate.c", i32 164, i32 2}
!53 = !{ptr @calibrate_delay_direct._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @calibrate_delay_direct._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}

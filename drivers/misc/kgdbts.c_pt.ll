; ModuleID = '/llk/IR_all_yes/drivers/misc/kgdbts.c_pt.bc'
source_filename = "../drivers/misc/kgdbts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.70 }
%union.anon.70 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kgdb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.test_struct = type { ptr, ptr, ptr, ptr }
%struct.kgdb_arch = type { [4 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pt_regs = type { [18 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@__setup_str_kgdbts_option_setup = internal constant [8 x i8] c"kgdbts=\00", section ".init.rodata", align 1
@__setup_kgdbts_option_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_kgdbts_option_setup, ptr @kgdbts_option_setup, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_kgdbts__261_1116_init_kgdbts6 = internal global ptr @init_kgdbts, section ".initcall6.init", align 4
@__param_str_kgdbts = internal constant [14 x i8] c"kgdbts.kgdbts\00", align 1
@__param_ops_kgdbts = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_kgdbts_var, ptr @param_get_string, ptr null }, align 4
@kps = internal global { %struct.kparam_string, [24 x i8] } { %struct.kparam_string { i32 40, ptr @config }, [24 x i8] zeroinitializer }, align 32
@__param_kgdbts = internal constant %struct.kernel_param { ptr @__param_str_kgdbts, ptr null, ptr @__param_ops_kgdbts, i16 420, i8 -1, i8 0, %union.anon.70 { ptr @kps } }, section "__param", align 4
@__UNIQUE_ID_kgdbts262 = internal constant [40 x i8] c"kgdbts.parm=kgdbts:<A|V1|V2>[F#|S#][N#]\00", section ".modinfo", align 1
@kgdbts_option_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1072, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013kgdbts: config string too long\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kgdbts_option_setup\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/misc/kgdbts.c\00", [42 x i8] zeroinitializer }, align 32
@kgdbts_option_setup._entry_ptr = internal global ptr @kgdbts_option_setup._entry, section ".printk_index", align 4
@config = internal global { [40 x i8], [56 x i8] } { [40 x i8] c"V1F100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [56 x i8] zeroinitializer }, align 32
@configured = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@final_ack = internal global { i1, [31 x i8] } zeroinitializer, align 32
@kgdbts_io_ops = internal global { %struct.kgdb_io, [60 x i8] } { %struct.kgdb_io { ptr @.str.37, ptr @kgdbts_get_char, ptr @kgdbts_put_char, ptr null, ptr null, ptr null, ptr @kgdbts_pre_exp_handler, ptr @kgdbts_post_exp_handler, ptr null }, [60 x i8] zeroinitializer }, align 32
@plant_and_detach_test = internal global { [4 x %struct.test_struct], [32 x i8] } { [4 x %struct.test_struct] [%struct.test_struct { ptr @.str.30, ptr @.str.31, ptr null, ptr null }, %struct.test_struct { ptr @.str.8, ptr @.str.32, ptr @sw_break, ptr null }, %struct.test_struct { ptr @.str.11, ptr @.str.32, ptr null, ptr null }, %struct.test_struct { ptr @.str.33, ptr @.str.33, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ts.0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ts.1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ts.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ts.3 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ts.4 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"plant_and_detach_test\00", [42 x i8] zeroinitializer }, align 32
@run_plant_and_detach_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\012kgdbts: ERROR kgdb corrupted memory\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"run_plant_and_detach_test\00", [38 x i8] zeroinitializer }, align 32
@run_plant_and_detach_test._entry_ptr = internal global ptr @run_plant_and_detach_test._entry, section ".printk_index", align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kgdb memory corruption\00", [41 x i8] zeroinitializer }, align 32
@verbose = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kgdbts_break_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016kgdbts: breakpoint complete\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kgdbts_break_test\00", [46 x i8] zeroinitializer }, align 32
@kgdbts_break_test._entry_ptr = internal global ptr @kgdbts_break_test._entry, section ".printk_index", align 4
@send_ack = internal global { i1, [31 x i8] } zeroinitializer, align 32
@get_buf_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@get_buf = internal global { [400 x i8], [112 x i8] } zeroinitializer, align 32
@run_simple_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013kgdbts: ERROR GET: EOB on '%s' at %i\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"run_simple_test\00", [16 x i8] zeroinitializer }, align 32
@run_simple_test._entry_ptr = internal global ptr @run_simple_test._entry, section ".printk_index", align 4
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@run_simple_test._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.2, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013kgdbts: ERROR: beyond end of test on '%s' line %i\0A\00", [43 x i8] zeroinitializer }, align 32
@run_simple_test._entry_ptr.14 = internal global ptr @run_simple_test._entry.12, section ".printk_index", align 4
@put_buf_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@run_simple_test._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.2, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013kgdbts: ERROR: put buffer overflow on '%s' line %i\0A\00", [42 x i8] zeroinitializer }, align 32
@run_simple_test._entry_ptr.17 = internal global ptr @run_simple_test._entry.15, section ".printk_index", align 4
@put_buf = internal global { [400 x i8], [112 x i8] } zeroinitializer, align 32
@run_simple_test._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.2, i32 810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@run_simple_test._entry_ptr.19 = internal global ptr @run_simple_test._entry.18, section ".printk_index", align 4
@run_simple_test._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str.2, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016put%i: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@run_simple_test._entry_ptr.22 = internal global ptr @run_simple_test._entry.20, section ".printk_index", align 4
@run_simple_test._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.10, ptr @.str.2, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013kgdbts: ERROR PUT: end of test buffer on '%s' line %i expected %s got %s\0A\00", [52 x i8] zeroinitializer }, align 32
@run_simple_test._entry_ptr.25 = internal global ptr @run_simple_test._entry.23, section ".printk_index", align 4
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@fill_get_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016get%i: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fill_get_buf\00", [19 x i8] zeroinitializer }, align 32
@fill_get_buf._entry_ptr = internal global ptr @fill_get_buf._entry, section ".printk_index", align 4
@.str.30 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"S0*\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Z1\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Z0\00", [29 x i8] zeroinitializer }, align 32
@scratch_buf = internal global { [400 x i8], [112 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s,%lx,%i\00", [22 x i8] zeroinitializer }, align 32
@lookup_addr.cached_arg = internal global { [128 x i8], [32 x i8] } zeroinitializer, align 32
@lookup_addr.cached_addr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kgdbts\00", [25 x i8] zeroinitializer }, align 32
@kgdb_connected = external dso_local local_unnamed_addr global i32, align 4
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"V1\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"V2\00", [29 x i8] zeroinitializer }, align 32
@arch_kgdb_ops = external dso_local local_unnamed_addr constant %struct.kgdb_arch, align 4
@kgdbts_run_tests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 1009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016kgdbts:RUN hw breakpoint test\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kgdbts_run_tests\00", [47 x i8] zeroinitializer }, align 32
@kgdbts_run_tests._entry_ptr = internal global ptr @kgdbts_run_tests._entry, section ".printk_index", align 4
@kgdbts_run_tests._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 1011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016kgdbts:RUN hw write breakpoint test\0A\00", [57 x i8] zeroinitializer }, align 32
@kgdbts_run_tests._entry_ptr.44 = internal global ptr @kgdbts_run_tests._entry.42, section ".printk_index", align 4
@kgdbts_run_tests._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 1013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016kgdbts:RUN access write breakpoint test\0A\00", [53 x i8] zeroinitializer }, align 32
@kgdbts_run_tests._entry_ptr.47 = internal global ptr @kgdbts_run_tests._entry.45, section ".printk_index", align 4
@kgdbts_run_tests._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.2, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016kgdbts:RUN plant and detach test\0A\00", [60 x i8] zeroinitializer }, align 32
@kgdbts_run_tests._entry_ptr.50 = internal global ptr @kgdbts_run_tests._entry.48, section ".printk_index", align 4
@kgdbts_run_tests._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.2, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016kgdbts:RUN sw breakpoint test\0A\00", [63 x i8] zeroinitializer }, align 32
@kgdbts_run_tests._entry_ptr.53 = internal global ptr @kgdbts_run_tests._entry.51, section ".printk_index", align 4
@kgdbts_run_tests._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.41, ptr @.str.2, i32 1022, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016kgdbts:RUN bad memory access test\0A\00", [59 x i8] zeroinitializer }, align 32
@kgdbts_run_tests._entry_ptr.56 = internal global ptr @kgdbts_run_tests._entry.54, section ".printk_index", align 4
@kgdbts_run_tests._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.41, ptr @.str.2, i32 1024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016kgdbts:RUN singlestep test %i iterations\0A\00", [52 x i8] zeroinitializer }, align 32
@kgdbts_run_tests._entry_ptr.59 = internal global ptr @kgdbts_run_tests._entry.57, section ".printk_index", align 4
@kgdbts_run_tests._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.41, ptr @.str.2, i32 1029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016kgdbts:RUN singlestep [%i/%i]\0A\00", [63 x i8] zeroinitializer }, align 32
@kgdbts_run_tests._entry_ptr.62 = internal global ptr @kgdbts_run_tests._entry.60, section ".printk_index", align 4
@kgdbts_run_tests._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.41, ptr @.str.2, i32 1035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016kgdbts:RUN NMI sleep %i seconds test\0A\00", [56 x i8] zeroinitializer }, align 32
@kgdbts_run_tests._entry_ptr.65 = internal global ptr @kgdbts_run_tests._entry.63, section ".printk_index", align 4
@repeat_test = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kgdbts_run_tests._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.41, ptr @.str.2, i32 1046, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016kgdbts:RUN kernel_clone for %i breakpoints\0A\00", [50 x i8] zeroinitializer }, align 32
@kgdbts_run_tests._entry_ptr.68 = internal global ptr @kgdbts_run_tests._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kgdbts_unreg\00", [19 x i8] zeroinitializer }, align 32
@kgdbts_run_tests._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.41, ptr @.str.2, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016kgdbts:RUN sys_open for %i breakpoints\0A\00", [54 x i8] zeroinitializer }, align 32
@kgdbts_run_tests._entry_ptr.72 = internal global ptr @kgdbts_run_tests._entry.70, section ".printk_index", align 4
@test_complete = internal global { i32, [28 x i8] } zeroinitializer, align 32
@hw_breakpoint_test = internal global { [9 x %struct.test_struct], [48 x i8] } { [9 x %struct.test_struct] [%struct.test_struct { ptr @.str.30, ptr @.str.31, ptr null, ptr null }, %struct.test_struct { ptr @.str.8, ptr @.str.32, ptr @hw_break, ptr null }, %struct.test_struct { ptr @.str.77, ptr @.str.78, ptr null, ptr null }, %struct.test_struct { ptr @.str.79, ptr @.str.8, ptr null, ptr @check_and_rewind_pc }, %struct.test_struct { ptr @.str.80, ptr @.str.32, ptr @write_regs, ptr null }, %struct.test_struct { ptr @.str.8, ptr @.str.32, ptr @hw_rem_break, ptr null }, %struct.test_struct { ptr @.str.11, ptr @.str.32, ptr null, ptr null }, %struct.test_struct { ptr @.str.11, ptr @.str.32, ptr null, ptr @got_break }, %struct.test_struct { ptr @.str.33, ptr @.str.33, ptr null, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hw_breakpoint_test\00", [45 x i8] zeroinitializer }, align 32
@sw_breakpoint_test = internal global { [9 x %struct.test_struct], [48 x i8] } { [9 x %struct.test_struct] [%struct.test_struct { ptr @.str.30, ptr @.str.31, ptr null, ptr null }, %struct.test_struct { ptr @.str.8, ptr @.str.32, ptr @sw_break, ptr null }, %struct.test_struct { ptr @.str.77, ptr @.str.78, ptr null, ptr null }, %struct.test_struct { ptr @.str.79, ptr @.str.8, ptr null, ptr @check_and_rewind_pc }, %struct.test_struct { ptr @.str.80, ptr @.str.32, ptr @write_regs, ptr null }, %struct.test_struct { ptr @.str.8, ptr @.str.32, ptr @sw_rem_break, ptr null }, %struct.test_struct { ptr @.str.11, ptr @.str.32, ptr null, ptr null }, %struct.test_struct { ptr @.str.11, ptr @.str.32, ptr null, ptr @got_break }, %struct.test_struct { ptr @.str.33, ptr @.str.33, ptr null, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sw_breakpoint_test\00", [45 x i8] zeroinitializer }, align 32
@run_breakpoint_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013kgdbts: ERROR %s test failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"run_breakpoint_test\00", [44 x i8] zeroinitializer }, align 32
@run_breakpoint_test._entry_ptr = internal global ptr @run_breakpoint_test._entry, section ".printk_index", align 4
@.str.77 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"c\00", [30 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"T0*\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"g\00", [30 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@kgdbts_gdb_regs = internal global { [42 x i32], [56 x i8] } zeroinitializer, align 32
@kgdbts_regs = internal global { %struct.pt_regs, [56 x i8] } zeroinitializer, align 32
@check_and_rewind_pc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016Stopped at IP: %lx\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"check_and_rewind_pc\00", [44 x i8] zeroinitializer }, align 32
@check_and_rewind_pc._entry_ptr = internal global ptr @check_and_rewind_pc._entry, section ".printk_index", align 4
@sstep_addr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"do_sys_openat2\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kernel_clone\00", [19 x i8] zeroinitializer }, align 32
@check_and_rewind_pc._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.82, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016Emul: rewind hit single step bp\0A\00", [61 x i8] zeroinitializer }, align 32
@check_and_rewind_pc._entry_ptr.87 = internal global ptr @check_and_rewind_pc._entry.85, section ".printk_index", align 4
@restart_from_top_after_write = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"silent\00", [25 x i8] zeroinitializer }, align 32
@check_and_rewind_pc._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.82, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013kgdbts: BP mismatch %lx expected %lx\0A\00", [56 x i8] zeroinitializer }, align 32
@check_and_rewind_pc._entry_ptr.91 = internal global ptr @check_and_rewind_pc._entry.89, section ".printk_index", align 4
@cont_addr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.92 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"z1\00", [29 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"T0\00", [29 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"z0\00", [29 x i8] zeroinitializer }, align 32
@hw_write_break_test = internal global { [9 x %struct.test_struct], [48 x i8] } { [9 x %struct.test_struct] [%struct.test_struct { ptr @.str.30, ptr @.str.31, ptr null, ptr null }, %struct.test_struct { ptr @.str.101, ptr @.str.32, ptr @hw_write_break, ptr null }, %struct.test_struct { ptr @.str.77, ptr @.str.78, ptr null, ptr @got_break }, %struct.test_struct { ptr @.str.79, ptr @.str.88, ptr null, ptr @check_and_rewind_pc }, %struct.test_struct { ptr @.str.80, ptr @.str.32, ptr @write_regs, ptr null }, %struct.test_struct { ptr @.str.101, ptr @.str.32, ptr @hw_rem_write_break, ptr null }, %struct.test_struct { ptr @.str.11, ptr @.str.32, ptr null, ptr null }, %struct.test_struct { ptr @.str.11, ptr @.str.32, ptr null, ptr @got_break }, %struct.test_struct { ptr @.str.33, ptr @.str.33, ptr null, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hw_write_break_test\00", [44 x i8] zeroinitializer }, align 32
@hw_access_break_test = internal global { [9 x %struct.test_struct], [48 x i8] } { [9 x %struct.test_struct] [%struct.test_struct { ptr @.str.30, ptr @.str.31, ptr null, ptr null }, %struct.test_struct { ptr @.str.101, ptr @.str.32, ptr @hw_access_break, ptr null }, %struct.test_struct { ptr @.str.77, ptr @.str.78, ptr null, ptr @got_break }, %struct.test_struct { ptr @.str.79, ptr @.str.88, ptr null, ptr @check_and_rewind_pc }, %struct.test_struct { ptr @.str.80, ptr @.str.32, ptr @write_regs, ptr null }, %struct.test_struct { ptr @.str.101, ptr @.str.32, ptr @hw_rem_access_break, ptr null }, %struct.test_struct { ptr @.str.11, ptr @.str.32, ptr null, ptr null }, %struct.test_struct { ptr @.str.11, ptr @.str.32, ptr null, ptr @got_break }, %struct.test_struct { ptr @.str.33, ptr @.str.33, ptr null, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hw_access_break_test\00", [43 x i8] zeroinitializer }, align 32
@run_hw_break_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013kgdbts: ERROR %s broke on access\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"run_hw_break_test\00", [46 x i8] zeroinitializer }, align 32
@run_hw_break_test._entry_ptr = internal global ptr @run_hw_break_test._entry, section ".printk_index", align 4
@run_hw_break_test._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.98, ptr @.str.2, i32 914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@run_hw_break_test._entry_ptr.100 = internal global ptr @run_hw_break_test._entry.99, section ".printk_index", align 4
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hw_break_val\00", [19 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Z2\00", [29 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"z2\00", [29 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Z4\00", [29 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"z4\00", [29 x i8] zeroinitializer }, align 32
@hw_break_val = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bad_read_test = internal global { [11 x %struct.test_struct], [48 x i8] } { [11 x %struct.test_struct] [%struct.test_struct { ptr @.str.30, ptr @.str.31, ptr null, ptr null }, %struct.test_struct { ptr @.str.107, ptr @.str.108, ptr null, ptr null }, %struct.test_struct { ptr @.str.109, ptr @.str.108, ptr null, ptr null }, %struct.test_struct { ptr @.str.110, ptr @.str.108, ptr null, ptr null }, %struct.test_struct { ptr @.str.111, ptr @.str.108, ptr null, ptr null }, %struct.test_struct { ptr @.str.112, ptr @.str.108, ptr null, ptr null }, %struct.test_struct { ptr @.str.113, ptr @.str.108, ptr null, ptr null }, %struct.test_struct { ptr @.str.114, ptr @.str.108, ptr null, ptr null }, %struct.test_struct { ptr @.str.115, ptr @.str.108, ptr null, ptr null }, %struct.test_struct { ptr @.str.11, ptr @.str.32, ptr null, ptr null }, %struct.test_struct { ptr @.str.33, ptr @.str.33, ptr null, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad_read_test\00", [18 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"m0,1\00", [27 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"E*\00", [29 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"m0,2\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"m0,3\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"m0,4\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"m0,5\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"m0,6\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"m0,7\00", [27 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"m0,8\00", [27 x i8] zeroinitializer }, align 32
@singlestep_break_test = internal global { [14 x %struct.test_struct], [32 x i8] } { [14 x %struct.test_struct] [%struct.test_struct { ptr @.str.30, ptr @.str.31, ptr null, ptr null }, %struct.test_struct { ptr @.str.8, ptr @.str.32, ptr @sw_break, ptr null }, %struct.test_struct { ptr @.str.77, ptr @.str.78, ptr null, ptr @get_thread_id_continue }, %struct.test_struct { ptr @.str.8, ptr @.str.32, ptr @sw_rem_break, ptr null }, %struct.test_struct { ptr @.str.79, ptr @.str.8, ptr null, ptr @check_and_rewind_pc }, %struct.test_struct { ptr @.str.80, ptr @.str.32, ptr @write_regs, ptr null }, %struct.test_struct { ptr @.str.117, ptr @.str.78, ptr @emul_sstep_get, ptr @emul_sstep_put }, %struct.test_struct { ptr @.str.79, ptr @.str.8, ptr null, ptr @check_single_step }, %struct.test_struct { ptr @.str.8, ptr @.str.32, ptr @sw_break, ptr null }, %struct.test_struct { ptr @.str.77, ptr @.str.78, ptr null, ptr null }, %struct.test_struct { ptr @.str.79, ptr @.str.8, ptr null, ptr @check_and_rewind_pc }, %struct.test_struct { ptr @.str.80, ptr @.str.32, ptr @write_regs, ptr null }, %struct.test_struct { ptr @.str.11, ptr @.str.32, ptr null, ptr null }, %struct.test_struct { ptr @.str.33, ptr @.str.33, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"singlestep_breakpoint_test\00", [37 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@cont_thread_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sstep_state = internal global { i32, [28 x i8] } zeroinitializer, align 32
@emul_sstep_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016Emulate single step\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"emul_sstep_get\00", [17 x i8] zeroinitializer }, align 32
@emul_sstep_get._entry_ptr = internal global ptr @emul_sstep_get._entry, section ".printk_index", align 4
@emul_sstep_get._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013kgdbts: ERROR failed sstep get emulation\0A\00", [52 x i8] zeroinitializer }, align 32
@emul_sstep_get._entry_ptr.122 = internal global ptr @emul_sstep_get._entry.120, section ".printk_index", align 4
@sstep_thread_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@emul_sstep_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.123, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"emul_sstep_put\00", [17 x i8] zeroinitializer }, align 32
@emul_sstep_put._entry_ptr = internal global ptr @emul_sstep_put._entry, section ".printk_index", align 4
@.str.124 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"$OK\00", [28 x i8] zeroinitializer }, align 32
@emul_sstep_put._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.123, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013kgdbts: failed sstep break set\0A\00", [62 x i8] zeroinitializer }, align 32
@emul_sstep_put._entry_ptr.127 = internal global ptr @emul_sstep_put._entry.125, section ".printk_index", align 4
@.str.128 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"$T0\00", [28 x i8] zeroinitializer }, align 32
@emul_sstep_put._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.123, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013kgdbts: failed continue sstep\0A\00", [63 x i8] zeroinitializer }, align 32
@emul_sstep_put._entry_ptr.131 = internal global ptr @emul_sstep_put._entry.129, section ".printk_index", align 4
@emul_sstep_put._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.123, ptr @.str.2, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013kgdbts: failed sstep break unset\0A\00", [60 x i8] zeroinitializer }, align 32
@emul_sstep_put._entry_ptr.134 = internal global ptr @emul_sstep_put._entry.132, section ".printk_index", align 4
@emul_sstep_put._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.123, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013kgdbts: ERROR failed sstep put emulation\0A\00", [52 x i8] zeroinitializer }, align 32
@emul_sstep_put._entry_ptr.137 = internal global ptr @emul_sstep_put._entry.135, section ".printk_index", align 4
@check_single_step.matched_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@check_single_step._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016Singlestep stopped at IP: %lx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"check_single_step\00", [46 x i8] zeroinitializer }, align 32
@check_single_step._entry_ptr = internal global ptr @check_single_step._entry, section ".printk_index", align 4
@check_single_step._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016ThrID does not match: %lx\0A\00", [35 x i8] zeroinitializer }, align 32
@check_single_step._entry_ptr.142 = internal global ptr @check_single_step._entry.140, section ".printk_index", align 4
@check_single_step._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.139, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013kgdbts: SingleStep failed at %lx\0A\00", [60 x i8] zeroinitializer }, align 32
@check_single_step._entry_ptr.145 = internal global ptr @check_single_step._entry.143, section ".printk_index", align 4
@nmi_sleep_test = internal global { [5 x %struct.test_struct], [48 x i8] } { [5 x %struct.test_struct] [%struct.test_struct { ptr @.str.30, ptr @.str.31, ptr null, ptr null }, %struct.test_struct { ptr @.str.77, ptr @.str.78, ptr null, ptr @got_break }, %struct.test_struct { ptr @.str.11, ptr @.str.32, ptr null, ptr null }, %struct.test_struct { ptr @.str.11, ptr @.str.32, ptr null, ptr @got_break }, %struct.test_struct { ptr @.str.33, ptr @.str.33, ptr null, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nmi_sleep_test\00", [17 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@run_nmi_sleep_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013kgdbts: ERROR nmi_test did not hit nmi\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"run_nmi_sleep_test\00", [45 x i8] zeroinitializer }, align 32
@run_nmi_sleep_test._entry_ptr = internal global ptr @run_nmi_sleep_test._entry, section ".printk_index", align 4
@run_nmi_sleep_test._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.148, ptr @.str.2, i32 937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@run_nmi_sleep_test._entry_ptr.150 = internal global ptr @run_nmi_sleep_test._entry.149, section ".printk_index", align 4
@do_kernel_clone_test = internal global { [12 x %struct.test_struct], [32 x i8] } { [12 x %struct.test_struct] [%struct.test_struct { ptr @.str.30, ptr @.str.31, ptr null, ptr null }, %struct.test_struct { ptr @.str.84, ptr @.str.32, ptr @sw_break, ptr null }, %struct.test_struct { ptr @.str.77, ptr @.str.78, ptr null, ptr @get_thread_id_continue }, %struct.test_struct { ptr @.str.84, ptr @.str.32, ptr @sw_rem_break, ptr null }, %struct.test_struct { ptr @.str.79, ptr @.str.84, ptr null, ptr @check_and_rewind_pc }, %struct.test_struct { ptr @.str.80, ptr @.str.32, ptr @write_regs, ptr @emul_reset }, %struct.test_struct { ptr @.str.117, ptr @.str.78, ptr @emul_sstep_get, ptr @emul_sstep_put }, %struct.test_struct { ptr @.str.79, ptr @.str.84, ptr null, ptr @check_single_step }, %struct.test_struct { ptr @.str.84, ptr @.str.32, ptr @sw_break, ptr null }, %struct.test_struct { ptr @.str.152, ptr @.str.78, ptr @skip_back_repeat_test, ptr null }, %struct.test_struct { ptr @.str.11, ptr @.str.32, ptr null, ptr @final_ack_set }, %struct.test_struct { ptr @.str.33, ptr @.str.33, ptr @get_cont_catch, ptr @put_cont_catch }], [32 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"do_kernel_clone_test\00", [43 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"7\00", [30 x i8] zeroinitializer }, align 32
@skip_back_repeat_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016kgdbts:RUN ... %d remaining\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"skip_back_repeat_test\00", [42 x i8] zeroinitializer }, align 32
@skip_back_repeat_test._entry_ptr = internal global ptr @skip_back_repeat_test._entry, section ".printk_index", align 4
@put_cont_catch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.2, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016kgdbts: cleanup task: %lx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"put_cont_catch\00", [17 x i8] zeroinitializer }, align 32
@put_cont_catch._entry_ptr = internal global ptr @put_cont_catch._entry, section ".printk_index", align 4
@sys_open_test = internal global { [12 x %struct.test_struct], [32 x i8] } { [12 x %struct.test_struct] [%struct.test_struct { ptr @.str.30, ptr @.str.31, ptr null, ptr null }, %struct.test_struct { ptr @.str.83, ptr @.str.32, ptr @sw_break, ptr null }, %struct.test_struct { ptr @.str.77, ptr @.str.78, ptr null, ptr @get_thread_id_continue }, %struct.test_struct { ptr @.str.83, ptr @.str.32, ptr @sw_rem_break, ptr null }, %struct.test_struct { ptr @.str.79, ptr @.str.83, ptr null, ptr @check_and_rewind_pc }, %struct.test_struct { ptr @.str.80, ptr @.str.32, ptr @write_regs, ptr @emul_reset }, %struct.test_struct { ptr @.str.117, ptr @.str.78, ptr @emul_sstep_get, ptr @emul_sstep_put }, %struct.test_struct { ptr @.str.79, ptr @.str.83, ptr null, ptr @check_single_step }, %struct.test_struct { ptr @.str.83, ptr @.str.32, ptr @sw_break, ptr null }, %struct.test_struct { ptr @.str.152, ptr @.str.78, ptr @skip_back_repeat_test, ptr null }, %struct.test_struct { ptr @.str.11, ptr @.str.32, ptr null, ptr @final_ack_set }, %struct.test_struct { ptr @.str.33, ptr @.str.33, ptr @get_cont_catch, ptr @put_cont_catch }], [32 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_open_test\00", [18 x i8] zeroinitializer }, align 32
@param_set_kgdbts_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.158, ptr @.str.2, i32 1140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"param_set_kgdbts_var\00", [43 x i8] zeroinitializer }, align 32
@param_set_kgdbts_var._entry_ptr = internal global ptr @param_set_kgdbts_var._entry, section ".printk_index", align 4
@param_set_kgdbts_var._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.158, ptr @.str.2, i32 1151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013kgdbts: ERROR: Already configured and running.\0A\00", [46 x i8] zeroinitializer }, align 32
@param_set_kgdbts_var._entry_ptr.161 = internal global ptr @param_set_kgdbts_var._entry.159, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 35]
@__sancov_gen_cov_switch_values.162 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.163 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.164 = private unnamed_addr constant [4 x i8] c"kps\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 157, i32 29 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1072, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 153, i32 13 }
@___asan_gen_.182 = private unnamed_addr constant [11 x i8] c"configured\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 150, i32 12 }
@___asan_gen_.185 = private unnamed_addr constant [10 x i8] c"final_ack\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [14 x i8] c"kgdbts_io_ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1178, i32 23 }
@___asan_gen_.189 = private unnamed_addr constant [22 x i8] c"plant_and_detach_test\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 547, i32 27 }
@___asan_gen_.192 = private unnamed_addr constant [5 x i8] c"ts.0\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [5 x i8] c"ts.1\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [5 x i8] c"ts.2\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [5 x i8] c"ts.3\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [5 x i8] c"ts.4\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 846, i32 12 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 853, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 854, i32 9 }
@___asan_gen_.212 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 121, i32 12 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 202, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [9 x i8] c"send_ack\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [12 x i8] c"get_buf_cnt\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 117, i32 12 }
@___asan_gen_.228 = private unnamed_addr constant [8 x i8] c"get_buf\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 116, i32 13 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 773, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 776, i32 17 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 788, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [12 x i8] c"put_buf_cnt\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 119, i32 12 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 794, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [8 x i8] c"put_buf\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 118, i32 13 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 809, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 815, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 818, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 718, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 548, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 548, i32 9 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 549, i32 25 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 551, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 247, i32 30 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 247, i32 37 }
@___asan_gen_.303 = private unnamed_addr constant [12 x i8] c"scratch_buf\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 120, i32 13 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 240, i32 23 }
@___asan_gen_.309 = private unnamed_addr constant [11 x i8] c"cached_arg\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 219, i32 14 }
@___asan_gen_.312 = private unnamed_addr constant [12 x i8] c"cached_addr\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 220, i32 23 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1179, i32 12 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 988, i32 21 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 990, i32 21 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1009, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1011, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1013, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1018, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1020, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1022, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1024, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1028, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1035, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant [12 x i8] c"repeat_test\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 122, i32 12 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1045, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1047, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1058, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant [14 x i8] c"test_complete\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 123, i32 12 }
@___asan_gen_.402 = private unnamed_addr constant [19 x i8] c"hw_breakpoint_test\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 649, i32 27 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 868, i32 13 }
@___asan_gen_.408 = private unnamed_addr constant [19 x i8] c"sw_breakpoint_test\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 558, i32 27 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 871, i32 13 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 882, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 652, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 652, i32 9 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 653, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 654, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant [16 x i8] c"kgdbts_gdb_regs\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 144, i32 22 }
@___asan_gen_.438 = private unnamed_addr constant [12 x i8] c"kgdbts_regs\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 147, i32 23 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 315, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant [11 x i8] c"sstep_addr\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 139, i32 22 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 324, i32 21 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 324, i32 55 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 326, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant [29 x i8] c"restart_from_top_after_write\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 328, i32 25 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 329, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant [10 x i8] c"cont_addr\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 138, i32 22 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 262, i32 15 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 417, i32 21 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 252, i32 37 }
@___asan_gen_.487 = private unnamed_addr constant [20 x i8] c"hw_write_break_test\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 664, i32 27 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 893, i32 13 }
@___asan_gen_.493 = private unnamed_addr constant [21 x i8] c"hw_access_break_test\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 679, i32 27 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 896, i32 13 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 903, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 914, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 666, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 267, i32 15 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 272, i32 15 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 277, i32 15 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 282, i32 15 }
@___asan_gen_.526 = private unnamed_addr constant [13 x i8] c"hw_break_val\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 128, i32 12 }
@___asan_gen_.529 = private unnamed_addr constant [14 x i8] c"bad_read_test\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 574, i32 27 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 944, i32 12 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 576, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 576, i32 12 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 577, i32 4 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 578, i32 4 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 579, i32 4 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 580, i32 4 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 581, i32 4 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 582, i32 4 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 583, i32 4 }
@___asan_gen_.562 = private unnamed_addr constant [22 x i8] c"singlestep_break_test\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 592, i32 27 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 971, i32 12 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 599, i32 4 }
@___asan_gen_.571 = private unnamed_addr constant [15 x i8] c"cont_thread_id\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 131, i32 22 }
@___asan_gen_.574 = private unnamed_addr constant [12 x i8] c"sstep_state\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 141, i32 12 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 462, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 479, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant [16 x i8] c"sstep_thread_id\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 132, i32 22 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 499, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 505, i32 24 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 506, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 511, i32 24 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 512, i32 4 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 521, i32 4 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 528, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant [11 x i8] c"matched_id\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 345, i32 13 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 354, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 363, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 380, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant [15 x i8] c"nmi_sleep_test\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 694, i32 27 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 924, i32 12 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 932, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 937, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant [21 x i8] c"do_kernel_clone_test\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 613, i32 27 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 953, i32 12 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 623, i32 4 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 406, i32 4 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 433, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant [14 x i8] c"sys_open_test\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 631, i32 27 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 962, i32 12 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1140, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.715 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.716 = private constant [25 x i8] c"../drivers/misc/kgdbts.c\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1151, i32 3 }
@llvm.compiler.used = appending global [237 x ptr] [ptr @__UNIQUE_ID_kgdbts262, ptr @__initcall__kmod_kgdbts__261_1116_init_kgdbts6, ptr @__param_kgdbts, ptr @__setup_kgdbts_option_setup, ptr @check_and_rewind_pc._entry, ptr @check_and_rewind_pc._entry.85, ptr @check_and_rewind_pc._entry.89, ptr @check_and_rewind_pc._entry_ptr, ptr @check_and_rewind_pc._entry_ptr.87, ptr @check_and_rewind_pc._entry_ptr.91, ptr @check_single_step._entry, ptr @check_single_step._entry.140, ptr @check_single_step._entry.143, ptr @check_single_step._entry_ptr, ptr @check_single_step._entry_ptr.142, ptr @check_single_step._entry_ptr.145, ptr @emul_sstep_get._entry, ptr @emul_sstep_get._entry.120, ptr @emul_sstep_get._entry_ptr, ptr @emul_sstep_get._entry_ptr.122, ptr @emul_sstep_put._entry, ptr @emul_sstep_put._entry.125, ptr @emul_sstep_put._entry.129, ptr @emul_sstep_put._entry.132, ptr @emul_sstep_put._entry.135, ptr @emul_sstep_put._entry_ptr, ptr @emul_sstep_put._entry_ptr.127, ptr @emul_sstep_put._entry_ptr.131, ptr @emul_sstep_put._entry_ptr.134, ptr @emul_sstep_put._entry_ptr.137, ptr @fill_get_buf._entry, ptr @fill_get_buf._entry_ptr, ptr @kgdbts_break_test._entry, ptr @kgdbts_break_test._entry_ptr, ptr @kgdbts_option_setup._entry, ptr @kgdbts_option_setup._entry_ptr, ptr @kgdbts_run_tests._entry, ptr @kgdbts_run_tests._entry.42, ptr @kgdbts_run_tests._entry.45, ptr @kgdbts_run_tests._entry.48, ptr @kgdbts_run_tests._entry.51, ptr @kgdbts_run_tests._entry.54, ptr @kgdbts_run_tests._entry.57, ptr @kgdbts_run_tests._entry.60, ptr @kgdbts_run_tests._entry.63, ptr @kgdbts_run_tests._entry.66, ptr @kgdbts_run_tests._entry.70, ptr @kgdbts_run_tests._entry_ptr, ptr @kgdbts_run_tests._entry_ptr.44, ptr @kgdbts_run_tests._entry_ptr.47, ptr @kgdbts_run_tests._entry_ptr.50, ptr @kgdbts_run_tests._entry_ptr.53, ptr @kgdbts_run_tests._entry_ptr.56, ptr @kgdbts_run_tests._entry_ptr.59, ptr @kgdbts_run_tests._entry_ptr.62, ptr @kgdbts_run_tests._entry_ptr.65, ptr @kgdbts_run_tests._entry_ptr.68, ptr @kgdbts_run_tests._entry_ptr.72, ptr @param_set_kgdbts_var._entry, ptr @param_set_kgdbts_var._entry.159, ptr @param_set_kgdbts_var._entry_ptr, ptr @param_set_kgdbts_var._entry_ptr.161, ptr @put_cont_catch._entry, ptr @put_cont_catch._entry_ptr, ptr @run_breakpoint_test._entry, ptr @run_breakpoint_test._entry_ptr, ptr @run_hw_break_test._entry, ptr @run_hw_break_test._entry.99, ptr @run_hw_break_test._entry_ptr, ptr @run_hw_break_test._entry_ptr.100, ptr @run_nmi_sleep_test._entry, ptr @run_nmi_sleep_test._entry.149, ptr @run_nmi_sleep_test._entry_ptr, ptr @run_nmi_sleep_test._entry_ptr.150, ptr @run_plant_and_detach_test._entry, ptr @run_plant_and_detach_test._entry_ptr, ptr @run_simple_test._entry, ptr @run_simple_test._entry.12, ptr @run_simple_test._entry.15, ptr @run_simple_test._entry.18, ptr @run_simple_test._entry.20, ptr @run_simple_test._entry.23, ptr @run_simple_test._entry_ptr, ptr @run_simple_test._entry_ptr.14, ptr @run_simple_test._entry_ptr.17, ptr @run_simple_test._entry_ptr.19, ptr @run_simple_test._entry_ptr.22, ptr @run_simple_test._entry_ptr.25, ptr @skip_back_repeat_test._entry, ptr @skip_back_repeat_test._entry_ptr, ptr @kps, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @config, ptr @configured, ptr @final_ack, ptr @kgdbts_io_ops, ptr @plant_and_detach_test, ptr @ts.0, ptr @ts.1, ptr @ts.2, ptr @ts.3, ptr @ts.4, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @verbose, ptr @.str.7, ptr @.str.8, ptr @send_ack, ptr @get_buf_cnt, ptr @get_buf, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @put_buf_cnt, ptr @.str.16, ptr @put_buf, ptr @.str.21, ptr @.str.24, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @scratch_buf, ptr @.str.36, ptr @lookup_addr.cached_arg, ptr @lookup_addr.cached_addr, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @repeat_test, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @test_complete, ptr @hw_breakpoint_test, ptr @.str.73, ptr @sw_breakpoint_test, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @kgdbts_gdb_regs, ptr @kgdbts_regs, ptr @.str.81, ptr @.str.82, ptr @sstep_addr, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @restart_from_top_after_write, ptr @.str.88, ptr @.str.90, ptr @cont_addr, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @hw_write_break_test, ptr @.str.95, ptr @hw_access_break_test, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @hw_break_val, ptr @bad_read_test, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @singlestep_break_test, ptr @.str.116, ptr @.str.117, ptr @cont_thread_id, ptr @sstep_state, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @sstep_thread_id, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.128, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @check_single_step.matched_id, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.144, ptr @nmi_sleep_test, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @do_kernel_clone_test, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @sys_open_test, ptr @.str.157, ptr @.str.158, ptr @.str.160], section "llvm.metadata"
@0 = internal global [190 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdbts_option_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configured to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @final_ack to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdbts_io_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plant_and_detach_test to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_plant_and_detach_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdbts_break_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_ack to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_buf_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_buf to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_simple_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_simple_test._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_buf_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_simple_test._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_buf to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_simple_test._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_simple_test._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_simple_test._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fill_get_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scratch_buf to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lookup_addr.cached_arg to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lookup_addr.cached_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdbts_run_tests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdbts_run_tests._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdbts_run_tests._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdbts_run_tests._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdbts_run_tests._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdbts_run_tests._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdbts_run_tests._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdbts_run_tests._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdbts_run_tests._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repeat_test to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdbts_run_tests._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdbts_run_tests._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_complete to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_breakpoint_test to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_breakpoint_test to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_breakpoint_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdbts_gdb_regs to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdbts_regs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_and_rewind_pc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstep_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_and_rewind_pc._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @restart_from_top_after_write to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_and_rewind_pc._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cont_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_write_break_test to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_access_break_test to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_hw_break_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_hw_break_test._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_break_val to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bad_read_test to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @singlestep_break_test to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cont_thread_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstep_state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emul_sstep_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emul_sstep_get._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstep_thread_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emul_sstep_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emul_sstep_put._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emul_sstep_put._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emul_sstep_put._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emul_sstep_put._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_single_step.matched_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_single_step._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_single_step._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_single_step._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmi_sleep_test to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_nmi_sleep_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_nmi_sleep_test._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_kernel_clone_test to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skip_back_repeat_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_cont_catch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_open_test to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_set_kgdbts_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_set_kgdbts_var._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kgdbts_option_setup(ptr nocapture noundef readonly %opt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %opt) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %call)
  %cmp = icmp ugt i32 %call, 39
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call ptr @strcpy(ptr noundef nonnull @config, ptr noundef %opt) #14
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -28, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_kgdbts() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @configured, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @configure_kgdbts()
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @configure_kgdbts() unnamed_addr #0 align 64 {
entry:
  %before.i13 = alloca [4 x i8], align 4
  %after.i14 = alloca [4 x i8], align 4
  %before.i = alloca [4 x i8], align 4
  %after.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %char0 = load i8, ptr @config, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool.not = icmp eq i8 %char0, 0
  br i1 %tobool.not, label %entry.noconfig_crit_edge, label %lor.lhs.false

entry.noconfig_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %noconfig

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i8 %char0 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = and i8 %1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp.not = icmp eq i8 %2, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.noconfig_crit_edge

lor.lhs.false.noconfig_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %noconfig

if.end:                                           ; preds = %lor.lhs.false
  store i1 false, ptr @final_ack, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %before.i) #11
  %3 = ptrtoint ptr %before.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %before.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %after.i) #11
  %4 = ptrtoint ptr %after.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %after.i, align 4
  %call.i = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %before.i, ptr noundef nonnull @kgdbts_break_test, i32 noundef 4) #11
  store i32 0, ptr @ts.2, align 4
  store ptr @run_simple_test, ptr @ts.3, align 4
  store ptr @validate_simple_test, ptr @ts.4, align 4
  store ptr @plant_and_detach_test, ptr @ts.1, align 4
  store ptr @.str.3, ptr @ts.0, align 4
  %call2.i = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %after.i, ptr noundef nonnull @kgdbts_break_test, i32 noundef 4) #11
  %5 = ptrtoint ptr %before.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %lhsv.i = load i32, ptr %before.i, align 4
  %6 = ptrtoint ptr %after.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %rhsv.i = load i32, ptr %after.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %lhsv.i, i32 %rhsv.i)
  %.not.i = icmp eq i32 %lhsv.i, %rhsv.i
  br i1 %.not.i, label %run_plant_and_detach_test.exit, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #15
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.6) #16
  unreachable

run_plant_and_detach_test.exit:                   ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %after.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %before.i) #11
  %call3 = call i32 @kgdb_register_io_module(ptr noundef nonnull @kgdbts_io_ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %run_plant_and_detach_test.exit
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr @configured, align 4
  br label %cleanup

if.end6:                                          ; preds = %run_plant_and_detach_test.exit
  store i32 1, ptr @configured, align 4
  %call.i10 = call ptr @strstr(ptr noundef nonnull @config, ptr noundef nonnull @.str.38) #11
  %tobool.not.i = icmp ne ptr %call.i10, null
  %spec.store.select.i = zext i1 %tobool.not.i to i32
  %call1.i = call ptr @strstr(ptr noundef nonnull @config, ptr noundef nonnull @.str.39) #11
  %tobool2.not.i = icmp eq ptr %call1.i, null
  %spec.store.select166.i = select i1 %tobool2.not.i, i32 %spec.store.select.i, i32 2
  store i32 %spec.store.select166.i, ptr @verbose, align 4
  %call5.i = call ptr @strchr(ptr noundef nonnull @config, i32 noundef 70) #11
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end6.if.end9.i_crit_edge, label %if.then7.i

if.end6.if.end9.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %call5.i, i32 1
  %call8.i11 = call i32 @simple_strtol(ptr noundef %add.ptr.i, ptr noundef null, i32 noundef 10) #11
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end6.if.end9.i_crit_edge
  %clone_test.0.i = phi i32 [ %call8.i11, %if.then7.i ], [ 0, %if.end6.if.end9.i_crit_edge ]
  %call10.i = call ptr @strchr(ptr noundef nonnull @config, i32 noundef 83) #11
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end9.i.if.end15.i_crit_edge, label %if.then12.i

if.end9.i.if.end15.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13.i = getelementptr i8, ptr %call10.i, i32 1
  %call14.i = call i32 @simple_strtol(ptr noundef %add.ptr13.i, ptr noundef null, i32 noundef 10) #11
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end15.i_crit_edge
  %do_sys_open_test.0.i = phi i32 [ %call14.i, %if.then12.i ], [ 0, %if.end9.i.if.end15.i_crit_edge ]
  %call16.i = call ptr @strchr(ptr noundef nonnull @config, i32 noundef 78) #11
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.end15.i.if.end21.i_crit_edge, label %if.then18.i

if.end15.i.if.end21.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr19.i = getelementptr i8, ptr %call16.i, i32 1
  %call20.i = call i32 @simple_strtol(ptr noundef %add.ptr19.i, ptr noundef null, i32 noundef 10) #11
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end21.i_crit_edge
  %nmi_sleep.0.i = phi i32 [ %call20.i, %if.then18.i ], [ 0, %if.end15.i.if.end21.i_crit_edge ]
  %call22.i = call ptr @strchr(ptr noundef nonnull @config, i32 noundef 73) #11
  %tobool23.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool23.not.i, label %if.end21.i.if.end27.i_crit_edge, label %if.then24.i

if.end21.i.if.end27.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr25.i = getelementptr i8, ptr %call22.i, i32 1
  %call26.i = call i32 @simple_strtol(ptr noundef %add.ptr25.i, ptr noundef null, i32 noundef 10) #11
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end27.i_crit_edge
  %sstep_test.0.i = phi i32 [ %call26.i, %if.then24.i ], [ 1000, %if.end21.i.if.end27.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 1) to i32))
  %7 = load i32, ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 1), align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool28.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool28.not.i, label %if.end27.i.do.body60.i_crit_edge, label %if.then29.i

if.end27.i.do.body60.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body60.i

if.then29.i:                                      ; preds = %if.end27.i
  %8 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool30.not.i = icmp eq i32 %8, 0
  br i1 %tobool30.not.i, label %if.then29.i.do.end36.i_crit_edge, label %do.end.i12

if.then29.i.do.end36.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end36.i

do.end.i12:                                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #15
  br label %do.end36.i

do.end36.i:                                       ; preds = %do.end.i12, %if.then29.i.do.end36.i_crit_edge
  store i32 0, ptr @test_complete, align 4
  store i32 0, ptr @ts.2, align 4
  store ptr @run_simple_test, ptr @ts.3, align 4
  store ptr @validate_simple_test, ptr @ts.4, align 4
  store ptr @hw_breakpoint_test, ptr @ts.1, align 4
  store ptr @.str.73, ptr @ts.0, align 4
  call void @kgdb_breakpoint() #11
  call void @kgdbts_break_test() #11
  call void @kgdb_breakpoint() #11
  %9 = load i32, ptr @test_complete, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool1.not.i.i, label %do.end.i.i, label %do.end36.i.run_breakpoint_test.exit.i_crit_edge

do.end36.i.run_breakpoint_test.exit.i_crit_edge:  ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %run_breakpoint_test.exit.i

do.end.i.i:                                       ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = load ptr, ptr @ts.0, align 4
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %10) #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 882, i32 noundef 9, ptr noundef null) #11
  br label %run_breakpoint_test.exit.i

run_breakpoint_test.exit.i:                       ; preds = %do.end.i.i, %do.end36.i.run_breakpoint_test.exit.i_crit_edge
  %11 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool38.not.i = icmp eq i32 %11, 0
  br i1 %tobool38.not.i, label %run_breakpoint_test.exit.i.do.end47.i_crit_edge, label %do.end42.i

run_breakpoint_test.exit.i.do.end47.i_crit_edge:  ; preds = %run_breakpoint_test.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47.i

do.end42.i:                                       ; preds = %run_breakpoint_test.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #15
  br label %do.end47.i

do.end47.i:                                       ; preds = %do.end42.i, %run_breakpoint_test.exit.i.do.end47.i_crit_edge
  store i32 0, ptr @test_complete, align 4
  store i32 0, ptr @ts.2, align 4
  store ptr @run_simple_test, ptr @ts.3, align 4
  store ptr @validate_simple_test, ptr @ts.4, align 4
  store ptr @hw_write_break_test, ptr @ts.1, align 4
  store ptr @.str.95, ptr @ts.0, align 4
  call void @kgdb_breakpoint() #11
  %12 = load i32, ptr @test_complete, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp eq i32 %12, 2
  br i1 %cmp.i, label %do.end.i25, label %do.end47.i.if.end27.i26_crit_edge

do.end47.i.if.end27.i26_crit_edge:                ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i26

do.end.i25:                                       ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = load ptr, ptr @ts.0, align 4
  %call.i24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %13) #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 904, i32 noundef 9, ptr noundef null) #11
  br label %if.end27.i26

if.end27.i26:                                     ; preds = %do.end.i25, %do.end47.i.if.end27.i26_crit_edge
  %14 = load i32, ptr @hw_break_val, align 4
  %inc.i.i = add i32 %14, 1
  store i32 %inc.i.i, ptr @hw_break_val, align 4
  call void @kgdb_breakpoint() #11
  %15 = load i32, ptr @test_complete, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp29.i = icmp eq i32 %15, 1
  br i1 %cmp29.i, label %if.end27.i26.run_hw_break_test.exit_crit_edge, label %do.end35.i

if.end27.i26.run_hw_break_test.exit_crit_edge:    ; preds = %if.end27.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %run_hw_break_test.exit

do.end35.i:                                       ; preds = %if.end27.i26
  call void @__sanitizer_cov_trace_pc() #13
  %16 = load ptr, ptr @ts.0, align 4
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %16) #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 914, i32 noundef 9, ptr noundef null) #11
  br label %run_hw_break_test.exit

run_hw_break_test.exit:                           ; preds = %do.end35.i, %if.end27.i26.run_hw_break_test.exit_crit_edge
  %17 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool49.not.i = icmp eq i32 %17, 0
  br i1 %tobool49.not.i, label %run_hw_break_test.exit.do.end58.i_crit_edge, label %do.end53.i

run_hw_break_test.exit.do.end58.i_crit_edge:      ; preds = %run_hw_break_test.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end58.i

do.end53.i:                                       ; preds = %run_hw_break_test.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #15
  br label %do.end58.i

do.end58.i:                                       ; preds = %do.end53.i, %run_hw_break_test.exit.do.end58.i_crit_edge
  store i32 0, ptr @test_complete, align 4
  store i32 0, ptr @ts.2, align 4
  store ptr @run_simple_test, ptr @ts.3, align 4
  store ptr @validate_simple_test, ptr @ts.4, align 4
  store ptr @hw_access_break_test, ptr @ts.1, align 4
  store ptr @.str.96, ptr @ts.0, align 4
  call void @kgdb_breakpoint() #11
  call void @kgdb_breakpoint() #11
  %18 = load i32, ptr @test_complete, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp29.i.i = icmp eq i32 %18, 1
  br i1 %cmp29.i.i, label %do.end58.i.do.body60.i_crit_edge, label %do.end35.i.i

do.end58.i.do.body60.i_crit_edge:                 ; preds = %do.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body60.i

do.end35.i.i:                                     ; preds = %do.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = load ptr, ptr @ts.0, align 4
  %call37.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %19) #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 914, i32 noundef 9, ptr noundef null) #11
  br label %do.body60.i

do.body60.i:                                      ; preds = %do.end35.i.i, %do.end58.i.do.body60.i_crit_edge, %if.end27.i.do.body60.i_crit_edge
  %20 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool61.not.i = icmp eq i32 %20, 0
  br i1 %tobool61.not.i, label %do.body60.i.do.end70.i_crit_edge, label %do.end65.i

do.body60.i.do.end70.i_crit_edge:                 ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70.i

do.end65.i:                                       ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #13
  %call67.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #15
  br label %do.end70.i

do.end70.i:                                       ; preds = %do.end65.i, %do.body60.i.do.end70.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %before.i13) #11
  %21 = ptrtoint ptr %before.i13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %before.i13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %after.i14) #11
  %22 = ptrtoint ptr %after.i14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %after.i14, align 4
  %call.i15 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %before.i13, ptr noundef nonnull @kgdbts_break_test, i32 noundef 4) #11
  store i32 0, ptr @ts.2, align 4
  store ptr @run_simple_test, ptr @ts.3, align 4
  store ptr @validate_simple_test, ptr @ts.4, align 4
  store ptr @plant_and_detach_test, ptr @ts.1, align 4
  store ptr @.str.3, ptr @ts.0, align 4
  call void @kgdb_breakpoint() #11
  %call2.i16 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %after.i14, ptr noundef nonnull @kgdbts_break_test, i32 noundef 4) #11
  %23 = ptrtoint ptr %before.i13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %lhsv.i17 = load i32, ptr %before.i13, align 4
  %24 = ptrtoint ptr %after.i14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %rhsv.i18 = load i32, ptr %after.i14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %lhsv.i17, i32 %rhsv.i18)
  %.not.i19 = icmp eq i32 %lhsv.i17, %rhsv.i18
  br i1 %.not.i19, label %run_plant_and_detach_test.exit23, label %do.end.i21

do.end.i21:                                       ; preds = %do.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #15
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.6) #16
  unreachable

run_plant_and_detach_test.exit23:                 ; preds = %do.end70.i
  call void @kgdbts_break_test() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %after.i14) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %before.i13) #11
  %25 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool72.not.i = icmp eq i32 %25, 0
  br i1 %tobool72.not.i, label %run_plant_and_detach_test.exit23.do.end81.i_crit_edge, label %do.end76.i

run_plant_and_detach_test.exit23.do.end81.i_crit_edge: ; preds = %run_plant_and_detach_test.exit23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end81.i

do.end76.i:                                       ; preds = %run_plant_and_detach_test.exit23
  call void @__sanitizer_cov_trace_pc() #13
  %call78.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #15
  br label %do.end81.i

do.end81.i:                                       ; preds = %do.end76.i, %run_plant_and_detach_test.exit23.do.end81.i_crit_edge
  store i32 0, ptr @test_complete, align 4
  store i32 0, ptr @ts.2, align 4
  store ptr @run_simple_test, ptr @ts.3, align 4
  store ptr @validate_simple_test, ptr @ts.4, align 4
  store ptr @sw_breakpoint_test, ptr @ts.1, align 4
  store ptr @.str.74, ptr @ts.0, align 4
  call void @kgdb_breakpoint() #11
  call void @kgdbts_break_test() #11
  call void @kgdb_breakpoint() #11
  %26 = load i32, ptr @test_complete, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool1.not.i187.i = icmp eq i32 %26, 0
  br i1 %tobool1.not.i187.i, label %do.end.i189.i, label %do.end81.i.run_breakpoint_test.exit190.i_crit_edge

do.end81.i.run_breakpoint_test.exit190.i_crit_edge: ; preds = %do.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %run_breakpoint_test.exit190.i

do.end.i189.i:                                    ; preds = %do.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = load ptr, ptr @ts.0, align 4
  %call.i188.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %27) #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 882, i32 noundef 9, ptr noundef null) #11
  br label %run_breakpoint_test.exit190.i

run_breakpoint_test.exit190.i:                    ; preds = %do.end.i189.i, %do.end81.i.run_breakpoint_test.exit190.i_crit_edge
  %28 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool83.not.i = icmp eq i32 %28, 0
  br i1 %tobool83.not.i, label %run_breakpoint_test.exit190.i.do.end92.i_crit_edge, label %do.end87.i

run_breakpoint_test.exit190.i.do.end92.i_crit_edge: ; preds = %run_breakpoint_test.exit190.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end92.i

do.end87.i:                                       ; preds = %run_breakpoint_test.exit190.i
  call void @__sanitizer_cov_trace_pc() #13
  %call89.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #15
  br label %do.end92.i

do.end92.i:                                       ; preds = %do.end87.i, %run_breakpoint_test.exit190.i.do.end92.i_crit_edge
  store i32 0, ptr @ts.2, align 4
  store ptr @run_simple_test, ptr @ts.3, align 4
  store ptr @validate_simple_test, ptr @ts.4, align 4
  store ptr @bad_read_test, ptr @ts.1, align 4
  store ptr @.str.106, ptr @ts.0, align 4
  call void @kgdb_breakpoint() #11
  %29 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool94.not.i = icmp eq i32 %29, 0
  br i1 %tobool94.not.i, label %do.end92.i.do.end103.i_crit_edge, label %do.end98.i

do.end92.i.do.end103.i_crit_edge:                 ; preds = %do.end92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end103.i

do.end98.i:                                       ; preds = %do.end92.i
  call void @__sanitizer_cov_trace_pc() #13
  %call100.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %sstep_test.0.i) #15
  br label %do.end103.i

do.end103.i:                                      ; preds = %do.end98.i, %do.end92.i.do.end103.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sstep_test.0.i)
  %cmp192.i = icmp sgt i32 %sstep_test.0.i, 0
  br i1 %cmp192.i, label %do.end103.i.for.body.i_crit_edge, label %do.end103.i.for.end.i_crit_edge

do.end103.i.for.end.i_crit_edge:                  ; preds = %do.end103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

do.end103.i.for.body.i_crit_edge:                 ; preds = %do.end103.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end103.i.for.body.i_crit_edge
  %i.0193.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end103.i.for.body.i_crit_edge ]
  store i32 0, ptr @ts.2, align 4
  store ptr @run_simple_test, ptr @ts.3, align 4
  store ptr @validate_simple_test, ptr @ts.4, align 4
  store ptr @singlestep_break_test, ptr @ts.1, align 4
  store ptr @.str.116, ptr @ts.0, align 4
  call void @kgdb_breakpoint() #11
  call void @kgdbts_break_test() #11
  call void @kgdbts_break_test() #11
  %rem.i = urem i32 %i.0193.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp104.i = icmp eq i32 %rem.i, 0
  br i1 %cmp104.i, label %do.body106.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

do.body106.i:                                     ; preds = %for.body.i
  %30 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool107.not.i = icmp eq i32 %30, 0
  br i1 %tobool107.not.i, label %do.body106.i.for.inc.i_crit_edge, label %do.end111.i

do.body106.i.for.inc.i_crit_edge:                 ; preds = %do.body106.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

do.end111.i:                                      ; preds = %do.body106.i
  call void @__sanitizer_cov_trace_pc() #13
  %call113.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %i.0193.i, i32 noundef %sstep_test.0.i) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end111.i, %do.body106.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0193.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sstep_test.0.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end103.i.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nmi_sleep.0.i)
  %tobool118.not.i = icmp eq i32 %nmi_sleep.0.i, 0
  br i1 %tobool118.not.i, label %for.end.i.if.end131.i_crit_edge, label %do.body120.i

for.end.i.if.end131.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131.i

do.body120.i:                                     ; preds = %for.end.i
  %31 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool121.not.i = icmp eq i32 %31, 0
  br i1 %tobool121.not.i, label %do.body120.i.do.end130.i_crit_edge, label %do.end125.i

do.body120.i.do.end130.i_crit_edge:               ; preds = %do.body120.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end130.i

do.end125.i:                                      ; preds = %do.body120.i
  call void @__sanitizer_cov_trace_pc() #13
  %call127.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %nmi_sleep.0.i) #15
  br label %do.end130.i

do.end130.i:                                      ; preds = %do.end125.i, %do.body120.i.do.end130.i_crit_edge
  store i32 0, ptr @ts.2, align 4
  store ptr @run_simple_test, ptr @ts.3, align 4
  store ptr @validate_simple_test, ptr @ts.4, align 4
  store ptr @nmi_sleep_test, ptr @ts.1, align 4
  store ptr @.str.146, ptr @ts.0, align 4
  call void @kgdb_breakpoint() #11
  %32 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !394
  %and.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.end130.i.do.end11.i.i_crit_edge

do.end130.i.do.end11.i.i_crit_edge:               ; preds = %do.end130.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11.i.i

if.then.i.i:                                      ; preds = %do.end130.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @trace_hardirqs_off() #11
  br label %do.end11.i.i

do.end11.i.i:                                     ; preds = %if.then.i.i, %do.end130.i.do.end11.i.i_crit_edge
  %mul.i.i = mul i32 %nmi_sleep.0.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %tobool32.not151.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %tobool32.not151.i.i, label %do.end11.i.i.cond.end33.i.i_crit_edge, label %do.end11.i.i.while.body.i.i_crit_edge

do.end11.i.i.while.body.i.i_crit_edge:            ; preds = %do.end11.i.i
  br label %while.body.i.i

do.end11.i.i.cond.end33.i.i_crit_edge:            ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end33.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.end11.i.i.while.body.i.i_crit_edge
  %__ms.0152.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %mul.i.i, %do.end11.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %__ms.0152.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 214748000) #11
  %tobool32.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool32.not.i.i, label %while.body.i.i.cond.end33.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.body.i.i.cond.end33.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end33.i.i

cond.end33.i.i:                                   ; preds = %while.body.i.i.cond.end33.i.i_crit_edge, %do.end11.i.i.cond.end33.i.i_crit_edge
  call void @touch_softlockup_watchdog() #11
  br i1 %tobool.not.i.i, label %if.then43.i.i, label %cond.end33.i.i.do.body45.i.i_crit_edge

cond.end33.i.i.do.body45.i.i_crit_edge:           ; preds = %cond.end33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body45.i.i

if.then43.i.i:                                    ; preds = %cond.end33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @trace_hardirqs_on() #11
  br label %do.body45.i.i

do.body45.i.i:                                    ; preds = %if.then43.i.i, %cond.end33.i.i.do.body45.i.i_crit_edge
  %34 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !395
  %and.i.i.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool53.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool53.not.i.i, label %if.then57.i.i, label %do.body45.i.i.do.end60.i.i_crit_edge, !prof !396

do.body45.i.i.do.end60.i.i_crit_edge:             ; preds = %do.body45.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i.i

if.then57.i.i:                                    ; preds = %do.body45.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %do.body45.i.i.do.end60.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #11, !srcloc !397
  %35 = load i32, ptr @test_complete, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp65.not.i.i = icmp eq i32 %35, 2
  br i1 %cmp65.not.i.i, label %do.end60.i.i.if.end101.i.i_crit_edge, label %do.end71.i.i

do.end60.i.i.if.end101.i.i_crit_edge:             ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101.i.i

do.end71.i.i:                                     ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call73.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147) #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 932, i32 noundef 9, ptr noundef null) #11
  br label %if.end101.i.i

if.end101.i.i:                                    ; preds = %do.end71.i.i, %do.end60.i.i.if.end101.i.i_crit_edge
  call void @kgdb_breakpoint() #11
  %36 = load i32, ptr @test_complete, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp102.i.i = icmp eq i32 %36, 1
  br i1 %cmp102.i.i, label %if.end101.i.i.if.end131.i_crit_edge, label %do.end109.i.i

if.end101.i.i.if.end131.i_crit_edge:              ; preds = %if.end101.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131.i

do.end109.i.i:                                    ; preds = %if.end101.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = load ptr, ptr @ts.0, align 4
  %call111.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %37) #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 937, i32 noundef 9, ptr noundef null) #11
  br label %if.end131.i

if.end131.i:                                      ; preds = %do.end109.i.i, %if.end101.i.i.if.end131.i_crit_edge, %for.end.i.if.end131.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clone_test.0.i)
  %tobool132.not.i = icmp eq i32 %clone_test.0.i, 0
  br i1 %tobool132.not.i, label %if.end145.i, label %if.then133.i

if.then133.i:                                     ; preds = %if.end131.i
  store i32 %clone_test.0.i, ptr @repeat_test, align 4
  %call138.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %clone_test.0.i) #15
  %call139.i = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @kgdbts_unreg_thread, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.69) #11
  %cmp.i.i = icmp ugt ptr %call139.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then133.i.if.end143.i_crit_edge, label %if.then141.i

if.then133.i.if.end143.i_crit_edge:               ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143.i

if.then141.i:                                     ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #13
  %call142.i = call i32 @wake_up_process(ptr noundef %call139.i) #11
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.then141.i, %if.then133.i.if.end143.i_crit_edge
  store i32 0, ptr @ts.2, align 4
  store ptr @run_simple_test, ptr @ts.3, align 4
  store ptr @validate_simple_test, ptr @ts.4, align 4
  store ptr @do_kernel_clone_test, ptr @ts.1, align 4
  store ptr @.str.151, ptr @ts.0, align 4
  call void @kgdb_breakpoint() #11
  br label %cleanup

if.end145.i:                                      ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_sys_open_test.0.i)
  %tobool146.not.i = icmp eq i32 %do_sys_open_test.0.i, 0
  br i1 %tobool146.not.i, label %if.end160.i, label %if.then147.i

if.then147.i:                                     ; preds = %if.end145.i
  store i32 %do_sys_open_test.0.i, ptr @repeat_test, align 4
  %call152.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %do_sys_open_test.0.i) #15
  %call154.i = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @kgdbts_unreg_thread, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.69) #11
  %cmp.i191.i = icmp ugt ptr %call154.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191.i, label %if.then147.i.if.end158.i_crit_edge, label %if.then156.i

if.then147.i.if.end158.i_crit_edge:               ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158.i

if.then156.i:                                     ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #13
  %call157.i = call i32 @wake_up_process(ptr noundef %call154.i) #11
  br label %if.end158.i

if.end158.i:                                      ; preds = %if.then156.i, %if.then147.i.if.end158.i_crit_edge
  store i32 0, ptr @ts.2, align 4
  store ptr @run_simple_test, ptr @ts.3, align 4
  store ptr @validate_simple_test, ptr @ts.4, align 4
  store ptr @sys_open_test, ptr @ts.1, align 4
  store ptr @.str.157, ptr @ts.0, align 4
  call void @kgdb_breakpoint() #11
  br label %cleanup

if.end160.i:                                      ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kgdb_unregister_io_module(ptr noundef nonnull @kgdbts_io_ops) #11
  store i32 0, ptr @configured, align 4
  br label %cleanup

noconfig:                                         ; preds = %lor.lhs.false.noconfig_crit_edge, %entry.noconfig_crit_edge
  store i8 0, ptr @config, align 1
  store i32 0, ptr @configured, align 4
  br label %cleanup

cleanup:                                          ; preds = %noconfig, %if.end160.i, %if.end158.i, %if.end143.i, %if.then5
  %retval.0 = phi i32 [ 0, %noconfig ], [ %call3, %if.then5 ], [ 0, %if.end143.i ], [ 0, %if.end158.i ], [ 0, %if.end160.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kgdb_register_io_module(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kgdbts_break_test() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @touch_softlockup_watchdog() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #6

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @run_simple_test(i32 noundef %is_get_char, i32 noundef %chr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_get_char)
  %tobool.not = icmp eq i32 %is_get_char, 0
  br i1 %tobool.not, label %if.end44, label %if.then

if.then:                                          ; preds = %entry
  %.b = load i1, ptr @send_ack, align 4
  br i1 %.b, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  store i1 false, ptr @send_ack, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %0 = load i32, ptr @get_buf_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then3, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then3:                                         ; preds = %if.end
  %1 = load ptr, ptr @ts.1, align 4
  %2 = load i32, ptr @ts.2, align 4
  %arrayidx = getelementptr %struct.test_struct, ptr %1, i32 %2
  %get_handler = getelementptr %struct.test_struct, ptr %1, i32 %2, i32 2
  %3 = ptrtoint ptr %get_handler to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_handler, align 4
  %tobool4.not = icmp eq ptr %4, null
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %4(ptr noundef %6) #11
  br label %if.end12

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @fill_get_buf(ptr noundef %6)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then5, %if.end.if.end12_crit_edge
  %7 = load i32, ptr @get_buf_cnt, align 4
  %arrayidx13 = getelementptr [400 x i8], ptr @get_buf, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp14 = icmp eq i8 %9, 0
  br i1 %cmp14, label %do.end, label %if.end12.if.end41_crit_edge

if.end12.if.end41_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %10 = load ptr, ptr @ts.0, align 4
  %11 = load i32, ptr @ts.2, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %10, i32 noundef %11) #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 774, i32 noundef 9, ptr noundef null) #11
  store i32 0, ptr @get_buf_cnt, align 4
  tail call fastcc void @fill_get_buf(ptr noundef nonnull @.str.11)
  br label %if.end41

if.end41:                                         ; preds = %do.end, %if.end12.if.end41_crit_edge
  %12 = load i32, ptr @get_buf_cnt, align 4
  %arrayidx42 = getelementptr [400 x i8], ptr @get_buf, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %14 to i32
  %inc = add i32 %12, 1
  store i32 %inc, ptr @get_buf_cnt, align 4
  br label %cleanup

if.end44:                                         ; preds = %entry
  %15 = load ptr, ptr @ts.1, align 4
  %16 = load i32, ptr @ts.2, align 4
  %arrayidx45 = getelementptr %struct.test_struct, ptr %15, i32 %16
  %17 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx45, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp49 = icmp eq i8 %20, 0
  br i1 %cmp49, label %land.lhs.true, label %if.end44.if.end95_crit_edge

if.end44.if.end95_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

land.lhs.true:                                    ; preds = %if.end44
  %put = getelementptr %struct.test_struct, ptr %15, i32 %16, i32 1
  %21 = ptrtoint ptr %put to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %put, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp54 = icmp eq i8 %24, 0
  br i1 %cmp54, label %land.lhs.true56, label %land.lhs.true.if.end95_crit_edge

land.lhs.true.if.end95_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

land.lhs.true56:                                  ; preds = %land.lhs.true
  %get_handler58 = getelementptr %struct.test_struct, ptr %15, i32 %16, i32 2
  %25 = ptrtoint ptr %get_handler58 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_handler58, align 4
  %tobool59.not = icmp eq ptr %26, null
  br i1 %tobool59.not, label %do.end64, label %land.lhs.true56.if.end95_crit_edge

land.lhs.true56.if.end95_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

do.end64:                                         ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #13
  %27 = load ptr, ptr @ts.0, align 4
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %27, i32 noundef %16) #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 789, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end95:                                         ; preds = %land.lhs.true56.if.end95_crit_edge, %land.lhs.true.if.end95_crit_edge, %if.end44.if.end95_crit_edge
  %28 = load i32, ptr @put_buf_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 399, i32 %28)
  %cmp96 = icmp sgt i32 %28, 399
  br i1 %cmp96, label %do.end102, label %if.end133

do.end102:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  %29 = load ptr, ptr @ts.0, align 4
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %29, i32 noundef %16) #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 795, i32 noundef 9, ptr noundef null) #11
  store i32 0, ptr @put_buf_cnt, align 4
  br label %cleanup

if.end133:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp134 = icmp ne i32 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %chr)
  %cmp137.not = icmp eq i32 %chr, 36
  %or.cond = or i1 %cmp137.not, %cmp134
  br i1 %or.cond, label %if.end140, label %if.end133.cleanup_crit_edge

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end140:                                        ; preds = %if.end133
  %conv141 = trunc i32 %chr to i8
  %arrayidx142 = getelementptr [400 x i8], ptr @put_buf, i32 0, i32 %28
  %30 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv141, ptr %arrayidx142, align 1
  %inc143 = add nsw i32 %28, 1
  store i32 %inc143, ptr @put_buf_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp144 = icmp sgt i32 %28, 2
  br i1 %cmp144, label %land.lhs.true146, label %if.end140.cleanup_crit_edge

if.end140.cleanup_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true146:                                 ; preds = %if.end140
  %sub = add nsw i32 %28, -2
  %arrayidx147 = getelementptr [400 x i8], ptr @put_buf, i32 0, i32 %sub
  %31 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx147, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %32)
  %cmp149 = icmp eq i8 %32, 35
  br i1 %cmp149, label %if.then151, label %land.lhs.true146.cleanup_crit_edge

land.lhs.true146.cleanup_crit_edge:               ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then151:                                       ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_const_cmp4(i32 399, i32 %inc143)
  %cmp152 = icmp ugt i32 %inc143, 399
  br i1 %cmp152, label %do.end158, label %if.end189

do.end158:                                        ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #13
  %33 = load ptr, ptr @ts.0, align 4
  %call160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %33, i32 noundef %16) #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 810, i32 noundef 9, ptr noundef null) #11
  store i32 0, ptr @put_buf_cnt, align 4
  br label %cleanup

if.end189:                                        ; preds = %if.then151
  %arrayidx190 = getelementptr [400 x i8], ptr @put_buf, i32 0, i32 %inc143
  %34 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx190, align 1
  %35 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp192 = icmp sgt i32 %35, 1
  br i1 %cmp192, label %do.end197, label %if.end189.if.end200_crit_edge

if.end189.if.end200_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end200

do.end197:                                        ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  %call199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %16, ptr noundef nonnull @put_buf) #15
  br label %if.end200

if.end200:                                        ; preds = %do.end197, %if.end189.if.end200_crit_edge
  tail call void @touch_softlockup_watchdog() #11
  %36 = load ptr, ptr @ts.4, align 4
  %tobool203.not = icmp eq ptr %36, null
  br i1 %tobool203.not, label %if.end200.if.end244_crit_edge, label %land.lhs.true204

if.end200.if.end244_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end244

land.lhs.true204:                                 ; preds = %if.end200
  %call205 = tail call i32 %36(ptr noundef nonnull @put_buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %land.lhs.true204.if.end244_crit_edge, label %do.end211

land.lhs.true204.if.end244_crit_edge:             ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end244

do.end211:                                        ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #13
  %37 = load ptr, ptr @ts.0, align 4
  %38 = load i32, ptr @ts.2, align 4
  %39 = load ptr, ptr @ts.1, align 4
  %put214 = getelementptr %struct.test_struct, ptr %39, i32 %38, i32 1
  %40 = ptrtoint ptr %put214 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %put214, align 4
  %call215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %37, i32 noundef %38, ptr noundef %41, ptr noundef nonnull @put_buf) #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 820, i32 noundef 9, ptr noundef null) #11
  br label %if.end244

if.end244:                                        ; preds = %do.end211, %land.lhs.true204.if.end244_crit_edge, %if.end200.if.end244_crit_edge
  %42 = load i32, ptr @ts.2, align 4
  %inc245 = add i32 %42, 1
  store i32 %inc245, ptr @ts.2, align 4
  store i32 0, ptr @put_buf_cnt, align 4
  store i32 0, ptr @get_buf_cnt, align 4
  store i1 true, ptr @send_ack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end244, %do.end158, %land.lhs.true146.cleanup_crit_edge, %if.end140.cleanup_crit_edge, %if.end133.cleanup_crit_edge, %do.end102, %do.end64, %if.end41, %if.then2
  %retval.0 = phi i32 [ 43, %if.then2 ], [ %conv43, %if.end41 ], [ 0, %do.end102 ], [ 0, %do.end158 ], [ 0, %do.end64 ], [ 0, %if.end133.cleanup_crit_edge ], [ 0, %if.end244 ], [ 0, %land.lhs.true146.cleanup_crit_edge ], [ 0, %if.end140.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @validate_simple_test(ptr noundef %put_str) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ts.1, align 4
  %1 = load i32, ptr @ts.2, align 4
  %put_handler = getelementptr %struct.test_struct, ptr %0, i32 %1, i32 3
  %2 = ptrtoint ptr %put_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %put_handler, align 4
  %tobool.not = icmp eq ptr %3, null
  %put5 = getelementptr %struct.test_struct, ptr %0, i32 %1, i32 1
  %4 = ptrtoint ptr %put5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %put5, align 4
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %3(ptr noundef %put_str, ptr noundef %5) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %put_str to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %put_str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %7)
  %cmp = icmp eq i8 %7, 36
  %spec.select.idx = zext i1 %cmp to i32
  %spec.select = getelementptr i8, ptr %put_str, i32 %spec.select.idx
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp10.not57 = icmp eq i8 %9, 0
  br i1 %cmp10.not57, label %if.end.land.lhs.true_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.rhs:                                         ; preds = %if.end28.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %10 = phi i8 [ %15, %if.end28.land.rhs_crit_edge ], [ %9, %if.end.land.rhs_crit_edge ]
  %chk_str.059 = phi ptr [ %incdec.ptr29, %if.end28.land.rhs_crit_edge ], [ %5, %if.end.land.rhs_crit_edge ]
  %put_str.addr.158 = phi ptr [ %incdec.ptr30, %if.end28.land.rhs_crit_edge ], [ %spec.select, %if.end.land.rhs_crit_edge ]
  %11 = ptrtoint ptr %put_str.addr.158 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %put_str.addr.158, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %lor.lhs.false [
    i8 0, label %land.rhs.cleanup_crit_edge
    i8 35, label %land.rhs.cleanup.loopexit_crit_edge
  ]

land.rhs.cleanup.loopexit_crit_edge:              ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.loopexit

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %10)
  %cmp19 = icmp eq i8 %10, 42
  br i1 %cmp19, label %lor.lhs.false.cleanup.loopexit_crit_edge, label %if.end22

lor.lhs.false.cleanup.loopexit_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.loopexit

if.end22:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %10)
  %cmp25.not = icmp eq i8 %12, %10
  br i1 %cmp25.not, label %if.end28, label %if.end22.cleanup.loopexit_crit_edge

if.end22.cleanup.loopexit_crit_edge:              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.loopexit

if.end28:                                         ; preds = %if.end22
  %incdec.ptr29 = getelementptr i8, ptr %chk_str.059, i32 1
  %incdec.ptr30 = getelementptr i8, ptr %put_str.addr.158, i32 1
  %14 = ptrtoint ptr %incdec.ptr29 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr29, align 1
  %cmp10.not = icmp eq i8 %15, 0
  br i1 %cmp10.not, label %if.end28.land.lhs.true_crit_edge, label %if.end28.land.rhs_crit_edge

if.end28.land.rhs_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

if.end28.land.lhs.true_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end28.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %put_str.addr.1.lcssa = phi ptr [ %spec.select, %if.end.land.lhs.true_crit_edge ], [ %incdec.ptr30, %if.end28.land.lhs.true_crit_edge ]
  %16 = ptrtoint ptr %put_str.addr.1.lcssa to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %put_str.addr.1.lcssa, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %switch.selectcmp.case1 = icmp ne i8 %17, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %17)
  %switch.selectcmp.case2 = icmp ne i8 %17, 35
  %not.switch.selectcmp = and i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %18 = zext i1 %not.switch.selectcmp to i32
  br label %cleanup

cleanup.loopexit:                                 ; preds = %if.end22.cleanup.loopexit_crit_edge, %lor.lhs.false.cleanup.loopexit_crit_edge, %land.rhs.cleanup.loopexit_crit_edge
  %retval.0.ph = phi i32 [ 1, %if.end22.cleanup.loopexit_crit_edge ], [ 0, %lor.lhs.false.cleanup.loopexit_crit_edge ], [ 0, %land.rhs.cleanup.loopexit_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %land.lhs.true, %land.rhs.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %18, %land.lhs.true ], [ %retval.0.ph, %cleanup.loopexit ], [ 1, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fill_get_buf(ptr nocapture noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  store i16 9216, ptr @get_buf, align 2
  %call1 = tail call ptr @strcat(ptr noundef nonnull @get_buf, ptr noundef %buf)
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not28 = icmp eq i8 %1, 0
  br i1 %tobool.not28, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi i8 [ %4, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %checksum.030 = phi i32 [ %phi.cast, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %count.029 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %conv = zext i8 %2 to i32
  %add = add nuw nsw i32 %checksum.030, %conv
  %inc = add i32 %count.029, 1
  %phi.cast = and i32 %add, 255
  %arrayidx = getelementptr i8, ptr %buf, i32 %inc
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %checksum.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %phi.cast, %while.body.while.end_crit_edge ]
  %strlen = tail call i32 @strlen(ptr nonnull @get_buf) #14
  %endptr = getelementptr i8, ptr @get_buf, i32 %strlen
  %5 = ptrtoint ptr %endptr to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 8960, ptr %endptr, align 1
  %6 = lshr i32 %checksum.0.lcssa, 4
  %arrayidx6 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6, align 1
  %add7 = add i32 %count.0.lcssa, 2
  %arrayidx8 = getelementptr [400 x i8], ptr @get_buf, i32 0, i32 %add7
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx8, align 1
  %and10 = and i32 %checksum.0.lcssa, 15
  %arrayidx11 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and10
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx11, align 1
  %add12 = add i32 %count.0.lcssa, 3
  %arrayidx13 = getelementptr [400 x i8], ptr @get_buf, i32 0, i32 %add12
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx13, align 1
  %add14 = add i32 %count.0.lcssa, 4
  %arrayidx15 = getelementptr [400 x i8], ptr @get_buf, i32 0, i32 %add14
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx15, align 1
  %14 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp = icmp sgt i32 %14, 1
  br i1 %cmp, label %do.end, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %15 = load i32, ptr @ts.2, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %15, ptr noundef nonnull @get_buf) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %while.end.if.end_crit_edge
  tail call void @touch_softlockup_watchdog() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sw_break(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %arg, null
  br i1 %tobool.not.i, label %entry.break_helper.exit_crit_edge, label %if.then.i

entry.break_helper.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %break_helper.exit

if.then.i:                                        ; preds = %entry
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %arg, ptr noundef nonnull @lookup_addr.cached_arg) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.lookup_addr.exit.i_crit_edge, label %if.then.i.i

if.then.i.lookup_addr.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lookup_addr.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = tail call i32 @strscpy(ptr noundef nonnull @lookup_addr.cached_arg, ptr noundef nonnull %arg, i32 noundef 128) #11
  %call2.i.i = tail call i32 @kallsyms_lookup_name(ptr noundef nonnull %arg) #11
  store i32 %call2.i.i, ptr @lookup_addr.cached_addr, align 4
  br label %lookup_addr.exit.i

lookup_addr.exit.i:                               ; preds = %if.then.i.i, %if.then.i.lookup_addr.exit.i_crit_edge
  %0 = load i32, ptr @lookup_addr.cached_addr, align 4
  br label %break_helper.exit

break_helper.exit:                                ; preds = %lookup_addr.exit.i, %entry.break_helper.exit_crit_edge
  %addr.0.i = phi i32 [ %0, %lookup_addr.exit.i ], [ 0, %entry.break_helper.exit_crit_edge ]
  %call1.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @scratch_buf, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef %addr.0.i, i32 noundef 4) #11
  tail call fastcc void @fill_get_buf(ptr noundef nonnull @scratch_buf) #11
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kallsyms_lookup_name(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kgdbts_get_char() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ts.3, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %0(i32 noundef 1, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kgdbts_put_char(i8 noundef zeroext %chr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ts.3, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %chr to i32
  %call = tail call i32 %0(i32 noundef 0, i32 noundef %conv) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kgdbts_pre_exp_handler() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_connected to i32))
  %0 = load i32, ptr @kgdb_connected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call zeroext i1 @try_module_get(ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kgdbts_post_exp_handler() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_connected to i32))
  %0 = load i32, ptr @kgdb_connected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @module_put(ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kgdbts_unreg_thread(ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.b3 = load i1, ptr @final_ack, align 4
  br i1 %.b3, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call = tail call i32 @msleep_interruptible(i32 noundef 1500) #11
  %.b = load i1, ptr @final_ack, align 4
  br i1 %.b, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %call1 = tail call i32 @msleep_interruptible(i32 noundef 1000) #11
  %0 = load i32, ptr @configured, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool2.not = icmp eq i32 %0, 0
  br i1 %tobool2.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kgdb_unregister_io_module(ptr noundef nonnull @kgdbts_io_ops) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  store i32 0, ptr @configured, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_unregister_io_module(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hw_break(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %arg, null
  br i1 %tobool.not.i, label %entry.break_helper.exit_crit_edge, label %if.then.i

entry.break_helper.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %break_helper.exit

if.then.i:                                        ; preds = %entry
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %arg, ptr noundef nonnull @lookup_addr.cached_arg) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.lookup_addr.exit.i_crit_edge, label %if.then.i.i

if.then.i.lookup_addr.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lookup_addr.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = tail call i32 @strscpy(ptr noundef nonnull @lookup_addr.cached_arg, ptr noundef nonnull %arg, i32 noundef 128) #11
  %call2.i.i = tail call i32 @kallsyms_lookup_name(ptr noundef nonnull %arg) #11
  store i32 %call2.i.i, ptr @lookup_addr.cached_addr, align 4
  br label %lookup_addr.exit.i

lookup_addr.exit.i:                               ; preds = %if.then.i.i, %if.then.i.lookup_addr.exit.i_crit_edge
  %0 = load i32, ptr @lookup_addr.cached_addr, align 4
  br label %break_helper.exit

break_helper.exit:                                ; preds = %lookup_addr.exit.i, %entry.break_helper.exit_crit_edge
  %addr.0.i = phi i32 [ %0, %lookup_addr.exit.i ], [ 0, %entry.break_helper.exit_crit_edge ]
  %call1.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @scratch_buf, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef %addr.0.i, i32 noundef 4) #11
  tail call fastcc void @fill_get_buf(ptr noundef nonnull @scratch_buf) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @check_and_rewind_pc(ptr noundef %put_str, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @strcmp(ptr noundef %arg, ptr noundef nonnull @lookup_addr.cached_arg) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.lookup_addr.exit_crit_edge, label %if.then.i

entry.lookup_addr.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lookup_addr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 @strscpy(ptr noundef nonnull @lookup_addr.cached_arg, ptr noundef %arg, i32 noundef 128) #11
  %call2.i = tail call i32 @kallsyms_lookup_name(ptr noundef %arg) #11
  store i32 %call2.i, ptr @lookup_addr.cached_addr, align 4
  br label %lookup_addr.exit

lookup_addr.exit:                                 ; preds = %if.then.i, %entry.lookup_addr.exit_crit_edge
  %0 = load i32, ptr @lookup_addr.cached_addr, align 4
  %arrayidx = getelementptr i8, ptr %put_str, i32 1
  %call1 = tail call i32 @kgdb_hex2mem(ptr noundef %arrayidx, ptr noundef nonnull @kgdbts_gdb_regs, i32 noundef 168) #11
  tail call void @gdb_regs_to_pt_regs(ptr noundef nonnull @kgdbts_gdb_regs, ptr noundef nonnull @kgdbts_regs) #11
  %1 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @kgdbts_regs, i32 0, i32 0, i32 15), align 4
  %2 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %lookup_addr.exit.if.end_crit_edge

lookup_addr.exit.if.end_crit_edge:                ; preds = %lookup_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %lookup_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %1) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %lookup_addr.exit.if.end_crit_edge
  tail call void @touch_softlockup_watchdog() #11
  %3 = load i32, ptr @sstep_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp8 = icmp eq i32 %1, %3
  %or.cond = select i1 %tobool6.not, i1 %cmp8, i1 false
  br i1 %or.cond, label %land.lhs.true9, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true9:                                   ; preds = %if.end
  %call10 = tail call i32 @strcmp(ptr noundef %arg, ptr noundef nonnull dereferenceable(15) @.str.83) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true9.do.body15_crit_edge, label %lor.lhs.false

land.lhs.true9.do.body15_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body15

lor.lhs.false:                                    ; preds = %land.lhs.true9
  %call12 = tail call i32 @strcmp(ptr noundef %arg, ptr noundef nonnull dereferenceable(13) @.str.84) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %lor.lhs.false.do.body15_crit_edge, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

lor.lhs.false.do.body15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body15

do.body15:                                        ; preds = %lor.lhs.false.do.body15_crit_edge, %land.lhs.true9.do.body15_crit_edge
  %4 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp16 = icmp sgt i32 %4, 1
  br i1 %cmp16, label %do.end20, label %do.body15.if.end23_crit_edge

do.body15.if.end23_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

do.end20:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #15
  br label %if.end23

if.end23:                                         ; preds = %do.end20, %do.body15.if.end23_crit_edge
  tail call void @touch_softlockup_watchdog() #11
  store i1 true, ptr @restart_from_top_after_write, align 4
  br label %if.end63

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %if.end.if.else_crit_edge
  %call26 = tail call i32 @strcmp(ptr noundef %arg, ptr noundef nonnull dereferenceable(7) @.str.88) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %0)
  %cmp30.not = icmp eq i32 %1, %0
  %or.cond81 = select i1 %tobool27.not, i1 true, i1 %cmp30.not
  br i1 %or.cond81, label %if.else.if.end63_crit_edge, label %do.end35

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

do.end35:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %1, i32 noundef %0) #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 330, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end63:                                         ; preds = %if.else.if.end63_crit_edge, %if.end23
  store i32 %1, ptr @cont_addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %do.end35
  %retval.0 = phi i32 [ 1, %do.end35 ], [ 0, %if.end63 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_regs(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr getelementptr inbounds ([400 x i8], ptr @scratch_buf, i32 0, i32 1), i32 0, i32 399)
  store i8 71, ptr @scratch_buf, align 1
  tail call void @pt_regs_to_gdb_regs(ptr noundef nonnull @kgdbts_gdb_regs, ptr noundef nonnull @kgdbts_regs) #11
  %call = tail call ptr @kgdb_mem2hex(ptr noundef nonnull @kgdbts_gdb_regs, ptr noundef getelementptr inbounds ([400 x i8], ptr @scratch_buf, i32 0, i32 1), i32 noundef 168) #11
  tail call fastcc void @fill_get_buf(ptr noundef nonnull @scratch_buf)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hw_rem_break(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %arg, null
  br i1 %tobool.not.i, label %entry.break_helper.exit_crit_edge, label %if.then.i

entry.break_helper.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %break_helper.exit

if.then.i:                                        ; preds = %entry
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %arg, ptr noundef nonnull @lookup_addr.cached_arg) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.lookup_addr.exit.i_crit_edge, label %if.then.i.i

if.then.i.lookup_addr.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lookup_addr.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = tail call i32 @strscpy(ptr noundef nonnull @lookup_addr.cached_arg, ptr noundef nonnull %arg, i32 noundef 128) #11
  %call2.i.i = tail call i32 @kallsyms_lookup_name(ptr noundef nonnull %arg) #11
  store i32 %call2.i.i, ptr @lookup_addr.cached_addr, align 4
  br label %lookup_addr.exit.i

lookup_addr.exit.i:                               ; preds = %if.then.i.i, %if.then.i.lookup_addr.exit.i_crit_edge
  %0 = load i32, ptr @lookup_addr.cached_addr, align 4
  br label %break_helper.exit

break_helper.exit:                                ; preds = %lookup_addr.exit.i, %entry.break_helper.exit_crit_edge
  %addr.0.i = phi i32 [ %0, %lookup_addr.exit.i ], [ 0, %entry.break_helper.exit_crit_edge ]
  %call1.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @scratch_buf, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.92, i32 noundef %addr.0.i, i32 noundef 4) #11
  tail call fastcc void @fill_get_buf(ptr noundef nonnull @scratch_buf) #11
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @got_break(ptr nocapture noundef readonly %put_str, ptr nocapture noundef readonly %arg) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 1, ptr @test_complete, align 4
  %add.ptr = getelementptr i8, ptr %put_str, i32 1
  %call = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef %arg, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %arg, ptr noundef nonnull dereferenceable(3) @.str.93, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  store i32 2, ptr @test_complete, align 4
  br label %return

return:                                           ; preds = %if.then3, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then.return_crit_edge ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kgdb_hex2mem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @gdb_regs_to_pt_regs(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pt_regs_to_gdb_regs(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kgdb_mem2hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sw_rem_break(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %arg, null
  br i1 %tobool.not.i, label %entry.break_helper.exit_crit_edge, label %if.then.i

entry.break_helper.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %break_helper.exit

if.then.i:                                        ; preds = %entry
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %arg, ptr noundef nonnull @lookup_addr.cached_arg) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.lookup_addr.exit.i_crit_edge, label %if.then.i.i

if.then.i.lookup_addr.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lookup_addr.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = tail call i32 @strscpy(ptr noundef nonnull @lookup_addr.cached_arg, ptr noundef nonnull %arg, i32 noundef 128) #11
  %call2.i.i = tail call i32 @kallsyms_lookup_name(ptr noundef nonnull %arg) #11
  store i32 %call2.i.i, ptr @lookup_addr.cached_addr, align 4
  br label %lookup_addr.exit.i

lookup_addr.exit.i:                               ; preds = %if.then.i.i, %if.then.i.lookup_addr.exit.i_crit_edge
  %0 = load i32, ptr @lookup_addr.cached_addr, align 4
  br label %break_helper.exit

break_helper.exit:                                ; preds = %lookup_addr.exit.i, %entry.break_helper.exit_crit_edge
  %addr.0.i = phi i32 [ %0, %lookup_addr.exit.i ], [ 0, %entry.break_helper.exit_crit_edge ]
  %call1.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @scratch_buf, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.94, i32 noundef %addr.0.i, i32 noundef 4) #11
  tail call fastcc void @fill_get_buf(ptr noundef nonnull @scratch_buf) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hw_write_break(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %arg, null
  br i1 %tobool.not.i, label %entry.break_helper.exit_crit_edge, label %if.then.i

entry.break_helper.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %break_helper.exit

if.then.i:                                        ; preds = %entry
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %arg, ptr noundef nonnull @lookup_addr.cached_arg) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.lookup_addr.exit.i_crit_edge, label %if.then.i.i

if.then.i.lookup_addr.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lookup_addr.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = tail call i32 @strscpy(ptr noundef nonnull @lookup_addr.cached_arg, ptr noundef nonnull %arg, i32 noundef 128) #11
  %call2.i.i = tail call i32 @kallsyms_lookup_name(ptr noundef nonnull %arg) #11
  store i32 %call2.i.i, ptr @lookup_addr.cached_addr, align 4
  br label %lookup_addr.exit.i

lookup_addr.exit.i:                               ; preds = %if.then.i.i, %if.then.i.lookup_addr.exit.i_crit_edge
  %0 = load i32, ptr @lookup_addr.cached_addr, align 4
  br label %break_helper.exit

break_helper.exit:                                ; preds = %lookup_addr.exit.i, %entry.break_helper.exit_crit_edge
  %addr.0.i = phi i32 [ %0, %lookup_addr.exit.i ], [ 0, %entry.break_helper.exit_crit_edge ]
  %call1.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @scratch_buf, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.102, i32 noundef %addr.0.i, i32 noundef 4) #11
  tail call fastcc void @fill_get_buf(ptr noundef nonnull @scratch_buf) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hw_rem_write_break(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %arg, null
  br i1 %tobool.not.i, label %entry.break_helper.exit_crit_edge, label %if.then.i

entry.break_helper.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %break_helper.exit

if.then.i:                                        ; preds = %entry
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %arg, ptr noundef nonnull @lookup_addr.cached_arg) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.lookup_addr.exit.i_crit_edge, label %if.then.i.i

if.then.i.lookup_addr.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lookup_addr.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = tail call i32 @strscpy(ptr noundef nonnull @lookup_addr.cached_arg, ptr noundef nonnull %arg, i32 noundef 128) #11
  %call2.i.i = tail call i32 @kallsyms_lookup_name(ptr noundef nonnull %arg) #11
  store i32 %call2.i.i, ptr @lookup_addr.cached_addr, align 4
  br label %lookup_addr.exit.i

lookup_addr.exit.i:                               ; preds = %if.then.i.i, %if.then.i.lookup_addr.exit.i_crit_edge
  %0 = load i32, ptr @lookup_addr.cached_addr, align 4
  br label %break_helper.exit

break_helper.exit:                                ; preds = %lookup_addr.exit.i, %entry.break_helper.exit_crit_edge
  %addr.0.i = phi i32 [ %0, %lookup_addr.exit.i ], [ 0, %entry.break_helper.exit_crit_edge ]
  %call1.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @scratch_buf, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.103, i32 noundef %addr.0.i, i32 noundef 4) #11
  tail call fastcc void @fill_get_buf(ptr noundef nonnull @scratch_buf) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hw_access_break(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %arg, null
  br i1 %tobool.not.i, label %entry.break_helper.exit_crit_edge, label %if.then.i

entry.break_helper.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %break_helper.exit

if.then.i:                                        ; preds = %entry
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %arg, ptr noundef nonnull @lookup_addr.cached_arg) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.lookup_addr.exit.i_crit_edge, label %if.then.i.i

if.then.i.lookup_addr.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lookup_addr.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = tail call i32 @strscpy(ptr noundef nonnull @lookup_addr.cached_arg, ptr noundef nonnull %arg, i32 noundef 128) #11
  %call2.i.i = tail call i32 @kallsyms_lookup_name(ptr noundef nonnull %arg) #11
  store i32 %call2.i.i, ptr @lookup_addr.cached_addr, align 4
  br label %lookup_addr.exit.i

lookup_addr.exit.i:                               ; preds = %if.then.i.i, %if.then.i.lookup_addr.exit.i_crit_edge
  %0 = load i32, ptr @lookup_addr.cached_addr, align 4
  br label %break_helper.exit

break_helper.exit:                                ; preds = %lookup_addr.exit.i, %entry.break_helper.exit_crit_edge
  %addr.0.i = phi i32 [ %0, %lookup_addr.exit.i ], [ 0, %entry.break_helper.exit_crit_edge ]
  %call1.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @scratch_buf, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.104, i32 noundef %addr.0.i, i32 noundef 4) #11
  tail call fastcc void @fill_get_buf(ptr noundef nonnull @scratch_buf) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hw_rem_access_break(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %arg, null
  br i1 %tobool.not.i, label %entry.break_helper.exit_crit_edge, label %if.then.i

entry.break_helper.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %break_helper.exit

if.then.i:                                        ; preds = %entry
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %arg, ptr noundef nonnull @lookup_addr.cached_arg) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.lookup_addr.exit.i_crit_edge, label %if.then.i.i

if.then.i.lookup_addr.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lookup_addr.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = tail call i32 @strscpy(ptr noundef nonnull @lookup_addr.cached_arg, ptr noundef nonnull %arg, i32 noundef 128) #11
  %call2.i.i = tail call i32 @kallsyms_lookup_name(ptr noundef nonnull %arg) #11
  store i32 %call2.i.i, ptr @lookup_addr.cached_addr, align 4
  br label %lookup_addr.exit.i

lookup_addr.exit.i:                               ; preds = %if.then.i.i, %if.then.i.lookup_addr.exit.i_crit_edge
  %0 = load i32, ptr @lookup_addr.cached_addr, align 4
  br label %break_helper.exit

break_helper.exit:                                ; preds = %lookup_addr.exit.i, %entry.break_helper.exit_crit_edge
  %addr.0.i = phi i32 [ %0, %lookup_addr.exit.i ], [ 0, %entry.break_helper.exit_crit_edge ]
  %call1.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @scratch_buf, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.105, i32 noundef %addr.0.i, i32 noundef 4) #11
  tail call fastcc void @fill_get_buf(ptr noundef nonnull @scratch_buf) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_thread_id_continue(ptr noundef %put_str, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %ptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr) #11
  %arrayidx = getelementptr i8, ptr %put_str, i32 11
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %arrayidx, ptr %ptr, align 4
  %arrayidx1 = getelementptr i8, ptr %put_str, i32 1
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 84, i8 %2)
  %cmp.not = icmp eq i8 %2, 84
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx3 = getelementptr i8, ptr %put_str, i32 2
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %4)
  %cmp5.not = icmp eq i8 %4, 48
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %call = call i32 @kgdb_hex2long(ptr noundef nonnull %ptr, ptr noundef nonnull @cont_thread_id) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emul_sstep_get(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sstep_state, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %0, label %do.end13 [
    i32 0, label %do.body
    i32 1, label %sw.bb8
    i32 2, label %sw.bb9
    i32 3, label %sw.bb10
  ]

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %do.body.if.end6_crit_edge

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #15
  br label %if.end6

if.end6:                                          ; preds = %do.end, %do.body.if.end6_crit_edge
  tail call void @touch_softlockup_watchdog() #11
  tail call fastcc void @fill_get_buf(ptr noundef nonnull @.str.79)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = load i32, ptr @sstep_addr, align 4
  %call1.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @scratch_buf, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef %3, i32 noundef 4) #11
  tail call fastcc void @fill_get_buf(ptr noundef nonnull @scratch_buf) #11
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @fill_get_buf(ptr noundef nonnull @.str.77)
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = load i32, ptr @sstep_addr, align 4
  %call1.i39 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @scratch_buf, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.94, i32 noundef %4, i32 noundef 4) #11
  tail call fastcc void @fill_get_buf(ptr noundef nonnull @scratch_buf) #11
  br label %sw.epilog

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 479, i32 noundef 9, ptr noundef null) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end13, %sw.bb10, %sw.bb9, %sw.bb8, %if.end6
  %5 = load i32, ptr @sstep_state, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr @sstep_state, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emul_sstep_put(ptr noundef %put_str, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %ptr88 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sstep_state, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %0, label %do.end134 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb18
    i32 3, label %sw.bb50
    i32 4, label %sw.bb92
  ]

sw.bb:                                            ; preds = %entry
  %arrayidx9 = getelementptr i8, ptr %put_str, i32 1
  %call10 = tail call i32 @kgdb_hex2mem(ptr noundef %arrayidx9, ptr noundef nonnull @kgdbts_gdb_regs, i32 noundef 168) #11
  tail call void @gdb_regs_to_pt_regs(ptr noundef nonnull @kgdbts_gdb_regs, ptr noundef nonnull @kgdbts_regs) #11
  %2 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp11 = icmp sgt i32 %2, 1
  br i1 %cmp11, label %do.end, label %sw.bb.if.end16_crit_edge

sw.bb.if.end16_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %3 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @kgdbts_regs, i32 0, i32 0, i32 15), align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %3) #15
  br label %if.end16

if.end16:                                         ; preds = %do.end, %sw.bb.if.end16_crit_edge
  tail call void @touch_softlockup_watchdog() #11
  %4 = load i32, ptr @cont_addr, align 4
  %add = add i32 %4, 4
  store i32 %add, ptr @sstep_addr, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %call19 = tail call i32 @strncmp(ptr noundef %put_str, ptr noundef nonnull dereferenceable(4) @.str.124, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %sw.bb18.sw.epilog_crit_edge, label %do.end24

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end24:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126) #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 506, i32 noundef 9, ptr noundef null) #11
  br label %return

sw.bb50:                                          ; preds = %entry
  %call51 = tail call i32 @strncmp(ptr noundef %put_str, ptr noundef nonnull dereferenceable(4) @.str.128, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.else, label %do.end57

do.end57:                                         ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #13
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130) #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 512, i32 noundef 9, ptr noundef null) #11
  br label %return

if.else:                                          ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr88) #11
  %arrayidx89 = getelementptr i8, ptr %put_str, i32 11
  %5 = ptrtoint ptr %ptr88 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx89, ptr %ptr88, align 4
  %call90 = call i32 @kgdb_hex2long(ptr noundef nonnull %ptr88, ptr noundef nonnull @sstep_thread_id) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr88) #11
  br label %sw.epilog

sw.bb92:                                          ; preds = %entry
  %call93 = tail call i32 @strncmp(ptr noundef %put_str, ptr noundef nonnull dereferenceable(4) @.str.124, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end130, label %do.end99

do.end99:                                         ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #13
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 521, i32 noundef 9, ptr noundef null) #11
  br label %return

if.end130:                                        ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr @sstep_state, align 4
  br label %return

do.end134:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136) #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 528, i32 noundef 9, ptr noundef null) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end134, %if.else, %sw.bb18.sw.epilog_crit_edge, %if.end16
  %6 = load i32, ptr @ts.2, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr @ts.2, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.end130, %do.end99, %do.end57, %do.end24
  %retval.1 = phi i32 [ 0, %sw.epilog ], [ 1, %do.end99 ], [ 0, %if.end130 ], [ 1, %do.end57 ], [ 1, %do.end24 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @check_single_step(ptr noundef %put_str, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @strcmp(ptr noundef %arg, ptr noundef nonnull @lookup_addr.cached_arg) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.lookup_addr.exit_crit_edge, label %if.then.i

entry.lookup_addr.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lookup_addr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 @strscpy(ptr noundef nonnull @lookup_addr.cached_arg, ptr noundef %arg, i32 noundef 128) #11
  %call2.i = tail call i32 @kallsyms_lookup_name(ptr noundef %arg) #11
  store i32 %call2.i, ptr @lookup_addr.cached_addr, align 4
  br label %lookup_addr.exit

lookup_addr.exit:                                 ; preds = %if.then.i, %entry.lookup_addr.exit_crit_edge
  %0 = load i32, ptr @lookup_addr.cached_addr, align 4
  %arrayidx = getelementptr i8, ptr %put_str, i32 1
  %call1 = tail call i32 @kgdb_hex2mem(ptr noundef %arrayidx, ptr noundef nonnull @kgdbts_gdb_regs, i32 noundef 168) #11
  tail call void @gdb_regs_to_pt_regs(ptr noundef nonnull @kgdbts_gdb_regs, ptr noundef nonnull @kgdbts_regs) #11
  %1 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end, label %lookup_addr.exit.if.end_crit_edge

lookup_addr.exit.if.end_crit_edge:                ; preds = %lookup_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %lookup_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  %2 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @kgdbts_regs, i32 0, i32 0, i32 15), align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef %2) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %lookup_addr.exit.if.end_crit_edge
  tail call void @touch_softlockup_watchdog() #11
  %3 = load i32, ptr @sstep_thread_id, align 4
  %4 = load i32, ptr @cont_thread_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp6.not = icmp eq i32 %3, %4
  br i1 %cmp6.not, label %if.end.continue_test_crit_edge, label %do.body8

if.end.continue_test_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %continue_test

do.body8:                                         ; preds = %if.end
  %5 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp9 = icmp sgt i32 %5, 1
  br i1 %cmp9, label %do.end13, label %do.body8.if.end16_crit_edge

do.body8.if.end16_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

do.end13:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %4) #15
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %do.body8.if.end16_crit_edge
  tail call void @touch_softlockup_watchdog() #11
  %6 = load i32, ptr @check_single_step.matched_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool20.not = icmp eq i32 %6, 0
  br i1 %tobool20.not, label %if.end16.if.end23_crit_edge, label %land.lhs.true

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end16
  %7 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @kgdbts_regs, i32 0, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %0)
  %cmp21.not = icmp eq i32 %7, %0
  br i1 %cmp21.not, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true.continue_test_crit_edge

land.lhs.true.continue_test_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %continue_test

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %if.end16.if.end23_crit_edge
  %inc = add i32 %6, 1
  store i32 %inc, ptr @check_single_step.matched_id, align 4
  %8 = load i32, ptr @ts.2, align 4
  %sub = add i32 %8, -2
  store i32 %sub, ptr @ts.2, align 4
  store i32 0, ptr @sstep_state, align 4
  br label %cleanup

continue_test:                                    ; preds = %land.lhs.true.continue_test_crit_edge, %if.end.continue_test_crit_edge
  store i32 0, ptr @check_single_step.matched_id, align 4
  %9 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @kgdbts_regs, i32 0, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %0)
  %cmp27 = icmp eq i32 %9, %0
  br i1 %cmp27, label %do.end32, label %continue_test.cleanup_crit_edge

continue_test.cleanup_crit_edge:                  ; preds = %continue_test
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end32:                                         ; preds = %continue_test
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef %0) #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 381, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %continue_test.cleanup_crit_edge, %if.end23
  %retval.0 = phi i32 [ 1, %do.end32 ], [ 0, %if.end23 ], [ 0, %continue_test.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kgdb_hex2long(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @emul_reset(ptr nocapture noundef readonly %put_str, ptr nocapture noundef readnone %arg) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %put_str, ptr noundef nonnull dereferenceable(4) @.str.124, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %.b = load i1, ptr @restart_from_top_after_write, align 4
  br i1 %.b, label %if.then2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 false, ptr @restart_from_top_after_write, align 4
  store i32 -1, ptr @ts.2, align 4
  br label %return

return:                                           ; preds = %if.then2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ 0, %if.then2 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skip_back_repeat_test(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtol(ptr noundef %arg, ptr noundef null, i32 noundef 10) #11
  %0 = load i32, ptr @repeat_test, align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr @repeat_test, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp = icmp slt i32 %dec, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = load i32, ptr @ts.2, align 4
  %inc = add i32 %1, 1
  br label %if.end9

if.else:                                          ; preds = %entry
  %rem10 = urem i32 %dec, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem10)
  %cmp1 = icmp eq i32 %rem10, 0
  br i1 %cmp1, label %do.body, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

do.body:                                          ; preds = %if.else
  %2 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body.if.end8_crit_edge, label %do.end

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %dec) #15
  br label %if.end8

if.end8:                                          ; preds = %do.end, %do.body.if.end8_crit_edge, %if.else.if.end8_crit_edge
  %3 = load i32, ptr @ts.2, align 4
  %sub = sub i32 %3, %call
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then
  %storemerge = phi i32 [ %sub, %if.end8 ], [ %inc, %if.then ]
  store i32 %storemerge, ptr @ts.2, align 4
  %4 = load ptr, ptr @ts.1, align 4
  %arrayidx = getelementptr %struct.test_struct, ptr %4, i32 %storemerge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @fill_get_buf(ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @final_ack_set(ptr nocapture noundef readonly %put_str, ptr nocapture noundef readonly %arg) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %put_str, i32 1
  %call = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef %arg, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @final_ack, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_cont_catch(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @fill_get_buf(ptr noundef nonnull @.str.11)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @put_cont_catch(ptr nocapture noundef readnone %put_str, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = load i32, ptr @sstep_thread_id, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, i32 noundef %1) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @touch_softlockup_watchdog() #11
  %2 = load i32, ptr @ts.2, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr @ts.2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_kgdbts_var(ptr nocapture noundef readonly %kmessage, ptr nocapture noundef readnone %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %kmessage) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %call)
  %cmp = icmp ugt i32 %call, 39
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @configured, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp2 = icmp slt i32 %0, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call ptr @strcpy(ptr noundef nonnull @config, ptr noundef %kmessage) #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp6 = icmp eq i32 %0, 1
  br i1 %cmp6, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160) #15
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call14 = tail call ptr @strcpy(ptr noundef nonnull @config, ptr noundef %kmessage) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end13.if.end20_crit_edge, label %land.lhs.true

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end13
  %sub = add nsw i32 %call, -1
  %arrayidx = getelementptr [40 x i8], ptr @config, i32 0, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %2)
  %cmp15 = icmp eq i8 %2, 10
  br i1 %cmp15, label %if.then17, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %land.lhs.true.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %call21 = tail call fastcc i32 @configure_kgdbts()
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end10, %if.then3, %do.end
  %retval.0 = phi i32 [ -28, %do.end ], [ 0, %if.then3 ], [ -16, %do.end10 ], [ %call21, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_string(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 190)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 190)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { cold nounwind }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !17, !19, !21, !23, !25, !26, !27, !28, !30, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !161, !162, !163, !165, !167, !169, !171, !172, !173, !174, !176, !178, !180, !182, !184, !186, !188, !189, !190, !191, !193, !195, !197, !198, !199, !201, !203, !204, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !232, !233, !234, !236, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !288, !289, !290, !292, !293, !294, !296, !298, !300, !301, !302, !304, !306, !307, !308, !310, !312, !313, !314, !316, !317, !318, !320, !321, !322, !324, !326, !328, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !343, !344, !345, !346, !348, !349, !351, !353, !355, !357, !359, !361, !362, !363, !364, !366, !367, !368, !369, !371, !373, !374, !375, !377, !378, !379, !381, !382, !383}
!llvm.module.flags = !{!385, !386, !387, !388, !389, !390, !391, !392}
!llvm.ident = !{!393}

!0 = !{ptr @__setup_kgdbts_option_setup, !1, !"__setup_kgdbts_option_setup", i1 false, i1 false}
!1 = !{!"../drivers/misc/kgdbts.c", i32 1079, i32 1}
!2 = !{ptr @__initcall__kmod_kgdbts__261_1116_init_kgdbts6, !3, !"__initcall__kmod_kgdbts__261_1116_init_kgdbts6", i1 false, i1 false}
!3 = !{!"../drivers/misc/kgdbts.c", i32 1116, i32 1}
!4 = !{ptr @__param_kgdbts, !5, !"__param_kgdbts", i1 false, i1 false}
!5 = !{!"../drivers/misc/kgdbts.c", i32 1190, i32 1}
!6 = !{ptr @__UNIQUE_ID_kgdbts262, !7, !"__UNIQUE_ID_kgdbts262", i1 false, i1 false}
!7 = !{!"../drivers/misc/kgdbts.c", i32 1191, i32 1}
!8 = !{ptr @__setup_str_kgdbts_option_setup, !1, !"__setup_str_kgdbts_option_setup", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/misc/kgdbts.c", i32 1072, i32 3}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @kgdbts_option_setup._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @kgdbts_option_setup._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @config, !16, !"config", i1 false, i1 false}
!16 = !{!"../drivers/misc/kgdbts.c", i32 153, i32 13}
!17 = !{ptr @configured, !18, !"configured", i1 false, i1 false}
!18 = !{!"../drivers/misc/kgdbts.c", i32 150, i32 12}
!19 = distinct !{null, !20, !"final_ack", i1 false, i1 false}
!20 = !{!"../drivers/misc/kgdbts.c", i32 125, i32 12}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/misc/kgdbts.c", i32 846, i32 12}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/misc/kgdbts.c", i32 853, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @run_plant_and_detach_test._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @run_plant_and_detach_test._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/misc/kgdbts.c", i32 854, i32 9}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/misc/kgdbts.c", i32 202, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @kgdbts_break_test._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @kgdbts_break_test._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @verbose, !36, !"verbose", i1 false, i1 false}
!36 = !{!"../drivers/misc/kgdbts.c", i32 121, i32 12}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/misc/kgdbts.c", i32 773, i32 4}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @run_simple_test._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @run_simple_test._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/misc/kgdbts.c", i32 776, i32 17}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/misc/kgdbts.c", i32 788, i32 3}
!46 = !{ptr @run_simple_test._entry.12, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @run_simple_test._entry_ptr.14, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/misc/kgdbts.c", i32 794, i32 3}
!50 = !{ptr @run_simple_test._entry.15, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @run_simple_test._entry_ptr.17, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @run_simple_test._entry.18, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/misc/kgdbts.c", i32 809, i32 4}
!54 = !{ptr @run_simple_test._entry_ptr.19, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/misc/kgdbts.c", i32 815, i32 3}
!57 = !{ptr @run_simple_test._entry.20, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @run_simple_test._entry_ptr.22, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/misc/kgdbts.c", i32 818, i32 4}
!61 = !{ptr @run_simple_test._entry.23, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @run_simple_test._entry_ptr.25, !60, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"send_ack", i1 false, i1 false}
!64 = !{!"../drivers/misc/kgdbts.c", i32 124, i32 12}
!65 = !{ptr @get_buf_cnt, !66, !"get_buf_cnt", i1 false, i1 false}
!66 = !{!"../drivers/misc/kgdbts.c", i32 117, i32 12}
!67 = distinct !{null, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/misc/kgdbts.c", i32 708, i32 18}
!69 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/misc/kgdbts.c", i32 714, i32 18}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/misc/kgdbts.c", i32 718, i32 2}
!73 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @fill_get_buf._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @fill_get_buf._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @get_buf, !77, !"get_buf", i1 false, i1 false}
!77 = !{!"../drivers/misc/kgdbts.c", i32 116, i32 13}
!78 = !{ptr @put_buf_cnt, !79, !"put_buf_cnt", i1 false, i1 false}
!79 = !{!"../drivers/misc/kgdbts.c", i32 119, i32 12}
!80 = !{ptr @put_buf, !81, !"put_buf", i1 false, i1 false}
!81 = !{!"../drivers/misc/kgdbts.c", i32 118, i32 13}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/misc/kgdbts.c", i32 548, i32 4}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/misc/kgdbts.c", i32 548, i32 9}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/misc/kgdbts.c", i32 549, i32 25}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/misc/kgdbts.c", i32 551, i32 4}
!90 = !{ptr @plant_and_detach_test, !91, !"plant_and_detach_test", i1 false, i1 false}
!91 = !{!"../drivers/misc/kgdbts.c", i32 547, i32 27}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/misc/kgdbts.c", i32 247, i32 30}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/misc/kgdbts.c", i32 247, i32 37}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/misc/kgdbts.c", i32 240, i32 23}
!98 = !{ptr @lookup_addr.cached_arg, !99, !"cached_arg", i1 false, i1 false}
!99 = !{!"../drivers/misc/kgdbts.c", i32 219, i32 14}
!100 = !{ptr @lookup_addr.cached_addr, !101, !"cached_addr", i1 false, i1 false}
!101 = !{!"../drivers/misc/kgdbts.c", i32 220, i32 23}
!102 = !{ptr @scratch_buf, !103, !"scratch_buf", i1 false, i1 false}
!103 = !{!"../drivers/misc/kgdbts.c", i32 120, i32 13}
!104 = distinct !{null, !105, !"force_hwbrks", i1 false, i1 false}
!105 = !{!"../drivers/misc/kgdbts.c", i32 126, i32 12}
!106 = distinct !{null, !107, !"ts", i1 false, i1 false}
!107 = !{!"../drivers/misc/kgdbts.c", i32 179, i32 26}
!108 = !{ptr @.str.37, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/misc/kgdbts.c", i32 1179, i32 12}
!110 = !{ptr @kgdbts_io_ops, !111, !"kgdbts_io_ops", i1 false, i1 false}
!111 = !{!"../drivers/misc/kgdbts.c", i32 1178, i32 23}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/misc/kgdbts.c", i32 988, i32 21}
!114 = !{ptr @.str.39, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/misc/kgdbts.c", i32 990, i32 21}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/misc/kgdbts.c", i32 1009, i32 3}
!118 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @kgdbts_run_tests._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @kgdbts_run_tests._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/misc/kgdbts.c", i32 1011, i32 3}
!123 = !{ptr @kgdbts_run_tests._entry.42, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @kgdbts_run_tests._entry_ptr.44, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/misc/kgdbts.c", i32 1013, i32 3}
!127 = !{ptr @kgdbts_run_tests._entry.45, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @kgdbts_run_tests._entry_ptr.47, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/misc/kgdbts.c", i32 1018, i32 2}
!131 = !{ptr @kgdbts_run_tests._entry.48, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @kgdbts_run_tests._entry_ptr.50, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/misc/kgdbts.c", i32 1020, i32 2}
!135 = !{ptr @kgdbts_run_tests._entry.51, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @kgdbts_run_tests._entry_ptr.53, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/misc/kgdbts.c", i32 1022, i32 2}
!139 = !{ptr @kgdbts_run_tests._entry.54, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @kgdbts_run_tests._entry_ptr.56, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/misc/kgdbts.c", i32 1024, i32 2}
!143 = !{ptr @kgdbts_run_tests._entry.57, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @kgdbts_run_tests._entry_ptr.59, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/misc/kgdbts.c", i32 1028, i32 4}
!147 = !{ptr @kgdbts_run_tests._entry.60, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @kgdbts_run_tests._entry_ptr.62, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/misc/kgdbts.c", i32 1035, i32 3}
!151 = !{ptr @kgdbts_run_tests._entry.63, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @kgdbts_run_tests._entry_ptr.65, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.67, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/misc/kgdbts.c", i32 1045, i32 3}
!155 = !{ptr @kgdbts_run_tests._entry.66, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @kgdbts_run_tests._entry_ptr.68, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/misc/kgdbts.c", i32 1047, i32 3}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/misc/kgdbts.c", i32 1058, i32 3}
!161 = !{ptr @kgdbts_run_tests._entry.70, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @kgdbts_run_tests._entry_ptr.72, !160, !"_entry_ptr", i1 false, i1 false}
!163 = distinct !{null, !164, !"hwbreaks_ok", i1 false, i1 false}
!164 = !{!"../drivers/misc/kgdbts.c", i32 127, i32 12}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/misc/kgdbts.c", i32 868, i32 13}
!167 = !{ptr @.str.74, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/misc/kgdbts.c", i32 871, i32 13}
!169 = !{ptr @.str.75, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/misc/kgdbts.c", i32 882, i32 2}
!171 = !{ptr @.str.76, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @run_breakpoint_test._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @run_breakpoint_test._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @test_complete, !175, !"test_complete", i1 false, i1 false}
!175 = !{!"../drivers/misc/kgdbts.c", i32 123, i32 12}
!176 = !{ptr @.str.77, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/misc/kgdbts.c", i32 652, i32 4}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/misc/kgdbts.c", i32 652, i32 9}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/misc/kgdbts.c", i32 653, i32 4}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/misc/kgdbts.c", i32 654, i32 4}
!184 = !{ptr @hw_breakpoint_test, !185, !"hw_breakpoint_test", i1 false, i1 false}
!185 = !{!"../drivers/misc/kgdbts.c", i32 649, i32 27}
!186 = !{ptr @.str.81, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/misc/kgdbts.c", i32 315, i32 2}
!188 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @check_and_rewind_pc._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @check_and_rewind_pc._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.83, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/misc/kgdbts.c", i32 324, i32 21}
!193 = !{ptr @.str.84, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/misc/kgdbts.c", i32 324, i32 55}
!195 = !{ptr @.str.86, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/misc/kgdbts.c", i32 326, i32 3}
!197 = !{ptr @check_and_rewind_pc._entry.85, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @check_and_rewind_pc._entry_ptr.87, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.88, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/misc/kgdbts.c", i32 328, i32 25}
!201 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/misc/kgdbts.c", i32 329, i32 3}
!203 = !{ptr @check_and_rewind_pc._entry.89, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @check_and_rewind_pc._entry_ptr.91, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @kgdbts_gdb_regs, !206, !"kgdbts_gdb_regs", i1 false, i1 false}
!206 = !{!"../drivers/misc/kgdbts.c", i32 144, i32 22}
!207 = !{ptr @kgdbts_regs, !208, !"kgdbts_regs", i1 false, i1 false}
!208 = !{!"../drivers/misc/kgdbts.c", i32 147, i32 23}
!209 = distinct !{null, !210, !"arch_needs_sstep_emulation", i1 false, i1 false}
!210 = !{!"../drivers/misc/kgdbts.c", i32 134, i32 12}
!211 = !{ptr @sstep_addr, !212, !"sstep_addr", i1 false, i1 false}
!212 = !{!"../drivers/misc/kgdbts.c", i32 139, i32 22}
!213 = distinct !{null, !214, !"restart_from_top_after_write", i1 false, i1 false}
!214 = !{!"../drivers/misc/kgdbts.c", i32 140, i32 12}
!215 = !{ptr @cont_addr, !216, !"cont_addr", i1 false, i1 false}
!216 = !{!"../drivers/misc/kgdbts.c", i32 138, i32 22}
!217 = !{ptr @.str.92, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/misc/kgdbts.c", i32 262, i32 15}
!219 = !{ptr @.str.93, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/misc/kgdbts.c", i32 417, i32 21}
!221 = !{ptr @sw_breakpoint_test, !222, !"sw_breakpoint_test", i1 false, i1 false}
!222 = !{!"../drivers/misc/kgdbts.c", i32 558, i32 27}
!223 = !{ptr @.str.94, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/misc/kgdbts.c", i32 252, i32 37}
!225 = !{ptr @.str.95, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/misc/kgdbts.c", i32 893, i32 13}
!227 = !{ptr @.str.96, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/misc/kgdbts.c", i32 896, i32 13}
!229 = !{ptr @.str.97, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/misc/kgdbts.c", i32 903, i32 4}
!231 = !{ptr @.str.98, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @run_hw_break_test._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @run_hw_break_test._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @run_hw_break_test._entry.99, !235, !"_entry", i1 false, i1 false}
!235 = !{!"../drivers/misc/kgdbts.c", i32 914, i32 2}
!236 = !{ptr @run_hw_break_test._entry_ptr.100, !235, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.101, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/misc/kgdbts.c", i32 666, i32 4}
!239 = !{ptr @hw_write_break_test, !240, !"hw_write_break_test", i1 false, i1 false}
!240 = !{!"../drivers/misc/kgdbts.c", i32 664, i32 27}
!241 = !{ptr @.str.102, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/misc/kgdbts.c", i32 267, i32 15}
!243 = !{ptr @.str.103, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/misc/kgdbts.c", i32 272, i32 15}
!245 = !{ptr @hw_access_break_test, !246, !"hw_access_break_test", i1 false, i1 false}
!246 = !{!"../drivers/misc/kgdbts.c", i32 679, i32 27}
!247 = !{ptr @.str.104, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/misc/kgdbts.c", i32 277, i32 15}
!249 = !{ptr @.str.105, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/misc/kgdbts.c", i32 282, i32 15}
!251 = !{ptr @hw_break_val, !252, !"hw_break_val", i1 false, i1 false}
!252 = !{!"../drivers/misc/kgdbts.c", i32 128, i32 12}
!253 = distinct !{null, !254, !"hw_break_val2", i1 false, i1 false}
!254 = !{!"../drivers/misc/kgdbts.c", i32 129, i32 12}
!255 = !{ptr @.str.106, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/misc/kgdbts.c", i32 944, i32 12}
!257 = !{ptr @.str.107, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/misc/kgdbts.c", i32 576, i32 4}
!259 = !{ptr @.str.108, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/misc/kgdbts.c", i32 576, i32 12}
!261 = !{ptr @.str.109, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/misc/kgdbts.c", i32 577, i32 4}
!263 = !{ptr @.str.110, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/misc/kgdbts.c", i32 578, i32 4}
!265 = !{ptr @.str.111, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/misc/kgdbts.c", i32 579, i32 4}
!267 = !{ptr @.str.112, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/misc/kgdbts.c", i32 580, i32 4}
!269 = !{ptr @.str.113, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/misc/kgdbts.c", i32 581, i32 4}
!271 = !{ptr @.str.114, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/misc/kgdbts.c", i32 582, i32 4}
!273 = !{ptr @.str.115, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/misc/kgdbts.c", i32 583, i32 4}
!275 = !{ptr @bad_read_test, !276, !"bad_read_test", i1 false, i1 false}
!276 = !{!"../drivers/misc/kgdbts.c", i32 574, i32 27}
!277 = !{ptr @.str.116, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/misc/kgdbts.c", i32 971, i32 12}
!279 = !{ptr @.str.117, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/misc/kgdbts.c", i32 599, i32 4}
!281 = !{ptr @singlestep_break_test, !282, !"singlestep_break_test", i1 false, i1 false}
!282 = !{!"../drivers/misc/kgdbts.c", i32 592, i32 27}
!283 = !{ptr @cont_thread_id, !284, !"cont_thread_id", i1 false, i1 false}
!284 = !{!"../drivers/misc/kgdbts.c", i32 131, i32 22}
!285 = !{ptr @.str.118, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/misc/kgdbts.c", i32 462, i32 3}
!287 = !{ptr @.str.119, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @emul_sstep_get._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @emul_sstep_get._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.121, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/misc/kgdbts.c", i32 479, i32 3}
!292 = !{ptr @emul_sstep_get._entry.120, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @emul_sstep_get._entry_ptr.122, !291, !"_entry_ptr", i1 false, i1 false}
!294 = distinct !{null, !295, !"cont_instead_of_sstep", i1 false, i1 false}
!295 = !{!"../drivers/misc/kgdbts.c", i32 130, i32 12}
!296 = !{ptr @sstep_state, !297, !"sstep_state", i1 false, i1 false}
!297 = !{!"../drivers/misc/kgdbts.c", i32 141, i32 12}
!298 = !{ptr @.str.123, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/misc/kgdbts.c", i32 499, i32 3}
!300 = !{ptr @emul_sstep_put._entry, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @emul_sstep_put._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.124, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/misc/kgdbts.c", i32 505, i32 24}
!304 = !{ptr @.str.126, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/misc/kgdbts.c", i32 506, i32 4}
!306 = !{ptr @emul_sstep_put._entry.125, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @emul_sstep_put._entry_ptr.127, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.128, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/misc/kgdbts.c", i32 511, i32 24}
!310 = !{ptr @.str.130, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/misc/kgdbts.c", i32 512, i32 4}
!312 = !{ptr @emul_sstep_put._entry.129, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @emul_sstep_put._entry_ptr.131, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.133, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/misc/kgdbts.c", i32 521, i32 4}
!316 = !{ptr @emul_sstep_put._entry.132, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @emul_sstep_put._entry_ptr.134, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.136, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/misc/kgdbts.c", i32 528, i32 3}
!320 = !{ptr @emul_sstep_put._entry.135, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @emul_sstep_put._entry_ptr.137, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @sstep_thread_id, !323, !"sstep_thread_id", i1 false, i1 false}
!323 = !{!"../drivers/misc/kgdbts.c", i32 132, i32 22}
!324 = !{ptr @check_single_step.matched_id, !325, !"matched_id", i1 false, i1 false}
!325 = !{!"../drivers/misc/kgdbts.c", i32 345, i32 13}
!326 = !{ptr @.str.138, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/misc/kgdbts.c", i32 354, i32 2}
!328 = !{ptr @.str.139, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @check_single_step._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @check_single_step._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.141, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/misc/kgdbts.c", i32 363, i32 3}
!333 = !{ptr @check_single_step._entry.140, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @check_single_step._entry_ptr.142, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.144, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/misc/kgdbts.c", i32 380, i32 3}
!337 = !{ptr @check_single_step._entry.143, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @check_single_step._entry_ptr.145, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.146, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/misc/kgdbts.c", i32 924, i32 12}
!341 = !{ptr @.str.147, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/misc/kgdbts.c", i32 932, i32 3}
!343 = !{ptr @.str.148, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @run_nmi_sleep_test._entry, !342, !"_entry", i1 false, i1 false}
!345 = !{ptr @run_nmi_sleep_test._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @run_nmi_sleep_test._entry.149, !347, !"_entry", i1 false, i1 false}
!347 = !{!"../drivers/misc/kgdbts.c", i32 937, i32 2}
!348 = !{ptr @run_nmi_sleep_test._entry_ptr.150, !347, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @nmi_sleep_test, !350, !"nmi_sleep_test", i1 false, i1 false}
!350 = !{!"../drivers/misc/kgdbts.c", i32 694, i32 27}
!351 = !{ptr @repeat_test, !352, !"repeat_test", i1 false, i1 false}
!352 = !{!"../drivers/misc/kgdbts.c", i32 122, i32 12}
!353 = !{ptr @.str.151, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/misc/kgdbts.c", i32 953, i32 12}
!355 = !{ptr @.str.152, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/misc/kgdbts.c", i32 623, i32 4}
!357 = !{ptr @do_kernel_clone_test, !358, !"do_kernel_clone_test", i1 false, i1 false}
!358 = !{!"../drivers/misc/kgdbts.c", i32 613, i32 27}
!359 = !{ptr @.str.153, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/misc/kgdbts.c", i32 406, i32 4}
!361 = !{ptr @.str.154, !360, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @skip_back_repeat_test._entry, !360, !"_entry", i1 false, i1 false}
!363 = !{ptr @skip_back_repeat_test._entry_ptr, !360, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.155, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/misc/kgdbts.c", i32 433, i32 2}
!366 = !{ptr @.str.156, !365, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @put_cont_catch._entry, !365, !"_entry", i1 false, i1 false}
!368 = !{ptr @put_cont_catch._entry_ptr, !365, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.157, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/misc/kgdbts.c", i32 962, i32 12}
!371 = !{ptr @sys_open_test, !372, !"sys_open_test", i1 false, i1 false}
!372 = !{!"../drivers/misc/kgdbts.c", i32 631, i32 27}
!373 = !{ptr @__param_str_kgdbts, !5, !"__param_str_kgdbts", i1 false, i1 false}
!374 = !{ptr @__param_ops_kgdbts, !5, !"__param_ops_kgdbts", i1 false, i1 false}
!375 = !{ptr @.str.158, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/misc/kgdbts.c", i32 1140, i32 3}
!377 = !{ptr @param_set_kgdbts_var._entry, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @param_set_kgdbts_var._entry_ptr, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.160, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/misc/kgdbts.c", i32 1151, i32 3}
!381 = !{ptr @param_set_kgdbts_var._entry.159, !380, !"_entry", i1 false, i1 false}
!382 = !{ptr @param_set_kgdbts_var._entry_ptr.161, !380, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @kps, !384, !"kps", i1 false, i1 false}
!384 = !{!"../drivers/misc/kgdbts.c", i32 157, i32 29}
!385 = !{i32 1, !"wchar_size", i32 2}
!386 = !{i32 1, !"min_enum_size", i32 4}
!387 = !{i32 8, !"branch-target-enforcement", i32 0}
!388 = !{i32 8, !"sign-return-address", i32 0}
!389 = !{i32 8, !"sign-return-address-all", i32 0}
!390 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!391 = !{i32 7, !"uwtable", i32 1}
!392 = !{i32 7, !"frame-pointer", i32 2}
!393 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!394 = !{i64 631607, i64 631668}
!395 = !{i64 634339}
!396 = !{!"branch_weights", i32 1, i32 2000}
!397 = !{i64 634624}

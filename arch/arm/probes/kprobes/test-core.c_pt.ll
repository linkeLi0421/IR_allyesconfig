; ModuleID = '/llk/IR_all_yes/arch/arm/probes/kprobes/test-core.c_pt.bc'
source_filename = "../arch/arm/probes/kprobes/test-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.test_probe = type { %struct.kprobe, i8, i32 }
%struct.kprobe = type { %struct.hlist_node, %struct.list_head, i32, ptr, ptr, i32, ptr, ptr, i32, %struct.arch_probes_insn, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.arch_probes_insn = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.pt_regs = type { [18 x i32] }
%struct.coverage_table = type { ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%union.decode_item = type { i32 }
%struct.kretprobe = type { %struct.kprobe, ptr, ptr, i32, i32, i32, %struct.freelist_head, ptr }
%struct.freelist_head = type { ptr }
%struct.benchmarks = type { ptr, i32, ptr }
%struct.test_arg = type { i8, [7 x i8] }
%struct.test_arg_end = type { i8, i8, i16, i16, i16 }
%struct.coverage_entry = type { ptr, i32, i32, i8 }
%struct.decode_header = type { %union.decode_item, %union.decode_item, %union.decode_item }
%struct.table_test_args = type { ptr, i32, i32 }
%struct.test_arg_regptr = type { i8, i8, [2 x i8], i32 }
%struct.test_arg_mem = type { i8, i8, [2 x i8], i32 }
%struct.decode_table = type { %struct.decode_header, %union.decode_item }

@coverage_register_lookup = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\07\01\02\04\03\07\05\0D\01\03\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@current_title = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@current_args = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@current_stack = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@test_try_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@test_case_is_thumb = internal global { i8, [31 x i8] } zeroinitializer, align 32
@current_code_start = internal global { i32, [28 x i8] } zeroinitializer, align 32
@current_branch_target = internal global { i32, [28 x i8] } zeroinitializer, align 32
@test_before_probe = internal global { %struct.test_probe, [40 x i8] } { %struct.test_probe { %struct.kprobe { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr null, ptr null, i32 0, ptr @test_before_pre_handler, ptr @test_before_post_handler, i32 0, %struct.arch_probes_insn zeroinitializer, i32 0 }, i8 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@test_case_probe = internal global { %struct.test_probe, [40 x i8] } { %struct.test_probe { %struct.kprobe { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr null, ptr null, i32 0, ptr @test_case_pre_handler, ptr null, i32 0, %struct.arch_probes_insn zeroinitializer, i32 0 }, i8 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@current_instruction = internal global { i32, [28 x i8] } zeroinitializer, align 32
@test_after_probe = internal global { %struct.test_probe, [40 x i8] } { %struct.test_probe { %struct.kprobe { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr null, ptr null, i32 0, ptr @test_after_pre_handler, ptr null, i32 0, %struct.arch_probes_insn zeroinitializer, i32 0 }, i8 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@kprobe_test_flags = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"expected 16-bit instruction\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"expected 32-bit instruction\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"registered probe for unsupported instruction\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"couldn't register probe for supported instruction\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"register test_before_probe failed\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"register test_after_probe failed\00", [63 x i8] zeroinitializer }, align 32
@test_after2_probe = internal global { %struct.test_probe, [40 x i8] } { %struct.test_probe { %struct.kprobe { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr null, ptr null, i32 0, ptr @test_after_pre_handler, ptr null, i32 0, %struct.arch_probes_insn zeroinitializer, i32 0 }, i8 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"register test_after2_probe failed\00", [62 x i8] zeroinitializer }, align 32
@test_case_run_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@test_instance = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"test_before_handler not run\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"test_after_handler not run\00", [37 x i8] zeroinitializer }, align 32
@result_regs = internal global { %struct.pt_regs, [56 x i8] } zeroinitializer, align 32
@expected_regs = internal global { %struct.pt_regs, [56 x i8] } zeroinitializer, align 32
@expected_memory = internal global { [64 x i32], [64 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"register test_case_probe failed\00", [32 x i8] zeroinitializer }, align 32
@probe_should_run = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"test_case_handler not run\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"test_case_handler ran\00", [42 x i8] zeroinitializer }, align 32
@is_last_scenario = internal global { i1, [31 x i8] } zeroinitializer, align 32
@test_fail_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@test_pass_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_test_kprobes__243_1671_run_all_tests7 = internal global ptr @run_all_tests, section ".initcall7.init", align 4
@coverage_fail = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@coverage = dso_local global { %struct.coverage_table, [20 x i8] } zeroinitializer, align 32
@kprobe_test_cc_position = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@initial_regs = internal global { %struct.pt_regs, [56 x i8] } zeroinitializer, align 32
@memory_needs_checking = internal global { i1, [31 x i8] } zeroinitializer, align 32
@test_case_failed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 1300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\013FAIL: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_case_failed\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"arch/arm/probes/kprobes/test-core.c\00", [60 x i8] zeroinitializer }, align 32
@test_case_failed._entry_ptr = internal global ptr @test_case_failed._entry, section ".printk_index", align 4
@test_case_failed._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.14, i32 1301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013FAIL: Test %s\0A\00", [47 x i8] zeroinitializer }, align 32
@test_case_failed._entry_ptr.17 = internal global ptr @test_case_failed._entry.15, section ".printk_index", align 4
@test_case_failed._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.14, i32 1302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013FAIL: Scenario %d\0A\00", [43 x i8] zeroinitializer }, align 32
@test_case_failed._entry_ptr.20 = internal global ptr @test_case_failed._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"registers differ\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"test memory differs\00", [44 x i8] zeroinitializer }, align 32
@check_test_results._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.14, i32 1453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013initial_regs:\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"check_test_results\00", [45 x i8] zeroinitializer }, align 32
@check_test_results._entry_ptr = internal global ptr @check_test_results._entry, section ".printk_index", align 4
@check_test_results._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.14, i32 1455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013expected_regs:\0A\00", [46 x i8] zeroinitializer }, align 32
@check_test_results._entry_ptr.27 = internal global ptr @check_test_results._entry.25, section ".printk_index", align 4
@check_test_results._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.14, i32 1457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\013result_regs:\0A\00", [16 x i8] zeroinitializer }, align 32
@check_test_results._entry_ptr.30 = internal global ptr @check_test_results._entry.28, section ".printk_index", align 4
@check_test_results._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.14, i32 1461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013expected_memory:\0A\00", [44 x i8] zeroinitializer }, align 32
@check_test_results._entry_ptr.33 = internal global ptr @check_test_results._entry.31, section ".printk_index", align 4
@check_test_results._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.24, ptr @.str.14, i32 1463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013result_memory:\0A\00", [46 x i8] zeroinitializer }, align 32
@check_test_results._entry_ptr.36 = internal global ptr @check_test_results._entry.34, section ".printk_index", align 4
@print_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.14, i32 1269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013r0  %08lx | r1  %08lx | r2  %08lx | r3  %08lx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"print_registers\00", [16 x i8] zeroinitializer }, align 32
@print_registers._entry_ptr = internal global ptr @print_registers._entry, section ".printk_index", align 4
@print_registers._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.14, i32 1271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013r4  %08lx | r5  %08lx | r6  %08lx | r7  %08lx\0A\00", [47 x i8] zeroinitializer }, align 32
@print_registers._entry_ptr.41 = internal global ptr @print_registers._entry.39, section ".printk_index", align 4
@print_registers._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.14, i32 1273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013r8  %08lx | r9  %08lx | r10 %08lx | r11 %08lx\0A\00", [47 x i8] zeroinitializer }, align 32
@print_registers._entry_ptr.44 = internal global ptr @print_registers._entry.42, section ".printk_index", align 4
@print_registers._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.14, i32 1275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013r12 %08lx | sp  %08lx | lr  %08lx | pc  %08lx\0A\00", [47 x i8] zeroinitializer }, align 32
@print_registers._entry_ptr.47 = internal global ptr @print_registers._entry.45, section ".printk_index", align 4
@print_registers._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.14, i32 1276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\013cpsr %08lx\0A\00", [18 x i8] zeroinitializer }, align 32
@print_registers._entry_ptr.50 = internal global ptr @print_registers._entry.48, section ".printk_index", align 4
@print_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.14, i32 1284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%08x %08x %08x %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"print_memory\00", [19 x i8] zeroinitializer }, align 32
@print_memory._entry_ptr = internal global ptr @print_memory._entry, section ".printk_index", align 4
@run_all_tests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.14, i32 1576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016Beginning kprobe tests...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"run_all_tests\00", [18 x i8] zeroinitializer }, align 32
@run_all_tests._entry_ptr = internal global ptr @run_all_tests._entry, section ".printk_index", align 4
@run_all_tests._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.14, i32 1580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016Probe ARM code\0A\00", [46 x i8] zeroinitializer }, align 32
@run_all_tests._entry_ptr.57 = internal global ptr @run_all_tests._entry.55, section ".printk_index", align 4
@run_all_tests._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.14, i32 1585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016ARM instruction simulation\0A\00", [34 x i8] zeroinitializer }, align 32
@run_all_tests._entry_ptr.60 = internal global ptr @run_all_tests._entry.58, section ".printk_index", align 4
@probes_decode_arm_table = external dso_local constant [0 x %union.decode_item], align 4
@run_all_tests._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.14, i32 1621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016Total instruction simulation tests=%d, pass=%d fail=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@run_all_tests._entry_ptr.63 = internal global ptr @run_all_tests._entry.61, section ".printk_index", align 4
@run_all_tests._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.54, ptr @.str.14, i32 1628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016Benchmarks\0A\00", [18 x i8] zeroinitializer }, align 32
@run_all_tests._entry_ptr.66 = internal global ptr @run_all_tests._entry.64, section ".printk_index", align 4
@run_all_tests._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.54, ptr @.str.14, i32 1647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016Finished kprobe tests OK\0A\00", [36 x i8] zeroinitializer }, align 32
@run_all_tests._entry_ptr.69 = internal global ptr @run_all_tests._entry.67, section ".printk_index", align 4
@run_all_tests._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.54, ptr @.str.14, i32 1649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013kprobe tests failed\0A\00", [41 x i8] zeroinitializer }, align 32
@run_all_tests._entry_ptr.72 = internal global ptr @run_all_tests._entry.70, section ".printk_index", align 4
@run_api_tests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.14, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016    kprobe\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"run_api_tests\00", [18 x i8] zeroinitializer }, align 32
@run_api_tests._entry_ptr = internal global ptr @run_api_tests._entry, section ".printk_index", align 4
@run_api_tests._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.14, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016    kretprobe\0A\00", [47 x i8] zeroinitializer }, align 32
@run_api_tests._entry_ptr.77 = internal global ptr @run_api_tests._entry.75, section ".printk_index", align 4
@the_kprobe = internal global { %struct.kprobe, [48 x i8] } { %struct.kprobe { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr null, ptr null, i32 0, ptr @pre_handler, ptr @post_handler, i32 0, %struct.arch_probes_insn zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@test_kprobe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.14, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013FAIL: register_kprobe failed with %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"test_kprobe\00", [20 x i8] zeroinitializer }, align 32
@test_kprobe._entry_ptr = internal global ptr @test_kprobe._entry, section ".printk_index", align 4
@pre_handler_called = internal global { i32, [28 x i8] } zeroinitializer, align 32
@test_func_instance = internal global { i32, [28 x i8] } zeroinitializer, align 32
@test_kprobe._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.14, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013FAIL: kprobe pre_handler not called\0A\00", [57 x i8] zeroinitializer }, align 32
@test_kprobe._entry_ptr.82 = internal global ptr @test_kprobe._entry.80, section ".printk_index", align 4
@post_handler_called = internal global { i32, [28 x i8] } zeroinitializer, align 32
@test_kprobe._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.14, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013FAIL: kprobe post_handler not called\0A\00", [56 x i8] zeroinitializer }, align 32
@test_kprobe._entry_ptr.85 = internal global ptr @test_kprobe._entry.83, section ".printk_index", align 4
@test_kprobe._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.79, ptr @.str.14, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013FAIL: probe called after unregistering\0A\00", [54 x i8] zeroinitializer }, align 32
@test_kprobe._entry_ptr.88 = internal global ptr @test_kprobe._entry.86, section ".printk_index", align 4
@test_regs_ok = internal global { i1, [31 x i8] } zeroinitializer, align 32
@call_test_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.14, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013FAIL: call_test_func: func returned %lx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"call_test_func\00", [17 x i8] zeroinitializer }, align 32
@call_test_func._entry_ptr = internal global ptr @call_test_func._entry, section ".printk_index", align 4
@call_test_func._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.14, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013FAIL: test regs not OK\0A\00", [38 x i8] zeroinitializer }, align 32
@call_test_func._entry_ptr.93 = internal global ptr @call_test_func._entry.91, section ".printk_index", align 4
@the_kretprobe = internal global { %struct.kretprobe, [52 x i8] } { %struct.kretprobe { %struct.kprobe zeroinitializer, ptr @kretprobe_handler, ptr null, i32 0, i32 0, i32 0, %struct.freelist_head zeroinitializer, ptr null }, [52 x i8] zeroinitializer }, align 32
@test_kretprobe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.14, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013FAIL: register_kretprobe failed with %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"test_kretprobe\00", [17 x i8] zeroinitializer }, align 32
@test_kretprobe._entry_ptr = internal global ptr @test_kretprobe._entry, section ".printk_index", align 4
@kretprobe_handler_called = internal global { i32, [28 x i8] } zeroinitializer, align 32
@test_kretprobe._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.14, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013FAIL: kretprobe handler not called\0A\00", [58 x i8] zeroinitializer }, align 32
@test_kretprobe._entry_ptr.98 = internal global ptr @test_kretprobe._entry.96, section ".printk_index", align 4
@test_kretprobe._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.14, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013FAIL: kretprobe called after unregistering\0A\00", [50 x i8] zeroinitializer }, align 32
@test_kretprobe._entry_ptr.101 = internal global ptr @test_kretprobe._entry.99, section ".printk_index", align 4
@run_test_cases._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.14, i32 1555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016    Check decoding tables\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"run_test_cases\00", [17 x i8] zeroinitializer }, align 32
@run_test_cases._entry_ptr = internal global ptr @run_test_cases._entry, section ".printk_index", align 4
@run_test_cases._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.14, i32 1560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016    Run test cases\0A\00", [42 x i8] zeroinitializer }, align 32
@run_test_cases._entry_ptr.106 = internal global ptr @run_test_cases._entry.104, section ".printk_index", align 4
@decode_struct_sizes = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 16, i32 16, i32 16, i32 16, i32 12, i32 12], [36 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Match value has bits not in mask\00", [63 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Mask has bits not in parent mask\00", [63 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Value is inconsistent with parent\00", [62 x i8] zeroinitializer }, align 32
@table_test_fail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.14, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013FAIL: kprobes test failure \22%s\22 (mask %08x, value %08x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"table_test_fail\00", [16 x i8] zeroinitializer }, align 32
@table_test_fail._entry_ptr = internal global ptr @table_test_fail._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@coverage_start_fn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.14, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013FAIL: Out of space for test coverage data\00", [52 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"coverage_start_fn\00", [46 x i8] zeroinitializer }, align 32
@coverage_start_fn._entry_ptr = internal global ptr @coverage_start_fn._entry, section ".printk_index", align 4
@coverage_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.14, i32 900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013FAIL: Register test coverage missing for %08x %08x (%05x)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"coverage_end\00", [19 x i8] zeroinitializer }, align 32
@coverage_end._entry_ptr = internal global ptr @coverage_end._entry, section ".printk_index", align 4
@coverage_end._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.14, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013FAIL: Test coverage entry missing for %08x %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@coverage_end._entry_ptr.118 = internal global ptr @coverage_end._entry.116, section ".printk_index", align 4
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nop\00", [28 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stmdb\09sp!, {r3-r11,lr}\00", [41 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ldmia\09sp!, {r3-r11,pc}\00", [41 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stmdb\09sp!, {r0-r8,lr}\00", [42 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ldmia\09sp!, {r0-r8,pc}\00", [42 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stmdb\09sp!, {r4,lr}\00", [45 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ldmia\09sp!, {r4,pc}\00", [45 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stmdb\09sp!, {r0,lr}\00", [45 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ldmia\09sp!, {r0,pc}\00", [45 x i8] zeroinitializer }, align 32
@__const.run_benchmarks.list = private unnamed_addr constant [10 x %struct.benchmarks] [%struct.benchmarks { ptr @benchmark_nop, i32 0, ptr @.str.119 }, %struct.benchmarks { ptr @benchmark_pushpop1, i32 0, ptr @.str.120 }, %struct.benchmarks { ptr @benchmark_pushpop1, i32 4, ptr @.str.121 }, %struct.benchmarks { ptr @benchmark_pushpop2, i32 0, ptr @.str.122 }, %struct.benchmarks { ptr @benchmark_pushpop2, i32 4, ptr @.str.123 }, %struct.benchmarks { ptr @benchmark_pushpop3, i32 0, ptr @.str.124 }, %struct.benchmarks { ptr @benchmark_pushpop3, i32 4, ptr @.str.125 }, %struct.benchmarks { ptr @benchmark_pushpop4, i32 0, ptr @.str.126 }, %struct.benchmarks { ptr @benchmark_pushpop4, i32 4, ptr @.str.127 }, %struct.benchmarks zeroinitializer], align 4
@run_benchmarks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.14, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016    %dns for kprobe %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"run_benchmarks\00", [17 x i8] zeroinitializer }, align 32
@run_benchmarks._entry_ptr = internal global ptr @run_benchmarks._entry, section ".printk_index", align 4
@run_benchmarks._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.14, i32 576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\016\0A\00", [28 x i8] zeroinitializer }, align 32
@run_benchmarks._entry_ptr.132 = internal global ptr @run_benchmarks._entry.130, section ".printk_index", align 4
@kprobe_benchmark._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.133, ptr @.str.14, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kprobe_benchmark\00", [47 x i8] zeroinitializer }, align 32
@kprobe_benchmark._entry_ptr = internal global ptr @kprobe_benchmark._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.134 = internal global [10 x i64] [i64 8, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.135 = internal global [10 x i64] [i64 8, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.136 = internal global [10 x i64] [i64 8, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.137 = internal global [10 x i64] [i64 8, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.138 = internal global [6 x i64] [i64 4, i64 32, i64 16, i64 17, i64 18, i64 19]
@__sancov_gen_cov_switch_values.139 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 4]
@___asan_gen_.141 = private unnamed_addr constant [25 x i8] c"coverage_register_lookup\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 710, i32 19 }
@___asan_gen_.144 = private unnamed_addr constant [14 x i8] c"current_title\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 994, i32 20 }
@___asan_gen_.147 = private unnamed_addr constant [13 x i8] c"current_args\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 995, i32 25 }
@___asan_gen_.150 = private unnamed_addr constant [14 x i8] c"current_stack\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 996, i32 13 }
@___asan_gen_.153 = private unnamed_addr constant [15 x i8] c"test_try_count\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 984, i32 12 }
@___asan_gen_.156 = private unnamed_addr constant [19 x i8] c"test_case_is_thumb\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1007, i32 13 }
@___asan_gen_.159 = private unnamed_addr constant [19 x i8] c"current_code_start\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 999, i32 18 }
@___asan_gen_.162 = private unnamed_addr constant [22 x i8] c"current_branch_target\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 997, i32 18 }
@___asan_gen_.165 = private unnamed_addr constant [18 x i8] c"test_before_probe\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1241, i32 26 }
@___asan_gen_.168 = private unnamed_addr constant [16 x i8] c"test_case_probe\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1246, i32 26 }
@___asan_gen_.171 = private unnamed_addr constant [20 x i8] c"current_instruction\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1000, i32 24 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"test_after_probe\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1250, i32 26 }
@___asan_gen_.177 = private unnamed_addr constant [18 x i8] c"kprobe_test_flags\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 981, i32 5 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1375, i32 22 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1381, i32 22 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1391, i32 20 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1398, i32 20 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1403, i32 20 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1407, i32 20 }
@___asan_gen_.198 = private unnamed_addr constant [18 x i8] c"test_after2_probe\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1254, i32 26 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1414, i32 21 }
@___asan_gen_.204 = private unnamed_addr constant [20 x i8] c"test_case_run_count\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1006, i32 12 }
@___asan_gen_.207 = private unnamed_addr constant [14 x i8] c"test_instance\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1008, i32 12 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1482, i32 20 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1488, i32 20 }
@___asan_gen_.216 = private unnamed_addr constant [12 x i8] c"result_regs\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 990, i32 23 }
@___asan_gen_.219 = private unnamed_addr constant [14 x i8] c"expected_regs\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 989, i32 23 }
@___asan_gen_.222 = private unnamed_addr constant [16 x i8] c"expected_memory\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 992, i32 12 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1505, i32 21 }
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"probe_should_run\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1018, i32 12 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1512, i32 22 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1517, i32 22 }
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"is_last_scenario\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [16 x i8] c"test_fail_count\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 986, i32 12 }
@___asan_gen_.241 = private unnamed_addr constant [16 x i8] c"test_pass_count\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 985, i32 12 }
@___asan_gen_.244 = private unnamed_addr constant [14 x i8] c"coverage_fail\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 686, i32 6 }
@___asan_gen_.247 = private unnamed_addr constant [9 x i8] c"coverage\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 703, i32 23 }
@___asan_gen_.250 = private unnamed_addr constant [24 x i8] c"kprobe_test_cc_position\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 982, i32 5 }
@___asan_gen_.253 = private unnamed_addr constant [13 x i8] c"initial_regs\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 988, i32 23 }
@___asan_gen_.256 = private unnamed_addr constant [22 x i8] c"memory_needs_checking\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1300, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1301, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1302, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1437, i32 20 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1445, i32 21 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1453, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1455, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1457, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1461, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1463, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1268, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1270, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1272, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1274, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1276, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1283, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1576, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1580, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1585, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1620, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1628, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1647, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1649, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 418, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 423, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant [11 x i8] c"the_kprobe\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 326, i32 22 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 339, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant [19 x i8] c"pre_handler_called\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 225, i32 12 }
@___asan_gen_.437 = private unnamed_addr constant [19 x i8] c"test_func_instance\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 224, i32 12 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 351, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant [20 x i8] c"post_handler_called\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 226, i32 12 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 355, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 362, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant [13 x i8] c"test_regs_ok\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 298, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 303, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant [14 x i8] c"the_kretprobe\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 378, i32 25 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 389, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant [25 x i8] c"kretprobe_handler_called\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 227, i32 12 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 401, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 407, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1555, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1560, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant [20 x i8] c"decode_struct_sizes\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 587, i32 18 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 639, i32 29 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 642, i32 29 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 645, i32 29 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 622, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 741, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 899, i32 4 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 904, i32 4 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 547, i32 23 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 553, i32 28 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 554, i32 28 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 555, i32 28 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 556, i32 28 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 557, i32 28 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 558, i32 28 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 559, i32 28 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 560, i32 28 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 573, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 576, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.609 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.610 = private constant [39 x i8] c"../arch/arm/probes/kprobes/test-core.c\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 527, i32 3 }
@llvm.compiler.used = appending global [204 x ptr] [ptr @__arm_kprobes_test_func, ptr @__initcall__kmod_test_kprobes__243_1671_run_all_tests7, ptr @call_test_func._entry, ptr @call_test_func._entry.91, ptr @call_test_func._entry_ptr, ptr @call_test_func._entry_ptr.93, ptr @check_test_results._entry, ptr @check_test_results._entry.25, ptr @check_test_results._entry.28, ptr @check_test_results._entry.31, ptr @check_test_results._entry.34, ptr @check_test_results._entry_ptr, ptr @check_test_results._entry_ptr.27, ptr @check_test_results._entry_ptr.30, ptr @check_test_results._entry_ptr.33, ptr @check_test_results._entry_ptr.36, ptr @coverage_end._entry, ptr @coverage_end._entry.116, ptr @coverage_end._entry_ptr, ptr @coverage_end._entry_ptr.118, ptr @coverage_start_fn._entry, ptr @coverage_start_fn._entry_ptr, ptr @kprobe_benchmark._entry, ptr @kprobe_benchmark._entry_ptr, ptr @kprobes_test_case_end, ptr @kprobes_test_case_start, ptr @print_memory._entry, ptr @print_memory._entry_ptr, ptr @print_registers._entry, ptr @print_registers._entry.39, ptr @print_registers._entry.42, ptr @print_registers._entry.45, ptr @print_registers._entry.48, ptr @print_registers._entry_ptr, ptr @print_registers._entry_ptr.41, ptr @print_registers._entry_ptr.44, ptr @print_registers._entry_ptr.47, ptr @print_registers._entry_ptr.50, ptr @run_all_tests._entry, ptr @run_all_tests._entry.55, ptr @run_all_tests._entry.58, ptr @run_all_tests._entry.61, ptr @run_all_tests._entry.64, ptr @run_all_tests._entry.67, ptr @run_all_tests._entry.70, ptr @run_all_tests._entry_ptr, ptr @run_all_tests._entry_ptr.57, ptr @run_all_tests._entry_ptr.60, ptr @run_all_tests._entry_ptr.63, ptr @run_all_tests._entry_ptr.66, ptr @run_all_tests._entry_ptr.69, ptr @run_all_tests._entry_ptr.72, ptr @run_api_tests._entry, ptr @run_api_tests._entry.75, ptr @run_api_tests._entry_ptr, ptr @run_api_tests._entry_ptr.77, ptr @run_benchmarks._entry, ptr @run_benchmarks._entry.130, ptr @run_benchmarks._entry_ptr, ptr @run_benchmarks._entry_ptr.132, ptr @run_test_cases._entry, ptr @run_test_cases._entry.104, ptr @run_test_cases._entry_ptr, ptr @run_test_cases._entry_ptr.106, ptr @table_test_fail._entry, ptr @table_test_fail._entry_ptr, ptr @test_case_failed._entry, ptr @test_case_failed._entry.15, ptr @test_case_failed._entry.18, ptr @test_case_failed._entry_ptr, ptr @test_case_failed._entry_ptr.17, ptr @test_case_failed._entry_ptr.20, ptr @test_kprobe._entry, ptr @test_kprobe._entry.80, ptr @test_kprobe._entry.83, ptr @test_kprobe._entry.86, ptr @test_kprobe._entry_ptr, ptr @test_kprobe._entry_ptr.82, ptr @test_kprobe._entry_ptr.85, ptr @test_kprobe._entry_ptr.88, ptr @test_kretprobe._entry, ptr @test_kretprobe._entry.96, ptr @test_kretprobe._entry.99, ptr @test_kretprobe._entry_ptr, ptr @test_kretprobe._entry_ptr.101, ptr @test_kretprobe._entry_ptr.98, ptr @coverage_register_lookup, ptr @current_title, ptr @current_args, ptr @current_stack, ptr @test_try_count, ptr @test_case_is_thumb, ptr @current_code_start, ptr @current_branch_target, ptr @test_before_probe, ptr @test_case_probe, ptr @current_instruction, ptr @test_after_probe, ptr @kprobe_test_flags, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @test_after2_probe, ptr @.str.6, ptr @test_case_run_count, ptr @test_instance, ptr @.str.7, ptr @.str.8, ptr @result_regs, ptr @expected_regs, ptr @expected_memory, ptr @.str.9, ptr @probe_should_run, ptr @.str.10, ptr @.str.11, ptr @is_last_scenario, ptr @test_fail_count, ptr @test_pass_count, ptr @coverage_fail, ptr @coverage, ptr @kprobe_test_cc_position, ptr @initial_regs, ptr @memory_needs_checking, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @the_kprobe, ptr @.str.78, ptr @.str.79, ptr @pre_handler_called, ptr @test_func_instance, ptr @.str.81, ptr @post_handler_called, ptr @.str.84, ptr @.str.87, ptr @test_regs_ok, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @the_kretprobe, ptr @.str.94, ptr @.str.95, ptr @kretprobe_handler_called, ptr @.str.97, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @decode_struct_sizes, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.133], section "llvm.metadata"
@0 = internal global [159 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverage_register_lookup to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @current_title to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @current_args to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @current_stack to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_try_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_is_thumb to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @current_code_start to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @current_branch_target to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_before_probe to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_probe to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @current_instruction to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_after_probe to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobe_test_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_after2_probe to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_run_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_instance to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @result_regs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_regs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_memory to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_should_run to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_last_scenario to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_fail_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_pass_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverage_fail to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverage to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobe_test_cc_position to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initial_regs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memory_needs_checking to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_failed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_failed._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_failed._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_test_results._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_test_results._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_test_results._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_test_results._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_test_results._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_registers._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_registers._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_registers._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_registers._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_all_tests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_all_tests._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_all_tests._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_all_tests._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_all_tests._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_all_tests._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_all_tests._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_api_tests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_api_tests._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @the_kprobe to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kprobe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pre_handler_called to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_func_instance to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kprobe._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @post_handler_called to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kprobe._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kprobe._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_regs_ok to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @call_test_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @call_test_func._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @the_kretprobe to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kretprobe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kretprobe_handler_called to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kretprobe._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kretprobe._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test_cases._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test_cases._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_struct_sizes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_test_fail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverage_start_fn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverage_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverage_end._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_benchmarks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_benchmarks._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobe_benchmark._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: naked noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__arm_kprobes_test_func() #0 align 64 {
entry:
  tail call void asm sideeffect ".arm\09\09\09\09\09\0A\09.type arm_func, %function\09\09\0A\09arm_func:\09\09\09\09\0A\09adds\09r0, r0, r1\09\09\09\0A\09mov\09pc, lr\09\09\09\09\0A\09.code 32", "~{r0},~{r1},~{cc}"() #13, !srcloc !316
  unreachable
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coverage_start_registers(ptr nocapture noundef readonly %h) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %h, align 4
  %shr = lshr i32 %1, 4
  %and = and i32 %shr, 15
  %arrayidx = getelementptr [16 x i8], ptr @coverage_register_lookup, i32 0, i32 %and
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shr.1 = lshr i32 %1, 8
  %and.1 = and i32 %shr.1, 15
  %arrayidx.1 = getelementptr [16 x i8], ptr @coverage_register_lookup, i32 0, i32 %and.1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %5 to i32
  %shl.1 = shl nuw nsw i32 %conv.1, 4
  %or.1 = or i32 %shl.1, %conv
  %shr.2 = lshr i32 %1, 12
  %and.2 = and i32 %shr.2, 15
  %arrayidx.2 = getelementptr [16 x i8], ptr @coverage_register_lookup, i32 0, i32 %and.2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %7 to i32
  %shl.2 = shl nuw nsw i32 %conv.2, 8
  %or.2 = or i32 %shl.2, %or.1
  %shr.3 = lshr i32 %1, 16
  %and.3 = and i32 %shr.3, 15
  %arrayidx.3 = getelementptr [16 x i8], ptr @coverage_register_lookup, i32 0, i32 %and.3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %9 to i32
  %shl.3 = shl nuw nsw i32 %conv.3, 12
  %or.3 = or i32 %shl.3, %or.2
  %shr.4 = lshr i32 %1, 20
  %and.4 = and i32 %shr.4, 15
  %arrayidx.4 = getelementptr [16 x i8], ptr @coverage_register_lookup, i32 0, i32 %and.4
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %11 to i32
  %shl.4 = shl nuw nsw i32 %conv.4, 16
  %or.4 = or i32 %shl.4, %or.3
  ret i32 %or.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: naked noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__kprobes_test_case_start() #0 align 64 {
entry:
  tail call void asm sideeffect "mov\09r2, sp\09\09\09\09\09\0A\09bic\09r3, r2, #7\09\09\09\09\0A\09mov\09sp, r3\09\09\09\09\09\0A\09stmdb\09sp!, {r2-r11}\09\09\09\09\0A\09sub\09sp, sp, #256\0A\09bic\09r0, lr, #1  @ r0 = inline data\09\09\0A\09mov\09r1, sp\09\09\09\09\09\0A\09bl\09kprobes_test_case_start\09\09\09\0A\09mov\09pc, r0\09\09\09\09\09\0A\09", ""() #13, !srcloc !317
  unreachable
}

; Function Attrs: naked noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__kprobes_test_case_end_32() #0 align 64 {
entry:
  tail call void asm sideeffect "mov\09r4, lr\09\09\09\09\09\0A\09bl\09kprobes_test_case_end\09\09\09\0A\09cmp\09r0, #0\09\09\09\09\09\0A\09movne\09pc, r0\09\09\09\09\09\0A\09mov\09r0, r4\09\09\09\09\09\0A\09add\09sp, sp, #256\0A\09ldmia\09sp!, {r2-r11}\09\09\09\09\0A\09mov\09sp, r2\09\09\09\09\09\0A\09mov\09pc, r0\09\09\09\09\09\0A\09", ""() #13, !srcloc !318
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kprobes_test_case_start(ptr noundef %title, ptr noundef %stack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %incdec.ptr = getelementptr ptr, ptr %title, i32 1
  %0 = ptrtoint ptr %title to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %title, align 4
  store ptr %1, ptr @current_title, align 4
  store ptr %incdec.ptr, ptr @current_args, align 4
  store ptr %stack, ptr @current_stack, align 4
  %2 = load i32, ptr @test_try_count, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr @test_try_count, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %args.0 = phi ptr [ %incdec.ptr, %entry ], [ %incdec.ptr2, %while.cond.while.cond_crit_edge ]
  %3 = ptrtoint ptr %args.0 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %args.0, align 1
  %cmp.not = icmp eq i8 %4, 0
  %incdec.ptr2 = getelementptr %struct.test_arg, ptr %args.0, i32 1
  br i1 %cmp.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = ptrtoint ptr %incdec.ptr2 to i32
  %flags = getelementptr inbounds %struct.test_arg_end, ptr %args.0, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 1
  %8 = and i8 %7, 16
  %.lobit = lshr exact i8 %8, 4
  store i8 %.lobit, ptr @test_case_is_thumb, align 1
  %9 = zext i8 %.lobit to i32
  %10 = or i32 %9, %5
  store i32 %10, ptr @current_code_start, align 4
  store i32 0, ptr @current_branch_target, align 4
  %branch_offset = getelementptr inbounds %struct.test_arg_end, ptr %args.0, i32 0, i32 3
  %11 = ptrtoint ptr %branch_offset to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %branch_offset, align 2
  %end_offset = getelementptr inbounds %struct.test_arg_end, ptr %args.0, i32 0, i32 4
  %13 = ptrtoint ptr %end_offset to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %end_offset, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp7.not = icmp eq i16 %12, %14
  br i1 %cmp7.not, label %while.end.if.end12_crit_edge, label %if.then9

while.end.if.end12_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then9:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv5 = zext i16 %12 to i32
  %add = add i32 %10, %conv5
  store i32 %add, ptr @current_branch_target, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %while.end.if.end12_crit_edge
  %code_offset = getelementptr inbounds %struct.test_arg_end, ptr %args.0, i32 0, i32 2
  %15 = ptrtoint ptr %code_offset to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %code_offset, align 2
  %conv13 = zext i16 %16 to i32
  %add14 = add i32 %10, %conv13
  %17 = inttoptr i32 %add14 to ptr
  store ptr %17, ptr getelementptr inbounds (%struct.test_probe, ptr @test_before_probe, i32 0, i32 0, i32 3), align 4
  %add.i = add i32 %add14, 4
  %18 = inttoptr i32 %add.i to ptr
  store ptr %18, ptr getelementptr inbounds (%struct.test_probe, ptr @test_case_probe, i32 0, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool15.not = icmp eq i8 %8, 0
  br i1 %tobool15.not, label %if.end36.thread, label %if.then16

if.then16:                                        ; preds = %if.end12
  %and17 = and i32 %add.i, -2
  %19 = inttoptr i32 %and17 to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %conv18 = zext i16 %22 to i32
  store i32 %conv18, ptr @current_instruction, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -6145, i16 %22)
  %cmp19 = icmp ugt i16 %22, -6145
  br i1 %cmp19, label %if.then21, label %if.then16.if.end36_crit_edge

if.then16.if.end36_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then21:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx22 = getelementptr i16, ptr %19, i32 1
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx22, align 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %shl = shl nuw i32 %conv18, 16
  %conv25 = zext i16 %25 to i32
  %or26 = or i32 %shl, %conv25
  store i32 %or26, ptr @current_instruction, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then21, %if.then16.if.end36_crit_edge
  %add.i119 = add i32 %add14, 8
  %26 = inttoptr i32 %add.i119 to ptr
  store ptr %26, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after_probe, i32 0, i32 0, i32 3), align 4
  %27 = load i32, ptr @kprobe_test_flags, align 4
  %and38 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %28 = load i32, ptr @current_instruction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59391, i32 %28)
  %cmp49 = icmp ugt i32 %28, 59391
  br i1 %tobool39.not, label %land.lhs.true.critedge, label %lor.lhs.false.critedge

if.end36.thread:                                  ; preds = %if.end12
  %29 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %18, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  store i32 %31, ptr @current_instruction, align 4
  %add.i119150 = add i32 %add14, 8
  %32 = inttoptr i32 %add.i119150 to ptr
  store ptr %32, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after_probe, i32 0, i32 0, i32 3), align 4
  %33 = load i32, ptr @kprobe_test_flags, align 4
  %and38151 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38151)
  %tobool39.not152 = icmp eq i32 %and38151, 0
  br i1 %tobool39.not152, label %if.end36.thread.if.end53_crit_edge, label %if.end36.thread.fail_crit_edge

if.end36.thread.fail_crit_edge:                   ; preds = %if.end36.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end36.thread.if.end53_crit_edge:               ; preds = %if.end36.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

lor.lhs.false.critedge:                           ; preds = %if.end36
  br i1 %cmp49, label %lor.lhs.false.critedge.fail_crit_edge, label %lor.lhs.false.critedge.if.end53_crit_edge

lor.lhs.false.critedge.if.end53_crit_edge:        ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

lor.lhs.false.critedge.fail_crit_edge:            ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

land.lhs.true.critedge:                           ; preds = %if.end36
  br i1 %cmp49, label %land.lhs.true.critedge.if.end53_crit_edge, label %land.lhs.true.critedge.fail_crit_edge

land.lhs.true.critedge.fail_crit_edge:            ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

land.lhs.true.critedge.if.end53_crit_edge:        ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.end53:                                         ; preds = %land.lhs.true.critedge.if.end53_crit_edge, %lor.lhs.false.critedge.if.end53_crit_edge, %if.end36.thread.if.end53_crit_edge
  %34 = load i32, ptr @current_instruction, align 4
  %35 = load ptr, ptr @coverage, align 4
  %36 = load i32, ptr getelementptr inbounds (%struct.coverage_table, ptr @coverage, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr %struct.coverage_entry, ptr %35, i32 %36
  %cmp47.i = icmp ult ptr %35, %add.ptr.i
  br i1 %cmp47.i, label %if.end53.for.body.i_crit_edge, label %if.end53.coverage_add.exit_crit_edge

if.end53.coverage_add.exit_crit_edge:             ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

if.end53.for.body.i_crit_edge:                    ; preds = %if.end53
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end53.for.body.i_crit_edge
  %nesting.051.i = phi i32 [ %nesting.2.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end53.for.body.i_crit_edge ]
  %matched.0.off050.i = phi i1 [ %matched.2.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %if.end53.for.body.i_crit_edge ]
  %entry1.048.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %35, %if.end53.for.body.i_crit_edge ]
  %37 = ptrtoint ptr %entry1.048.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %entry1.048.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %and.i = and i32 %40, 15
  %nesting2.i = getelementptr inbounds %struct.coverage_entry, ptr %entry1.048.i, i32 0, i32 2
  %41 = ptrtoint ptr %nesting2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nesting2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %nesting.051.i)
  %cmp3.i = icmp ugt i32 %42, %nesting.051.i
  br i1 %cmp3.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %nesting.051.i)
  %cmp5.i = icmp ult i32 %42, %nesting.051.i
  br i1 %cmp5.i, label %if.end.i.coverage_add.exit_crit_edge, label %if.end7.i

if.end.i.coverage_add.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

if.end7.i:                                        ; preds = %if.end.i
  br i1 %matched.0.off050.i, label %if.end7.i.if.end14.i_crit_edge, label %if.then8.i

if.end7.i.if.end14.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.end7.i
  %mask.i = getelementptr inbounds %struct.decode_header, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mask.i, align 4
  %and9.i = and i32 %44, %34
  %value.i = getelementptr inbounds %struct.decode_header, ptr %38, i32 0, i32 2
  %45 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and9.i, i32 %46)
  %cmp10.not.i = icmp eq i32 %and9.i, %46
  br i1 %cmp10.not.i, label %if.end12.i, label %if.then8.i.for.inc.i_crit_edge

if.then8.i.for.inc.i_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end12.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  %matched13.i = getelementptr inbounds %struct.coverage_entry, ptr %entry1.048.i, i32 0, i32 3
  %47 = ptrtoint ptr %matched13.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %matched13.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end12.i, %if.end7.i.if.end14.i_crit_edge
  %48 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.end14.i.coverage_add.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %if.end14.i.sw.bb15.i_crit_edge
    i32 3, label %if.end14.i.sw.bb15.i_crit_edge163
    i32 4, label %if.end14.i.sw.bb15.i_crit_edge164
    i32 5, label %if.end14.i.for.inc.i_crit_edge
  ]

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end14.i.sw.bb15.i_crit_edge164:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb15.i

if.end14.i.sw.bb15.i_crit_edge163:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb15.i

if.end14.i.sw.bb15.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb15.i

if.end14.i.coverage_add.exit_crit_edge:           ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

sw.bb.i:                                          ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %inc.i = add i32 %nesting.051.i, 1
  br label %for.inc.i

sw.bb15.i:                                        ; preds = %if.end14.i.sw.bb15.i_crit_edge, %if.end14.i.sw.bb15.i_crit_edge163, %if.end14.i.sw.bb15.i_crit_edge164
  %49 = ptrtoint ptr %entry1.048.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %entry1.048.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %shr.i.i = lshr i32 %52, 4
  %regs12.i.i = getelementptr inbounds %struct.coverage_entry, ptr %entry1.048.i, i32 0, i32 1
  %xor.i.i = and i32 %34, 18874368
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %xor.i.i)
  %tobool33.not.i.i = icmp ne i32 %xor.i.i, 16777216
  %and.i.i = and i32 %shr.i.i, 15
  %and4.i.i = and i32 %34, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb15.i.for.inc.i.i_crit_edge, label %if.end.i.i

sw.bb15.i.for.inc.i.i_crit_edge:                  ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and4.i.i)
  %cmp5.i.i = icmp eq i32 %and4.i.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and4.i.i)
  %cmp7.i.i = icmp eq i32 %and4.i.i, 15
  %..op.i.i = select i1 %cmp7.i.i, i32 -5, i32 -2
  %neg.i.i = select i1 %cmp5.i.i, i32 -3, i32 %..op.i.i
  %53 = ptrtoint ptr %regs12.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %regs12.i.i, align 4
  %and13.i.i = and i32 %54, %neg.i.i
  store i32 %and13.i.i, ptr %regs12.i.i, align 4
  %55 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %and.i.i, label %if.end.i.i.for.inc.i.i_crit_edge [
    i32 9, label %if.end.i.i.sw.bb43.i.i_crit_edge
    i32 7, label %if.end.i.i.sw.bb43.i.i_crit_edge165
    i32 8, label %sw.bb31.i.i
    i32 3, label %sw.bb14.i.i
    i32 4, label %sw.bb18.i.i
    i32 5, label %sw.bb22.i.i
    i32 6, label %if.end.i.i.sw.bb26.i.i_crit_edge
    i32 10, label %if.end.i.i.sw.bb26.i.i_crit_edge166
  ]

if.end.i.i.sw.bb26.i.i_crit_edge166:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb26.i.i

if.end.i.i.sw.bb26.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb26.i.i

if.end.i.i.sw.bb43.i.i_crit_edge165:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb43.i.i

if.end.i.i.sw.bb43.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb43.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

sw.bb14.i.i:                                      ; preds = %if.end.i.i
  br i1 %cmp5.i.i, label %sw.bb14.i.i.for.inc.i.i_crit_edge, label %sw.bb14.i.i.coverage_add.exit_crit_edge

sw.bb14.i.i.coverage_add.exit_crit_edge:          ; preds = %sw.bb14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

sw.bb14.i.i.for.inc.i.i_crit_edge:                ; preds = %sw.bb14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

sw.bb18.i.i:                                      ; preds = %if.end.i.i
  br i1 %cmp7.i.i, label %sw.bb18.i.i.for.inc.i.i_crit_edge, label %sw.bb18.i.i.coverage_add.exit_crit_edge

sw.bb18.i.i.coverage_add.exit_crit_edge:          ; preds = %sw.bb18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

sw.bb18.i.i.for.inc.i.i_crit_edge:                ; preds = %sw.bb18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

sw.bb22.i.i:                                      ; preds = %if.end.i.i
  br i1 %cmp5.i.i, label %sw.bb22.i.i.coverage_add.exit_crit_edge, label %sw.bb22.i.i.for.inc.i.i_crit_edge

sw.bb22.i.i.for.inc.i.i_crit_edge:                ; preds = %sw.bb22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

sw.bb22.i.i.coverage_add.exit_crit_edge:          ; preds = %sw.bb22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

sw.bb26.i.i:                                      ; preds = %if.end.i.i.sw.bb26.i.i_crit_edge, %if.end.i.i.sw.bb26.i.i_crit_edge166
  %56 = add nsw i32 %and4.i.i, -13
  %switch.and.i.i = and i32 %56, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %sw.bb26.i.i.coverage_add.exit_crit_edge, label %sw.bb26.i.i.for.inc.i.i_crit_edge

sw.bb26.i.i.for.inc.i.i_crit_edge:                ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

sw.bb26.i.i.coverage_add.exit_crit_edge:          ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

sw.bb31.i.i:                                      ; preds = %if.end.i.i
  %or.cond70.i.i = and i1 %tobool33.not.i.i, %cmp7.i.i
  br i1 %or.cond70.i.i, label %sw.bb31.i.i.if.then37.i.i_crit_edge, label %sw.bb31.i.i.for.inc.i.i_crit_edge

sw.bb31.i.i.for.inc.i.i_crit_edge:                ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

sw.bb31.i.i.if.then37.i.i_crit_edge:              ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37.i.i

if.then37.i.i:                                    ; preds = %if.end.4.i.i.if.then37.i.i_crit_edge, %sw.bb31.3.i.i.if.then37.i.i_crit_edge, %sw.bb31.2.i.i.if.then37.i.i_crit_edge, %sw.bb31.1.i.i.if.then37.i.i_crit_edge, %sw.bb31.i.i.if.then37.i.i_crit_edge
  %i.073.lcssa75.i.i = phi i32 [ 0, %sw.bb31.i.i.if.then37.i.i_crit_edge ], [ 4, %sw.bb31.1.i.i.if.then37.i.i_crit_edge ], [ 8, %sw.bb31.2.i.i.if.then37.i.i_crit_edge ], [ 12, %sw.bb31.3.i.i.if.then37.i.i_crit_edge ], [ 16, %if.end.4.i.i.if.then37.i.i_crit_edge ]
  %and13.lcssa.i.i = phi i32 [ %and13.i.i, %sw.bb31.i.i.if.then37.i.i_crit_edge ], [ %and13.1.i.i, %sw.bb31.1.i.i.if.then37.i.i_crit_edge ], [ %and13.2.i.i, %sw.bb31.2.i.i.if.then37.i.i_crit_edge ], [ %and13.3.i.i, %sw.bb31.3.i.i.if.then37.i.i_crit_edge ], [ %and13.4.i.i, %if.end.4.i.i.if.then37.i.i_crit_edge ]
  %shl38.i.i = shl nuw nsw i32 8, %i.073.lcssa75.i.i
  %neg39.i.i = xor i32 %shl38.i.i, -1
  %and41.i.i = and i32 %and13.lcssa.i.i, %neg39.i.i
  %57 = ptrtoint ptr %regs12.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and41.i.i, ptr %regs12.i.i, align 4
  br label %coverage_add.exit

sw.bb43.i.i:                                      ; preds = %if.end.i.i.sw.bb43.i.i_crit_edge, %if.end.i.i.sw.bb43.i.i_crit_edge165
  br i1 %cmp7.i.i, label %sw.bb43.i.i.coverage_add.exit_crit_edge, label %sw.bb43.i.i.for.inc.i.i_crit_edge

sw.bb43.i.i.for.inc.i.i_crit_edge:                ; preds = %sw.bb43.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

sw.bb43.i.i.coverage_add.exit_crit_edge:          ; preds = %sw.bb43.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

for.inc.i.i:                                      ; preds = %sw.bb43.i.i.for.inc.i.i_crit_edge, %sw.bb31.i.i.for.inc.i.i_crit_edge, %sw.bb26.i.i.for.inc.i.i_crit_edge, %sw.bb22.i.i.for.inc.i.i_crit_edge, %sw.bb18.i.i.for.inc.i.i_crit_edge, %sw.bb14.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %sw.bb15.i.for.inc.i.i_crit_edge
  %shr2.1.i.i = lshr i32 %52, 8
  %and.1.i.i = and i32 %shr2.1.i.i, 15
  %shr3.1.i.i = lshr i32 %34, 4
  %and4.1.i.i = and i32 %shr3.1.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.end.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i.i

if.end.1.i.i:                                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and4.1.i.i)
  %cmp5.1.i.i = icmp eq i32 %and4.1.i.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and4.1.i.i)
  %cmp7.1.i.i = icmp eq i32 %and4.1.i.i, 15
  %..1.op.i.i = select i1 %cmp7.1.i.i, i32 -65, i32 -17
  %neg.1.i.i = select i1 %cmp5.1.i.i, i32 -33, i32 %..1.op.i.i
  %58 = ptrtoint ptr %regs12.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %regs12.i.i, align 4
  %and13.1.i.i = and i32 %59, %neg.1.i.i
  store i32 %and13.1.i.i, ptr %regs12.i.i, align 4
  %60 = zext i32 %and.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %and.1.i.i, label %if.end.1.i.i.for.inc.1.i.i_crit_edge [
    i32 9, label %if.end.1.i.i.sw.bb43.1.i.i_crit_edge
    i32 7, label %if.end.1.i.i.sw.bb43.1.i.i_crit_edge167
    i32 8, label %sw.bb31.1.i.i
    i32 3, label %sw.bb14.1.i.i
    i32 4, label %sw.bb18.1.i.i
    i32 5, label %sw.bb22.1.i.i
    i32 6, label %if.end.1.i.i.sw.bb26.1.i.i_crit_edge
    i32 10, label %if.end.1.i.i.sw.bb26.1.i.i_crit_edge168
  ]

if.end.1.i.i.sw.bb26.1.i.i_crit_edge168:          ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb26.1.i.i

if.end.1.i.i.sw.bb26.1.i.i_crit_edge:             ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb26.1.i.i

if.end.1.i.i.sw.bb43.1.i.i_crit_edge167:          ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb43.1.i.i

if.end.1.i.i.sw.bb43.1.i.i_crit_edge:             ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb43.1.i.i

if.end.1.i.i.for.inc.1.i.i_crit_edge:             ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i.i

sw.bb26.1.i.i:                                    ; preds = %if.end.1.i.i.sw.bb26.1.i.i_crit_edge, %if.end.1.i.i.sw.bb26.1.i.i_crit_edge168
  %61 = add nsw i32 %and4.1.i.i, -13
  %switch.and.1.i.i = and i32 %61, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.1.i.i)
  %switch.selectcmp.1.i.i = icmp eq i32 %switch.and.1.i.i, 0
  br i1 %switch.selectcmp.1.i.i, label %sw.bb26.1.i.i.coverage_add.exit_crit_edge, label %sw.bb26.1.i.i.for.inc.1.i.i_crit_edge

sw.bb26.1.i.i.for.inc.1.i.i_crit_edge:            ; preds = %sw.bb26.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i.i

sw.bb26.1.i.i.coverage_add.exit_crit_edge:        ; preds = %sw.bb26.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

sw.bb22.1.i.i:                                    ; preds = %if.end.1.i.i
  br i1 %cmp5.1.i.i, label %sw.bb22.1.i.i.coverage_add.exit_crit_edge, label %sw.bb22.1.i.i.for.inc.1.i.i_crit_edge

sw.bb22.1.i.i.for.inc.1.i.i_crit_edge:            ; preds = %sw.bb22.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i.i

sw.bb22.1.i.i.coverage_add.exit_crit_edge:        ; preds = %sw.bb22.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

sw.bb18.1.i.i:                                    ; preds = %if.end.1.i.i
  br i1 %cmp7.1.i.i, label %sw.bb18.1.i.i.for.inc.1.i.i_crit_edge, label %sw.bb18.1.i.i.coverage_add.exit_crit_edge

sw.bb18.1.i.i.coverage_add.exit_crit_edge:        ; preds = %sw.bb18.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

sw.bb18.1.i.i.for.inc.1.i.i_crit_edge:            ; preds = %sw.bb18.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i.i

sw.bb14.1.i.i:                                    ; preds = %if.end.1.i.i
  br i1 %cmp5.1.i.i, label %sw.bb14.1.i.i.for.inc.1.i.i_crit_edge, label %sw.bb14.1.i.i.coverage_add.exit_crit_edge

sw.bb14.1.i.i.coverage_add.exit_crit_edge:        ; preds = %sw.bb14.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

sw.bb14.1.i.i.for.inc.1.i.i_crit_edge:            ; preds = %sw.bb14.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i.i

sw.bb31.1.i.i:                                    ; preds = %if.end.1.i.i
  %or.cond70.1.i.i = and i1 %tobool33.not.i.i, %cmp7.1.i.i
  br i1 %or.cond70.1.i.i, label %sw.bb31.1.i.i.if.then37.i.i_crit_edge, label %sw.bb31.1.i.i.for.inc.1.i.i_crit_edge

sw.bb31.1.i.i.for.inc.1.i.i_crit_edge:            ; preds = %sw.bb31.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i.i

sw.bb31.1.i.i.if.then37.i.i_crit_edge:            ; preds = %sw.bb31.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37.i.i

sw.bb43.1.i.i:                                    ; preds = %if.end.1.i.i.sw.bb43.1.i.i_crit_edge, %if.end.1.i.i.sw.bb43.1.i.i_crit_edge167
  br i1 %cmp7.1.i.i, label %sw.bb43.1.i.i.coverage_add.exit_crit_edge, label %sw.bb43.1.i.i.for.inc.1.i.i_crit_edge

sw.bb43.1.i.i.for.inc.1.i.i_crit_edge:            ; preds = %sw.bb43.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i.i

sw.bb43.1.i.i.coverage_add.exit_crit_edge:        ; preds = %sw.bb43.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

for.inc.1.i.i:                                    ; preds = %sw.bb43.1.i.i.for.inc.1.i.i_crit_edge, %sw.bb31.1.i.i.for.inc.1.i.i_crit_edge, %sw.bb14.1.i.i.for.inc.1.i.i_crit_edge, %sw.bb18.1.i.i.for.inc.1.i.i_crit_edge, %sw.bb22.1.i.i.for.inc.1.i.i_crit_edge, %sw.bb26.1.i.i.for.inc.1.i.i_crit_edge, %if.end.1.i.i.for.inc.1.i.i_crit_edge, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %shr2.2.i.i = lshr i32 %52, 12
  %and.2.i.i = and i32 %shr2.2.i.i, 15
  %shr3.2.i.i = lshr i32 %34, 8
  %and4.2.i.i = and i32 %shr3.2.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.end.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i.i

if.end.2.i.i:                                     ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and4.2.i.i)
  %cmp5.2.i.i = icmp eq i32 %and4.2.i.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and4.2.i.i)
  %cmp7.2.i.i = icmp eq i32 %and4.2.i.i, 15
  %..2.op.i.i = select i1 %cmp7.2.i.i, i32 -1025, i32 -257
  %neg.2.i.i = select i1 %cmp5.2.i.i, i32 -513, i32 %..2.op.i.i
  %62 = ptrtoint ptr %regs12.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %regs12.i.i, align 4
  %and13.2.i.i = and i32 %63, %neg.2.i.i
  store i32 %and13.2.i.i, ptr %regs12.i.i, align 4
  %64 = zext i32 %and.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %and.2.i.i, label %if.end.2.i.i.for.inc.2.i.i_crit_edge [
    i32 9, label %if.end.2.i.i.sw.bb43.2.i.i_crit_edge
    i32 7, label %if.end.2.i.i.sw.bb43.2.i.i_crit_edge169
    i32 8, label %sw.bb31.2.i.i
    i32 3, label %sw.bb14.2.i.i
    i32 4, label %sw.bb18.2.i.i
    i32 5, label %sw.bb22.2.i.i
    i32 6, label %if.end.2.i.i.sw.bb26.2.i.i_crit_edge
    i32 10, label %if.end.2.i.i.sw.bb26.2.i.i_crit_edge170
  ]

if.end.2.i.i.sw.bb26.2.i.i_crit_edge170:          ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb26.2.i.i

if.end.2.i.i.sw.bb26.2.i.i_crit_edge:             ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb26.2.i.i

if.end.2.i.i.sw.bb43.2.i.i_crit_edge169:          ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb43.2.i.i

if.end.2.i.i.sw.bb43.2.i.i_crit_edge:             ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb43.2.i.i

if.end.2.i.i.for.inc.2.i.i_crit_edge:             ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i.i

sw.bb26.2.i.i:                                    ; preds = %if.end.2.i.i.sw.bb26.2.i.i_crit_edge, %if.end.2.i.i.sw.bb26.2.i.i_crit_edge170
  %65 = add nsw i32 %and4.2.i.i, -13
  %switch.and.2.i.i = and i32 %65, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.2.i.i)
  %switch.selectcmp.2.i.i = icmp eq i32 %switch.and.2.i.i, 0
  br i1 %switch.selectcmp.2.i.i, label %sw.bb26.2.i.i.coverage_add.exit_crit_edge, label %sw.bb26.2.i.i.for.inc.2.i.i_crit_edge

sw.bb26.2.i.i.for.inc.2.i.i_crit_edge:            ; preds = %sw.bb26.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i.i

sw.bb26.2.i.i.coverage_add.exit_crit_edge:        ; preds = %sw.bb26.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

sw.bb22.2.i.i:                                    ; preds = %if.end.2.i.i
  br i1 %cmp5.2.i.i, label %sw.bb22.2.i.i.coverage_add.exit_crit_edge, label %sw.bb22.2.i.i.for.inc.2.i.i_crit_edge

sw.bb22.2.i.i.for.inc.2.i.i_crit_edge:            ; preds = %sw.bb22.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i.i

sw.bb22.2.i.i.coverage_add.exit_crit_edge:        ; preds = %sw.bb22.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

sw.bb18.2.i.i:                                    ; preds = %if.end.2.i.i
  br i1 %cmp7.2.i.i, label %sw.bb18.2.i.i.for.inc.2.i.i_crit_edge, label %sw.bb18.2.i.i.coverage_add.exit_crit_edge

sw.bb18.2.i.i.coverage_add.exit_crit_edge:        ; preds = %sw.bb18.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

sw.bb18.2.i.i.for.inc.2.i.i_crit_edge:            ; preds = %sw.bb18.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i.i

sw.bb14.2.i.i:                                    ; preds = %if.end.2.i.i
  br i1 %cmp5.2.i.i, label %sw.bb14.2.i.i.for.inc.2.i.i_crit_edge, label %sw.bb14.2.i.i.coverage_add.exit_crit_edge

sw.bb14.2.i.i.coverage_add.exit_crit_edge:        ; preds = %sw.bb14.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

sw.bb14.2.i.i.for.inc.2.i.i_crit_edge:            ; preds = %sw.bb14.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i.i

sw.bb31.2.i.i:                                    ; preds = %if.end.2.i.i
  %or.cond70.2.i.i = and i1 %tobool33.not.i.i, %cmp7.2.i.i
  br i1 %or.cond70.2.i.i, label %sw.bb31.2.i.i.if.then37.i.i_crit_edge, label %sw.bb31.2.i.i.for.inc.2.i.i_crit_edge

sw.bb31.2.i.i.for.inc.2.i.i_crit_edge:            ; preds = %sw.bb31.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i.i

sw.bb31.2.i.i.if.then37.i.i_crit_edge:            ; preds = %sw.bb31.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37.i.i

sw.bb43.2.i.i:                                    ; preds = %if.end.2.i.i.sw.bb43.2.i.i_crit_edge, %if.end.2.i.i.sw.bb43.2.i.i_crit_edge169
  br i1 %cmp7.2.i.i, label %sw.bb43.2.i.i.coverage_add.exit_crit_edge, label %sw.bb43.2.i.i.for.inc.2.i.i_crit_edge

sw.bb43.2.i.i.for.inc.2.i.i_crit_edge:            ; preds = %sw.bb43.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i.i

sw.bb43.2.i.i.coverage_add.exit_crit_edge:        ; preds = %sw.bb43.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

for.inc.2.i.i:                                    ; preds = %sw.bb43.2.i.i.for.inc.2.i.i_crit_edge, %sw.bb31.2.i.i.for.inc.2.i.i_crit_edge, %sw.bb14.2.i.i.for.inc.2.i.i_crit_edge, %sw.bb18.2.i.i.for.inc.2.i.i_crit_edge, %sw.bb22.2.i.i.for.inc.2.i.i_crit_edge, %sw.bb26.2.i.i.for.inc.2.i.i_crit_edge, %if.end.2.i.i.for.inc.2.i.i_crit_edge, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %shr2.3.i.i = lshr i32 %52, 16
  %and.3.i.i = and i32 %shr2.3.i.i, 15
  %shr3.3.i.i = lshr i32 %34, 12
  %and4.3.i.i = and i32 %shr3.3.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge, label %if.end.3.i.i

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i.i

if.end.3.i.i:                                     ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and4.3.i.i)
  %cmp5.3.i.i = icmp eq i32 %and4.3.i.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and4.3.i.i)
  %cmp7.3.i.i = icmp eq i32 %and4.3.i.i, 15
  %..3.op.i.i = select i1 %cmp7.3.i.i, i32 -16385, i32 -4097
  %neg.3.i.i = select i1 %cmp5.3.i.i, i32 -8193, i32 %..3.op.i.i
  %66 = ptrtoint ptr %regs12.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %regs12.i.i, align 4
  %and13.3.i.i = and i32 %67, %neg.3.i.i
  store i32 %and13.3.i.i, ptr %regs12.i.i, align 4
  %68 = zext i32 %and.3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %and.3.i.i, label %if.end.3.i.i.for.inc.3.i.i_crit_edge [
    i32 9, label %if.end.3.i.i.sw.bb43.3.i.i_crit_edge
    i32 7, label %if.end.3.i.i.sw.bb43.3.i.i_crit_edge171
    i32 8, label %sw.bb31.3.i.i
    i32 3, label %sw.bb14.3.i.i
    i32 4, label %sw.bb18.3.i.i
    i32 5, label %sw.bb22.3.i.i
    i32 6, label %if.end.3.i.i.sw.bb26.3.i.i_crit_edge
    i32 10, label %if.end.3.i.i.sw.bb26.3.i.i_crit_edge172
  ]

if.end.3.i.i.sw.bb26.3.i.i_crit_edge172:          ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb26.3.i.i

if.end.3.i.i.sw.bb26.3.i.i_crit_edge:             ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb26.3.i.i

if.end.3.i.i.sw.bb43.3.i.i_crit_edge171:          ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb43.3.i.i

if.end.3.i.i.sw.bb43.3.i.i_crit_edge:             ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb43.3.i.i

if.end.3.i.i.for.inc.3.i.i_crit_edge:             ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i.i

sw.bb26.3.i.i:                                    ; preds = %if.end.3.i.i.sw.bb26.3.i.i_crit_edge, %if.end.3.i.i.sw.bb26.3.i.i_crit_edge172
  %69 = add nsw i32 %and4.3.i.i, -13
  %switch.and.3.i.i = and i32 %69, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.3.i.i)
  %switch.selectcmp.3.i.i = icmp eq i32 %switch.and.3.i.i, 0
  br i1 %switch.selectcmp.3.i.i, label %sw.bb26.3.i.i.coverage_add.exit_crit_edge, label %sw.bb26.3.i.i.for.inc.3.i.i_crit_edge

sw.bb26.3.i.i.for.inc.3.i.i_crit_edge:            ; preds = %sw.bb26.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i.i

sw.bb26.3.i.i.coverage_add.exit_crit_edge:        ; preds = %sw.bb26.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

sw.bb22.3.i.i:                                    ; preds = %if.end.3.i.i
  br i1 %cmp5.3.i.i, label %sw.bb22.3.i.i.coverage_add.exit_crit_edge, label %sw.bb22.3.i.i.for.inc.3.i.i_crit_edge

sw.bb22.3.i.i.for.inc.3.i.i_crit_edge:            ; preds = %sw.bb22.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i.i

sw.bb22.3.i.i.coverage_add.exit_crit_edge:        ; preds = %sw.bb22.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

sw.bb18.3.i.i:                                    ; preds = %if.end.3.i.i
  br i1 %cmp7.3.i.i, label %sw.bb18.3.i.i.for.inc.3.i.i_crit_edge, label %sw.bb18.3.i.i.coverage_add.exit_crit_edge

sw.bb18.3.i.i.coverage_add.exit_crit_edge:        ; preds = %sw.bb18.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

sw.bb18.3.i.i.for.inc.3.i.i_crit_edge:            ; preds = %sw.bb18.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i.i

sw.bb14.3.i.i:                                    ; preds = %if.end.3.i.i
  br i1 %cmp5.3.i.i, label %sw.bb14.3.i.i.for.inc.3.i.i_crit_edge, label %sw.bb14.3.i.i.coverage_add.exit_crit_edge

sw.bb14.3.i.i.coverage_add.exit_crit_edge:        ; preds = %sw.bb14.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

sw.bb14.3.i.i.for.inc.3.i.i_crit_edge:            ; preds = %sw.bb14.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i.i

sw.bb31.3.i.i:                                    ; preds = %if.end.3.i.i
  %or.cond70.3.i.i = and i1 %tobool33.not.i.i, %cmp7.3.i.i
  br i1 %or.cond70.3.i.i, label %sw.bb31.3.i.i.if.then37.i.i_crit_edge, label %sw.bb31.3.i.i.for.inc.3.i.i_crit_edge

sw.bb31.3.i.i.for.inc.3.i.i_crit_edge:            ; preds = %sw.bb31.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i.i

sw.bb31.3.i.i.if.then37.i.i_crit_edge:            ; preds = %sw.bb31.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37.i.i

sw.bb43.3.i.i:                                    ; preds = %if.end.3.i.i.sw.bb43.3.i.i_crit_edge, %if.end.3.i.i.sw.bb43.3.i.i_crit_edge171
  br i1 %cmp7.3.i.i, label %sw.bb43.3.i.i.coverage_add.exit_crit_edge, label %sw.bb43.3.i.i.for.inc.3.i.i_crit_edge

sw.bb43.3.i.i.for.inc.3.i.i_crit_edge:            ; preds = %sw.bb43.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i.i

sw.bb43.3.i.i.coverage_add.exit_crit_edge:        ; preds = %sw.bb43.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

for.inc.3.i.i:                                    ; preds = %sw.bb43.3.i.i.for.inc.3.i.i_crit_edge, %sw.bb31.3.i.i.for.inc.3.i.i_crit_edge, %sw.bb14.3.i.i.for.inc.3.i.i_crit_edge, %sw.bb18.3.i.i.for.inc.3.i.i_crit_edge, %sw.bb22.3.i.i.for.inc.3.i.i_crit_edge, %sw.bb26.3.i.i.for.inc.3.i.i_crit_edge, %if.end.3.i.i.for.inc.3.i.i_crit_edge, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %shr2.4.i.i = lshr i32 %52, 20
  %and.4.i.i = and i32 %shr2.4.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %and.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %for.inc.3.i.i.coverage_add.exit_crit_edge, label %if.end.4.i.i

for.inc.3.i.i.coverage_add.exit_crit_edge:        ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

if.end.4.i.i:                                     ; preds = %for.inc.3.i.i
  %shr3.4.i.i = lshr i32 %34, 16
  %and4.4.i.i = and i32 %shr3.4.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and4.4.i.i)
  %cmp5.4.i.i = icmp eq i32 %and4.4.i.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and4.4.i.i)
  %cmp7.4.i.i = icmp eq i32 %and4.4.i.i, 15
  %..4.op.i.i = select i1 %cmp7.4.i.i, i32 -262145, i32 -65537
  %neg.4.i.i = select i1 %cmp5.4.i.i, i32 -131073, i32 %..4.op.i.i
  %70 = ptrtoint ptr %regs12.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %regs12.i.i, align 4
  %and13.4.i.i = and i32 %71, %neg.4.i.i
  store i32 %and13.4.i.i, ptr %regs12.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and.4.i.i)
  %cond.i.i = icmp eq i32 %and.4.i.i, 8
  %or.cond70.4.i.i = and i1 %tobool33.not.i.i, %cmp7.4.i.i
  %or.cond.i.i = and i1 %or.cond70.4.i.i, %cond.i.i
  br i1 %or.cond.i.i, label %if.end.4.i.i.if.then37.i.i_crit_edge, label %if.end.4.i.i.coverage_add.exit_crit_edge

if.end.4.i.i.coverage_add.exit_crit_edge:         ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

if.end.4.i.i.if.then37.i.i_crit_edge:             ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37.i.i

for.inc.i:                                        ; preds = %sw.bb.i, %if.end14.i.for.inc.i_crit_edge, %if.then8.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %matched.2.off0.i = phi i1 [ %matched.0.off050.i, %for.body.i.for.inc.i_crit_edge ], [ false, %if.then8.i.for.inc.i_crit_edge ], [ %matched.0.off050.i, %sw.bb.i ], [ true, %if.end14.i.for.inc.i_crit_edge ]
  %nesting.2.i = phi i32 [ %nesting.051.i, %for.body.i.for.inc.i_crit_edge ], [ %nesting.051.i, %if.then8.i.for.inc.i_crit_edge ], [ %inc.i, %sw.bb.i ], [ %nesting.051.i, %if.end14.i.for.inc.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.coverage_entry, ptr %entry1.048.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.coverage_add.exit_crit_edge

for.inc.i.coverage_add.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %coverage_add.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

coverage_add.exit:                                ; preds = %for.inc.i.coverage_add.exit_crit_edge, %if.end.4.i.i.coverage_add.exit_crit_edge, %for.inc.3.i.i.coverage_add.exit_crit_edge, %sw.bb43.3.i.i.coverage_add.exit_crit_edge, %sw.bb14.3.i.i.coverage_add.exit_crit_edge, %sw.bb18.3.i.i.coverage_add.exit_crit_edge, %sw.bb22.3.i.i.coverage_add.exit_crit_edge, %sw.bb26.3.i.i.coverage_add.exit_crit_edge, %sw.bb43.2.i.i.coverage_add.exit_crit_edge, %sw.bb14.2.i.i.coverage_add.exit_crit_edge, %sw.bb18.2.i.i.coverage_add.exit_crit_edge, %sw.bb22.2.i.i.coverage_add.exit_crit_edge, %sw.bb26.2.i.i.coverage_add.exit_crit_edge, %sw.bb43.1.i.i.coverage_add.exit_crit_edge, %sw.bb14.1.i.i.coverage_add.exit_crit_edge, %sw.bb18.1.i.i.coverage_add.exit_crit_edge, %sw.bb22.1.i.i.coverage_add.exit_crit_edge, %sw.bb26.1.i.i.coverage_add.exit_crit_edge, %sw.bb43.i.i.coverage_add.exit_crit_edge, %if.then37.i.i, %sw.bb26.i.i.coverage_add.exit_crit_edge, %sw.bb22.i.i.coverage_add.exit_crit_edge, %sw.bb18.i.i.coverage_add.exit_crit_edge, %sw.bb14.i.i.coverage_add.exit_crit_edge, %if.end14.i.coverage_add.exit_crit_edge, %if.end.i.coverage_add.exit_crit_edge, %if.end53.coverage_add.exit_crit_edge
  %72 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %flags, align 1
  %conv55 = zext i8 %73 to i32
  %and56 = and i32 %conv55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end64, label %if.then58

if.then58:                                        ; preds = %coverage_add.exit
  %74 = load i8, ptr getelementptr inbounds (%struct.test_probe, ptr @test_case_probe, i32 0, i32 1), align 4, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i = icmp eq i8 %74, 0
  br i1 %tobool.not.i, label %if.end.i121, label %do.body.i

do.body.i:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/probes/kprobes/test-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1180, 0\0A.popsection", ""() #13, !srcloc !320
  unreachable

if.end.i121:                                      ; preds = %if.then58
  %call.i = tail call i32 @register_kprobe(ptr noundef nonnull @test_case_probe) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i120 = icmp sgt i32 %call.i, -1
  br i1 %cmp.i120, label %if.end63, label %if.end.i121.pass_crit_edge

if.end.i121.pass_crit_edge:                       ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #15
  br label %pass

if.end63:                                         ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #15
  store i8 1, ptr getelementptr inbounds (%struct.test_probe, ptr @test_case_probe, i32 0, i32 1), align 4
  store i32 -1, ptr getelementptr inbounds (%struct.test_probe, ptr @test_case_probe, i32 0, i32 2), align 4
  br label %fail

if.end64:                                         ; preds = %coverage_add.exit
  %and67 = and i32 %conv55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end75, label %if.then69

if.then69:                                        ; preds = %if.end64
  %75 = load i8, ptr getelementptr inbounds (%struct.test_probe, ptr @test_case_probe, i32 0, i32 1), align 4, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i122 = icmp eq i8 %75, 0
  br i1 %tobool.not.i122, label %if.end.i126, label %do.body.i123

do.body.i123:                                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/probes/kprobes/test-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1180, 0\0A.popsection", ""() #13, !srcloc !320
  unreachable

if.end.i126:                                      ; preds = %if.then69
  %call.i124 = tail call i32 @register_kprobe(ptr noundef nonnull @test_case_probe) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i124)
  %cmp.i125 = icmp sgt i32 %call.i124, -1
  br i1 %cmp.i125, label %register_test_probe.exit128.thread, label %if.end.i126.fail_crit_edge

if.end.i126.fail_crit_edge:                       ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

register_test_probe.exit128.thread:               ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #15
  store i8 1, ptr getelementptr inbounds (%struct.test_probe, ptr @test_case_probe, i32 0, i32 1), align 4
  store i32 -1, ptr getelementptr inbounds (%struct.test_probe, ptr @test_case_probe, i32 0, i32 2), align 4
  br label %pass

if.end75:                                         ; preds = %if.end64
  %76 = load i8, ptr getelementptr inbounds (%struct.test_probe, ptr @test_before_probe, i32 0, i32 1), align 4, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i129 = icmp eq i8 %76, 0
  br i1 %tobool.not.i129, label %if.end.i133, label %do.body.i130

do.body.i130:                                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/probes/kprobes/test-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1180, 0\0A.popsection", ""() #13, !srcloc !320
  unreachable

if.end.i133:                                      ; preds = %if.end75
  %call.i131 = tail call i32 @register_kprobe(ptr noundef nonnull @test_before_probe) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i131)
  %cmp.i132 = icmp sgt i32 %call.i131, -1
  br i1 %cmp.i132, label %if.end80, label %if.end.i133.fail_crit_edge

if.end.i133.fail_crit_edge:                       ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end80:                                         ; preds = %if.end.i133
  store i8 1, ptr getelementptr inbounds (%struct.test_probe, ptr @test_before_probe, i32 0, i32 1), align 4
  store i32 -1, ptr getelementptr inbounds (%struct.test_probe, ptr @test_before_probe, i32 0, i32 2), align 4
  %77 = load i8, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after_probe, i32 0, i32 1), align 4, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i136 = icmp eq i8 %77, 0
  br i1 %tobool.not.i136, label %if.end.i140, label %do.body.i137

do.body.i137:                                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/probes/kprobes/test-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1180, 0\0A.popsection", ""() #13, !srcloc !320
  unreachable

if.end.i140:                                      ; preds = %if.end80
  %call.i138 = tail call i32 @register_kprobe(ptr noundef nonnull @test_after_probe) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i138)
  %cmp.i139 = icmp sgt i32 %call.i138, -1
  br i1 %cmp.i139, label %if.end85, label %if.end.i140.fail_crit_edge

if.end.i140.fail_crit_edge:                       ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end85:                                         ; preds = %if.end.i140
  store i8 1, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after_probe, i32 0, i32 1), align 4
  store i32 -1, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after_probe, i32 0, i32 2), align 4
  %78 = load i32, ptr @current_branch_target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool86.not = icmp eq i32 %78, 0
  br i1 %tobool86.not, label %if.end85.if.end93_crit_edge, label %if.then87

if.end85.if.end93_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

if.then87:                                        ; preds = %if.end85
  %79 = inttoptr i32 %78 to ptr
  store ptr %79, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after2_probe, i32 0, i32 0, i32 3), align 4
  %80 = load i8, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after2_probe, i32 0, i32 1), align 4, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i143 = icmp eq i8 %80, 0
  br i1 %tobool.not.i143, label %if.end.i147, label %do.body.i144

do.body.i144:                                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/probes/kprobes/test-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1180, 0\0A.popsection", ""() #13, !srcloc !320
  unreachable

if.end.i147:                                      ; preds = %if.then87
  %call.i145 = tail call i32 @register_kprobe(ptr noundef nonnull @test_after2_probe) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i145)
  %cmp.i146 = icmp sgt i32 %call.i145, -1
  br i1 %cmp.i146, label %register_test_probe.exit149, label %if.end.i147.fail_crit_edge

if.end.i147.fail_crit_edge:                       ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

register_test_probe.exit149:                      ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #15
  store i8 1, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after2_probe, i32 0, i32 1), align 4
  store i32 -1, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after2_probe, i32 0, i32 2), align 4
  br label %if.end93

if.end93:                                         ; preds = %register_test_probe.exit149, %if.end85.if.end93_crit_edge
  store i32 0, ptr @test_case_run_count, align 4
  %81 = load i32, ptr @test_instance, align 4
  %inc94 = add i32 %81, 1
  store i32 %inc94, ptr @test_instance, align 4
  %82 = load i32, ptr @current_code_start, align 4
  br label %cleanup

pass:                                             ; preds = %register_test_probe.exit128.thread, %if.end.i121.pass_crit_edge
  store i32 -1, ptr @test_case_run_count, align 4
  %83 = load ptr, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after_probe, i32 0, i32 0, i32 3), align 4
  %84 = ptrtoint ptr %83 to i32
  br label %cleanup

fail:                                             ; preds = %if.end.i147.fail_crit_edge, %if.end.i140.fail_crit_edge, %if.end.i133.fail_crit_edge, %if.end.i126.fail_crit_edge, %if.end63, %land.lhs.true.critedge.fail_crit_edge, %lor.lhs.false.critedge.fail_crit_edge, %if.end36.thread.fail_crit_edge
  %.str.6.sink = phi ptr [ @.str.2, %if.end63 ], [ @.str, %if.end36.thread.fail_crit_edge ], [ @.str, %lor.lhs.false.critedge.fail_crit_edge ], [ @.str.1, %land.lhs.true.critedge.fail_crit_edge ], [ @.str.3, %if.end.i126.fail_crit_edge ], [ @.str.4, %if.end.i133.fail_crit_edge ], [ @.str.5, %if.end.i140.fail_crit_edge ], [ @.str.6, %if.end.i147.fail_crit_edge ]
  tail call fastcc void @test_case_failed(ptr noundef nonnull %.str.6.sink)
  store i32 -2, ptr @test_case_run_count, align 4
  %85 = load ptr, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after_probe, i32 0, i32 0, i32 3), align 4
  %86 = ptrtoint ptr %85 to i32
  br label %cleanup

cleanup:                                          ; preds = %fail, %pass, %if.end93
  %retval.0 = phi i32 [ %86, %fail ], [ %84, %pass ], [ %82, %if.end93 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_case_failed(ptr noundef %message) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds (%struct.test_probe, ptr @test_before_probe, i32 0, i32 1), align 4, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i.i, label %entry.unregister_test_probe.exit.i_crit_edge, label %if.then.i.i

entry.unregister_test_probe.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %unregister_test_probe.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_kprobe(ptr noundef nonnull @test_before_probe) #13
  store i32 0, ptr getelementptr inbounds (%struct.test_probe, ptr @test_before_probe, i32 0, i32 0, i32 10), align 4
  br label %unregister_test_probe.exit.i

unregister_test_probe.exit.i:                     ; preds = %if.then.i.i, %entry.unregister_test_probe.exit.i_crit_edge
  store i8 0, ptr getelementptr inbounds (%struct.test_probe, ptr @test_before_probe, i32 0, i32 1), align 4
  %1 = load i8, ptr getelementptr inbounds (%struct.test_probe, ptr @test_case_probe, i32 0, i32 1), align 4, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i1.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i1.i, label %unregister_test_probe.exit.i.unregister_test_probe.exit3.i_crit_edge, label %if.then.i2.i

unregister_test_probe.exit.i.unregister_test_probe.exit3.i_crit_edge: ; preds = %unregister_test_probe.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unregister_test_probe.exit3.i

if.then.i2.i:                                     ; preds = %unregister_test_probe.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_kprobe(ptr noundef nonnull @test_case_probe) #13
  store i32 0, ptr getelementptr inbounds (%struct.test_probe, ptr @test_case_probe, i32 0, i32 0, i32 10), align 4
  br label %unregister_test_probe.exit3.i

unregister_test_probe.exit3.i:                    ; preds = %if.then.i2.i, %unregister_test_probe.exit.i.unregister_test_probe.exit3.i_crit_edge
  store i8 0, ptr getelementptr inbounds (%struct.test_probe, ptr @test_case_probe, i32 0, i32 1), align 4
  %2 = load i8, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after_probe, i32 0, i32 1), align 4, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i4.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i4.i, label %unregister_test_probe.exit3.i.unregister_test_probe.exit6.i_crit_edge, label %if.then.i5.i

unregister_test_probe.exit3.i.unregister_test_probe.exit6.i_crit_edge: ; preds = %unregister_test_probe.exit3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unregister_test_probe.exit6.i

if.then.i5.i:                                     ; preds = %unregister_test_probe.exit3.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_kprobe(ptr noundef nonnull @test_after_probe) #13
  store i32 0, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after_probe, i32 0, i32 0, i32 10), align 4
  br label %unregister_test_probe.exit6.i

unregister_test_probe.exit6.i:                    ; preds = %if.then.i5.i, %unregister_test_probe.exit3.i.unregister_test_probe.exit6.i_crit_edge
  store i8 0, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after_probe, i32 0, i32 1), align 4
  %3 = load i8, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after2_probe, i32 0, i32 1), align 4, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i7.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i7.i, label %unregister_test_probe.exit6.i.test_case_cleanup.exit_crit_edge, label %if.then.i8.i

unregister_test_probe.exit6.i.test_case_cleanup.exit_crit_edge: ; preds = %unregister_test_probe.exit6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %test_case_cleanup.exit

if.then.i8.i:                                     ; preds = %unregister_test_probe.exit6.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_kprobe(ptr noundef nonnull @test_after2_probe) #13
  store i32 0, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after2_probe, i32 0, i32 0, i32 10), align 4
  br label %test_case_cleanup.exit

test_case_cleanup.exit:                           ; preds = %if.then.i8.i, %unregister_test_probe.exit6.i.test_case_cleanup.exit_crit_edge
  store i8 0, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after2_probe, i32 0, i32 1), align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %message) #16
  %4 = load ptr, ptr @current_title, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %4) #16
  %5 = load i32, ptr @test_case_run_count, align 4
  %shr = ashr i32 %5, 1
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %shr) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kprobes_test_case_end() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @test_case_run_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp1 = icmp eq i32 %0, -1
  br i1 %cmp1, label %if.then.pass_crit_edge, label %if.then.end_crit_edge

if.then.end_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.then.pass_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %pass

if.end:                                           ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.test_probe, ptr @test_before_probe, i32 0, i32 2), align 4
  %2 = load i32, ptr @test_instance, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp3.not = icmp eq i32 %1, %2
  br i1 %cmp3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @test_case_failed(ptr noundef nonnull @.str.7)
  br label %end

if.end5:                                          ; preds = %if.end
  %3 = load i32, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after_probe, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp6.not = icmp eq i32 %3, %1
  br i1 %cmp6.not, label %if.end5.if.end9_crit_edge, label %land.lhs.true

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end5
  %4 = load i32, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after2_probe, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %1)
  %cmp7.not = icmp eq i32 %4, %1
  br i1 %cmp7.not, label %land.lhs.true.if.end9_crit_edge, label %if.then8

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @test_case_failed(ptr noundef nonnull @.str.8)
  br label %end

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp10 = icmp eq i32 %and, 0
  br i1 %cmp10, label %if.then11, label %if.else16

if.then11:                                        ; preds = %if.end9
  %5 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @result_regs, i32 0, i32 0, i32 13), align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = call ptr @memcpy(ptr @expected_regs, ptr @result_regs, i32 72)
  %8 = load ptr, ptr @current_stack, align 4
  %9 = ptrtoint ptr %8 to i32
  %sub.i = sub i32 %5, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 0
  %sub1.i = sub i32 256, %sub.i
  %spec.select.i = select i1 %cmp.i, i32 %sub1.i, i32 256
  %10 = call ptr @memcpy(ptr @expected_memory, ptr %6, i32 %spec.select.i)
  %11 = load i8, ptr getelementptr inbounds (%struct.test_probe, ptr @test_case_probe, i32 0, i32 1), align 4, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i

do.body.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/probes/kprobes/test-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1180, 0\0A.popsection", ""() #13, !srcloc !320
  unreachable

if.end.i:                                         ; preds = %if.then11
  %call.i = tail call i32 @register_kprobe(ptr noundef nonnull @test_case_probe) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i42 = icmp sgt i32 %call.i, -1
  br i1 %cmp.i42, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  store i8 1, ptr getelementptr inbounds (%struct.test_probe, ptr @test_case_probe, i32 0, i32 1), align 4
  store i32 -1, ptr getelementptr inbounds (%struct.test_probe, ptr @test_case_probe, i32 0, i32 2), align 4
  br label %if.end35

cleanup:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @test_case_failed(ptr noundef nonnull @.str.9)
  br label %end

if.else16:                                        ; preds = %if.end9
  %12 = load i32, ptr @probe_should_run, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp17 = icmp eq i32 %12, 1
  %13 = load i32, ptr getelementptr inbounds (%struct.test_probe, ptr @test_case_probe, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %1)
  %cmp19.not = icmp eq i32 %13, %1
  br i1 %cmp17, label %if.then18, label %if.then24

if.then18:                                        ; preds = %if.else16
  br i1 %cmp19.not, label %if.then18.if.end29_crit_edge, label %if.then20

if.then18.if.end29_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @test_case_failed(ptr noundef nonnull @.str.10)
  br label %end

if.then24:                                        ; preds = %if.else16
  br i1 %cmp19.not, label %if.then26, label %if.then24.if.end29_crit_edge

if.then24.if.end29_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @test_case_failed(ptr noundef nonnull @.str.11)
  br label %end

if.end29:                                         ; preds = %if.then24.if.end29_crit_edge, %if.then18.if.end29_crit_edge
  %14 = load i8, ptr getelementptr inbounds (%struct.test_probe, ptr @test_case_probe, i32 0, i32 1), align 4, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i43 = icmp eq i8 %14, 0
  br i1 %tobool.not.i43, label %if.end29.unregister_test_probe.exit_crit_edge, label %if.then.i

if.end29.unregister_test_probe.exit_crit_edge:    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %unregister_test_probe.exit

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_kprobe(ptr noundef nonnull @test_case_probe) #13
  store i32 0, ptr getelementptr inbounds (%struct.test_probe, ptr @test_case_probe, i32 0, i32 0, i32 10), align 4
  br label %unregister_test_probe.exit

unregister_test_probe.exit:                       ; preds = %if.then.i, %if.end29.unregister_test_probe.exit_crit_edge
  store i8 0, ptr getelementptr inbounds (%struct.test_probe, ptr @test_case_probe, i32 0, i32 1), align 4
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(72) @expected_regs, ptr noundef nonnull dereferenceable(72) @result_regs, i32 72) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i45 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i45, label %if.end.i46, label %unregister_test_probe.exit.do.end.i_crit_edge

unregister_test_probe.exit.do.end.i_crit_edge:    ; preds = %unregister_test_probe.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end.i46:                                       ; preds = %unregister_test_probe.exit
  %.b.i = load i1, ptr @memory_needs_checking, align 4
  br i1 %.b.i, label %if.then2.i, label %if.end.i46.if.end32_crit_edge

if.end.i46.if.end32_crit_edge:                    ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then2.i:                                       ; preds = %if.end.i46
  %15 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @result_regs, i32 0, i32 0, i32 13), align 4
  %16 = inttoptr i32 %15 to ptr
  %17 = load ptr, ptr @current_stack, align 4
  %18 = ptrtoint ptr %17 to i32
  %sub.i.i = sub i32 %15, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  %sub1.i.i = sub i32 256, %sub.i.i
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub1.i.i, i32 256
  %bcmp39.i = tail call i32 @bcmp(ptr nonnull @expected_memory, ptr %16, i32 %spec.select.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp39.i)
  %tobool5.not.i = icmp eq i32 %bcmp39.i, 0
  br i1 %tobool5.not.i, label %if.then2.i.if.end32_crit_edge, label %if.then2.i.do.end.i_crit_edge

if.then2.i.do.end.i_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then2.i.if.end32_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

do.end.i:                                         ; preds = %if.then2.i.do.end.i_crit_edge, %unregister_test_probe.exit.do.end.i_crit_edge
  %.str.21.sink.i = phi ptr [ @.str.21, %unregister_test_probe.exit.do.end.i_crit_edge ], [ @.str.22, %if.then2.i.do.end.i_crit_edge ]
  %mem.0.i = phi ptr [ null, %unregister_test_probe.exit.do.end.i_crit_edge ], [ %16, %if.then2.i.do.end.i_crit_edge ]
  %mem_size.0.i = phi i32 [ 0, %unregister_test_probe.exit.do.end.i_crit_edge ], [ %spec.select.i.i, %if.then2.i.do.end.i_crit_edge ]
  tail call fastcc void @test_case_failed(ptr noundef nonnull %.str.21.sink.i) #13
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #16
  %19 = load i32, ptr @initial_regs, align 4
  %20 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @initial_regs, i32 0, i32 0, i32 1), align 4
  %21 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @initial_regs, i32 0, i32 0, i32 2), align 4
  %22 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @initial_regs, i32 0, i32 0, i32 3), align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %22) #16
  %23 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @initial_regs, i32 0, i32 0, i32 4), align 4
  %24 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @initial_regs, i32 0, i32 0, i32 5), align 4
  %25 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @initial_regs, i32 0, i32 0, i32 6), align 4
  %26 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @initial_regs, i32 0, i32 0, i32 7), align 4
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26) #16
  %27 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @initial_regs, i32 0, i32 0, i32 8), align 4
  %28 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @initial_regs, i32 0, i32 0, i32 9), align 4
  %29 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @initial_regs, i32 0, i32 0, i32 10), align 4
  %30 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @initial_regs, i32 0, i32 0, i32 11), align 4
  %call30.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30) #16
  %31 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @initial_regs, i32 0, i32 0, i32 12), align 4
  %32 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @initial_regs, i32 0, i32 0, i32 13), align 4
  %33 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @initial_regs, i32 0, i32 0, i32 14), align 4
  %34 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @initial_regs, i32 0, i32 0, i32 15), align 4
  %call42.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34) #16
  %35 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @initial_regs, i32 0, i32 0, i32 16), align 4
  %call48.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %35) #16
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #16
  %36 = load i32, ptr @expected_regs, align 4
  %37 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @expected_regs, i32 0, i32 0, i32 1), align 4
  %38 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @expected_regs, i32 0, i32 0, i32 2), align 4
  %39 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @expected_regs, i32 0, i32 0, i32 3), align 4
  %call.i40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %36, i32 noundef %37, i32 noundef %38, i32 noundef %39) #16
  %40 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @expected_regs, i32 0, i32 0, i32 4), align 4
  %41 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @expected_regs, i32 0, i32 0, i32 5), align 4
  %42 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @expected_regs, i32 0, i32 0, i32 6), align 4
  %43 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @expected_regs, i32 0, i32 0, i32 7), align 4
  %call18.i41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %43) #16
  %44 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @expected_regs, i32 0, i32 0, i32 8), align 4
  %45 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @expected_regs, i32 0, i32 0, i32 9), align 4
  %46 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @expected_regs, i32 0, i32 0, i32 10), align 4
  %47 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @expected_regs, i32 0, i32 0, i32 11), align 4
  %call30.i42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %44, i32 noundef %45, i32 noundef %46, i32 noundef %47) #16
  %48 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @expected_regs, i32 0, i32 0, i32 12), align 4
  %49 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @expected_regs, i32 0, i32 0, i32 13), align 4
  %50 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @expected_regs, i32 0, i32 0, i32 14), align 4
  %51 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @expected_regs, i32 0, i32 0, i32 15), align 4
  %call42.i43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %48, i32 noundef %49, i32 noundef %50, i32 noundef %51) #16
  %52 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @expected_regs, i32 0, i32 0, i32 16), align 4
  %call48.i44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %52) #16
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #16
  %53 = load i32, ptr @result_regs, align 4
  %54 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @result_regs, i32 0, i32 0, i32 1), align 4
  %55 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @result_regs, i32 0, i32 0, i32 2), align 4
  %56 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @result_regs, i32 0, i32 0, i32 3), align 4
  %call.i45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %53, i32 noundef %54, i32 noundef %55, i32 noundef %56) #16
  %57 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @result_regs, i32 0, i32 0, i32 4), align 4
  %58 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @result_regs, i32 0, i32 0, i32 5), align 4
  %59 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @result_regs, i32 0, i32 0, i32 6), align 4
  %60 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @result_regs, i32 0, i32 0, i32 7), align 4
  %call18.i46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef %60) #16
  %61 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @result_regs, i32 0, i32 0, i32 8), align 4
  %62 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @result_regs, i32 0, i32 0, i32 9), align 4
  %63 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @result_regs, i32 0, i32 0, i32 10), align 4
  %64 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @result_regs, i32 0, i32 0, i32 11), align 4
  %call30.i47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %61, i32 noundef %62, i32 noundef %63, i32 noundef %64) #16
  %65 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @result_regs, i32 0, i32 0, i32 12), align 4
  %66 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @result_regs, i32 0, i32 0, i32 13), align 4
  %67 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @result_regs, i32 0, i32 0, i32 14), align 4
  %68 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @result_regs, i32 0, i32 0, i32 15), align 4
  %call42.i48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %65, i32 noundef %66, i32 noundef %67, i32 noundef %68) #16
  %69 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @result_regs, i32 0, i32 0, i32 16), align 4
  %call48.i49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %69) #16
  %tobool20.not.i = icmp eq ptr %mem.0.i, null
  br i1 %tobool20.not.i, label %do.end.i.end_crit_edge, label %do.end24.i

do.end.i.end_crit_edge:                           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

do.end24.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #16
  tail call fastcc void @print_memory(ptr noundef nonnull @expected_memory, i32 noundef %mem_size.0.i) #13
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #16
  tail call fastcc void @print_memory(ptr noundef nonnull %mem.0.i, i32 noundef %mem_size.0.i) #13
  br label %end

if.end32:                                         ; preds = %if.then2.i.if.end32_crit_edge, %if.end.i46.if.end32_crit_edge
  %.b = load i1, ptr @is_last_scenario, align 4
  br i1 %.b, label %if.end32.pass_crit_edge, label %if.end32.if.end35_crit_edge

if.end32.if.end35_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.end32.pass_crit_edge:                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %pass

if.end35:                                         ; preds = %if.end32.if.end35_crit_edge, %cleanup.thread
  %70 = load i32, ptr @test_case_run_count, align 4
  %inc = add i32 %70, 1
  store i32 %inc, ptr @test_case_run_count, align 4
  %71 = load i32, ptr @test_instance, align 4
  %inc36 = add i32 %71, 1
  store i32 %inc36, ptr @test_instance, align 4
  %72 = load i32, ptr @current_code_start, align 4
  br label %return

pass:                                             ; preds = %if.end32.pass_crit_edge, %if.then.pass_crit_edge
  br label %end

end:                                              ; preds = %pass, %do.end24.i, %do.end.i.end_crit_edge, %if.then26, %if.then20, %cleanup, %if.then8, %if.then4, %if.then.end_crit_edge
  %test_pass_count.sink51 = phi ptr [ @test_pass_count, %pass ], [ @test_fail_count, %do.end24.i ], [ @test_fail_count, %do.end.i.end_crit_edge ], [ @test_fail_count, %cleanup ], [ @test_fail_count, %if.then.end_crit_edge ], [ @test_fail_count, %if.then26 ], [ @test_fail_count, %if.then20 ], [ @test_fail_count, %if.then8 ], [ @test_fail_count, %if.then4 ]
  %73 = ptrtoint ptr %test_pass_count.sink51 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %test_pass_count.sink51, align 4
  %inc38 = add i32 %74, 1
  store i32 %inc38, ptr %test_pass_count.sink51, align 4
  %75 = load i8, ptr getelementptr inbounds (%struct.test_probe, ptr @test_before_probe, i32 0, i32 1), align 4, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i.i = icmp eq i8 %75, 0
  br i1 %tobool.not.i.i, label %end.unregister_test_probe.exit.i_crit_edge, label %if.then.i.i

end.unregister_test_probe.exit.i_crit_edge:       ; preds = %end
  call void @__sanitizer_cov_trace_pc() #15
  br label %unregister_test_probe.exit.i

if.then.i.i:                                      ; preds = %end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_kprobe(ptr noundef nonnull @test_before_probe) #13
  store i32 0, ptr getelementptr inbounds (%struct.test_probe, ptr @test_before_probe, i32 0, i32 0, i32 10), align 4
  br label %unregister_test_probe.exit.i

unregister_test_probe.exit.i:                     ; preds = %if.then.i.i, %end.unregister_test_probe.exit.i_crit_edge
  store i8 0, ptr getelementptr inbounds (%struct.test_probe, ptr @test_before_probe, i32 0, i32 1), align 4
  %76 = load i8, ptr getelementptr inbounds (%struct.test_probe, ptr @test_case_probe, i32 0, i32 1), align 4, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i1.i = icmp eq i8 %76, 0
  br i1 %tobool.not.i1.i, label %unregister_test_probe.exit.i.unregister_test_probe.exit3.i_crit_edge, label %if.then.i2.i

unregister_test_probe.exit.i.unregister_test_probe.exit3.i_crit_edge: ; preds = %unregister_test_probe.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unregister_test_probe.exit3.i

if.then.i2.i:                                     ; preds = %unregister_test_probe.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_kprobe(ptr noundef nonnull @test_case_probe) #13
  store i32 0, ptr getelementptr inbounds (%struct.test_probe, ptr @test_case_probe, i32 0, i32 0, i32 10), align 4
  br label %unregister_test_probe.exit3.i

unregister_test_probe.exit3.i:                    ; preds = %if.then.i2.i, %unregister_test_probe.exit.i.unregister_test_probe.exit3.i_crit_edge
  store i8 0, ptr getelementptr inbounds (%struct.test_probe, ptr @test_case_probe, i32 0, i32 1), align 4
  %77 = load i8, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after_probe, i32 0, i32 1), align 4, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i4.i = icmp eq i8 %77, 0
  br i1 %tobool.not.i4.i, label %unregister_test_probe.exit3.i.unregister_test_probe.exit6.i_crit_edge, label %if.then.i5.i

unregister_test_probe.exit3.i.unregister_test_probe.exit6.i_crit_edge: ; preds = %unregister_test_probe.exit3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unregister_test_probe.exit6.i

if.then.i5.i:                                     ; preds = %unregister_test_probe.exit3.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_kprobe(ptr noundef nonnull @test_after_probe) #13
  store i32 0, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after_probe, i32 0, i32 0, i32 10), align 4
  br label %unregister_test_probe.exit6.i

unregister_test_probe.exit6.i:                    ; preds = %if.then.i5.i, %unregister_test_probe.exit3.i.unregister_test_probe.exit6.i_crit_edge
  store i8 0, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after_probe, i32 0, i32 1), align 4
  %78 = load i8, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after2_probe, i32 0, i32 1), align 4, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i7.i = icmp eq i8 %78, 0
  br i1 %tobool.not.i7.i, label %unregister_test_probe.exit6.i.test_case_cleanup.exit_crit_edge, label %if.then.i8.i

unregister_test_probe.exit6.i.test_case_cleanup.exit_crit_edge: ; preds = %unregister_test_probe.exit6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %test_case_cleanup.exit

if.then.i8.i:                                     ; preds = %unregister_test_probe.exit6.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_kprobe(ptr noundef nonnull @test_after2_probe) #13
  store i32 0, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after2_probe, i32 0, i32 0, i32 10), align 4
  br label %test_case_cleanup.exit

test_case_cleanup.exit:                           ; preds = %if.then.i8.i, %unregister_test_probe.exit6.i.test_case_cleanup.exit_crit_edge
  store i8 0, ptr getelementptr inbounds (%struct.test_probe, ptr @test_after2_probe, i32 0, i32 1), align 4
  br label %return

return:                                           ; preds = %test_case_cleanup.exit, %if.end35
  %retval.0 = phi i32 [ 0, %test_case_cleanup.exit ], [ %72, %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @run_all_tests() #5 section ".init.text" align 64 {
entry:
  %k.i.i = alloca %struct.kprobe, align 4
  %list.i = alloca [10 x %struct.benchmarks], align 4
  %args.i.i = alloca %struct.table_test_args, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #16
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #16
  store ptr @arm_func, ptr getelementptr inbounds (%struct.kprobe, ptr @the_kprobe, i32 0, i32 3), align 4
  %call.i.i = tail call i32 @register_kprobe(ptr noundef nonnull @the_kprobe) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %call.i.i) #16
  br label %if.end47

if.end.i.i:                                       ; preds = %entry
  %0 = load i32, ptr @test_func_instance, align 4
  %inc.i.i.i = add i32 %0, 1
  store i32 %inc.i.i.i, ptr @test_func_instance, align 4
  store i1 false, ptr @test_regs_ok, align 1
  %call.i.i.i = tail call i32 @arm_func(i32 noundef 305419896, i32 noundef 11259375) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 316679271, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 316679271
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %call.i.i.i) #16
  br label %call_test_func.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %.b1.i.i.i = load i1, ptr @test_regs_ok, align 1
  br i1 %.b1.i.i.i, label %if.end4.i.i, label %do.end6.i.i.i

do.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call8.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #16
  br label %call_test_func.exit.thread.i.i

call_test_func.exit.thread.i.i:                   ; preds = %do.end6.i.i.i, %do.end.i.i.i
  tail call void @unregister_kprobe(ptr noundef nonnull @the_kprobe) #13
  store i32 0, ptr getelementptr inbounds (%struct.kprobe, ptr @the_kprobe, i32 0, i32 10), align 4
  br label %if.end47

if.end4.i.i:                                      ; preds = %if.end.i.i.i
  tail call void @unregister_kprobe(ptr noundef nonnull @the_kprobe) #13
  store i32 0, ptr getelementptr inbounds (%struct.kprobe, ptr @the_kprobe, i32 0, i32 10), align 4
  %1 = load i32, ptr @pre_handler_called, align 4
  %2 = load i32, ptr @test_func_instance, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp5.not.i.i = icmp eq i32 %1, %2
  br i1 %cmp5.not.i.i, label %if.end12.i.i, label %do.end9.i.i

do.end9.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #16
  br label %if.end47

if.end12.i.i:                                     ; preds = %if.end4.i.i
  %3 = load i32, ptr @post_handler_called, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp13.not.i.i = icmp eq i32 %3, %1
  br i1 %cmp13.not.i.i, label %if.end20.i.i, label %do.end17.i.i

do.end17.i.i:                                     ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call19.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #16
  br label %if.end47

if.end20.i.i:                                     ; preds = %if.end12.i.i
  %inc.i1.i.i = add i32 %1, 1
  store i32 %inc.i1.i.i, ptr @test_func_instance, align 4
  store i1 false, ptr @test_regs_ok, align 1
  %call.i2.i.i = tail call i32 @arm_func(i32 noundef 305419896, i32 noundef 11259375) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 316679271, i32 %call.i2.i.i)
  %cmp.not.i3.i.i = icmp eq i32 %call.i2.i.i, 316679271
  br i1 %cmp.not.i3.i.i, label %if.end24.i.i, label %call_test_func.exit8.thread.i.i

call_test_func.exit8.thread.i.i:                  ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %call.i2.i.i) #16
  br label %if.end47

if.end24.i.i:                                     ; preds = %if.end20.i.i
  %4 = load i32, ptr @pre_handler_called, align 4
  %5 = load i32, ptr @test_func_instance, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp25.i.i = icmp eq i32 %4, %5
  br i1 %cmp25.i.i, label %if.end24.i.i.do.end30.i.i_crit_edge, label %lor.lhs.false.i.i

if.end24.i.i.do.end30.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i.i

lor.lhs.false.i.i:                                ; preds = %if.end24.i.i
  %6 = load i32, ptr @post_handler_called, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %5)
  %cmp26.i.i = icmp eq i32 %6, %5
  br i1 %cmp26.i.i, label %lor.lhs.false.i.i.do.end30.i.i_crit_edge, label %do.end4.i

lor.lhs.false.i.i.do.end30.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %lor.lhs.false.i.i.do.end30.i.i_crit_edge, %if.end24.i.i.do.end30.i.i_crit_edge
  %call32.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #16
  br label %if.end47

do.end4.i:                                        ; preds = %lor.lhs.false.i.i
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #16
  store ptr @arm_func, ptr getelementptr inbounds (%struct.kretprobe, ptr @the_kretprobe, i32 0, i32 0, i32 3), align 4
  %call.i1.i = tail call i32 @register_kretprobe(ptr noundef nonnull @the_kretprobe) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp.i2.i = icmp slt i32 %call.i1.i, 0
  br i1 %cmp.i2.i, label %do.end.i4.i, label %if.end.i8.i

do.end.i4.i:                                      ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %call.i1.i) #16
  br label %if.end47

if.end.i8.i:                                      ; preds = %do.end4.i
  %7 = load i32, ptr @test_func_instance, align 4
  %inc.i.i5.i = add i32 %7, 1
  store i32 %inc.i.i5.i, ptr @test_func_instance, align 4
  store i1 false, ptr @test_regs_ok, align 1
  %call.i.i6.i = tail call i32 @arm_func(i32 noundef 305419896, i32 noundef 11259375) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 316679271, i32 %call.i.i6.i)
  %cmp.not.i.i7.i = icmp eq i32 %call.i.i6.i, 316679271
  br i1 %cmp.not.i.i7.i, label %if.end.i.i12.i, label %do.end.i.i10.i

do.end.i.i10.i:                                   ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i.i9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %call.i.i6.i) #16
  br label %call_test_func.exit.thread.i15.i

if.end.i.i12.i:                                   ; preds = %if.end.i8.i
  %.b1.i.i11.i = load i1, ptr @test_regs_ok, align 1
  br i1 %.b1.i.i11.i, label %if.end4.i17.i, label %do.end6.i.i14.i

do.end6.i.i14.i:                                  ; preds = %if.end.i.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  %call8.i.i13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #16
  br label %call_test_func.exit.thread.i15.i

call_test_func.exit.thread.i15.i:                 ; preds = %do.end6.i.i14.i, %do.end.i.i10.i
  tail call void @unregister_kretprobe(ptr noundef nonnull @the_kretprobe) #13
  store i32 0, ptr getelementptr inbounds (%struct.kretprobe, ptr @the_kretprobe, i32 0, i32 0, i32 10), align 4
  br label %if.end47

if.end4.i17.i:                                    ; preds = %if.end.i.i12.i
  tail call void @unregister_kretprobe(ptr noundef nonnull @the_kretprobe) #13
  store i32 0, ptr getelementptr inbounds (%struct.kretprobe, ptr @the_kretprobe, i32 0, i32 0, i32 10), align 4
  %8 = load i32, ptr @kretprobe_handler_called, align 4
  %9 = load i32, ptr @test_func_instance, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9)
  %cmp5.not.i16.i = icmp eq i32 %8, %9
  br i1 %cmp5.not.i16.i, label %if.end12.i23.i, label %do.end9.i19.i

do.end9.i19.i:                                    ; preds = %if.end4.i17.i
  call void @__sanitizer_cov_trace_pc() #15
  %call11.i18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #16
  br label %if.end47

if.end12.i23.i:                                   ; preds = %if.end4.i17.i
  %inc.i1.i20.i = add i32 %8, 1
  store i32 %inc.i1.i20.i, ptr @test_func_instance, align 4
  store i1 false, ptr @test_regs_ok, align 1
  %call.i2.i21.i = tail call i32 @arm_func(i32 noundef 305419896, i32 noundef 11259375) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 316679271, i32 %call.i2.i21.i)
  %cmp.not.i3.i22.i = icmp eq i32 %call.i2.i21.i, 316679271
  br i1 %cmp.not.i3.i22.i, label %if.end16.i.i, label %call_test_func.exit8.thread.i25.i

call_test_func.exit8.thread.i25.i:                ; preds = %if.end12.i23.i
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i4.i24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %call.i2.i21.i) #16
  br label %if.end47

if.end16.i.i:                                     ; preds = %if.end12.i23.i
  %10 = load i32, ptr @kretprobe_handler_called, align 4
  %11 = load i32, ptr @test_func_instance, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp17.i.i = icmp eq i32 %10, %11
  br i1 %cmp17.i.i, label %do.end21.i.i, label %do.end9

do.end21.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call23.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #16
  br label %if.end47

do.end9:                                          ; preds = %if.end16.i.i
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #16
  %call.i52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args.i.i) #13
  %12 = getelementptr inbounds %struct.table_test_args, ptr %args.i.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.table_test_args, ptr %args.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @probes_decode_arm_table, ptr %args.i.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %12, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %13, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @probes_decode_arm_table to i32))
  %17 = load i32, ptr @probes_decode_arm_table, align 4
  %and13.i.i.i = and i32 %17, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i.i)
  %cmp14.i.i.i = icmp eq i32 %and13.i.i.i, 0
  br i1 %cmp14.i.i.i, label %if.end10.critedge.i, label %do.end9.if.end.i.i.i54_crit_edge

do.end9.if.end.i.i.i54_crit_edge:                 ; preds = %do.end9
  br label %if.end.i.i.i54

if.end.i.i.i54:                                   ; preds = %cleanup.i.i.i.if.end.i.i.i54_crit_edge, %do.end9.if.end.i.i.i54_crit_edge
  %and16.i.i.i = phi i32 [ %and.i.i.i, %cleanup.i.i.i.if.end.i.i.i54_crit_edge ], [ %and13.i.i.i, %do.end9.if.end.i.i.i54_crit_edge ]
  %h.015.i.i.i = phi ptr [ %21, %cleanup.i.i.i.if.end.i.i.i54_crit_edge ], [ @probes_decode_arm_table, %do.end9.if.end.i.i.i54_crit_edge ]
  %call.i.i.i53 = call fastcc i32 @table_test_fn(ptr noundef %h.015.i.i.i, ptr noundef nonnull %args.i.i) #13, !callees !321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i53)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i53, 0
  br i1 %tobool.not.i.i.i, label %cleanup.i.i.i, label %table_test.exit.i

cleanup.i.i.i:                                    ; preds = %if.end.i.i.i54
  %18 = ptrtoint ptr %h.015.i.i.i to i32
  %arrayidx.i.i.i = getelementptr [7 x i32], ptr @decode_struct_sizes, i32 0, i32 %and16.i.i.i
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %20, %18
  %21 = inttoptr i32 %add.i.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %and.i.i.i = and i32 %23, 15
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i7.preheader.i, label %cleanup.i.i.i.if.end.i.i.i54_crit_edge

cleanup.i.i.i.if.end.i.i.i54_crit_edge:           ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i54

table_test.exit.i:                                ; preds = %if.end.i.i.i54
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i.i) #13
  br label %if.end47

if.end.i.i7.preheader.i:                          ; preds = %cleanup.i.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i.i) #13
  %call6.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 4096) #18
  store ptr %call7.i.i.i.i, ptr @coverage, align 4
  store i32 0, ptr getelementptr inbounds (%struct.coverage_table, ptr @coverage, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.coverage_table, ptr @coverage, i32 0, i32 2), align 4
  br label %if.end.i.i7.i

if.end.i.i7.i:                                    ; preds = %cleanup.i.i12.i.if.end.i.i7.i_crit_edge, %if.end.i.i7.preheader.i
  %and16.i.i3.i = phi i32 [ %and.i.i10.i, %cleanup.i.i12.i.if.end.i.i7.i_crit_edge ], [ %and13.i.i.i, %if.end.i.i7.preheader.i ]
  %h.015.i.i4.i = phi ptr [ %28, %cleanup.i.i12.i.if.end.i.i7.i_crit_edge ], [ @probes_decode_arm_table, %if.end.i.i7.preheader.i ]
  %call.i.i5.i = tail call fastcc i32 @coverage_start_fn(ptr noundef %h.015.i.i4.i, ptr noundef nonnull @coverage) #13, !callees !321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i5.i)
  %tobool.not.i.i6.i = icmp eq i32 %call.i.i5.i, 0
  br i1 %tobool.not.i.i6.i, label %cleanup.i.i12.i, label %if.end.i.i7.i.if.end47_crit_edge

if.end.i.i7.i.if.end47_crit_edge:                 ; preds = %if.end.i.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

cleanup.i.i12.i:                                  ; preds = %if.end.i.i7.i
  %25 = ptrtoint ptr %h.015.i.i4.i to i32
  %arrayidx.i.i8.i = getelementptr [7 x i32], ptr @decode_struct_sizes, i32 0, i32 %and16.i.i3.i
  %26 = ptrtoint ptr %arrayidx.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i8.i, align 4
  %add.i.i9.i = add i32 %27, %25
  %28 = inttoptr i32 %add.i.i9.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %and.i.i10.i = and i32 %30, 15
  %cmp.i.i11.i = icmp eq i32 %and.i.i10.i, 0
  br i1 %cmp.i.i11.i, label %cleanup.i.i12.i.if.end10.i_crit_edge, label %cleanup.i.i12.i.if.end.i.i7.i_crit_edge

cleanup.i.i12.i.if.end.i.i7.i_crit_edge:          ; preds = %cleanup.i.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i7.i

cleanup.i.i12.i.if.end10.i_crit_edge:             ; preds = %cleanup.i.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.end10.critedge.i:                              ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i.i) #13
  %call6.c.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.c.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3264, i32 noundef 4096) #18
  store ptr %call7.i.i.i.c.i, ptr @coverage, align 4
  store i32 0, ptr getelementptr inbounds (%struct.coverage_table, ptr @coverage, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.coverage_table, ptr @coverage, i32 0, i32 2), align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end10.critedge.i, %cleanup.i.i12.i.if.end10.i_crit_edge
  tail call void @kprobe_arm_test_cases() #13
  %32 = load ptr, ptr @coverage, align 4
  %33 = load i32, ptr getelementptr inbounds (%struct.coverage_table, ptr @coverage, i32 0, i32 1), align 4
  %add.ptr.i.i = getelementptr %struct.coverage_entry, ptr %32, i32 %33
  %cmp22.i.i = icmp ult ptr %32, %add.ptr.i.i
  br i1 %cmp22.i.i, label %if.end10.i.for.body.i.i_crit_edge, label %if.end10.i.do.end18_crit_edge

if.end10.i.do.end18_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18

if.end10.i.for.body.i.i_crit_edge:                ; preds = %if.end10.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end13.i.i.for.body.i.i_crit_edge, %if.end10.i.for.body.i.i_crit_edge
  %entry1.023.i.i = phi ptr [ %incdec.ptr.i.i, %if.end13.i.i.for.body.i.i_crit_edge ], [ %32, %if.end10.i.for.body.i.i_crit_edge ]
  %34 = ptrtoint ptr %entry1.023.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %entry1.023.i.i, align 4
  %mask2.i.i = getelementptr inbounds %struct.decode_header, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %mask2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mask2.i.i, align 4
  %value4.i.i = getelementptr inbounds %struct.decode_header, ptr %35, i32 0, i32 2
  %38 = ptrtoint ptr %value4.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %value4.i.i, align 4
  %regs.i.i = getelementptr inbounds %struct.coverage_entry, ptr %entry1.023.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %regs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i58_crit_edge, label %do.end.i.i57

for.body.i.i.if.end.i.i58_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i58

do.end.i.i57:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %37, i32 noundef %39, i32 noundef %41) #16
  store i8 1, ptr @coverage_fail, align 1
  br label %if.end.i.i58

if.end.i.i58:                                     ; preds = %do.end.i.i57, %for.body.i.i.if.end.i.i58_crit_edge
  %matched.i.i = getelementptr inbounds %struct.coverage_entry, ptr %entry1.023.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %matched.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %matched.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool6.not.i.i = icmp eq i8 %43, 0
  br i1 %tobool6.not.i.i, label %do.end10.i.i, label %if.end.i.i58.if.end13.i.i_crit_edge

if.end.i.i58.if.end13.i.i_crit_edge:              ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i.i

do.end10.i.i:                                     ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #15
  %call12.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %37, i32 noundef %39) #16
  store i8 1, ptr @coverage_fail, align 1
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %do.end10.i.i, %if.end.i.i58.if.end13.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.coverage_entry, ptr %entry1.023.i.i, i32 1
  %cmp.i.i59 = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i59, label %if.end13.i.i.for.body.i.i_crit_edge, label %if.end13.i.i.do.end18_crit_edge

if.end13.i.i.do.end18_crit_edge:                  ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18

if.end13.i.i.for.body.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

do.end18:                                         ; preds = %if.end13.i.i.do.end18_crit_edge, %if.end10.i.do.end18_crit_edge
  %44 = load ptr, ptr @coverage, align 4
  tail call void @kfree(ptr noundef %44) #13
  %45 = load i32, ptr @test_try_count, align 4
  %46 = load i32, ptr @test_pass_count, align 4
  %47 = load i32, ptr @test_fail_count, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %45, i32 noundef %46, i32 noundef %47) #16
  %48 = load i32, ptr @test_fail_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool21.not = icmp eq i32 %48, 0
  br i1 %tobool21.not, label %do.end26, label %do.end18.if.end47_crit_edge

do.end18.if.end47_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

do.end26:                                         ; preds = %do.end18
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %list.i) #13
  %49 = call ptr @memcpy(ptr %list.i, ptr @__const.run_benchmarks.list, i32 120)
  %addr.i.i = getelementptr inbounds %struct.kprobe, ptr %k.i.i, i32 0, i32 3
  %pre_handler.i.i = getelementptr inbounds %struct.kprobe, ptr %k.i.i, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %do.end26
  %50 = phi ptr [ @benchmark_nop, %do.end26 ], [ %61, %do.end.i.for.body.i_crit_edge ]
  %b.020.i = phi ptr [ %list.i, %do.end26 ], [ %incdec.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %offset.i = getelementptr inbounds %struct.benchmarks, ptr %b.020.i, i32 0, i32 1
  %51 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offset.i, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %k.i.i) #13
  %53 = call ptr @memset(ptr %k.i.i, i32 0, i32 80)
  %54 = ptrtoint ptr %50 to i32
  %add.i.i = add i32 %52, %54
  %55 = inttoptr i32 %add.i.i to ptr
  %56 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %addr.i.i, align 4
  %57 = ptrtoint ptr %pre_handler.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @benchmark_pre_handler, ptr %pre_handler.i.i, align 4
  %call.i.i61 = call i32 @register_kprobe(ptr noundef nonnull %k.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i61)
  %cmp.i.i62 = icmp slt i32 %call.i.i61, 0
  br i1 %cmp.i.i62, label %kprobe_benchmark.exit.thread.i, label %for.body.i.for.cond.i.i.i_crit_edge

for.body.i.for.cond.i.i.i_crit_edge:              ; preds = %for.body.i
  br label %for.cond.i.i.i

kprobe_benchmark.exit.thread.i:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %call.i.i61) #16
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %k.i.i) #13
  br label %out.thread75

for.cond.i.i.i:                                   ; preds = %for.end.i.i.i.for.cond.i.i.i_crit_edge, %for.body.i.for.cond.i.i.i_crit_edge
  %n.0.i.i.i = phi i32 [ %mul.i.i.i, %for.end.i.i.i.for.cond.i.i.i_crit_edge ], [ 1000, %for.body.i.for.cond.i.i.i_crit_edge ]
  %call.i.i.i63 = call i64 @sched_clock() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0.i.i.i)
  %cmp.not14.i.i.i = icmp eq i32 %n.0.i.i.i, 0
  br i1 %cmp.not14.i.i.i, label %for.cond.i.i.i.for.end.i.i.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  br label %for.body.i.i.i

for.cond.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.cond.i.i.i.for.body.i.i.i_crit_edge
  %i.015.i.i.i = phi i32 [ %dec.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %n.0.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  call void %50() #13
  %dec.i.i.i = add i32 %i.015.i.i.i, -1
  %cmp.not.i.i.i64 = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp.not.i.i.i64, label %for.body.i.i.i.for.end.i.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i.for.end.i.i.i_crit_edge, %for.cond.i.i.i.for.end.i.i.i_crit_edge
  %call3.i.i.i = call i64 @sched_clock() #13
  %sub.i.i.i = sub i64 %call3.i.i.i, %call.i.i.i63
  %conv5.i.i.i = trunc i64 %sub.i.i.i to i32
  %cmp6.i.i.i = icmp ugt i32 %conv5.i.i.i, 249999999
  %mul.i.i.i = shl i32 %n.0.i.i.i, 1
  br i1 %cmp6.i.i.i, label %kprobe_benchmark.exit.i, label %for.end.i.i.i.for.cond.i.i.i_crit_edge

for.end.i.i.i.for.cond.i.i.i_crit_edge:           ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i.i

kprobe_benchmark.exit.i:                          ; preds = %for.end.i.i.i
  %conv5.i.i.i.le = trunc i64 %sub.i.i.i to i32
  %div.i.i.i = udiv i32 %conv5.i.i.i.le, %n.0.i.i.i
  call void @unregister_kprobe(ptr noundef nonnull %k.i.i) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %k.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i.i.i)
  %cmp.i = icmp slt i32 %div.i.i.i, 0
  br i1 %cmp.i, label %kprobe_benchmark.exit.i.out.thread75_crit_edge, label %do.end.i

kprobe_benchmark.exit.i.out.thread75_crit_edge:   ; preds = %kprobe_benchmark.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread75

do.end.i:                                         ; preds = %kprobe_benchmark.exit.i
  %title.i = getelementptr inbounds %struct.benchmarks, ptr %b.020.i, i32 0, i32 2
  %58 = ptrtoint ptr %title.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %title.i, align 4
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i32 noundef %div.i.i.i, ptr noundef %59) #16
  %incdec.ptr.i = getelementptr %struct.benchmarks, ptr %b.020.i, i32 1
  %60 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %61, null
  br i1 %tobool.not.i, label %do.end39, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

out.thread75:                                     ; preds = %kprobe_benchmark.exit.i.out.thread75_crit_edge, %kprobe_benchmark.exit.thread.i
  %retval.0.i65.ph = phi i32 [ %call.i.i61, %kprobe_benchmark.exit.thread.i ], [ %div.i.i.i, %kprobe_benchmark.exit.i.out.thread75_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %list.i) #13
  br label %if.end47

do.end39:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131) #16
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %list.i) #13
  br label %if.end47

if.end47:                                         ; preds = %do.end39, %out.thread75, %do.end18.if.end47_crit_edge, %if.end.i.i7.i.if.end47_crit_edge, %table_test.exit.i, %do.end21.i.i, %call_test_func.exit8.thread.i25.i, %do.end9.i19.i, %call_test_func.exit.thread.i15.i, %do.end.i4.i, %do.end30.i.i, %call_test_func.exit8.thread.i.i, %do.end17.i.i, %do.end9.i.i, %call_test_func.exit.thread.i.i, %do.end.i.i
  %.str.71.sink = phi ptr [ @.str.68, %do.end39 ], [ @.str.71, %table_test.exit.i ], [ @.str.71, %do.end.i.i ], [ @.str.71, %do.end9.i.i ], [ @.str.71, %do.end17.i.i ], [ @.str.71, %do.end30.i.i ], [ @.str.71, %call_test_func.exit.thread.i.i ], [ @.str.71, %call_test_func.exit8.thread.i.i ], [ @.str.71, %do.end.i4.i ], [ @.str.71, %do.end9.i19.i ], [ @.str.71, %do.end21.i.i ], [ @.str.71, %call_test_func.exit.thread.i15.i ], [ @.str.71, %call_test_func.exit8.thread.i25.i ], [ @.str.71, %do.end18.if.end47_crit_edge ], [ @.str.71, %out.thread75 ], [ @.str.71, %if.end.i.i7.i.if.end47_crit_edge ]
  %ret.072 = phi i32 [ 0, %do.end39 ], [ %call.i.i.i53, %table_test.exit.i ], [ %call.i.i, %do.end.i.i ], [ -22, %do.end9.i.i ], [ -22, %do.end17.i.i ], [ -22, %do.end30.i.i ], [ -22, %call_test_func.exit.thread.i.i ], [ -22, %call_test_func.exit8.thread.i.i ], [ %call.i1.i, %do.end.i4.i ], [ -22, %do.end9.i19.i ], [ -22, %do.end21.i.i ], [ -22, %call_test_func.exit.thread.i15.i ], [ -22, %call_test_func.exit8.thread.i25.i ], [ -22, %do.end18.if.end47_crit_edge ], [ %retval.0.i65.ph, %out.thread75 ], [ %call.i.i5.i, %if.end.i.i7.i.if.end47_crit_edge ]
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.71.sink) #16
  ret i32 %ret.072
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @test_before_pre_handler(ptr nocapture noundef writeonly %p, ptr nocapture noundef readnone %regs) #6 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @test_instance, align 4
  %hit = getelementptr inbounds %struct.test_probe, ptr %p, i32 0, i32 2
  %1 = ptrtoint ptr %hit to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %hit, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_before_post_handler(ptr nocapture noundef readnone %p, ptr nocapture noundef %regs, i32 noundef %flags) #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @test_case_run_count, align 4
  store i1 false, ptr @is_last_scenario, align 4
  store i1 false, ptr @memory_needs_checking, align 4
  %1 = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  %cond.i = select i1 %tobool.not.i, i32 -1164413356, i32 1164413355
  %2 = load ptr, ptr @current_stack, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.085.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl nuw nsw i32 %i.085.i, 8
  %add.i = add i32 %shl.i, %cond.i
  %arrayidx.i = getelementptr i32, ptr %2, i32 %i.085.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.085.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %shr.i = ashr i32 %0, 1
  %4 = load i32, ptr @current_branch_target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not.i = icmp eq i32 %4, 0
  br i1 %tobool1.not.i, label %for.end.i.if.end.i_crit_edge, label %if.then.i

for.end.i.if.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx2.i = getelementptr i32, ptr %2, i32 15
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx2.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.end.i.if.end.i_crit_edge
  %6 = ptrtoint ptr %2 to i32
  %add3.i = add i32 %6, 120
  %arrayidx4.i = getelementptr i32, ptr %2, i32 13
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add3.i, ptr %arrayidx4.i, align 4
  %8 = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not.i = icmp eq i32 %8, 0
  %cond7.i = select i1 %tobool6.not.i, i32 559030610, i32 -559030611
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond7.i, ptr %regs, align 4
  %xor.1.i = xor i32 %cond7.i, 256
  %arrayidx12.1.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx12.1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %xor.1.i, ptr %arrayidx12.1.i, align 4
  %xor.2.i = xor i32 %cond7.i, 512
  %arrayidx12.2.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx12.2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %xor.2.i, ptr %arrayidx12.2.i, align 4
  %xor.3.i = xor i32 %cond7.i, 768
  %arrayidx12.3.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx12.3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %xor.3.i, ptr %arrayidx12.3.i, align 4
  %xor.4.i = xor i32 %cond7.i, 1024
  %arrayidx12.4.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 4
  %13 = ptrtoint ptr %arrayidx12.4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %xor.4.i, ptr %arrayidx12.4.i, align 4
  %xor.5.i = xor i32 %cond7.i, 1280
  %arrayidx12.5.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx12.5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %xor.5.i, ptr %arrayidx12.5.i, align 4
  %xor.6.i = xor i32 %cond7.i, 1536
  %arrayidx12.6.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 6
  %15 = ptrtoint ptr %arrayidx12.6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %xor.6.i, ptr %arrayidx12.6.i, align 4
  %xor.7.i = xor i32 %cond7.i, 1792
  %arrayidx12.7.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 7
  %16 = ptrtoint ptr %arrayidx12.7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %xor.7.i, ptr %arrayidx12.7.i, align 4
  %xor.8.i = xor i32 %cond7.i, 2048
  %arrayidx12.8.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 8
  %17 = ptrtoint ptr %arrayidx12.8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %xor.8.i, ptr %arrayidx12.8.i, align 4
  %xor.9.i = xor i32 %cond7.i, 2304
  %arrayidx12.9.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 9
  %18 = ptrtoint ptr %arrayidx12.9.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %xor.9.i, ptr %arrayidx12.9.i, align 4
  %xor.10.i = xor i32 %cond7.i, 2560
  %arrayidx12.10.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 10
  %19 = ptrtoint ptr %arrayidx12.10.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %xor.10.i, ptr %arrayidx12.10.i, align 4
  %xor.11.i = xor i32 %cond7.i, 2816
  %arrayidx12.11.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 11
  %20 = ptrtoint ptr %arrayidx12.11.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %xor.11.i, ptr %arrayidx12.11.i, align 4
  %xor.12.i = xor i32 %cond7.i, 3072
  %arrayidx12.12.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 12
  %21 = ptrtoint ptr %arrayidx12.12.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %xor.12.i, ptr %arrayidx12.12.i, align 4
  %xor16.i = xor i32 %cond7.i, 3584
  %arrayidx18.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 14
  %22 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %xor16.i, ptr %arrayidx18.i, align 4
  %arrayidx20.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %23 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx20.i, align 4
  %and21.i = and i32 %24, 32506879
  store i32 %and21.i, ptr %arrayidx20.i, align 4
  store i32 1, ptr @probe_should_run, align 4
  %and.i.i = and i32 %shr.i, 15
  %shl.i.i = shl i32 %shr.i, 28
  %shl2.i.i = shl nuw nsw i32 %and.i.i, 16
  %or.i.i = or i32 %shl2.i.i, %shl.i.i
  %and3.i.i = shl i32 %shr.i, 27
  %shl4.i.i = and i32 %and3.i.i, 134217728
  %or5.i.i = or i32 %or.i.i, %shl4.i.i
  %25 = load i8, ptr @test_case_is_thumb, align 1, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %26 = load i32, ptr @current_instruction, align 4
  %shr.i.i = and i32 %26, -268435456
  %call.i.i.i = tail call i32 @arm_check_condition(i32 noundef %shr.i.i, i32 noundef %or5.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp ne i32 %call.i.i.i, 0
  %conv.i.i.i = zext i1 %cmp.i.i.i to i32
  store i32 %conv.i.i.i, ptr @probe_should_run, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr.i)
  %cmp6.i.i = icmp eq i32 %shr.i, 15
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.then.i.i.test_context_cpsr.exit.i_crit_edge

if.then.i.i.test_context_cpsr.exit.i_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %test_context_cpsr.exit.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @is_last_scenario, align 4
  br label %test_context_cpsr.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  %27 = load i32, ptr @kprobe_test_flags, align 4
  %and9.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.else25.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.else.i.i
  %28 = load i32, ptr @kprobe_test_cc_position, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool12.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool12.not.i.i, label %if.then11.i.i.if.end20.i.i_crit_edge, label %if.then13.i.i

if.then11.i.i.if.end20.i.i_crit_edge:             ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i.i

if.then13.i.i:                                    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = load i32, ptr @current_instruction, align 4
  %shr15.i.i = lshr i32 %29, %28
  %and16.i.i = shl i32 %shr15.i.i, 28
  %call.i94.i.i = tail call i32 @arm_check_condition(i32 noundef %and16.i.i, i32 noundef %or5.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94.i.i)
  %cmp.i95.i.i = icmp ne i32 %call.i94.i.i, 0
  %conv.i96.i.i = zext i1 %cmp.i95.i.i to i32
  store i32 %conv.i96.i.i, ptr @probe_should_run, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then13.i.i, %if.then11.i.i.if.end20.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr.i)
  %cmp21.i.i = icmp eq i32 %shr.i, 15
  br i1 %cmp21.i.i, label %if.then23.i.i, label %if.end20.i.i.test_context_cpsr.exit.i_crit_edge

if.end20.i.i.test_context_cpsr.exit.i_crit_edge:  ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %test_context_cpsr.exit.i

if.then23.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @is_last_scenario, align 4
  br label %test_context_cpsr.exit.i

if.else25.i.i:                                    ; preds = %if.else.i.i
  %and26.i.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.else61.i.i, label %if.then28.i.i

if.then28.i.i:                                    ; preds = %if.else25.i.i
  %shr29.i.i = ashr i32 %0, 5
  %shr29.i.i.frozen = freeze i32 %shr29.i.i
  %div.i.i = udiv i32 %shr29.i.i.frozen, 7
  %30 = mul i32 %div.i.i, 7
  %rem.i.i.decomposed = sub i32 %shr29.i.i.frozen, %30
  %add.i.i = add nuw nsw i32 %div.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6719, i32 %0)
  %cmp30.i.i = icmp ugt i32 %0, 6719
  br i1 %cmp30.i.i, label %if.then32.i.i, label %if.then28.i.i.if.end38.i.i_crit_edge

if.then28.i.i.if.end38.i.i_crit_edge:             ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i.i

if.then32.i.i:                                    ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.i.i)
  %cmp34.i.i = icmp eq i32 %and.i.i, 15
  br i1 %cmp34.i.i, label %if.then36.i.i, label %if.then32.i.i.if.end38.i.i_crit_edge

if.then32.i.i.if.end38.i.i_crit_edge:             ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i.i

if.then36.i.i:                                    ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @is_last_scenario, align 4
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.then36.i.i, %if.then32.i.i.if.end38.i.i_crit_edge, %if.then28.i.i.if.end38.i.i_crit_edge
  %cond_base.0.i.i = phi i32 [ 7, %if.then36.i.i ], [ 7, %if.then32.i.i.if.end38.i.i_crit_edge ], [ %rem.i.i.decomposed, %if.then28.i.i.if.end38.i.i_crit_edge ]
  %mask.0.i.i = phi i32 [ 4, %if.then36.i.i ], [ 4, %if.then32.i.i.if.end38.i.i_crit_edge ], [ %add.i.i, %if.then28.i.i.if.end38.i.i_crit_edge ]
  %shl39.i.i = shl nuw nsw i32 %cond_base.0.i.i, 13
  %or40.i.i = or i32 %shl39.i.i, %or5.i.i
  %and41.i.i = shl i32 %mask.0.i.i, 12
  %shl42.i.i = and i32 %and41.i.i, 4096
  %or43.i.i = or i32 %shl42.i.i, %or40.i.i
  %and44.i.i = shl i32 %mask.0.i.i, 10
  %shl45.i.i = and i32 %and44.i.i, 2048
  %and47.i.i = shl i32 %mask.0.i.i, 8
  %shl48.i.i = and i32 %and47.i.i, 1024
  %and50.i.i = shl i32 %mask.0.i.i, 23
  %shl51.i.i = and i32 %and50.i.i, 67108864
  %and53.i.i = shl i32 %mask.0.i.i, 21
  %shl54.i.i = and i32 %and53.i.i, 33554432
  %or46.i.i = or i32 %shl48.i.i, %shl45.i.i
  %or49.i.i = or i32 %or46.i.i, %shl51.i.i
  %or52.i.i = or i32 %or49.i.i, %shl54.i.i
  %or55.i.i = or i32 %or52.i.i, %or43.i.i
  %and57.i.i = shl i32 %or43.i.i, 16
  %shl.i97.i.i = and i32 %and57.i.i, -268435456
  %call.i98.i.i = tail call i32 @arm_check_condition(i32 noundef %shl.i97.i.i, i32 noundef %or55.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98.i.i)
  %cmp.i99.i.i = icmp ne i32 %call.i98.i.i, 0
  %conv.i100.i.i = zext i1 %cmp.i99.i.i to i32
  store i32 %conv.i100.i.i, ptr @probe_should_run, align 4
  br label %test_context_cpsr.exit.i

if.else61.i.i:                                    ; preds = %if.else25.i.i
  %31 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %shr.i, label %if.else61.i.i.test_context_cpsr.exit.i_crit_edge [
    i32 16, label %sw.bb.i.i
    i32 17, label %sw.bb62.i.i
    i32 18, label %sw.bb63.i.i
    i32 19, label %sw.bb64.i.i
  ]

if.else61.i.i.test_context_cpsr.exit.i_crit_edge: ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %test_context_cpsr.exit.i

sw.bb.i.i:                                        ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i32 0, ptr @probe_should_run, align 4
  br label %test_context_cpsr.exit.i

sw.bb62.i.i:                                      ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i32 0, ptr @probe_should_run, align 4
  br label %test_context_cpsr.exit.i

sw.bb63.i.i:                                      ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %test_context_cpsr.exit.i

sw.bb64.i.i:                                      ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @is_last_scenario, align 4
  br label %test_context_cpsr.exit.i

test_context_cpsr.exit.i:                         ; preds = %sw.bb64.i.i, %sw.bb63.i.i, %sw.bb62.i.i, %sw.bb.i.i, %if.else61.i.i.test_context_cpsr.exit.i_crit_edge, %if.end38.i.i, %if.then23.i.i, %if.end20.i.i.test_context_cpsr.exit.i_crit_edge, %if.then8.i.i, %if.then.i.i.test_context_cpsr.exit.i_crit_edge
  %cpsr.0.i.i = phi i32 [ %or5.i.i, %if.then23.i.i ], [ %or5.i.i, %if.end20.i.i.test_context_cpsr.exit.i_crit_edge ], [ %or55.i.i, %if.end38.i.i ], [ %or5.i.i, %if.else61.i.i.test_context_cpsr.exit.i_crit_edge ], [ -268425216, %sw.bb64.i.i ], [ 38912, %sw.bb63.i.i ], [ -268404736, %sw.bb62.i.i ], [ 2048, %sw.bb.i.i ], [ %or5.i.i, %if.then8.i.i ], [ %or5.i.i, %if.then.i.i.test_context_cpsr.exit.i_crit_edge ]
  %32 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx20.i, align 4
  %or.i = or i32 %33, %cpsr.0.i.i
  store i32 %or.i, ptr %arrayidx20.i, align 4
  %34 = load ptr, ptr @current_args, align 4
  br label %for.cond24.i

for.cond24.i:                                     ; preds = %for.inc57.i, %test_context_cpsr.exit.i
  %args.0.i = phi ptr [ %34, %test_context_cpsr.exit.i ], [ %incdec.ptr.i, %for.inc57.i ]
  %35 = ptrtoint ptr %args.0.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %args.0.i, align 1
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %36, label %for.cond24.i.for.inc57.i_crit_edge [
    i8 0, label %setup_test_context.exit
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb35.i
    i8 3, label %sw.bb52.i
  ]

for.cond24.i.for.inc57.i_crit_edge:               ; preds = %for.cond24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc57.i

sw.bb.i:                                          ; preds = %for.cond24.i
  call void @__sanitizer_cov_trace_pc() #15
  %val32.i = getelementptr inbounds %struct.test_arg_regptr, ptr %args.0.i, i32 0, i32 3
  %38 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val32.i, align 4
  %reg.i = getelementptr inbounds %struct.test_arg_regptr, ptr %args.0.i, i32 0, i32 1
  %40 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %reg.i, align 1
  %idxprom.i = zext i8 %41 to i32
  %arrayidx34.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 %idxprom.i
  %42 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %arrayidx34.i, align 4
  br label %for.inc57.i

sw.bb35.i:                                        ; preds = %for.cond24.i
  %43 = load ptr, ptr @current_stack, align 4
  %44 = ptrtoint ptr %43 to i32
  %val37.i = getelementptr inbounds %struct.test_arg_regptr, ptr %args.0.i, i32 0, i32 3
  %45 = ptrtoint ptr %val37.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val37.i, align 4
  %add38.i = add i32 %46, %44
  %reg40.i = getelementptr inbounds %struct.test_arg_regptr, ptr %args.0.i, i32 0, i32 1
  %47 = ptrtoint ptr %reg40.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %reg40.i, align 1
  %idxprom41.i = zext i8 %48 to i32
  %arrayidx42.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 %idxprom41.i
  %49 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add38.i, ptr %arrayidx42.i, align 4
  store i1 true, ptr @memory_needs_checking, align 4
  %50 = load i8, ptr %reg40.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %50)
  %cmp45.i = icmp eq i8 %50, 13
  br i1 %cmp45.i, label %if.then47.i, label %sw.bb35.i.for.inc57.i_crit_edge

sw.bb35.i.for.inc57.i_crit_edge:                  ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc57.i

if.then47.i:                                      ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx20.i, align 4
  %or50.i = or i32 %52, 128
  store i32 %or50.i, ptr %arrayidx20.i, align 4
  br label %for.inc57.i

sw.bb52.i:                                        ; preds = %for.cond24.i
  call void @__sanitizer_cov_trace_pc() #15
  %val54.i = getelementptr inbounds %struct.test_arg_mem, ptr %args.0.i, i32 0, i32 3
  %53 = ptrtoint ptr %val54.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val54.i, align 4
  %55 = load ptr, ptr @current_stack, align 4
  %index.i = getelementptr inbounds %struct.test_arg_mem, ptr %args.0.i, i32 0, i32 1
  %56 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %index.i, align 1
  %idxprom55.i = zext i8 %57 to i32
  %arrayidx56.i = getelementptr i32, ptr %55, i32 %idxprom55.i
  %58 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %54, ptr %arrayidx56.i, align 4
  br label %for.inc57.i

for.inc57.i:                                      ; preds = %sw.bb52.i, %if.then47.i, %sw.bb35.i.for.inc57.i_crit_edge, %sw.bb.i, %for.cond24.i.for.inc57.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.test_arg, ptr %args.0.i, i32 1
  br label %for.cond24.i

setup_test_context.exit:                          ; preds = %for.cond24.i
  call void @__sanitizer_cov_trace_pc() #15
  %59 = call ptr @memcpy(ptr @initial_regs, ptr %regs, i32 72)
  %60 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @initial_regs, i32 0, i32 0, i32 16), align 4
  %and = and i32 %60, -321
  store i32 %and, ptr getelementptr inbounds (%struct.pt_regs, ptr @initial_regs, i32 0, i32 0, i32 16), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_check_condition(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @test_case_pre_handler(ptr nocapture noundef writeonly %p, ptr nocapture noundef readnone %regs) #6 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @test_instance, align 4
  %hit = getelementptr inbounds %struct.test_probe, ptr %p, i32 0, i32 2
  %1 = ptrtoint ptr %hit to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %hit, align 4
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_after_pre_handler(ptr nocapture noundef %p, ptr nocapture noundef %regs) #8 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hit = getelementptr inbounds %struct.test_probe, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %hit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hit, align 4
  %2 = load i32, ptr @test_instance, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = call ptr @memcpy(ptr @result_regs, ptr %regs, i32 72)
  %4 = load i32, ptr getelementptr inbounds (%struct.pt_regs, ptr @result_regs, i32 0, i32 0, i32 16), align 4
  %and = and i32 %4, -321
  store i32 %and, ptr getelementptr inbounds (%struct.pt_regs, ptr @result_regs, i32 0, i32 0, i32 16), align 4
  %5 = load ptr, ptr @current_args, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %args.0 = phi ptr [ %5, %if.end ], [ %incdec.ptr, %for.inc ]
  %6 = ptrtoint ptr %args.0 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %args.0, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.140)
  switch i8 %7, label %for.cond.for.inc_crit_edge [
    i8 0, label %for.end
    i8 4, label %if.then8
  ]

for.cond.for.inc_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then8:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %val = getelementptr inbounds %struct.test_arg_regptr, ptr %args.0, i32 0, i32 3
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %reg = getelementptr inbounds %struct.test_arg_regptr, ptr %args.0, i32 0, i32 1
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reg, align 1
  %idxprom = zext i8 %12 to i32
  %arrayidx9 = getelementptr [18 x i32], ptr @result_regs, i32 0, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx9, align 4
  %and10 = and i32 %14, %10
  store i32 %and10, ptr %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.cond.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.test_arg, ptr %args.0, i32 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %15 = load ptr, ptr @current_stack, align 4
  %16 = ptrtoint ptr %15 to i32
  %arrayidx12 = getelementptr [18 x i32], ptr %regs, i32 0, i32 13
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx14, align 4
  %and15 = and i32 %19, -129
  store i32 %and15, ptr %arrayidx14, align 4
  %20 = ptrtoint ptr %hit to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %2, ptr %hit, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_kprobe(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_kprobe(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_memory(ptr nocapture noundef readonly %mem, i32 noundef %size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %div15 = lshr i32 %size, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp16.not = icmp ult i32 %size, 4
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  %i.017 = phi i32 [ %add6, %do.end.do.end_crit_edge ], [ 0, %entry.do.end_crit_edge ]
  %arrayidx = getelementptr i32, ptr %mem, i32 %i.017
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = or i32 %i.017, 1
  %arrayidx1 = getelementptr i32, ptr %mem, i32 %add
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %add2 = or i32 %i.017, 2
  %arrayidx3 = getelementptr i32, ptr %mem, i32 %add2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %add4 = or i32 %i.017, 3
  %arrayidx5 = getelementptr i32, ptr %mem, i32 %add4
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7) #16
  %add6 = add nuw nsw i32 %i.017, 4
  %cmp = icmp ult i32 %add6, %div15
  br i1 %cmp, label %do.end.do.end_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

for.end:                                          ; preds = %do.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_func(i32 noundef, i32 noundef) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kprobe_arm_test_cases() local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pre_handler(ptr nocapture noundef readnone %p, ptr nocapture noundef readonly %regs) #6 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @test_func_instance, align 4
  store i32 %0, ptr @pre_handler_called, align 4
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 305419896, i32 %2)
  %cmp = icmp eq i32 %2, 305419896
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr [18 x i32], ptr %regs, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11259375, i32 %4)
  %cmp3 = icmp eq i32 %4, 11259375
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @test_regs_ok, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @post_handler(ptr nocapture noundef readnone %p, ptr nocapture noundef readonly %regs, i32 noundef %flags) #6 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @test_func_instance, align 4
  store i32 %0, ptr @post_handler_called, align 4
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 316679271, i32 %2)
  %cmp.not = icmp eq i32 %2, 316679271
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr [18 x i32], ptr %regs, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11259375, i32 %4)
  %cmp3.not = icmp eq i32 %4, 11259375
  br i1 %cmp3.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  store i1 false, ptr @test_regs_ok, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_kretprobe(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_kretprobe(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kretprobe_handler(ptr nocapture noundef readnone %ri, ptr nocapture noundef readonly %regs) #6 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @test_func_instance, align 4
  store i32 %0, ptr @kretprobe_handler_called, align 4
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 316679271, i32 %2)
  %cmp = icmp eq i32 %2, 316679271
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @test_regs_ok, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @table_test_fn(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %args) unnamed_addr #3 align 64 {
entry:
  %args2 = alloca %struct.table_test_args, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %h, align 4
  %and = and i32 %1, 15
  %value = getelementptr inbounds %struct.decode_header, ptr %h, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 4
  %mask = getelementptr inbounds %struct.decode_header, ptr %h, i32 0, i32 1
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %neg = xor i32 %5, -1
  %and1 = and i32 %3, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.107, i32 noundef %5, i32 noundef %3) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent_mask = getelementptr inbounds %struct.table_test_args, ptr %args, i32 0, i32 1
  %6 = ptrtoint ptr %parent_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %parent_mask, align 4
  %and3 = and i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %7)
  %cmp.not = icmp eq i32 %and3, %7
  br i1 %cmp.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.108, i32 noundef %5, i32 noundef %3) #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %parent_value = getelementptr inbounds %struct.table_test_args, ptr %args, i32 0, i32 2
  %8 = ptrtoint ptr %parent_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parent_value, align 4
  %xor = xor i32 %9, %3
  %and10 = and i32 %xor, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %call.i43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.109, i32 noundef %5, i32 noundef %3) #16
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp15 = icmp eq i32 %and, 1
  br i1 %cmp15, label %if.then16, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args2) #13
  %10 = getelementptr inbounds %struct.table_test_args, ptr %args2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.table_test_args, ptr %args2, i32 0, i32 2
  %12 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %args, align 4
  %14 = ptrtoint ptr %args2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %args2, align 4
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %5, ptr %10, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %3, ptr %11, align 4
  %table = getelementptr inbounds %struct.decode_table, ptr %h, i32 0, i32 1
  %17 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %table, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %and13.i = and i32 %20, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %cmp14.i = icmp eq i32 %and13.i, 0
  br i1 %cmp14.i, label %if.then16.table_iter.exit_crit_edge, label %if.then16.if.end.i_crit_edge

if.then16.if.end.i_crit_edge:                     ; preds = %if.then16
  br label %if.end.i

if.then16.table_iter.exit_crit_edge:              ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %table_iter.exit

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.then16.if.end.i_crit_edge
  %and16.i = phi i32 [ %and.i, %cleanup.i.if.end.i_crit_edge ], [ %and13.i, %if.then16.if.end.i_crit_edge ]
  %h.015.i = phi ptr [ %24, %cleanup.i.if.end.i_crit_edge ], [ %18, %if.then16.if.end.i_crit_edge ]
  %call.i44 = call fastcc i32 @table_test_fn(ptr noundef %h.015.i, ptr noundef nonnull %args2) #13, !callees !321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i, label %cleanup.i, label %if.end.i.table_iter.exit_crit_edge

if.end.i.table_iter.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %table_iter.exit

cleanup.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %h.015.i to i32
  %arrayidx.i = getelementptr [7 x i32], ptr @decode_struct_sizes, i32 0, i32 %and16.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %23, %21
  %24 = inttoptr i32 %add.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %and.i = and i32 %26, 15
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %cleanup.i.table_iter.exit_crit_edge, label %cleanup.i.if.end.i_crit_edge

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

cleanup.i.table_iter.exit_crit_edge:              ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %table_iter.exit

table_iter.exit:                                  ; preds = %cleanup.i.table_iter.exit_crit_edge, %if.end.i.table_iter.exit_crit_edge, %if.then16.table_iter.exit_crit_edge
  %retval.1.ph.i = phi i32 [ 0, %if.then16.table_iter.exit_crit_edge ], [ %call.i44, %if.end.i.table_iter.exit_crit_edge ], [ 0, %cleanup.i.table_iter.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args2) #13
  br label %cleanup

cleanup:                                          ; preds = %table_iter.exit, %if.end14.cleanup_crit_edge, %if.then12, %if.then5, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then5 ], [ -22, %if.then12 ], [ %retval.1.ph.i, %table_iter.exit ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @coverage_start_fn(ptr noundef %h, ptr nocapture noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_entries = getelementptr inbounds %struct.coverage_table, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp = icmp eq i32 %1, 255
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %args, align 4
  %add.ptr = getelementptr %struct.coverage_entry, ptr %3, i32 %1
  %4 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %h, align 4
  %and = and i32 %5, 15
  %inc = add i32 %1, 1
  %6 = ptrtoint ptr %num_entries to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc, ptr %num_entries, align 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %h, ptr %add.ptr, align 4
  %8 = load i32, ptr %h, align 4
  %shr.i = lshr i32 %8, 4
  %and.i = and i32 %shr.i, 15
  %arrayidx.i = getelementptr [16 x i8], ptr @coverage_register_lookup, i32 0, i32 %and.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %10 to i32
  %shr.1.i = lshr i32 %8, 8
  %and.1.i = and i32 %shr.1.i, 15
  %arrayidx.1.i = getelementptr [16 x i8], ptr @coverage_register_lookup, i32 0, i32 %and.1.i
  %11 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %12 to i32
  %shl.1.i = shl nuw nsw i32 %conv.1.i, 4
  %or.1.i = or i32 %shl.1.i, %conv.i
  %shr.2.i = lshr i32 %8, 12
  %and.2.i = and i32 %shr.2.i, 15
  %arrayidx.2.i = getelementptr [16 x i8], ptr @coverage_register_lookup, i32 0, i32 %and.2.i
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %14 to i32
  %shl.2.i = shl nuw nsw i32 %conv.2.i, 8
  %or.2.i = or i32 %or.1.i, %shl.2.i
  %shr.3.i = lshr i32 %8, 16
  %and.3.i = and i32 %shr.3.i, 15
  %arrayidx.3.i = getelementptr [16 x i8], ptr @coverage_register_lookup, i32 0, i32 %and.3.i
  %15 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %16 to i32
  %shl.3.i = shl nuw nsw i32 %conv.3.i, 12
  %or.3.i = or i32 %or.2.i, %shl.3.i
  %shr.4.i = lshr i32 %8, 20
  %and.4.i = and i32 %shr.4.i, 15
  %arrayidx.4.i = getelementptr [16 x i8], ptr @coverage_register_lookup, i32 0, i32 %and.4.i
  %17 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %18 to i32
  %shl.4.i = shl nuw nsw i32 %conv.4.i, 16
  %or.4.i = or i32 %or.3.i, %shl.4.i
  %regs = getelementptr %struct.coverage_entry, ptr %3, i32 %1, i32 1
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.4.i, ptr %regs, align 4
  %nesting = getelementptr inbounds %struct.coverage_table, ptr %args, i32 0, i32 2
  %20 = ptrtoint ptr %nesting to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nesting, align 4
  %nesting5 = getelementptr %struct.coverage_entry, ptr %3, i32 %1, i32 2
  %22 = ptrtoint ptr %nesting5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %nesting5, align 4
  %matched = getelementptr %struct.coverage_entry, ptr %3, i32 %1, i32 3
  %23 = ptrtoint ptr %matched to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %matched, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp6 = icmp eq i32 %and, 1
  br i1 %cmp6, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %24 = ptrtoint ptr %nesting to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nesting, align 4
  %inc9 = add i32 %25, 1
  store i32 %inc9, ptr %nesting, align 4
  %table = getelementptr inbounds %struct.decode_table, ptr %h, i32 0, i32 1
  %26 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %table, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %and13.i = and i32 %29, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %cmp14.i = icmp eq i32 %and13.i, 0
  br i1 %cmp14.i, label %if.then7.table_iter.exit_crit_edge, label %if.then7.if.end.i_crit_edge

if.then7.if.end.i_crit_edge:                      ; preds = %if.then7
  br label %if.end.i

if.then7.table_iter.exit_crit_edge:               ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %table_iter.exit

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.then7.if.end.i_crit_edge
  %and16.i = phi i32 [ %and.i29, %cleanup.i.if.end.i_crit_edge ], [ %and13.i, %if.then7.if.end.i_crit_edge ]
  %h.015.i = phi ptr [ %33, %cleanup.i.if.end.i_crit_edge ], [ %27, %if.then7.if.end.i_crit_edge ]
  %call.i = tail call fastcc i32 @coverage_start_fn(ptr noundef %h.015.i, ptr noundef %args) #13, !callees !321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cleanup.i, label %if.end.i.table_iter.exit_crit_edge

if.end.i.table_iter.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %table_iter.exit

cleanup.i:                                        ; preds = %if.end.i
  %30 = ptrtoint ptr %h.015.i to i32
  %arrayidx.i28 = getelementptr [7 x i32], ptr @decode_struct_sizes, i32 0, i32 %and16.i
  %31 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i28, align 4
  %add.i = add i32 %32, %30
  %33 = inttoptr i32 %add.i to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %and.i29 = and i32 %35, 15
  %cmp.i = icmp eq i32 %and.i29, 0
  br i1 %cmp.i, label %cleanup.i.table_iter.exit_crit_edge, label %cleanup.i.if.end.i_crit_edge

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

cleanup.i.table_iter.exit_crit_edge:              ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %table_iter.exit

table_iter.exit:                                  ; preds = %cleanup.i.table_iter.exit_crit_edge, %if.end.i.table_iter.exit_crit_edge, %if.then7.table_iter.exit_crit_edge
  %retval.1.ph.i = phi i32 [ 0, %if.then7.table_iter.exit_crit_edge ], [ %call.i, %if.end.i.table_iter.exit_crit_edge ], [ 0, %cleanup.i.table_iter.exit_crit_edge ]
  %36 = ptrtoint ptr %nesting to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nesting, align 4
  %dec = add i32 %37, -1
  store i32 %dec, ptr %nesting, align 4
  br label %cleanup

cleanup:                                          ; preds = %table_iter.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %retval.1.ph.i, %table_iter.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: naked noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @benchmark_nop() #0 align 64 {
entry:
  tail call void asm sideeffect "nop\09\09\0A\09mov\09pc, lr\09\0A\09", ""() #13, !srcloc !322
  unreachable
}

; Function Attrs: naked noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @benchmark_pushpop1() #0 align 64 {
entry:
  tail call void asm sideeffect "stmdb\09sp!, {r3-r11,lr}  \0A\09ldmia\09sp!, {r3-r11,pc}", ""() #13, !srcloc !323
  unreachable
}

; Function Attrs: naked noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @benchmark_pushpop2() #0 align 64 {
entry:
  tail call void asm sideeffect "stmdb\09sp!, {r0-r8,lr}  \0A\09ldmia\09sp!, {r0-r8,pc}", ""() #13, !srcloc !324
  unreachable
}

; Function Attrs: naked noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @benchmark_pushpop3() #0 align 64 {
entry:
  tail call void asm sideeffect "stmdb\09sp!, {r4,lr}  \0A\09ldmia\09sp!, {r4,pc}", ""() #13, !srcloc !325
  unreachable
}

; Function Attrs: naked noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @benchmark_pushpop4() #0 align 64 {
entry:
  tail call void asm sideeffect "stmdb\09sp!, {r0,lr}  \0A\09ldmia\09sp!, {r0,pc}", ""() #13, !srcloc !326
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @benchmark_pre_handler(ptr nocapture noundef readnone %p, ptr nocapture noundef readnone %regs) #11 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

attributes #0 = { naked noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !98, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !206, !208, !209, !210, !211, !213, !214, !215, !217, !219, !221, !223, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !238, !240, !241, !242, !243, !245, !246, !247, !249, !251, !253, !255, !257, !258, !259, !260, !262, !263, !264, !265, !267, !268, !269, !270, !272, !273, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !295, !296, !297, !299, !300, !301, !303, !304, !305}
!llvm.module.flags = !{!307, !308, !309, !310, !311, !312, !313, !314}
!llvm.ident = !{!315}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1375, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1381, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1391, i32 20}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1398, i32 20}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1403, i32 20}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1407, i32 20}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1414, i32 21}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1482, i32 20}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1488, i32 20}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1505, i32 21}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1512, i32 22}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1517, i32 22}
!24 = !{ptr @__initcall__kmod_test_kprobes__243_1671_run_all_tests7, !25, !"__initcall__kmod_test_kprobes__243_1671_run_all_tests7", i1 false, i1 false}
!25 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1671, i32 1}
!26 = !{ptr @coverage_fail, !27, !"coverage_fail", i1 false, i1 false}
!27 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 686, i32 6}
!28 = !{ptr @coverage, !29, !"coverage", i1 false, i1 false}
!29 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 703, i32 23}
!30 = !{ptr @kprobe_test_flags, !31, !"kprobe_test_flags", i1 false, i1 false}
!31 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 981, i32 5}
!32 = !{ptr @kprobe_test_cc_position, !33, !"kprobe_test_cc_position", i1 false, i1 false}
!33 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 982, i32 5}
!34 = !{ptr @test_try_count, !35, !"test_try_count", i1 false, i1 false}
!35 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 984, i32 12}
!36 = !{ptr @test_pass_count, !37, !"test_pass_count", i1 false, i1 false}
!37 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 985, i32 12}
!38 = !{ptr @test_fail_count, !39, !"test_fail_count", i1 false, i1 false}
!39 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 986, i32 12}
!40 = !{ptr @expected_regs, !41, !"expected_regs", i1 false, i1 false}
!41 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 989, i32 23}
!42 = !{ptr @result_regs, !43, !"result_regs", i1 false, i1 false}
!43 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 990, i32 23}
!44 = !{ptr @expected_memory, !45, !"expected_memory", i1 false, i1 false}
!45 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 992, i32 12}
!46 = !{ptr @current_title, !47, !"current_title", i1 false, i1 false}
!47 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 994, i32 20}
!48 = !{ptr @current_args, !49, !"current_args", i1 false, i1 false}
!49 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 995, i32 25}
!50 = !{ptr @current_stack, !51, !"current_stack", i1 false, i1 false}
!51 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 996, i32 13}
!52 = !{ptr @current_branch_target, !53, !"current_branch_target", i1 false, i1 false}
!53 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 997, i32 18}
!54 = !{ptr @current_code_start, !55, !"current_code_start", i1 false, i1 false}
!55 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 999, i32 18}
!56 = !{ptr @current_instruction, !57, !"current_instruction", i1 false, i1 false}
!57 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1000, i32 24}
!58 = !{ptr @test_case_run_count, !59, !"test_case_run_count", i1 false, i1 false}
!59 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1006, i32 12}
!60 = !{ptr @test_case_is_thumb, !61, !"test_case_is_thumb", i1 false, i1 false}
!61 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1007, i32 13}
!62 = !{ptr @test_instance, !63, !"test_instance", i1 false, i1 false}
!63 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1008, i32 12}
!64 = distinct !{null, !65, !"is_last_scenario", i1 false, i1 false}
!65 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1017, i32 12}
!66 = !{ptr @probe_should_run, !67, !"probe_should_run", i1 false, i1 false}
!67 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1018, i32 12}
!68 = !{ptr @coverage_register_lookup, !69, !"coverage_register_lookup", i1 false, i1 false}
!69 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 710, i32 19}
!70 = !{ptr @test_before_probe, !71, !"test_before_probe", i1 false, i1 false}
!71 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1241, i32 26}
!72 = distinct !{null, !73, !"memory_needs_checking", i1 false, i1 false}
!73 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1019, i32 12}
!74 = !{ptr @initial_regs, !75, !"initial_regs", i1 false, i1 false}
!75 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 988, i32 23}
!76 = !{ptr @test_case_probe, !77, !"test_case_probe", i1 false, i1 false}
!77 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1246, i32 26}
!78 = !{ptr @test_after_probe, !79, !"test_after_probe", i1 false, i1 false}
!79 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1250, i32 26}
!80 = !{ptr @.str.12, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1300, i32 2}
!82 = !{ptr @.str.13, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.14, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @test_case_failed._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @test_case_failed._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.16, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1301, i32 2}
!88 = !{ptr @test_case_failed._entry.15, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @test_case_failed._entry_ptr.17, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.19, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1302, i32 2}
!92 = !{ptr @test_case_failed._entry.18, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @test_case_failed._entry_ptr.20, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @test_after2_probe, !95, !"test_after2_probe", i1 false, i1 false}
!95 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1254, i32 26}
!96 = !{ptr @.str.21, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1437, i32 20}
!98 = !{ptr @.str.22, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1445, i32 21}
!100 = !{ptr @.str.23, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1453, i32 2}
!102 = !{ptr @.str.24, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @check_test_results._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @check_test_results._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.26, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1455, i32 2}
!107 = !{ptr @check_test_results._entry.25, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @check_test_results._entry_ptr.27, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.29, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1457, i32 2}
!111 = !{ptr @check_test_results._entry.28, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @check_test_results._entry_ptr.30, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.32, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1461, i32 3}
!115 = !{ptr @check_test_results._entry.31, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @check_test_results._entry_ptr.33, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.35, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1463, i32 3}
!119 = !{ptr @check_test_results._entry.34, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @check_test_results._entry_ptr.36, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.37, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1268, i32 2}
!123 = !{ptr @.str.38, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @print_registers._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @print_registers._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.40, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1270, i32 2}
!128 = !{ptr @print_registers._entry.39, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @print_registers._entry_ptr.41, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.43, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1272, i32 2}
!132 = !{ptr @print_registers._entry.42, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @print_registers._entry_ptr.44, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.46, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1274, i32 2}
!136 = !{ptr @print_registers._entry.45, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @print_registers._entry_ptr.47, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.49, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1276, i32 2}
!140 = !{ptr @print_registers._entry.48, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @print_registers._entry_ptr.50, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.51, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1283, i32 3}
!144 = !{ptr @.str.52, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @print_memory._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @print_memory._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.53, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1576, i32 2}
!149 = !{ptr @.str.54, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @run_all_tests._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @run_all_tests._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.56, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1580, i32 2}
!154 = !{ptr @run_all_tests._entry.55, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @run_all_tests._entry_ptr.57, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.59, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1585, i32 2}
!158 = !{ptr @run_all_tests._entry.58, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @run_all_tests._entry_ptr.60, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.62, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1620, i32 2}
!162 = !{ptr @run_all_tests._entry.61, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @run_all_tests._entry_ptr.63, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.65, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1628, i32 2}
!166 = !{ptr @run_all_tests._entry.64, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @run_all_tests._entry_ptr.66, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.68, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1647, i32 3}
!170 = !{ptr @run_all_tests._entry.67, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @run_all_tests._entry_ptr.69, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.71, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1649, i32 3}
!174 = !{ptr @run_all_tests._entry.70, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @run_all_tests._entry_ptr.72, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.73, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 418, i32 2}
!178 = !{ptr @.str.74, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @run_api_tests._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @run_api_tests._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.76, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 423, i32 2}
!183 = !{ptr @run_api_tests._entry.75, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @run_api_tests._entry_ptr.77, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.78, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 339, i32 3}
!187 = !{ptr @.str.79, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @test_kprobe._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @test_kprobe._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.81, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 351, i32 3}
!192 = !{ptr @test_kprobe._entry.80, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @test_kprobe._entry_ptr.82, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.84, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 355, i32 3}
!196 = !{ptr @test_kprobe._entry.83, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @test_kprobe._entry_ptr.85, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.87, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 362, i32 3}
!200 = !{ptr @test_kprobe._entry.86, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @test_kprobe._entry_ptr.88, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @the_kprobe, !203, !"the_kprobe", i1 false, i1 false}
!203 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 326, i32 22}
!204 = distinct !{null, !205, !"test_regs_ok", i1 false, i1 false}
!205 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 223, i32 13}
!206 = !{ptr @.str.89, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 298, i32 3}
!208 = !{ptr @.str.90, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @call_test_func._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @call_test_func._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.92, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 303, i32 3}
!213 = !{ptr @call_test_func._entry.91, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @call_test_func._entry_ptr.93, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @pre_handler_called, !216, !"pre_handler_called", i1 false, i1 false}
!216 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 225, i32 12}
!217 = !{ptr @test_func_instance, !218, !"test_func_instance", i1 false, i1 false}
!218 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 224, i32 12}
!219 = !{ptr @post_handler_called, !220, !"post_handler_called", i1 false, i1 false}
!220 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 226, i32 12}
!221 = !{ptr @.str.94, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 389, i32 3}
!223 = !{ptr @.str.95, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @test_kretprobe._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @test_kretprobe._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.97, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 401, i32 3}
!228 = !{ptr @test_kretprobe._entry.96, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @test_kretprobe._entry_ptr.98, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.100, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 407, i32 3}
!232 = !{ptr @test_kretprobe._entry.99, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @test_kretprobe._entry_ptr.101, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @the_kretprobe, !235, !"the_kretprobe", i1 false, i1 false}
!235 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 378, i32 25}
!236 = !{ptr @kretprobe_handler_called, !237, !"kretprobe_handler_called", i1 false, i1 false}
!237 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 227, i32 12}
!238 = !{ptr @.str.102, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1555, i32 2}
!240 = !{ptr @.str.103, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @run_test_cases._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @run_test_cases._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.105, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 1560, i32 2}
!245 = !{ptr @run_test_cases._entry.104, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @run_test_cases._entry_ptr.106, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @decode_struct_sizes, !248, !"decode_struct_sizes", i1 false, i1 false}
!248 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 587, i32 18}
!249 = !{ptr @.str.107, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 639, i32 29}
!251 = !{ptr @.str.108, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 642, i32 29}
!253 = !{ptr @.str.109, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 645, i32 29}
!255 = !{ptr @.str.110, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 622, i32 2}
!257 = !{ptr @.str.111, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @table_test_fail._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @table_test_fail._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.112, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 741, i32 3}
!262 = !{ptr @.str.113, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @coverage_start_fn._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @coverage_start_fn._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.114, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 899, i32 4}
!267 = !{ptr @.str.115, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @coverage_end._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @coverage_end._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.117, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 904, i32 4}
!272 = !{ptr @coverage_end._entry.116, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @coverage_end._entry_ptr.118, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.119, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 547, i32 23}
!276 = !{ptr @.str.120, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 553, i32 28}
!278 = !{ptr @.str.121, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 554, i32 28}
!280 = !{ptr @.str.122, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 555, i32 28}
!282 = !{ptr @.str.123, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 556, i32 28}
!284 = !{ptr @.str.124, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 557, i32 28}
!286 = !{ptr @.str.125, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 558, i32 28}
!288 = !{ptr @.str.126, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 559, i32 28}
!290 = !{ptr @.str.127, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 560, i32 28}
!292 = !{ptr @.str.128, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 573, i32 3}
!294 = !{ptr @.str.129, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @run_benchmarks._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @run_benchmarks._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.131, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 576, i32 2}
!299 = !{ptr @run_benchmarks._entry.130, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @run_benchmarks._entry_ptr.132, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.133, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 527, i32 3}
!303 = !{ptr @kprobe_benchmark._entry, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @kprobe_benchmark._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!305 = distinct !{null, !306, !"tests_failed", i1 false, i1 false}
!306 = !{!"../arch/arm/probes/kprobes/test-core.c", i32 228, i32 12}
!307 = !{i32 1, !"wchar_size", i32 2}
!308 = !{i32 1, !"min_enum_size", i32 4}
!309 = !{i32 8, !"branch-target-enforcement", i32 0}
!310 = !{i32 8, !"sign-return-address", i32 0}
!311 = !{i32 8, !"sign-return-address-all", i32 0}
!312 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!313 = !{i32 7, !"uwtable", i32 1}
!314 = !{i32 7, !"frame-pointer", i32 2}
!315 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!316 = !{i64 8488, i64 8500, i64 8537, i64 8559, i64 8586, i64 8609}
!317 = !{i64 23674, i64 23692, i64 23719, i64 23743, i64 23775, i64 23828, i64 23873, i64 23897, i64 23935, i64 23956}
!318 = !{i64 24071, i64 24089, i64 24125, i64 24149, i64 24175, i64 24199, i64 24252, i64 24284, i64 24308, i64 24332}
!319 = !{i8 0, i8 2}
!320 = !{i64 2154124023, i64 2154124524, i64 2154124060, i64 2154124116, i64 2154124150, i64 2154124174, i64 2154124215, i64 2154124236, i64 2154124264, i64 2154124298}
!321 = !{ptr @coverage_start_fn, ptr @table_test_fn}
!322 = !{i64 12730, i64 12738, i64 12755}
!323 = !{i64 12912, i64 12945}
!324 = !{i64 13062, i64 13094}
!325 = !{i64 13210, i64 13239}
!326 = !{i64 13352, i64 13381}

; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-loopback-test.c_pt.bc'
source_filename = "../drivers/spi/spi-loopback-test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+spi_test_execute_msg\22, \22a\22\09"
module asm "\09.weak\09__crc_spi_test_execute_msg\09\09\09\09"
module asm "\09.long\09__crc_spi_test_execute_msg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_test_execute_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_test_execute_msg\22\09\09\09\09\09"
module asm "__kstrtabns_spi_test_execute_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+spi_test_run_test\22, \22a\22\09"
module asm "\09.weak\09__crc_spi_test_run_test\09\09\09\09"
module asm "\09.long\09__crc_spi_test_run_test\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_test_run_test:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_test_run_test\22\09\09\09\09\09"
module asm "__kstrtabns_spi_test_run_test:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+spi_test_run_tests\22, \22a\22\09"
module asm "\09.weak\09__crc_spi_test_run_tests\09\09\09\09"
module asm "\09.long\09__crc_spi_test_run_tests\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_test_run_tests:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_test_run_tests\22\09\09\09\09\09"
module asm "__kstrtabns_spi_test_run_tests:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_test = type { [64 x i8], %struct.spi_message, [4 x %struct.spi_transfer], i32, ptr, ptr, i32, [32 x i32], i32, i32, i32, i32, i32, i64 }
%struct.rx_ranges = type { %struct.list_head, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }

@__this_module = external dso_local global %struct.module, align 128
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@simulate_only = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_simulate_only = internal constant %struct.kernel_param { ptr @___asan_gen_.83, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @simulate_only } }, section "__param", align 4
@__UNIQUE_ID_simulate_onlytype230 = internal constant [27 x i8] c"parmtype=simulate_only:int\00", section ".modinfo", align 1
@__UNIQUE_ID_simulate_only231 = internal constant [59 x i8] c"parm=simulate_only:if not 0 do not execute the spi message\00", section ".modinfo", align 1
@dump_messages = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dump_messages = internal constant %struct.kernel_param { ptr @___asan_gen_.86, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @dump_messages } }, section "__param", align 4
@__UNIQUE_ID_dump_messagestype232 = internal constant [27 x i8] c"parmtype=dump_messages:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dump_messages233 = internal constant [171 x i8] c"parm=dump_messages:=1 dump the basic spi_message_structure, =2 dump the spi_message_structure including data, =3 dump the spi_message structure before and after execution\00", section ".modinfo", align 1
@loopback = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_loopback = internal constant %struct.kernel_param { ptr @___asan_gen_.89, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @loopback } }, section "__param", align 4
@__UNIQUE_ID_loopbacktype234 = internal constant [22 x i8] c"parmtype=loopback:int\00", section ".modinfo", align 1
@__UNIQUE_ID_loopback235 = internal constant [121 x i8] c"parm=loopback:if set enable loopback mode, where the rx_buf is checked to match tx_buf after the spi_message is executed\00", section ".modinfo", align 1
@loop_req = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_loop_req = internal constant %struct.kernel_param { ptr @___asan_gen_.92, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @loop_req } }, section "__param", align 4
@__UNIQUE_ID_loop_reqtype236 = internal constant [22 x i8] c"parmtype=loop_req:int\00", section ".modinfo", align 1
@__UNIQUE_ID_loop_req237 = internal constant [132 x i8] c"parm=loop_req:if set controller will be asked to enable test loop mode. If controller supported it, MISO and MOSI will be connected\00", section ".modinfo", align 1
@no_cs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_no_cs = internal constant %struct.kernel_param { ptr @___asan_gen_.95, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @no_cs } }, section "__param", align 4
@__UNIQUE_ID_no_cstype238 = internal constant [19 x i8] c"parmtype=no_cs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_no_cs239 = internal constant [52 x i8] c"parm=no_cs:if set Chip Select (CS) will not be used\00", section ".modinfo", align 1
@run_only_test = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_run_only_test = internal constant %struct.kernel_param { ptr @___asan_gen_.98, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @run_only_test } }, section "__param", align 4
@__UNIQUE_ID_run_only_testtype240 = internal constant [27 x i8] c"parmtype=run_only_test:int\00", section ".modinfo", align 1
@__UNIQUE_ID_run_only_test241 = internal constant [66 x i8] c"parm=run_only_test:only run the test with this number (0-based !)\00", section ".modinfo", align 1
@use_vmalloc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_use_vmalloc = internal constant %struct.kernel_param { ptr @___asan_gen_.101, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @use_vmalloc } }, section "__param", align 4
@__UNIQUE_ID_use_vmalloctype242 = internal constant [25 x i8] c"parmtype=use_vmalloc:int\00", section ".modinfo", align 1
@__UNIQUE_ID_use_vmalloc243 = internal constant [62 x i8] c"parm=use_vmalloc:use vmalloc'ed buffers instead of kmalloc'ed\00", section ".modinfo", align 1
@check_ranges = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_check_ranges = internal constant %struct.kernel_param { ptr @___asan_gen_.104, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @check_ranges } }, section "__param", align 4
@__UNIQUE_ID_check_rangestype244 = internal constant [26 x i8] c"parmtype=check_ranges:int\00", section ".modinfo", align 1
@__UNIQUE_ID_check_ranges245 = internal constant [53 x i8] c"parm=check_ranges:checks rx_buffer pattern are valid\00", section ".modinfo", align 1
@__param_str_compatible = internal constant [11 x i8] c"compatible\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_compatible = internal constant %struct.kparam_string { i32 128, ptr getelementptr (i8, ptr @spi_loopback_test_of_match, i64 64) }, align 4
@__param_compatible = internal constant %struct.kernel_param { ptr @__param_str_compatible, ptr @__this_module, ptr @param_ops_string, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @__param_string_compatible } }, section "__param", align 4
@__UNIQUE_ID_compatibletype246 = internal constant [27 x i8] c"parmtype=compatible:string\00", section ".modinfo", align 1
@spi_loopback_test_of_match = internal global [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"linux,spi-loopback-test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [46 x i8] c"author=Martin Sperl <kernel@martin.sperl.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [56 x i8] c"description=test spi_driver to check core functionality\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@spi_test_execute_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 917, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"spi-message timed out - rerunning...\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spi_test_execute_msg\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/spi/spi-loopback-test.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spi_test_execute_msg._entry_ptr = internal global ptr @spi_test_execute_msg._entry, section ".printk_index", align 4
@spi_test_execute_msg._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 926, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to execute spi_message: %i\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@spi_test_execute_msg._entry_ptr.8 = internal global ptr @spi_test_execute_msg._entry.5, section ".printk_index", align 4
@spi_test_execute_msg._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 933, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"actual length differs from expected\0A\00", [59 x i8] zeroinitializer }, align 32
@spi_test_execute_msg._entry_ptr.11 = internal global ptr @spi_test_execute_msg._entry.9, section ".printk_index", align 4
@__kstrtab_spi_test_execute_msg = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_test_execute_msg = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_test_execute_msg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_test_execute_msg to i32), ptr @__kstrtab_spi_test_execute_msg, ptr @__kstrtabns_spi_test_execute_msg }, section "___ksymtab_gpl+spi_test_execute_msg", align 4
@spi_test_run_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 981, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Exceeded max number of transfers with %i\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi_test_run_test\00", [46 x i8] zeroinitializer }, align 32
@spi_test_run_test._entry_ptr = internal global ptr @spi_test_run_test._entry, section ".printk_index", align 4
@__kstrtab_spi_test_run_test = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_test_run_test = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_test_run_test = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_test_run_test to i32), ptr @__kstrtab_spi_test_run_test, ptr @__kstrtabns_spi_test_run_test }, section "___ksymtab_gpl+spi_test_run_test", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_spi_test_run_tests = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_test_run_tests = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_test_run_tests = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_test_run_tests to i32), ptr @__kstrtab_spi_test_run_tests, ptr @__kstrtabns_spi_test_run_tests }, section "___ksymtab_gpl+spi_test_run_tests", align 4
@spi_loopback_test_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @spi_loopback_test_probe, ptr null, ptr null, %struct.device_driver { ptr @.str.14, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr @spi_loopback_test_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi-loopback-test\00", [46 x i8] zeroinitializer }, align 32
@spi_loopback_test_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 330, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"SPI setup with SPI_LOOP or SPI_NO_CS failed (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"spi_loopback_test_probe\00", [40 x i8] zeroinitializer }, align 32
@spi_loopback_test_probe._entry_ptr = internal global ptr @spi_loopback_test_probe._entry, section ".printk_index", align 4
@spi_loopback_test_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 335, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Executing spi-loopback-tests\0A\00", [34 x i8] zeroinitializer }, align 32
@spi_loopback_test_probe._entry_ptr.19 = internal global ptr @spi_loopback_test_probe._entry.17, section ".printk_index", align 4
@spi_loopback_test_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 340, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Finished spi-loopback-tests with return: %i\0A\00", [51 x i8] zeroinitializer }, align 32
@spi_loopback_test_probe._entry_ptr.22 = internal global ptr @spi_loopback_test_probe._entry.20, section ".printk_index", align 4
@spi_tests = internal global { <{ %struct.spi_test, { [64 x i8], %struct.spi_message, [4 x %struct.spi_transfer], i32, ptr, ptr, i32, <{ [23 x i32], [9 x i32] }>, i32, i32, i32, i32, i32, i64 }, %struct.spi_test, %struct.spi_test, { [64 x i8], %struct.spi_message, [4 x %struct.spi_transfer], i32, ptr, ptr, i32, <{ [23 x i32], [9 x i32] }>, i32, i32, i32, i32, i32, i64 }, %struct.spi_test, %struct.spi_test, %struct.spi_test, %struct.spi_test, %struct.spi_test, { [64 x i8], %struct.spi_message, [4 x %struct.spi_transfer], i32, ptr, ptr, i32, <{ [23 x i32], [9 x i32] }>, i32, i32, i32, i32, i32, i64 }, %struct.spi_test, %struct.spi_test, %struct.spi_test, %struct.spi_test }>, [2536 x i8] } { <{ %struct.spi_test, { [64 x i8], %struct.spi_message, [4 x %struct.spi_transfer], i32, ptr, ptr, i32, <{ [23 x i32], [9 x i32] }>, i32, i32, i32, i32, i32, i64 }, %struct.spi_test, %struct.spi_test, { [64 x i8], %struct.spi_message, [4 x %struct.spi_transfer], i32, ptr, ptr, i32, <{ [23 x i32], [9 x i32] }>, i32, i32, i32, i32, i32, i64 }, %struct.spi_test, %struct.spi_test, %struct.spi_test, %struct.spi_test, %struct.spi_test, { [64 x i8], %struct.spi_message, [4 x %struct.spi_transfer], i32, ptr, ptr, i32, <{ [23 x i32], [9 x i32] }>, i32, i32, i32, i32, i32, i64 }, %struct.spi_test, %struct.spi_test, %struct.spi_test, %struct.spi_test }> <{ %struct.spi_test { [64 x i8] c"tx/rx-transfer - start of page\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.spi_message zeroinitializer, [4 x %struct.spi_transfer] [%struct.spi_transfer { ptr inttoptr (i32 -2147483648 to ptr), ptr inttoptr (i32 1073741824 to ptr), i32 0, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer zeroinitializer, %struct.spi_transfer zeroinitializer, %struct.spi_transfer zeroinitializer], i32 1, ptr null, ptr null, i32 0, [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 7, i32 11, i32 16, i32 31, i32 32, i32 64, i32 97, i32 128, i32 251, i32 256, i32 1021, i32 1024, i32 1031, i32 4093, i32 4096, i32 4099, i32 65536, i32 65537, i32 131071, i32 131072, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 4, i32 4, i32 0, i32 4, i32 0, i64 0 }, { [64 x i8], %struct.spi_message, [4 x %struct.spi_transfer], i32, ptr, ptr, i32, <{ [23 x i32], [9 x i32] }>, i32, i32, i32, i32, i32, i64 } { [64 x i8] c"tx/rx-transfer - crossing PAGE_SIZE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.spi_message zeroinitializer, [4 x %struct.spi_transfer] [%struct.spi_transfer { ptr inttoptr (i32 -2147479556 to ptr), ptr inttoptr (i32 1073745916 to ptr), i32 0, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer zeroinitializer, %struct.spi_transfer zeroinitializer, %struct.spi_transfer zeroinitializer], i32 1, ptr null, ptr null, i32 0, <{ [23 x i32], [9 x i32] }> <{ [23 x i32] [i32 0, i32 1, i32 2, i32 3, i32 7, i32 11, i32 16, i32 31, i32 32, i32 64, i32 97, i32 128, i32 251, i32 256, i32 1021, i32 1024, i32 1031, i32 4093, i32 4096, i32 4099, i32 65536, i32 65537, i32 -1], [9 x i32] zeroinitializer }>, i32 4, i32 4, i32 0, i32 4, i32 0, i64 0 }, %struct.spi_test { [64 x i8] c"tx-transfer - only\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.spi_message zeroinitializer, [4 x %struct.spi_transfer] [%struct.spi_transfer { ptr inttoptr (i32 -2147483648 to ptr), ptr null, i32 0, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer zeroinitializer, %struct.spi_transfer zeroinitializer, %struct.spi_transfer zeroinitializer], i32 1, ptr null, ptr null, i32 0, [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 7, i32 11, i32 16, i32 31, i32 32, i32 64, i32 97, i32 128, i32 251, i32 256, i32 1021, i32 1024, i32 1031, i32 4093, i32 4096, i32 4099, i32 65536, i32 65537, i32 131071, i32 131072, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 4, i32 0, i32 0, i32 4, i32 0, i64 0 }, %struct.spi_test { [64 x i8] c"rx-transfer - only\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.spi_message zeroinitializer, [4 x %struct.spi_transfer] [%struct.spi_transfer { ptr null, ptr inttoptr (i32 1073741824 to ptr), i32 0, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer zeroinitializer, %struct.spi_transfer zeroinitializer, %struct.spi_transfer zeroinitializer], i32 1, ptr null, ptr null, i32 0, [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 7, i32 11, i32 16, i32 31, i32 32, i32 64, i32 97, i32 128, i32 251, i32 256, i32 1021, i32 1024, i32 1031, i32 4093, i32 4096, i32 4099, i32 65536, i32 65537, i32 131071, i32 131072, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 0, i32 4, i32 0, i32 4, i32 0, i64 0 }, { [64 x i8], %struct.spi_message, [4 x %struct.spi_transfer], i32, ptr, ptr, i32, <{ [23 x i32], [9 x i32] }>, i32, i32, i32, i32, i32, i64 } { [64 x i8] c"two tx-transfers - alter both\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.spi_message zeroinitializer, [4 x %struct.spi_transfer] [%struct.spi_transfer { ptr inttoptr (i32 -2147483648 to ptr), ptr null, i32 0, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer { ptr inttoptr (i32 -1610612736 to ptr), ptr null, i32 0, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer zeroinitializer, %struct.spi_transfer zeroinitializer], i32 2, ptr null, ptr null, i32 0, <{ [23 x i32], [9 x i32] }> <{ [23 x i32] [i32 0, i32 1, i32 2, i32 3, i32 7, i32 11, i32 16, i32 31, i32 32, i32 64, i32 97, i32 128, i32 251, i32 256, i32 1021, i32 1024, i32 1031, i32 4093, i32 4096, i32 4099, i32 65536, i32 65537, i32 -1], [9 x i32] zeroinitializer }>, i32 4, i32 0, i32 3, i32 4, i32 0, i64 0 }, %struct.spi_test { [64 x i8] c"two tx-transfers - alter first\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.spi_message zeroinitializer, [4 x %struct.spi_transfer] [%struct.spi_transfer { ptr inttoptr (i32 -2147483584 to ptr), ptr null, i32 0, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer { ptr inttoptr (i32 -2147483648 to ptr), ptr null, i32 1, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer zeroinitializer, %struct.spi_transfer zeroinitializer], i32 2, ptr null, ptr null, i32 0, [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 7, i32 11, i32 16, i32 31, i32 32, i32 64, i32 97, i32 128, i32 251, i32 256, i32 1021, i32 1024, i32 1031, i32 4093, i32 4096, i32 4099, i32 65536, i32 65537, i32 131071, i32 131072, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 4, i32 0, i32 1, i32 4, i32 0, i64 0 }, %struct.spi_test { [64 x i8] c"two tx-transfers - alter second\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.spi_message zeroinitializer, [4 x %struct.spi_transfer] [%struct.spi_transfer { ptr inttoptr (i32 -2147483648 to ptr), ptr null, i32 16, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer { ptr inttoptr (i32 -2147483584 to ptr), ptr null, i32 0, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer zeroinitializer, %struct.spi_transfer zeroinitializer], i32 2, ptr null, ptr null, i32 0, [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 7, i32 11, i32 16, i32 31, i32 32, i32 64, i32 97, i32 128, i32 251, i32 256, i32 1021, i32 1024, i32 1031, i32 4093, i32 4096, i32 4099, i32 65536, i32 65537, i32 131071, i32 131072, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 4, i32 0, i32 2, i32 4, i32 0, i64 0 }, %struct.spi_test { [64 x i8] c"two transfers tx then rx - alter both\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.spi_message zeroinitializer, [4 x %struct.spi_transfer] [%struct.spi_transfer { ptr inttoptr (i32 -2147483648 to ptr), ptr null, i32 0, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer { ptr null, ptr inttoptr (i32 1073741824 to ptr), i32 0, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer zeroinitializer, %struct.spi_transfer zeroinitializer], i32 2, ptr null, ptr null, i32 0, [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 7, i32 11, i32 16, i32 31, i32 32, i32 64, i32 97, i32 128, i32 251, i32 256, i32 1021, i32 1024, i32 1031, i32 4093, i32 4096, i32 4099, i32 65536, i32 65537, i32 131071, i32 131072, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 4, i32 0, i32 3, i32 4, i32 0, i64 0 }, %struct.spi_test { [64 x i8] c"two transfers tx then rx - alter tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.spi_message zeroinitializer, [4 x %struct.spi_transfer] [%struct.spi_transfer { ptr inttoptr (i32 -2147483648 to ptr), ptr null, i32 0, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer { ptr null, ptr inttoptr (i32 1073741824 to ptr), i32 1, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer zeroinitializer, %struct.spi_transfer zeroinitializer], i32 2, ptr null, ptr null, i32 0, [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 7, i32 11, i32 16, i32 31, i32 32, i32 64, i32 97, i32 128, i32 251, i32 256, i32 1021, i32 1024, i32 1031, i32 4093, i32 4096, i32 4099, i32 65536, i32 65537, i32 131071, i32 131072, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 4, i32 0, i32 1, i32 4, i32 0, i64 0 }, %struct.spi_test { [64 x i8] c"two transfers tx then rx - alter rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.spi_message zeroinitializer, [4 x %struct.spi_transfer] [%struct.spi_transfer { ptr inttoptr (i32 -2147483648 to ptr), ptr null, i32 1, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer { ptr null, ptr inttoptr (i32 1073741824 to ptr), i32 0, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer zeroinitializer, %struct.spi_transfer zeroinitializer], i32 2, ptr null, ptr null, i32 0, [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 7, i32 11, i32 16, i32 31, i32 32, i32 64, i32 97, i32 128, i32 251, i32 256, i32 1021, i32 1024, i32 1031, i32 4093, i32 4096, i32 4099, i32 65536, i32 65537, i32 131071, i32 131072, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 4, i32 0, i32 2, i32 4, i32 0, i64 0 }, { [64 x i8], %struct.spi_message, [4 x %struct.spi_transfer], i32, ptr, ptr, i32, <{ [23 x i32], [9 x i32] }>, i32, i32, i32, i32, i32, i64 } { [64 x i8] c"two tx+rx transfers - alter both\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.spi_message zeroinitializer, [4 x %struct.spi_transfer] [%struct.spi_transfer { ptr inttoptr (i32 -2147483648 to ptr), ptr inttoptr (i32 1073741824 to ptr), i32 0, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer { ptr inttoptr (i32 -1610612736 to ptr), ptr inttoptr (i32 1610612736 to ptr), i32 0, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer zeroinitializer, %struct.spi_transfer zeroinitializer], i32 2, ptr null, ptr null, i32 0, <{ [23 x i32], [9 x i32] }> <{ [23 x i32] [i32 0, i32 1, i32 2, i32 3, i32 7, i32 11, i32 16, i32 31, i32 32, i32 64, i32 97, i32 128, i32 251, i32 256, i32 1021, i32 1024, i32 1031, i32 4093, i32 4096, i32 4099, i32 65536, i32 65537, i32 -1], [9 x i32] zeroinitializer }>, i32 4, i32 0, i32 3, i32 4, i32 0, i64 0 }, %struct.spi_test { [64 x i8] c"two tx+rx transfers - alter first\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.spi_message zeroinitializer, [4 x %struct.spi_transfer] [%struct.spi_transfer { ptr inttoptr (i32 -2147482624 to ptr), ptr inttoptr (i32 1073742848 to ptr), i32 0, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer { ptr inttoptr (i32 -2147483648 to ptr), ptr inttoptr (i32 1073741824 to ptr), i32 1, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer zeroinitializer, %struct.spi_transfer zeroinitializer], i32 2, ptr null, ptr null, i32 0, [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 7, i32 11, i32 16, i32 31, i32 32, i32 64, i32 97, i32 128, i32 251, i32 256, i32 1021, i32 1024, i32 1031, i32 4093, i32 4096, i32 4099, i32 65536, i32 65537, i32 131071, i32 131072, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 4, i32 0, i32 1, i32 4, i32 0, i64 0 }, %struct.spi_test { [64 x i8] c"two tx+rx transfers - alter second\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.spi_message zeroinitializer, [4 x %struct.spi_transfer] [%struct.spi_transfer { ptr inttoptr (i32 -2147483648 to ptr), ptr inttoptr (i32 1073741824 to ptr), i32 1, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer { ptr inttoptr (i32 -2147482624 to ptr), ptr inttoptr (i32 1073742848 to ptr), i32 0, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer zeroinitializer, %struct.spi_transfer zeroinitializer], i32 2, ptr null, ptr null, i32 0, [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 7, i32 11, i32 16, i32 31, i32 32, i32 64, i32 97, i32 128, i32 251, i32 256, i32 1021, i32 1024, i32 1031, i32 4093, i32 4096, i32 4099, i32 65536, i32 65537, i32 131071, i32 131072, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 4, i32 0, i32 2, i32 4, i32 0, i64 0 }, %struct.spi_test { [64 x i8] c"two tx+rx transfers - delay after transfer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.spi_message zeroinitializer, [4 x %struct.spi_transfer] [%struct.spi_transfer { ptr inttoptr (i32 -2147483648 to ptr), ptr inttoptr (i32 1073741824 to ptr), i32 0, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay { i16 1000, i8 0 }, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer { ptr inttoptr (i32 -2147483648 to ptr), ptr inttoptr (i32 1073741824 to ptr), i32 0, i32 0, i32 0, %struct.sg_table zeroinitializer, %struct.sg_table zeroinitializer, i8 0, i8 0, %struct.spi_delay { i16 1000, i8 0 }, %struct.spi_delay zeroinitializer, %struct.spi_delay zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, %struct.list_head zeroinitializer, i16 0 }, %struct.spi_transfer zeroinitializer, %struct.spi_transfer zeroinitializer], i32 2, ptr null, ptr null, i32 0, [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 7, i32 11, i32 16, i32 31, i32 32, i32 64, i32 97, i32 128, i32 251, i32 256, i32 1021, i32 1024, i32 1031, i32 4093, i32 4096, i32 4099, i32 65536, i32 65537, i32 131071, i32 131072, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 0, i32 0, i32 3, i32 4, i32 0, i64 0 }, %struct.spi_test zeroinitializer }>, [2536 x i8] zeroinitializer }, align 32
@spi_test_dump_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 412, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  spi_msg@%pK\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spi_test_dump_message\00", [42 x i8] zeroinitializer }, align 32
@spi_test_dump_message._entry_ptr = internal global ptr @spi_test_dump_message._entry, section ".printk_index", align 4
@spi_test_dump_message._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 415, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"    status:        %i\0A\00", [41 x i8] zeroinitializer }, align 32
@spi_test_dump_message._entry_ptr.28 = internal global ptr @spi_test_dump_message._entry.26, section ".printk_index", align 4
@spi_test_dump_message._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 417, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"    frame_length:  %i\0A\00", [41 x i8] zeroinitializer }, align 32
@spi_test_dump_message._entry_ptr.31 = internal global ptr @spi_test_dump_message._entry.29, section ".printk_index", align 4
@spi_test_dump_message._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.2, i32 419, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"    actual_length: %i\0A\00", [41 x i8] zeroinitializer }, align 32
@spi_test_dump_message._entry_ptr.34 = internal global ptr @spi_test_dump_message._entry.32, section ".printk_index", align 4
@spi_test_dump_message._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.25, ptr @.str.2, i32 422, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"    spi_transfer@%pK\0A\00", [42 x i8] zeroinitializer }, align 32
@spi_test_dump_message._entry_ptr.37 = internal global ptr @spi_test_dump_message._entry.35, section ".printk_index", align 4
@spi_test_dump_message._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.25, ptr @.str.2, i32 423, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"      len:    %i\0A\00", [46 x i8] zeroinitializer }, align 32
@spi_test_dump_message._entry_ptr.40 = internal global ptr @spi_test_dump_message._entry.38, section ".printk_index", align 4
@spi_test_dump_message._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.25, ptr @.str.2, i32 424, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"      tx_buf: %pK\0A\00", [45 x i8] zeroinitializer }, align 32
@spi_test_dump_message._entry_ptr.43 = internal global ptr @spi_test_dump_message._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"          TX: \00", [17 x i8] zeroinitializer }, align 32
@spi_test_dump_message._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.25, ptr @.str.2, i32 430, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"      rx_buf: %pK\0A\00", [45 x i8] zeroinitializer }, align 32
@spi_test_dump_message._entry_ptr.47 = internal global ptr @spi_test_dump_message._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"          RX: \00", [17 x i8] zeroinitializer }, align 32
@spi_test_dump_message._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.25, ptr @.str.2, i32 446, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"      rx_buf filled with %02x starts at offset: %i\0A\00", [44 x i8] zeroinitializer }, align 32
@spi_test_dump_message._entry_ptr.51 = internal global ptr @spi_test_dump_message._entry.49, section ".printk_index", align 4
@spi_test_print_hex_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s truncated - continuing at offset %04zx\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"spi_test_print_hex_dump\00", [40 x i8] zeroinitializer }, align 32
@spi_test_print_hex_dump._entry_ptr = internal global ptr @spi_test_print_hex_dump._entry, section ".printk_index", align 4
@spi_test_check_loopback_result._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 605, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"loopback strangeness - we expect 0x00 or 0xff, but not 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"spi_test_check_loopback_result\00", [33 x i8] zeroinitializer }, align 32
@spi_test_check_loopback_result._entry_ptr = internal global ptr @spi_test_check_loopback_result._entry, section ".printk_index", align 4
@spi_test_check_loopback_result._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 622, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"loopback strangeness - transfer mismatch on byte %04zx - expected 0x%02x, but got 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@spi_test_check_loopback_result._entry_ptr.58 = internal global ptr @spi_test_check_loopback_result._entry.56, section ".printk_index", align 4
@spi_check_rx_ranges._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 525, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"loopback strangeness - rx changed outside of allowed range at: %pK\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spi_check_rx_ranges\00", [44 x i8] zeroinitializer }, align 32
@spi_check_rx_ranges._entry_ptr = internal global ptr @spi_check_rx_ranges._entry, section ".printk_index", align 4
@spi_test_check_elapsed_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 557, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"elapsed time %lld ns is shorter than minimum estimated time %lld ns\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"spi_test_check_elapsed_time\00", [36 x i8] zeroinitializer }, align 32
@spi_test_check_elapsed_time._entry_ptr = internal global ptr @spi_test_check_elapsed_time._entry, section ".printk_index", align 4
@spi_test_run_iter.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@spi_test_run_iter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 851, ptr @.str.65, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: iterate_tx_off configured with tx_buf==NULL - ignoring\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi_test_run_iter\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@spi_test_run_iter._entry_ptr = internal global ptr @spi_test_run_iter._entry, section ".printk_index", align 4
@spi_test_run_iter.__print_once.66 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@spi_test_run_iter._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.64, ptr @.str.2, i32 857, ptr @.str.65, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: iterate_rx_off configured with rx_buf==NULL - ignoring\0A\00", [36 x i8] zeroinitializer }, align 32
@spi_test_run_iter._entry_ptr.69 = internal global ptr @spi_test_run_iter._entry.67, section ".printk_index", align 4
@spi_test_run_iter._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.64, ptr @.str.2, i32 863, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Running test %s\0A\00", [47 x i8] zeroinitializer }, align 32
@spi_test_run_iter._entry_ptr.72 = internal global ptr @spi_test_run_iter._entry.70, section ".printk_index", align 4
@spi_test_run_iter._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.64, ptr @.str.2, i32 867, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"  with iteration values: len = %zu, tx_off = %zu, rx_off = %zu\0A\00", [32 x i8] zeroinitializer }, align 32
@spi_test_run_iter._entry_ptr.75 = internal global ptr @spi_test_run_iter._entry.73, section ".printk_index", align 4
@_spi_test_run_iter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 805, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"test failed - test returned %i, but we expect %i\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_spi_test_run_iter\00", [45 x i8] zeroinitializer }, align 32
@_spi_test_run_iter._entry_ptr = internal global ptr @_spi_test_run_iter._entry, section ".printk_index", align 4
@spi_test_translate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 665, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"PointerRange [%pK:%pK[ not in range [%pK:%pK[ or [%pK:%pK[\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spi_test_translate\00", [45 x i8] zeroinitializer }, align 32
@spi_test_translate._entry_ptr = internal global ptr @spi_test_translate._entry, section ".printk_index", align 4
@spi_test_fill_pattern._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 745, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unsupported fill_option: %i\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spi_test_fill_pattern\00", [42 x i8] zeroinitializer }, align 32
@spi_test_fill_pattern._entry_ptr = internal global ptr @spi_test_fill_pattern._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.82 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 16]
@___asan_gen_.83 = private constant [14 x i8] c"simulate_only\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 26, i32 12 }
@___asan_gen_.86 = private constant [14 x i8] c"dump_messages\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 31, i32 12 }
@___asan_gen_.89 = private constant [9 x i8] c"loopback\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 38, i32 12 }
@___asan_gen_.92 = private constant [9 x i8] c"loop_req\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 45, i32 12 }
@___asan_gen_.95 = private constant [6 x i8] c"no_cs\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 51, i32 12 }
@___asan_gen_.98 = private constant [14 x i8] c"run_only_test\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 57, i32 12 }
@___asan_gen_.101 = private constant [12 x i8] c"use_vmalloc\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 63, i32 12 }
@___asan_gen_.104 = private constant [13 x i8] c"check_ranges\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 69, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 916, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 924, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 932, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 979, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [25 x i8] c"spi_loopback_test_driver\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 358, i32 26 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 360, i32 11 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 329, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 335, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 339, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [10 x i8] c"spi_tests\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 75, i32 24 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 412, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 414, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 416, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 418, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 422, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 423, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 424, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 426, i32 28 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 430, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 432, i32 28 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 443, i32 5 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 397, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 603, i32 5 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 620, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 523, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 555, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 849, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 855, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 863, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 865, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 803, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 661, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.339 = private constant [35 x i8] c"../drivers/spi/spi-loopback-test.c\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 743, i32 5 }
@llvm.compiler.used = appending global [146 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_check_ranges245, ptr @__UNIQUE_ID_check_rangestype244, ptr @__UNIQUE_ID_compatibletype246, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_dump_messages233, ptr @__UNIQUE_ID_dump_messagestype232, ptr @__UNIQUE_ID_license249, ptr @__UNIQUE_ID_loop_req237, ptr @__UNIQUE_ID_loop_reqtype236, ptr @__UNIQUE_ID_loopback235, ptr @__UNIQUE_ID_loopbacktype234, ptr @__UNIQUE_ID_no_cs239, ptr @__UNIQUE_ID_no_cstype238, ptr @__UNIQUE_ID_run_only_test241, ptr @__UNIQUE_ID_run_only_testtype240, ptr @__UNIQUE_ID_simulate_only231, ptr @__UNIQUE_ID_simulate_onlytype230, ptr @__UNIQUE_ID_use_vmalloc243, ptr @__UNIQUE_ID_use_vmalloctype242, ptr @__ksymtab_spi_test_execute_msg, ptr @__ksymtab_spi_test_run_test, ptr @__ksymtab_spi_test_run_tests, ptr @__param_check_ranges, ptr @__param_compatible, ptr @__param_dump_messages, ptr @__param_loop_req, ptr @__param_loopback, ptr @__param_no_cs, ptr @__param_run_only_test, ptr @__param_simulate_only, ptr @__param_use_vmalloc, ptr @_spi_test_run_iter._entry, ptr @_spi_test_run_iter._entry_ptr, ptr @spi_check_rx_ranges._entry, ptr @spi_check_rx_ranges._entry_ptr, ptr @spi_loopback_test_probe._entry, ptr @spi_loopback_test_probe._entry.17, ptr @spi_loopback_test_probe._entry.20, ptr @spi_loopback_test_probe._entry_ptr, ptr @spi_loopback_test_probe._entry_ptr.19, ptr @spi_loopback_test_probe._entry_ptr.22, ptr @spi_test_check_elapsed_time._entry, ptr @spi_test_check_elapsed_time._entry_ptr, ptr @spi_test_check_loopback_result._entry, ptr @spi_test_check_loopback_result._entry.56, ptr @spi_test_check_loopback_result._entry_ptr, ptr @spi_test_check_loopback_result._entry_ptr.58, ptr @spi_test_dump_message._entry, ptr @spi_test_dump_message._entry.26, ptr @spi_test_dump_message._entry.29, ptr @spi_test_dump_message._entry.32, ptr @spi_test_dump_message._entry.35, ptr @spi_test_dump_message._entry.38, ptr @spi_test_dump_message._entry.41, ptr @spi_test_dump_message._entry.45, ptr @spi_test_dump_message._entry.49, ptr @spi_test_dump_message._entry_ptr, ptr @spi_test_dump_message._entry_ptr.28, ptr @spi_test_dump_message._entry_ptr.31, ptr @spi_test_dump_message._entry_ptr.34, ptr @spi_test_dump_message._entry_ptr.37, ptr @spi_test_dump_message._entry_ptr.40, ptr @spi_test_dump_message._entry_ptr.43, ptr @spi_test_dump_message._entry_ptr.47, ptr @spi_test_dump_message._entry_ptr.51, ptr @spi_test_execute_msg._entry, ptr @spi_test_execute_msg._entry.5, ptr @spi_test_execute_msg._entry.9, ptr @spi_test_execute_msg._entry_ptr, ptr @spi_test_execute_msg._entry_ptr.11, ptr @spi_test_execute_msg._entry_ptr.8, ptr @spi_test_fill_pattern._entry, ptr @spi_test_fill_pattern._entry_ptr, ptr @spi_test_print_hex_dump._entry, ptr @spi_test_print_hex_dump._entry_ptr, ptr @spi_test_run_iter._entry, ptr @spi_test_run_iter._entry.67, ptr @spi_test_run_iter._entry.70, ptr @spi_test_run_iter._entry.73, ptr @spi_test_run_iter._entry_ptr, ptr @spi_test_run_iter._entry_ptr.69, ptr @spi_test_run_iter._entry_ptr.72, ptr @spi_test_run_iter._entry_ptr.75, ptr @spi_test_run_test._entry, ptr @spi_test_run_test._entry_ptr, ptr @spi_test_translate._entry, ptr @spi_test_translate._entry_ptr, ptr @simulate_only, ptr @dump_messages, ptr @loopback, ptr @loop_req, ptr @no_cs, ptr @run_only_test, ptr @use_vmalloc, ptr @check_ranges, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @spi_loopback_test_driver, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @spi_tests, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simulate_only to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_messages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_req to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_cs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_only_test to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_vmalloc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_ranges to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_execute_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_execute_msg._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_execute_msg._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_run_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_loopback_test_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_loopback_test_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_loopback_test_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_loopback_test_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_tests to i32), i32 10200, i32 12736, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_dump_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_dump_message._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_dump_message._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_dump_message._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_dump_message._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_dump_message._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_dump_message._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_dump_message._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_dump_message._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_print_hex_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_check_loopback_result._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_check_loopback_result._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_check_rx_ranges._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_check_elapsed_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_run_iter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_run_iter._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_run_iter._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_run_iter._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_spi_test_run_iter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_translate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_test_fill_pattern._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@__mod_of__spi_loopback_test_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @spi_loopback_test_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @spi_loopback_test_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @spi_loopback_test_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_test_execute_msg(ptr noundef %spi, ptr noundef %test, ptr nocapture readnone %tx, ptr noundef %rx) #1 align 64 {
entry:
  %ranges.i.i = alloca [4 x %struct.rx_ranges], align 4
  %ranges_list.i.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %msg1 = getelementptr inbounds %struct.spi_test, ptr %test, i32 0, i32 1
  %0 = load i32, ptr @simulate_only, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @dump_messages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @spi_test_dump_message(ptr noundef %spi, ptr noundef %msg1, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %call = tail call i64 @ktime_get() #7
  %call3 = tail call i32 @spi_sync(ptr noundef %spi, ptr noundef %msg1) #7
  %call4 = tail call i64 @ktime_get() #7
  %sub = sub i64 %call4, %call
  %elapsed_time = getelementptr inbounds %struct.spi_test, ptr %test, i32 0, i32 13
  %2 = ptrtoint ptr %elapsed_time to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %sub, ptr %elapsed_time, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call3)
  %cmp6 = icmp eq i32 %call3, -110
  br i1 %cmp6, label %do.end, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str) #10
  tail call void @schedule() #7
  tail call void @schedule() #7
  tail call void @schedule() #7
  tail call void @schedule() #7
  tail call void @schedule() #7
  tail call void @schedule() #7
  tail call void @schedule() #7
  tail call void @schedule() #7
  tail call void @schedule() #7
  tail call void @schedule() #7
  tail call void @schedule() #7
  tail call void @schedule() #7
  tail call void @schedule() #7
  tail call void @schedule() #7
  tail call void @schedule() #7
  tail call void @schedule() #7
  %call9 = tail call i32 @spi_sync(ptr noundef %spi, ptr noundef %msg1) #7
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end.if.end10_crit_edge
  %ret.0 = phi i32 [ %call9, %do.end ], [ %call3, %if.end.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool11.not = icmp eq i32 %ret.0, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.6, i32 noundef %ret.0) #10
  br label %exit.thread

if.end17:                                         ; preds = %if.end10
  %frame_length = getelementptr inbounds %struct.spi_test, ptr %test, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %frame_length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %frame_length, align 4
  %actual_length = getelementptr inbounds %struct.spi_test, ptr %test, i32 0, i32 1, i32 6
  %5 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp18.not = icmp eq i32 %4, %6
  br i1 %cmp18.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.10) #10
  br label %exit.thread

if.end24:                                         ; preds = %if.end17
  %7 = load i32, ptr @check_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end24.if.end3.i_crit_edge, label %if.then.i

if.end24.if.end3.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ranges.i.i) #7
  %8 = call ptr @memset(ptr %ranges.i.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ranges_list.i.i) #7
  %9 = getelementptr inbounds %struct.list_head, ptr %ranges_list.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %ranges_list.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ranges_list.i.i, ptr %ranges_list.i.i, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ranges_list.i.i, ptr %9, align 4
  %12 = ptrtoint ptr %msg1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn100.i.i = load ptr, ptr %msg1, align 4
  %cmp.not101.i.i = icmp eq ptr %.pn100.i.i, %msg1
  br i1 %cmp.not101.i.i, label %if.then.i.spi_check_rx_ranges.exit.thread.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i.spi_check_rx_ranges.exit.thread.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_check_rx_ranges.exit.thread.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %add.ptr7.i.i = getelementptr i8, ptr %rx, i32 135168
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn103.i.i = phi ptr [ %.pn100.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.0102.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %i.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %rx_buf.i.i = getelementptr i8, ptr %.pn103.i.i, i32 -80
  %13 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_buf.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  %cmp4.not.i.i = icmp ult ptr %14, %rx
  %or.cond.i.i = or i1 %tobool.not.i.i, %cmp4.not.i.i
  br i1 %or.cond.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %len.i.i = getelementptr i8, ptr %.pn103.i.i, i32 -76
  %15 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %14, i32 %16
  %cmp8.not.i.i = icmp ugt ptr %add.ptr6.i.i, %add.ptr7.i.i
  br i1 %cmp8.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %if.then9.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true.i.i
  %arrayidx.i.i = getelementptr [4 x %struct.rx_ranges], ptr %ranges.i.i, i32 0, i32 %i.0102.i.i
  %start.i.i = getelementptr [4 x %struct.rx_ranges], ptr %ranges.i.i, i32 0, i32 %i.0102.i.i, i32 1
  %17 = ptrtoint ptr %start.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %start.i.i, align 4
  %18 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_buf.i.i, align 4
  %20 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i.i, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %19, i32 %21
  %end.i.i = getelementptr [4 x %struct.rx_ranges], ptr %ranges.i.i, i32 0, i32 %i.0102.i.i, i32 2
  %22 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr13.i.i, ptr %end.i.i, align 4
  %23 = ptrtoint ptr %ranges_list.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ranges_list.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.i.i, ptr noundef nonnull %ranges_list.i.i, ptr noundef %24) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then9.i.i.list_add.exit.i.i_crit_edge

if.then9.i.i.list_add.exit.i.i_crit_edge:         ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx.i.i, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %arrayidx.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ranges_list.i.i, ptr %prev3.i.i.i.i, align 4
  %28 = ptrtoint ptr %ranges_list.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %arrayidx.i.i, ptr %ranges_list.i.i, align 4
  br label %list_add.exit.i.i

list_add.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then9.i.i.list_add.exit.i.i_crit_edge
  %inc.i.i = add i32 %i.0102.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %list_add.exit.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %i.1.i.i = phi i32 [ %inc.i.i, %list_add.exit.i.i ], [ %i.0102.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge ], [ %i.0102.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %29 = ptrtoint ptr %.pn103.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i.i = load ptr, ptr %.pn103.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %msg1
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1.i.i)
  %tobool22.not.i.i = icmp eq i32 %i.1.i.i, 0
  br i1 %tobool22.not.i.i, label %for.end.i.i.spi_check_rx_ranges.exit.thread.i_crit_edge, label %if.end24.i.i

for.end.i.i.spi_check_rx_ranges.exit.thread.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_check_rx_ranges.exit.thread.i

if.end24.i.i:                                     ; preds = %for.end.i.i
  call void @list_sort(ptr noundef null, ptr noundef nonnull %ranges_list.i.i, ptr noundef nonnull @rx_ranges_cmp) #7
  %cmp27109.i.i = icmp ugt ptr %add.ptr7.i.i, %rx
  br i1 %cmp27109.i.i, label %if.end24.i.i.for.body28.i.outer.i_crit_edge, label %if.end24.i.i.spi_check_rx_ranges.exit.thread.i_crit_edge

if.end24.i.i.spi_check_rx_ranges.exit.thread.i_crit_edge: ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_check_rx_ranges.exit.thread.i

if.end24.i.i.for.body28.i.outer.i_crit_edge:      ; preds = %if.end24.i.i
  br label %for.body28.i.outer.i

for.body28.i.outer.i:                             ; preds = %for.inc65.i.thread.i.for.body28.i.outer.i_crit_edge, %if.end24.i.i.for.body28.i.outer.i_crit_edge
  %addr.0111.i.ph.i = phi ptr [ %incdec.ptr.i34.i, %for.inc65.i.thread.i.for.body28.i.outer.i_crit_edge ], [ %rx, %if.end24.i.i.for.body28.i.outer.i_crit_edge ]
  %tobool1.not.i = phi i1 [ false, %for.inc65.i.thread.i.for.body28.i.outer.i_crit_edge ], [ true, %if.end24.i.i.for.body28.i.outer.i_crit_edge ]
  %ret.0110.i.ph.i = phi i32 [ -34, %for.inc65.i.thread.i.for.body28.i.outer.i_crit_edge ], [ 0, %if.end24.i.i.for.body28.i.outer.i_crit_edge ]
  br label %for.body28.i.i

for.body28.i.i:                                   ; preds = %for.inc65.i.i.for.body28.i.i_crit_edge, %for.body28.i.outer.i
  %addr.0111.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc65.i.i.for.body28.i.i_crit_edge ], [ %addr.0111.i.ph.i, %for.body28.i.outer.i ]
  %30 = ptrtoint ptr %addr.0111.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %addr.0111.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %31)
  %cmp29.i.i = icmp eq i8 %31, 85
  br i1 %cmp29.i.i, label %for.body28.i.i.for.inc65.i.i_crit_edge, label %for.cond37.preheader.i.i

for.body28.i.i.for.inc65.i.i_crit_edge:           ; preds = %for.body28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc65.i.i

for.cond37.preheader.i.i:                         ; preds = %for.body28.i.i
  %32 = ptrtoint ptr %ranges_list.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %r.0104.i.i = load ptr, ptr %ranges_list.i.i, align 4
  %cmp39.not105.i.i = icmp eq ptr %r.0104.i.i, %ranges_list.i.i
  br i1 %cmp39.not105.i.i, label %for.cond37.preheader.i.i.for.inc65.i.thread.i_crit_edge, label %for.cond37.preheader.i.i.for.body42.i.i_crit_edge

for.cond37.preheader.i.i.for.body42.i.i_crit_edge: ; preds = %for.cond37.preheader.i.i
  br label %for.body42.i.i

for.cond37.preheader.i.i.for.inc65.i.thread.i_crit_edge: ; preds = %for.cond37.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc65.i.thread.i

for.body42.i.i:                                   ; preds = %for.inc53.i.i.for.body42.i.i_crit_edge, %for.cond37.preheader.i.i.for.body42.i.i_crit_edge
  %r.0107.i.i = phi ptr [ %r.0.i.i, %for.inc53.i.i.for.body42.i.i_crit_edge ], [ %r.0104.i.i, %for.cond37.preheader.i.i.for.body42.i.i_crit_edge ]
  %addr.1106.i.i = phi ptr [ %addr.2.i.i, %for.inc53.i.i.for.body42.i.i_crit_edge ], [ %addr.0111.i.i, %for.cond37.preheader.i.i.for.body42.i.i_crit_edge ]
  %start43.i.i = getelementptr inbounds %struct.rx_ranges, ptr %r.0107.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %start43.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %start43.i.i, align 4
  %cmp44.not.i.i = icmp ult ptr %addr.1106.i.i, %34
  br i1 %cmp44.not.i.i, label %for.body42.i.i.for.inc53.i.i_crit_edge, label %land.lhs.true46.i.i

for.body42.i.i.for.inc53.i.i_crit_edge:           ; preds = %for.body42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc53.i.i

land.lhs.true46.i.i:                              ; preds = %for.body42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %end47.i.i = getelementptr inbounds %struct.rx_ranges, ptr %r.0107.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %end47.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end47.i.i, align 4
  %cmp48.i.i = icmp ult ptr %addr.1106.i.i, %36
  %spec.select.i.i = select i1 %cmp48.i.i, ptr %36, ptr %addr.1106.i.i
  br label %for.inc53.i.i

for.inc53.i.i:                                    ; preds = %land.lhs.true46.i.i, %for.body42.i.i.for.inc53.i.i_crit_edge
  %addr.2.i.i = phi ptr [ %addr.1106.i.i, %for.body42.i.i.for.inc53.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true46.i.i ]
  %37 = ptrtoint ptr %r.0107.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %r.0.i.i = load ptr, ptr %r.0107.i.i, align 4
  %cmp39.not.i.i = icmp eq ptr %r.0.i.i, %ranges_list.i.i
  br i1 %cmp39.not.i.i, label %for.end59.i.i, label %for.inc53.i.i.for.body42.i.i_crit_edge

for.inc53.i.i.for.body42.i.i_crit_edge:           ; preds = %for.inc53.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42.i.i

for.end59.i.i:                                    ; preds = %for.inc53.i.i
  %38 = ptrtoint ptr %addr.2.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %.pr.i.i = load i8, ptr %addr.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %.pr.i.i)
  %cmp61.i.i = icmp eq i8 %.pr.i.i, 85
  br i1 %cmp61.i.i, label %for.end59.i.i.for.inc65.i.i_crit_edge, label %for.end59.i.i.for.inc65.i.thread.i_crit_edge

for.end59.i.i.for.inc65.i.thread.i_crit_edge:     ; preds = %for.end59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc65.i.thread.i

for.end59.i.i.for.inc65.i.i_crit_edge:            ; preds = %for.end59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc65.i.i

for.inc65.i.i:                                    ; preds = %for.end59.i.i.for.inc65.i.i_crit_edge, %for.body28.i.i.for.inc65.i.i_crit_edge
  %addr.3.i.i = phi ptr [ %addr.0111.i.i, %for.body28.i.i.for.inc65.i.i_crit_edge ], [ %addr.2.i.i, %for.end59.i.i.for.inc65.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %addr.3.i.i, i32 1
  %cmp27.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr7.i.i
  br i1 %cmp27.i.i, label %for.inc65.i.i.for.body28.i.i_crit_edge, label %spi_check_rx_ranges.exit.i

for.inc65.i.i.for.body28.i.i_crit_edge:           ; preds = %for.inc65.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28.i.i

for.inc65.i.thread.i:                             ; preds = %for.end59.i.i.for.inc65.i.thread.i_crit_edge, %for.cond37.preheader.i.i.for.inc65.i.thread.i_crit_edge
  %addr.1.lcssa117.i.i = phi ptr [ %addr.2.i.i, %for.end59.i.i.for.inc65.i.thread.i_crit_edge ], [ %addr.0111.i.i, %for.cond37.preheader.i.i.for.inc65.i.thread.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.59, ptr noundef %addr.1.lcssa117.i.i) #10
  %incdec.ptr.i34.i = getelementptr i8, ptr %addr.1.lcssa117.i.i, i32 1
  %cmp27.i35.i = icmp ult ptr %incdec.ptr.i34.i, %add.ptr7.i.i
  br i1 %cmp27.i35.i, label %for.inc65.i.thread.i.for.body28.i.outer.i_crit_edge, label %spi_check_rx_ranges.exit.thread37.i

for.inc65.i.thread.i.for.body28.i.outer.i_crit_edge: ; preds = %for.inc65.i.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28.i.outer.i

spi_check_rx_ranges.exit.thread37.i:              ; preds = %for.inc65.i.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ranges_list.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ranges.i.i) #7
  br label %exit.thread

spi_check_rx_ranges.exit.thread.i:                ; preds = %if.end24.i.i.spi_check_rx_ranges.exit.thread.i_crit_edge, %for.end.i.i.spi_check_rx_ranges.exit.thread.i_crit_edge, %if.then.i.spi_check_rx_ranges.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ranges_list.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ranges.i.i) #7
  br label %if.end3.i

spi_check_rx_ranges.exit.i:                       ; preds = %for.inc65.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ranges_list.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ranges.i.i) #7
  br i1 %tobool1.not.i, label %spi_check_rx_ranges.exit.i.if.end3.i_crit_edge, label %spi_check_rx_ranges.exit.i.exit.thread_crit_edge

spi_check_rx_ranges.exit.i.exit.thread_crit_edge: ; preds = %spi_check_rx_ranges.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.thread

spi_check_rx_ranges.exit.i.if.end3.i_crit_edge:   ; preds = %spi_check_rx_ranges.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.end3.i:                                        ; preds = %spi_check_rx_ranges.exit.i.if.end3.i_crit_edge, %spi_check_rx_ranges.exit.thread.i, %if.end24.if.end3.i_crit_edge
  %39 = load i32, ptr @loopback, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool4.not.i = icmp eq i32 %39, 0
  br i1 %tobool4.not.i, label %if.end3.i.if.end28_crit_edge, label %for.cond.preheader.i

if.end3.i.if.end28_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

for.cond.preheader.i:                             ; preds = %if.end3.i
  %40 = ptrtoint ptr %msg1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn15.i = load ptr, ptr %msg1, align 4
  %cmp.not17.i = icmp eq ptr %.pn15.i, %msg1
  br i1 %cmp.not17.i, label %for.cond.preheader.i.if.end28_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end28_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

for.body.i:                                       ; preds = %for.inc55.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %.pn18.i = phi ptr [ %.pn.i, %for.inc55.i.for.body.i_crit_edge ], [ %.pn15.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %xfer.019.i = getelementptr i8, ptr %.pn18.i, i32 -84
  %len.i = getelementptr i8, ptr %.pn18.i, i32 -76
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool8.not.i = icmp eq i32 %42, 0
  br i1 %tobool8.not.i, label %for.body.i.for.inc55.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc55.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %rx_buf.i = getelementptr i8, ptr %.pn18.i, i32 -80
  %43 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_buf.i, align 4
  %tobool9.not.i = icmp eq ptr %44, null
  br i1 %tobool9.not.i, label %lor.lhs.false.i.for.inc55.i_crit_edge, label %if.end11.i

lor.lhs.false.i.for.inc55.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.i

if.end11.i:                                       ; preds = %lor.lhs.false.i
  %45 = ptrtoint ptr %xfer.019.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %xfer.019.i, align 4
  %tobool12.not.i = icmp eq ptr %46, null
  br i1 %tobool12.not.i, label %if.else.i, label %if.end11.i.for.body17.i_crit_edge

if.end11.i.for.body17.i_crit_edge:                ; preds = %if.end11.i
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.inc.i.for.body17.i_crit_edge, %if.end11.i.for.body17.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.inc.i.for.body17.i_crit_edge ], [ 0, %if.end11.i.for.body17.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %46, i32 %i.012.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i, align 1
  %arrayidx20.i = getelementptr i8, ptr %44, i32 %i.012.i
  %49 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx20.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %50)
  %cmp22.not.i = icmp eq i8 %48, %50
  br i1 %cmp22.not.i, label %for.inc.i, label %for.body17.i.do.end64.i_crit_edge

for.body17.i.do.end64.i_crit_edge:                ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end64.i

for.inc.i:                                        ; preds = %for.body17.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %42
  br i1 %exitcond.not.i, label %for.inc.i.for.inc55.i_crit_edge, label %for.inc.i.for.body17.i_crit_edge

for.inc.i.for.body17.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body17.i

for.inc.i.for.inc55.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.i

if.else.i:                                        ; preds = %if.end11.i
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %44, align 1
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i8 %52, label %do.end.i [
    i8 0, label %if.else.i.if.end37.i_crit_edge
    i8 -1, label %if.else.i.if.end37.i_crit_edge158
  ]

if.else.i.if.end37.i_crit_edge158:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.else.i.if.end37.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv28.i = zext i8 %52 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.54, i32 noundef %conv28.i) #10
  br label %exit.thread

if.end37.i:                                       ; preds = %if.else.i.if.end37.i_crit_edge, %if.else.i.if.end37.i_crit_edge158
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp4013.i = icmp ugt i32 %42, 1
  br i1 %cmp4013.i, label %if.end37.i.for.body42.i_crit_edge, label %if.end37.i.for.inc55.i_crit_edge

if.end37.i.for.inc55.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.i

if.end37.i.for.body42.i_crit_edge:                ; preds = %if.end37.i
  br label %for.body42.i

for.body42.i:                                     ; preds = %for.inc51.i.for.body42.i_crit_edge, %if.end37.i.for.body42.i_crit_edge
  %i.114.i = phi i32 [ %inc52.i, %for.inc51.i.for.body42.i_crit_edge ], [ 1, %if.end37.i.for.body42.i_crit_edge ]
  %arrayidx44.i = getelementptr i8, ptr %44, i32 %i.114.i
  %54 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx44.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %52)
  %cmp47.not.i = icmp eq i8 %55, %52
  br i1 %cmp47.not.i, label %for.inc51.i, label %for.body42.i.do.end64.i_crit_edge

for.body42.i.do.end64.i_crit_edge:                ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end64.i

for.inc51.i:                                      ; preds = %for.body42.i
  %inc52.i = add nuw i32 %i.114.i, 1
  %exitcond31.not.i = icmp eq i32 %inc52.i, %42
  br i1 %exitcond31.not.i, label %for.inc51.i.for.inc55.i_crit_edge, label %for.inc51.i.for.body42.i_crit_edge

for.inc51.i.for.body42.i_crit_edge:               ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42.i

for.inc51.i.for.inc55.i_crit_edge:                ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.i

for.inc55.i:                                      ; preds = %for.inc51.i.for.inc55.i_crit_edge, %if.end37.i.for.inc55.i_crit_edge, %for.inc.i.for.inc55.i_crit_edge, %lor.lhs.false.i.for.inc55.i_crit_edge, %for.body.i.for.inc55.i_crit_edge
  %56 = ptrtoint ptr %.pn18.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn.i = load ptr, ptr %.pn18.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %msg1
  br i1 %cmp.not.i, label %for.inc55.i.if.end28_crit_edge, label %for.inc55.i.for.body.i_crit_edge

for.inc55.i.for.body.i_crit_edge:                 ; preds = %for.inc55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc55.i.if.end28_crit_edge:                   ; preds = %for.inc55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.end64.i:                                       ; preds = %for.body42.i.do.end64.i_crit_edge, %for.body17.i.do.end64.i_crit_edge
  %i.2.i = phi i32 [ %i.114.i, %for.body42.i.do.end64.i_crit_edge ], [ %i.012.i, %for.body17.i.do.end64.i_crit_edge ]
  %txb.0.i = phi i8 [ %52, %for.body42.i.do.end64.i_crit_edge ], [ %48, %for.body17.i.do.end64.i_crit_edge ]
  %rxb.0.i = phi i8 [ %55, %for.body42.i.do.end64.i_crit_edge ], [ %50, %for.body17.i.do.end64.i_crit_edge ]
  %conv66.i = zext i8 %txb.0.i to i32
  %conv67.i = zext i8 %rxb.0.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.57, i32 noundef %i.2.i, i32 noundef %conv66.i, i32 noundef %conv67.i) #10
  br label %exit.thread

if.end28:                                         ; preds = %for.inc55.i.if.end28_crit_edge, %for.cond.preheader.i.if.end28_crit_edge, %if.end3.i.if.end28_crit_edge
  %transfer_count.i = getelementptr inbounds %struct.spi_test, ptr %test, i32 0, i32 3
  %57 = ptrtoint ptr %transfer_count.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %transfer_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp29.not.i = icmp eq i32 %58, 0
  br i1 %cmp29.not.i, label %if.end28.exit_crit_edge, label %for.body.lr.ph.i

if.end28.exit_crit_edge:                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

for.body.lr.ph.i:                                 ; preds = %if.end28
  %transfers.i = getelementptr inbounds %struct.spi_test, ptr %test, i32 0, i32 2
  br label %for.body.i64

for.body.i64:                                     ; preds = %cleanup.i.for.body.i64_crit_edge, %for.body.lr.ph.i
  %delay_usecs.033.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %cleanup.i.for.body.i64_crit_edge ]
  %estimated_time.032.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %estimated_time.1.i, %cleanup.i.for.body.i64_crit_edge ]
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i66, %cleanup.i.for.body.i64_crit_edge ]
  %delay.i = getelementptr %struct.spi_transfer, ptr %transfers.i, i32 %i.030.i, i32 9
  %59 = ptrtoint ptr %delay.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %delay.i, align 2
  %conv1.i = zext i16 %60 to i64
  %add.i = add i64 %delay_usecs.033.i, %conv1.i
  %speed_hz.i = getelementptr %struct.spi_transfer, ptr %transfers.i, i32 %i.030.i, i32 12
  %61 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %speed_hz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i63 = icmp eq i32 %62, 0
  br i1 %tobool.not.i63, label %for.body.i64.cleanup.i_crit_edge, label %if.end.i

for.body.i64.cleanup.i_crit_edge:                 ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i64
  %len.i65 = getelementptr %struct.spi_transfer, ptr %transfers.i, i32 %i.030.i, i32 2
  %63 = ptrtoint ptr %len.i65 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len.i65, align 4
  %conv.i = zext i32 %64 to i64
  %mul2.i = mul i64 %conv.i, 8000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul2.i)
  %cmp164.i.i.i = icmp ult i64 %mul2.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !233

if.then168.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %mul2.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %62
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %62, i64 %mul2.i) #11, !srcloc !234
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %65, 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %add4.i = add i64 %dividend.addr.0.i.i.i, %estimated_time.032.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %div_u64.exit.i, %for.body.i64.cleanup.i_crit_edge
  %estimated_time.1.i = phi i64 [ %add4.i, %div_u64.exit.i ], [ %estimated_time.032.i, %for.body.i64.cleanup.i_crit_edge ]
  %inc.i66 = add nuw i32 %i.030.i, 1
  %exitcond.not.i67 = icmp eq i32 %inc.i66, %58
  br i1 %exitcond.not.i67, label %for.end.i, label %cleanup.i.for.body.i64_crit_edge

cleanup.i.for.body.i64_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i64

for.end.i:                                        ; preds = %cleanup.i
  %phi.bo.i = mul i64 %add.i, 1000
  %66 = add i64 %estimated_time.1.i, %phi.bo.i
  %67 = ptrtoint ptr %elapsed_time to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %elapsed_time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %68, i64 %66)
  %cmp8.i = icmp ult i64 %68, %66
  br i1 %cmp8.i, label %do.end.i68, label %for.end.i.exit_crit_edge

for.end.i.exit_crit_edge:                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

do.end.i68:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.61, i64 noundef %68, i64 noundef %66) #10
  br label %exit.thread

exit.thread:                                      ; preds = %do.end.i68, %do.end64.i, %do.end.i, %spi_check_rx_ranges.exit.i.exit.thread_crit_edge, %spi_check_rx_ranges.exit.thread37.i, %do.end22, %do.end15
  %ret.2.ph = phi i32 [ -22, %do.end.i68 ], [ -5, %do.end22 ], [ %ret.0, %do.end15 ], [ -34, %spi_check_rx_ranges.exit.thread37.i ], [ -22, %do.end.i ], [ -22, %do.end64.i ], [ %ret.0110.i.ph.i, %spi_check_rx_ranges.exit.i.exit.thread_crit_edge ]
  %69 = load i32, ptr @dump_messages, align 4
  br label %if.then33

exit:                                             ; preds = %for.end.i.exit_crit_edge, %if.end28.exit_crit_edge, %entry.exit_crit_edge
  %70 = load i32, ptr @dump_messages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool31.not = icmp eq i32 %70, 0
  br i1 %tobool31.not, label %exit.cleanup37_crit_edge, label %exit.if.then33_crit_edge

exit.if.then33_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

exit.cleanup37_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup37

if.then33:                                        ; preds = %exit.if.then33_crit_edge, %exit.thread
  %71 = phi i32 [ %69, %exit.thread ], [ %70, %exit.if.then33_crit_edge ]
  %ret.280 = phi i32 [ %ret.2.ph, %exit.thread ], [ 0, %exit.if.then33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp34 = icmp sgt i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.280)
  %tobool35 = icmp ne i32 %ret.280, 0
  %spec.select = select i1 %cmp34, i1 true, i1 %tobool35
  call fastcc void @spi_test_dump_message(ptr noundef %spi, ptr noundef %msg1, i1 noundef zeroext %spec.select)
  br label %cleanup37

cleanup37:                                        ; preds = %if.then33, %exit.cleanup37_crit_edge
  %retval.0 = phi i32 [ 0, %exit.cleanup37_crit_edge ], [ %ret.280, %if.then33 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spi_test_dump_message(ptr noundef %spi, ptr noundef %msg, i1 noundef zeroext %dump_data) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.24, ptr noundef %msg) #10
  %status = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end3

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.27, i32 noundef %1) #10
  br label %do.end8

do.end8:                                          ; preds = %do.end3, %entry.do.end8_crit_edge
  %frame_length = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 5
  %2 = ptrtoint ptr %frame_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frame_length, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.30, i32 noundef %3) #10
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 6
  %4 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.33, i32 noundef %5) #10
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn125 = load ptr, ptr %msg, align 4
  %cmp.not127 = icmp eq ptr %.pn125, %msg
  br i1 %cmp.not127, label %do.end8.for.end76_crit_edge, label %do.end8.do.end17_crit_edge

do.end8.do.end17_crit_edge:                       ; preds = %do.end8
  br label %do.end17

do.end8.for.end76_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end76

do.end17:                                         ; preds = %for.inc70.do.end17_crit_edge, %do.end8.do.end17_crit_edge
  %.pn128 = phi ptr [ %.pn, %for.inc70.do.end17_crit_edge ], [ %.pn125, %do.end8.do.end17_crit_edge ]
  %xfer.0129 = getelementptr i8, ptr %.pn128, i32 -84
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.36, ptr noundef %xfer.0129) #10
  %len = getelementptr i8, ptr %.pn128, i32 -76
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.39, i32 noundef %8) #10
  %9 = ptrtoint ptr %xfer.0129 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xfer.0129, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.42, ptr noundef %10) #10
  br i1 %dump_data, label %land.lhs.true, label %do.end36

land.lhs.true:                                    ; preds = %do.end17
  %11 = ptrtoint ptr %xfer.0129 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xfer.0129, align 4
  %tobool29.not = icmp eq ptr %12, null
  br i1 %tobool29.not, label %land.lhs.true.land.lhs.true39_crit_edge, label %if.then30

land.lhs.true.land.lhs.true39_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true39

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  tail call fastcc void @spi_test_print_hex_dump(ptr noundef nonnull @.str.44, ptr noundef nonnull %12, i32 noundef %14)
  br label %land.lhs.true39

do.end36:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  %rx_buf = getelementptr i8, ptr %.pn128, i32 -80
  %15 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_buf, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.46, ptr noundef %16) #10
  br label %if.end45

land.lhs.true39:                                  ; preds = %if.then30, %land.lhs.true.land.lhs.true39_crit_edge
  %rx_buf115 = getelementptr i8, ptr %.pn128, i32 -80
  %17 = ptrtoint ptr %rx_buf115 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_buf115, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.46, ptr noundef %18) #10
  %19 = ptrtoint ptr %rx_buf115 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_buf115, align 4
  %tobool41.not = icmp eq ptr %20, null
  br i1 %tobool41.not, label %land.lhs.true39.for.inc70_crit_edge, label %if.then42

land.lhs.true39.for.inc70_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc70

if.then42:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  tail call fastcc void @spi_test_print_hex_dump(ptr noundef nonnull @.str.48, ptr noundef nonnull %20, i32 noundef %22)
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %do.end36
  %rx_buf116.ph = phi ptr [ %rx_buf, %do.end36 ], [ %rx_buf115, %if.then42 ]
  %23 = ptrtoint ptr %rx_buf116.ph to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load ptr, ptr %rx_buf116.ph, align 4
  %tobool47.not = icmp eq ptr %.pr, null
  br i1 %tobool47.not, label %if.end45.for.inc70_crit_edge, label %for.cond49.preheader

if.end45.for.inc70_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc70

for.cond49.preheader:                             ; preds = %if.end45
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp51120.not = icmp eq i32 %25, 0
  br i1 %cmp51120.not, label %for.cond49.preheader.for.inc70_crit_edge, label %for.cond49.preheader.for.body52_crit_edge

for.cond49.preheader.for.body52_crit_edge:        ; preds = %for.cond49.preheader
  br label %for.body52

for.cond49.preheader.for.inc70_crit_edge:         ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc70

for.body52:                                       ; preds = %for.inc.for.body52_crit_edge, %for.cond49.preheader.for.body52_crit_edge
  %i.0121 = phi i32 [ %inc, %for.inc.for.body52_crit_edge ], [ 0, %for.cond49.preheader.for.body52_crit_edge ]
  %26 = xor i32 %i.0121, -1
  %sub55 = add i32 %25, %26
  %arrayidx = getelementptr i8, ptr %.pr, i32 %sub55
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %28)
  %cmp56.not = icmp eq i8 %28, -86
  br i1 %cmp56.not, label %for.inc, label %for.body52.for.end_crit_edge

for.body52.for.end_crit_edge:                     ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.body52
  %inc = add nuw i32 %i.0121, 1
  %exitcond.not = icmp eq i32 %inc, %25
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body52_crit_edge

for.inc.for.body52_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body52

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body52.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %25, %for.inc.for.end_crit_edge ], [ %i.0121, %for.body52.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %tobool60.not = icmp eq i32 %i.0.lcssa, 0
  br i1 %tobool60.not, label %for.end.for.inc70_crit_edge, label %do.end64

for.end.for.inc70_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc70

do.end64:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub67 = sub i32 %25, %i.0.lcssa
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.50, i32 noundef 170, i32 noundef %sub67) #10
  br label %for.inc70

for.inc70:                                        ; preds = %do.end64, %for.end.for.inc70_crit_edge, %for.cond49.preheader.for.inc70_crit_edge, %if.end45.for.inc70_crit_edge, %land.lhs.true39.for.inc70_crit_edge
  %29 = ptrtoint ptr %.pn128 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn = load ptr, ptr %.pn128, align 4
  %cmp.not = icmp eq ptr %.pn, %msg
  br i1 %cmp.not, label %for.inc70.for.end76_crit_edge, label %for.inc70.do.end17_crit_edge

for.inc70.do.end17_crit_edge:                     ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

for.inc70.for.end76_crit_edge:                    ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end76

for.end76:                                        ; preds = %for.inc70.for.end76_crit_edge, %do.end8.for.end76_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_test_run_test(ptr noundef %spi, ptr noundef %test, ptr noundef %tx, ptr noundef %rx) #1 align 64 {
entry:
  %test.i = alloca %struct.spi_test, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_count = getelementptr inbounds %struct.spi_test, ptr %test, i32 0, i32 3
  %0 = ptrtoint ptr %transfer_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %transfer_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %iterate_tx_align = getelementptr inbounds %struct.spi_test, ptr %test, i32 0, i32 8
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %iterate_rx_align = getelementptr inbounds %struct.spi_test, ptr %test, i32 0, i32 9
  %iterate_transfer_mask.i = getelementptr inbounds %struct.spi_test, ptr %test.i, i32 0, i32 10
  %transfer_count.i = getelementptr inbounds %struct.spi_test, ptr %test.i, i32 0, i32 3
  %msg1.i.i = getelementptr inbounds %struct.spi_test, ptr %test.i, i32 0, i32 1
  %prev.i.i.i.i = getelementptr inbounds %struct.spi_test, ptr %test.i, i32 0, i32 1, i32 0, i32 1
  %resources.i.i.i = getelementptr inbounds %struct.spi_test, ptr %test.i, i32 0, i32 1, i32 10
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_test, ptr %test.i, i32 0, i32 1, i32 10, i32 1
  %transfers.i.i.i = getelementptr inbounds %struct.spi_test, ptr %test.i, i32 0, i32 2
  %fill_option.i.i.i = getelementptr inbounds %struct.spi_test, ptr %test.i, i32 0, i32 11
  %fill_pattern25.i.i.i = getelementptr inbounds %struct.spi_test, ptr %test.i, i32 0, i32 12
  %execute_msg.i.i = getelementptr inbounds %struct.spi_test, ptr %test.i, i32 0, i32 5
  %expected_return.i.i = getelementptr inbounds %struct.spi_test, ptr %test.i, i32 0, i32 6
  br label %land.rhs

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.12, ptr noundef %test, i32 noundef %1) #10
  br label %cleanup

land.rhs:                                         ; preds = %for.inc44.land.rhs_crit_edge, %for.cond.preheader
  %idx_len.084 = phi i32 [ 0, %for.cond.preheader ], [ %inc45, %for.inc44.land.rhs_crit_edge ]
  %arrayidx = getelementptr %struct.spi_test, ptr %test, i32 0, i32 7, i32 %idx_len.084
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp3.not = icmp eq i32 %3, -1
  br i1 %cmp3.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.for.cond4_crit_edge

land.rhs.for.cond4_crit_edge:                     ; preds = %land.rhs
  br label %for.cond4

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond4:                                        ; preds = %for.inc41, %land.rhs.for.cond4_crit_edge
  %tx_align.0 = phi i32 [ %inc42, %for.inc41 ], [ 0, %land.rhs.for.cond4_crit_edge ]
  %4 = ptrtoint ptr %iterate_tx_align to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iterate_tx_align, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.cond4.cond.end12_crit_edge, label %cond.true

for.cond4.cond.end12_crit_edge:                   ; preds = %for.cond4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end12

cond.true:                                        ; preds = %for.cond4
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %dma_alignment = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %dma_alignment to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dma_alignment, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool5.not = icmp eq i16 %9, 0
  %conv = zext i16 %9 to i32
  %spec.select = select i1 %tobool5.not, i32 %5, i32 %conv
  br label %cond.end12

cond.end12:                                       ; preds = %cond.true, %for.cond4.cond.end12_crit_edge
  %cond13 = phi i32 [ 1, %for.cond4.cond.end12_crit_edge ], [ %spec.select, %cond.true ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_align.0, i32 %cond13)
  %cmp14 = icmp ult i32 %tx_align.0, %cond13
  br i1 %cmp14, label %for.cond17.preheader, label %for.inc44

for.cond17.preheader:                             ; preds = %cond.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_align.0)
  %tobool13.not.i = icmp ne i32 %tx_align.0, 0
  %10 = or i32 %tx_align.0, %3
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %for.cond17.preheader
  %rx_align.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond17.preheader ]
  %11 = ptrtoint ptr %iterate_rx_align to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iterate_rx_align, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool18.not = icmp eq i32 %12, 0
  br i1 %tobool18.not, label %for.cond17.cond.end33_crit_edge, label %cond.true19

for.cond17.cond.end33_crit_edge:                  ; preds = %for.cond17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end33

cond.true19:                                      ; preds = %for.cond17
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master, align 4
  %dma_alignment21 = getelementptr inbounds %struct.spi_controller, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %dma_alignment21 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %dma_alignment21, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool23.not = icmp eq i16 %16, 0
  %conv22 = zext i16 %16 to i32
  %spec.select74 = select i1 %tobool23.not, i32 %12, i32 %conv22
  br label %cond.end33

cond.end33:                                       ; preds = %cond.true19, %for.cond17.cond.end33_crit_edge
  %cond34 = phi i32 [ 1, %for.cond17.cond.end33_crit_edge ], [ %spec.select74, %cond.true19 ]
  %cmp35 = icmp ult i32 %rx_align.0, %cond34
  br i1 %cmp35, label %for.body37, label %for.inc41

for.body37:                                       ; preds = %cond.end33
  call void @llvm.lifetime.start.p0(i64 680, ptr nonnull %test.i) #7
  %17 = call ptr @memcpy(ptr %test.i, ptr %test, i32 680)
  %18 = ptrtoint ptr %iterate_transfer_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iterate_transfer_mask.i, align 8
  %20 = ptrtoint ptr %transfer_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %transfer_count.i, align 8
  %notmask.i = shl nsw i32 -1, %21
  %sub.i = xor i32 %notmask.i, -1
  %and.i = and i32 %19, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body37.if.end.i_crit_edge

for.body37.if.end.i_crit_edge:                    ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %iterate_transfer_mask.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %iterate_transfer_mask.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body37.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp132.not.i = icmp eq i32 %21, 0
  br i1 %cmp132.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %rx_count.0135.i = phi i32 [ %rx_count.1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %tx_count.0134.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %i.0133.i = phi i32 [ %inc12.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.spi_test, ptr %test.i, i32 0, i32 2, i32 %i.0133.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 8
  %tobool3.not.i = icmp ne ptr %24, null
  %inc.i = zext i1 %tobool3.not.i to i32
  %spec.select.i = add i32 %tx_count.0134.i, %inc.i
  %rx_buf.i = getelementptr %struct.spi_test, ptr %test.i, i32 0, i32 2, i32 %i.0133.i, i32 1
  %25 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_buf.i, align 4
  %tobool8.not.i = icmp ne ptr %26, null
  %inc10.i = zext i1 %tobool8.not.i to i32
  %rx_count.1.i = add i32 %rx_count.0135.i, %inc10.i
  %inc12.i = add nuw i32 %i.0133.i, 1
  %exitcond.not.i = icmp eq i32 %inc12.i, %21
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %phi.cmp.i = icmp eq i32 %spec.select.i, 0
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %if.end.i.for.end.i_crit_edge
  %tx_count.0.lcssa.i = phi i1 [ true, %if.end.i.for.end.i_crit_edge ], [ %phi.cmp.i, %for.end.loopexit.i ]
  %rx_count.0.lcssa.i = phi i32 [ 0, %if.end.i.for.end.i_crit_edge ], [ %rx_count.1.i, %for.end.loopexit.i ]
  %or.cond.i = select i1 %tobool13.not.i, i1 %tx_count.0.lcssa.i, i1 false
  br i1 %or.cond.i, label %do.body.i, label %if.end22.i

do.body.i:                                        ; preds = %for.end.i
  %.b122.i = load i1, ptr @spi_test_run_iter.__print_once, align 1
  br i1 %.b122.i, label %do.body.i.for.inc_crit_edge, label %do.body.i.for.inc.sink.split_crit_edge

do.body.i.for.inc.sink.split_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split

do.body.i.for.inc_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end22.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_align.0)
  %tobool23.not.i = icmp ne i32 %rx_align.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_count.0.lcssa.i)
  %tobool25.not.i = icmp eq i32 %rx_count.0.lcssa.i, 0
  %or.cond123.i = select i1 %tobool23.not.i, i1 %tobool25.not.i, i1 false
  br i1 %or.cond123.i, label %do.body27.i, label %if.end39.i

do.body27.i:                                      ; preds = %if.end22.i
  %.b120121.i = load i1, ptr @spi_test_run_iter.__print_once.66, align 1
  br i1 %.b120121.i, label %do.body27.i.for.inc_crit_edge, label %do.body27.i.for.inc.sink.split_crit_edge

do.body27.i.for.inc.sink.split_crit_edge:         ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split

do.body27.i.for.inc_crit_edge:                    ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end39.i:                                       ; preds = %if.end22.i
  %27 = or i32 %10, %rx_align.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %.not.i = icmp eq i32 %27, 0
  br i1 %.not.i, label %do.end47.i, label %do.end53.i

do.end47.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.71, ptr noundef nonnull %test.i) #10
  br label %if.end55.i

do.end53.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.74, i32 noundef %3, i32 noundef %tx_align.0, i32 noundef %rx_align.0) #10
  br label %if.end55.i

if.end55.i:                                       ; preds = %do.end53.i, %do.end47.i
  %28 = ptrtoint ptr %transfer_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %transfer_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp58137.not.i = icmp eq i32 %29, 0
  br i1 %cmp58137.not.i, label %if.end10.i.i.critedge, label %for.body59.lr.ph.i

for.body59.lr.ph.i:                               ; preds = %if.end55.i
  %30 = ptrtoint ptr %iterate_transfer_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iterate_transfer_mask.i, align 8
  br label %for.body59.i

for.body59.i:                                     ; preds = %for.inc88.i.for.body59.i_crit_edge, %for.body59.lr.ph.i
  %i.1138.i = phi i32 [ 0, %for.body59.lr.ph.i ], [ %inc89.i, %for.inc88.i.for.body59.i_crit_edge ]
  %shl61.i = shl nuw i32 1, %i.1138.i
  %and62.i = and i32 %shl61.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %for.body59.i.for.inc88.i_crit_edge, label %if.end65.i

for.body59.i.for.inc88.i_crit_edge:               ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc88.i

if.end65.i:                                       ; preds = %for.body59.i
  %arrayidx67.i = getelementptr %struct.spi_test, ptr %test.i, i32 0, i32 2, i32 %i.1138.i
  %len68.i = getelementptr %struct.spi_test, ptr %test.i, i32 0, i32 2, i32 %i.1138.i, i32 2
  %32 = ptrtoint ptr %len68.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %3, ptr %len68.i, align 8
  %33 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx67.i, align 8
  %tobool72.not.i = icmp eq ptr %34, null
  br i1 %tobool72.not.i, label %if.end65.i.if.end77.i_crit_edge, label %if.then73.i

if.end65.i.if.end77.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77.i

if.then73.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %34, i32 %tx_align.0
  %35 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i, ptr %arrayidx67.i, align 8
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then73.i, %if.end65.i.if.end77.i_crit_edge
  %rx_buf80.i = getelementptr %struct.spi_test, ptr %test.i, i32 0, i32 2, i32 %i.1138.i, i32 1
  %36 = ptrtoint ptr %rx_buf80.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_buf80.i, align 4
  %tobool81.not.i = icmp eq ptr %37, null
  br i1 %tobool81.not.i, label %if.end77.i.for.inc88.i_crit_edge, label %if.then82.i

if.end77.i.for.inc88.i_crit_edge:                 ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc88.i

if.then82.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr86.i = getelementptr i8, ptr %37, i32 %rx_align.0
  %38 = ptrtoint ptr %rx_buf80.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr86.i, ptr %rx_buf80.i, align 4
  br label %for.inc88.i

for.inc88.i:                                      ; preds = %if.then82.i, %if.end77.i.for.inc88.i_crit_edge, %for.body59.i.for.inc88.i_crit_edge
  %inc89.i = add nuw i32 %i.1138.i, 1
  %39 = ptrtoint ptr %transfer_count.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %transfer_count.i, align 8
  %cmp58.i = icmp ult i32 %inc89.i, %40
  br i1 %cmp58.i, label %for.inc88.i.for.body59.i_crit_edge, label %for.end90.loopexit.i

for.inc88.i.for.body59.i_crit_edge:               ; preds = %for.inc88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body59.i

for.end90.loopexit.i:                             ; preds = %for.inc88.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %phi.cmp146.i = icmp eq i32 %40, 0
  %41 = ptrtoint ptr %msg1.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %msg1.i.i, ptr %msg1.i.i, align 8
  %42 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg1.i.i, ptr %prev.i.i.i.i, align 4
  %43 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 8
  %44 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %45 = call ptr @memset(ptr %rx, i32 85, i32 135168)
  br i1 %phi.cmp146.i, label %for.end90.loopexit.i.if.end10.i.i_crit_edge, label %for.end90.loopexit.i.for.body.i.i_crit_edge

for.end90.loopexit.i.for.body.i.i_crit_edge:      ; preds = %for.end90.loopexit.i
  br label %for.body.i.i

for.end90.loopexit.i.if.end10.i.i_crit_edge:      ; preds = %for.end90.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

for.body.i.i:                                     ; preds = %spi_message_add_tail.exit.i.i.for.body.i.i_crit_edge, %for.end90.loopexit.i.for.body.i.i_crit_edge
  %i.0111.i.i = phi i32 [ %inc.i.i, %spi_message_add_tail.exit.i.i.for.body.i.i_crit_edge ], [ 0, %for.end90.loopexit.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.spi_test, ptr %test.i, i32 0, i32 2, i32 %i.0111.i.i
  %len.i.i = getelementptr %struct.spi_test, ptr %test.i, i32 0, i32 2, i32 %i.0111.i.i, i32 2
  %46 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i.i, align 8
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %50 = ptrtoint ptr %49 to i32
  %and.i.i.i = and i32 %50, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i.i.i.if.end3.i.i.i_crit_edge, label %if.then2.i.i.i

if.end.i.i.i.if.end3.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i = getelementptr i8, ptr %49, i32 -536803328
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr.i.i.i, ptr %arrayidx.i.i, align 8
  br label %if.end3.i.i.i

if.end3.i.i.i:                                    ; preds = %if.then2.i.i.i, %if.end.i.i.i.if.end3.i.i.i_crit_edge
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i, align 8
  %cmp.not.i.i.i = icmp ult ptr %53, inttoptr (i32 1073741824 to ptr)
  %add.ptr4.i.i.i = getelementptr i8, ptr %53, i32 %47
  %cmp5.not.i.i.i = icmp ugt ptr %add.ptr4.i.i.i, inttoptr (i32 1073876992 to ptr)
  %or.cond.i.i.i = or i1 %cmp.not.i.i.i, %cmp5.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.end8.i.i.i, label %if.then6.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.i.i = add i32 %sub.ptr.lhs.cast.i.i.i, -1073741824
  %add.ptr7.i.i.i = getelementptr i8, ptr %rx, i32 %sub.ptr.sub.i.i.i
  br label %if.end.sink.split.i.i

if.end8.i.i.i:                                    ; preds = %if.end3.i.i.i
  %cmp9.not.i.i.i = icmp ult ptr %53, inttoptr (i32 -2147483648 to ptr)
  %cmp12.not.i.i.i = icmp ugt ptr %add.ptr4.i.i.i, inttoptr (i32 -2147348480 to ptr)
  %or.cond36.i.i.i = or i1 %cmp9.not.i.i.i, %cmp12.not.i.i.i
  br i1 %or.cond36.i.i.i, label %spi_test_translate.exit.i.i, label %if.then13.i.i.i

if.then13.i.i.i:                                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast14.i.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub15.i.i.i = xor i32 %sub.ptr.lhs.cast14.i.i.i, -2147483648
  %add.ptr16.i.i.i = getelementptr i8, ptr %tx, i32 %sub.ptr.sub15.i.i.i
  br label %if.end.sink.split.i.i

spi_test_translate.exit.i.i:                      ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.78, ptr noundef %53, ptr noundef %add.ptr4.i.i.i, ptr noundef nonnull inttoptr (i32 1073741824 to ptr), ptr noundef nonnull inttoptr (i32 1073872896 to ptr), ptr noundef nonnull inttoptr (i32 -2147483648 to ptr), ptr noundef nonnull inttoptr (i32 -2147352576 to ptr)) #10
  br label %spi_test_run_iter.exit

if.end.sink.split.i.i:                            ; preds = %if.then13.i.i.i, %if.then6.i.i.i
  %add.ptr7.i.sink.i.i = phi ptr [ %add.ptr7.i.i.i, %if.then6.i.i.i ], [ %add.ptr16.i.i.i, %if.then13.i.i.i ]
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr7.i.sink.i.i, ptr %arrayidx.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.sink.split.i.i, %for.body.i.i.if.end.i.i_crit_edge
  %rx_buf.i.i = getelementptr %struct.spi_test, ptr %test.i, i32 0, i32 2, i32 %i.0111.i.i, i32 1
  %55 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len.i.i, align 8
  %57 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rx_buf.i.i, align 4
  %tobool.not.i65.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i65.i.i, label %if.end.i.i.if.end6.i.i_crit_edge, label %if.end.i68.i.i

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i

if.end.i68.i.i:                                   ; preds = %if.end.i.i
  %59 = ptrtoint ptr %58 to i32
  %and.i66.i.i = and i32 %59, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66.i.i)
  %tobool1.not.i67.i.i = icmp eq i32 %and.i66.i.i, 0
  br i1 %tobool1.not.i67.i.i, label %if.end.i68.i.i.if.end3.i75.i.i_crit_edge, label %if.then2.i70.i.i

if.end.i68.i.i.if.end3.i75.i.i_crit_edge:         ; preds = %if.end.i68.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i75.i.i

if.then2.i70.i.i:                                 ; preds = %if.end.i68.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i69.i.i = getelementptr i8, ptr %58, i32 -536803328
  %60 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr.i69.i.i, ptr %rx_buf.i.i, align 4
  br label %if.end3.i75.i.i

if.end3.i75.i.i:                                  ; preds = %if.then2.i70.i.i, %if.end.i68.i.i.if.end3.i75.i.i_crit_edge
  %61 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx_buf.i.i, align 4
  %cmp.not.i71.i.i = icmp ult ptr %62, inttoptr (i32 1073741824 to ptr)
  %add.ptr4.i72.i.i = getelementptr i8, ptr %62, i32 %56
  %cmp5.not.i73.i.i = icmp ugt ptr %add.ptr4.i72.i.i, inttoptr (i32 1073876992 to ptr)
  %or.cond.i74.i.i = or i1 %cmp.not.i71.i.i, %cmp5.not.i73.i.i
  br i1 %or.cond.i74.i.i, label %if.end8.i83.i.i, label %if.then6.i79.i.i

if.then6.i79.i.i:                                 ; preds = %if.end3.i75.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast.i76.i.i = ptrtoint ptr %62 to i32
  %sub.ptr.sub.i77.i.i = add i32 %sub.ptr.lhs.cast.i76.i.i, -1073741824
  %add.ptr7.i78.i.i = getelementptr i8, ptr %rx, i32 %sub.ptr.sub.i77.i.i
  br label %if.end6.sink.split.i.i

if.end8.i83.i.i:                                  ; preds = %if.end3.i75.i.i
  %cmp9.not.i80.i.i = icmp ult ptr %62, inttoptr (i32 -2147483648 to ptr)
  %cmp12.not.i81.i.i = icmp ugt ptr %add.ptr4.i72.i.i, inttoptr (i32 -2147348480 to ptr)
  %or.cond36.i82.i.i = or i1 %cmp9.not.i80.i.i, %cmp12.not.i81.i.i
  br i1 %or.cond36.i82.i.i, label %spi_test_translate.exit90.i.i, label %if.then13.i87.i.i

if.then13.i87.i.i:                                ; preds = %if.end8.i83.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast14.i84.i.i = ptrtoint ptr %62 to i32
  %sub.ptr.sub15.i85.i.i = xor i32 %sub.ptr.lhs.cast14.i84.i.i, -2147483648
  %add.ptr16.i86.i.i = getelementptr i8, ptr %tx, i32 %sub.ptr.sub15.i85.i.i
  br label %if.end6.sink.split.i.i

spi_test_translate.exit90.i.i:                    ; preds = %if.end8.i83.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.78, ptr noundef %62, ptr noundef %add.ptr4.i72.i.i, ptr noundef nonnull inttoptr (i32 1073741824 to ptr), ptr noundef nonnull inttoptr (i32 1073872896 to ptr), ptr noundef nonnull inttoptr (i32 -2147483648 to ptr), ptr noundef nonnull inttoptr (i32 -2147352576 to ptr)) #10
  br label %spi_test_run_iter.exit

if.end6.sink.split.i.i:                           ; preds = %if.then13.i87.i.i, %if.then6.i79.i.i
  %add.ptr7.i78.sink.i.i = phi ptr [ %add.ptr7.i78.i.i, %if.then6.i79.i.i ], [ %add.ptr16.i86.i.i, %if.then13.i87.i.i ]
  %63 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr7.i78.sink.i.i, ptr %rx_buf.i.i, align 4
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.end6.sink.split.i.i, %if.end.i.i.if.end6.i.i_crit_edge
  %transfer_list.i.i.i = getelementptr %struct.spi_test, ptr %test.i, i32 0, i32 2, i32 %i.0111.i.i, i32 18
  %64 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef %65, ptr noundef %msg1.i.i) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end6.i.i.spi_message_add_tail.exit.i.i_crit_edge

if.end6.i.i.spi_message_add_tail.exit.i.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i, align 4
  %67 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %msg1.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr %struct.spi_test, ptr %test.i, i32 0, i32 2, i32 %i.0111.i.i, i32 18, i32 1
  %68 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i.i.i.i, align 8
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %transfer_list.i.i.i, ptr %65, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %if.end6.i.i.spi_message_add_tail.exit.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.0111.i.i, 1
  %70 = ptrtoint ptr %transfer_count.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %transfer_count.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %71
  br i1 %cmp.i.i, label %spi_message_add_tail.exit.i.i.for.body.i.i_crit_edge, label %for.end.i.i

spi_message_add_tail.exit.i.i.for.body.i.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %phi.cmp.i.i = icmp eq i32 %71, 0
  br i1 %phi.cmp.i.i, label %for.end.i.i.if.end10.i.i_crit_edge, label %for.end.i.i.for.body.i.i.i_crit_edge

for.end.i.i.for.body.i.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %for.body.i.i.i

for.end.i.i.if.end10.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

for.body.i.i.i:                                   ; preds = %for.inc75.i.i.i.for.body.i.i.i_crit_edge, %for.end.i.i.for.body.i.i.i_crit_edge
  %i.0144.i.i.i = phi i32 [ %inc76.i.i.i, %for.inc75.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.end.i.i.for.body.i.i.i_crit_edge ]
  %count.0143.i.i.i = phi i32 [ %count.2.i.i.i, %for.inc75.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.end.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.spi_transfer, ptr %transfers.i.i.i, i32 %i.0144.i.i.i
  %rx_buf.i.i.i = getelementptr %struct.spi_transfer, ptr %transfers.i.i.i, i32 %i.0144.i.i.i, i32 1
  %72 = ptrtoint ptr %rx_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx_buf.i.i.i, align 4
  %tobool.not.i92.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i92.i.i, label %for.body.i.i.i.if.end.i93.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.if.end.i93.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i93.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %len.i.i.i = getelementptr %struct.spi_transfer, ptr %transfers.i.i.i, i32 %i.0144.i.i.i, i32 2
  %74 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i.i.i, align 8
  %76 = call ptr @memset(ptr %73, i32 170, i32 %75)
  br label %if.end.i93.i.i

if.end.i93.i.i:                                   ; preds = %if.then.i.i.i, %for.body.i.i.i.if.end.i93.i.i_crit_edge
  %77 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i.i.i, align 8
  %tobool6.not.i.i.i = icmp eq ptr %78, null
  br i1 %tobool6.not.i.i.i, label %if.end.i93.i.i.for.inc75.i.i.i_crit_edge, label %for.cond9.preheader.i.i.i

if.end.i93.i.i.for.inc75.i.i.i_crit_edge:         ; preds = %if.end.i93.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc75.i.i.i

for.cond9.preheader.i.i.i:                        ; preds = %if.end.i93.i.i
  %len11.i.i.i = getelementptr %struct.spi_transfer, ptr %transfers.i.i.i, i32 %i.0144.i.i.i, i32 2
  %79 = ptrtoint ptr %len11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len11.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp12136.not.i.i.i = icmp eq i32 %80, 0
  br i1 %cmp12136.not.i.i.i, label %for.cond9.preheader.i.i.i.for.inc75.i.i.i_crit_edge, label %for.cond9.preheader.i.i.i.for.body13.i.i.i_crit_edge

for.cond9.preheader.i.i.i.for.body13.i.i.i_crit_edge: ; preds = %for.cond9.preheader.i.i.i
  br label %for.body13.i.i.i

for.cond9.preheader.i.i.i.for.inc75.i.i.i_crit_edge: ; preds = %for.cond9.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc75.i.i.i

for.body13.i.i.i:                                 ; preds = %for.inc.i.i.i.for.body13.i.i.i_crit_edge, %for.cond9.preheader.i.i.i.for.body13.i.i.i_crit_edge
  %j.0141.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body13.i.i.i_crit_edge ], [ 0, %for.cond9.preheader.i.i.i.for.body13.i.i.i_crit_edge ]
  %count.1139.i.i.i = phi i32 [ %inc74.i.i.i, %for.inc.i.i.i.for.body13.i.i.i_crit_edge ], [ %count.0143.i.i.i, %for.cond9.preheader.i.i.i.for.body13.i.i.i_crit_edge ]
  %tx_buf.0137.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.inc.i.i.i.for.body13.i.i.i_crit_edge ], [ %78, %for.cond9.preheader.i.i.i.for.body13.i.i.i_crit_edge ]
  %81 = ptrtoint ptr %fill_option.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fill_option.i.i.i, align 4
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %82, label %spi_test_fill_pattern.exit.i.i [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb14.i.i.i
    i32 2, label %sw.bb17.i.i.i
    i32 3, label %sw.bb24.i.i.i
    i32 4, label %sw.bb31.i.i.i
    i32 5, label %sw.bb33.i.i.i
    i32 6, label %sw.bb39.i.i.i
    i32 7, label %sw.bb45.i.i.i
    i32 8, label %sw.bb51.i.i.i
    i32 9, label %sw.bb53.i.i.i
    i32 10, label %sw.bb59.i.i.i
    i32 11, label %sw.bb65.i.i.i
    i32 16, label %for.body13.i.i.i.for.inc.i.i.i_crit_edge
  ]

for.body13.i.i.i.for.inc.i.i.i_crit_edge:         ; preds = %for.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

sw.bb.i.i.i:                                      ; preds = %for.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %fill_pattern25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %fill_pattern25.i.i.i, align 8
  br label %for.inc.i.i.i

sw.bb14.i.i.i:                                    ; preds = %for.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %fill_pattern25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %fill_pattern25.i.i.i, align 8
  %rem.i.i.i = shl i32 %count.1139.i.i.i, 3
  %sub.i.i.i = and i32 %rem.i.i.i, 8
  %mul.i.i.i = xor i32 %sub.i.i.i, 8
  %shr.i.i.i = lshr i32 %87, %mul.i.i.i
  br label %for.inc.i.i.i

sw.bb17.i.i.i:                                    ; preds = %for.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %fill_pattern25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %fill_pattern25.i.i.i, align 8
  %rem19.i.i.i = urem i32 %count.1139.i.i.i, 3
  %.neg134.i.i.i = mul nsw i32 %rem19.i.i.i, -8
  %mul21.i.i.i = add nsw i32 %.neg134.i.i.i, 16
  %shr22.i.i.i = lshr i32 %89, %mul21.i.i.i
  br label %for.inc.i.i.i

sw.bb24.i.i.i:                                    ; preds = %for.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %fill_pattern25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %fill_pattern25.i.i.i, align 8
  %rem26.i.i.i = shl i32 %count.1139.i.i.i, 3
  %sub27.i.i.i = and i32 %rem26.i.i.i, 24
  %mul28.i.i.i = xor i32 %sub27.i.i.i, 24
  %shr29.i.i.i = lshr i32 %91, %mul28.i.i.i
  br label %for.inc.i.i.i

sw.bb31.i.i.i:                                    ; preds = %for.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

sw.bb33.i.i.i:                                    ; preds = %for.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rem34.i.i.i = shl i32 %count.1139.i.i.i, 3
  %sub35.i.i.i = and i32 %rem34.i.i.i, 8
  %mul36.i.i.i = xor i32 %sub35.i.i.i, 8
  %shr37.i.i.i = lshr i32 %count.1139.i.i.i, %mul36.i.i.i
  br label %for.inc.i.i.i

sw.bb39.i.i.i:                                    ; preds = %for.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rem40.i.i.i = urem i32 %count.1139.i.i.i, 3
  %.neg133.i.i.i = mul nsw i32 %rem40.i.i.i, -8
  %mul42.i.i.i = add nsw i32 %.neg133.i.i.i, 16
  %shr43.i.i.i = lshr i32 %count.1139.i.i.i, %mul42.i.i.i
  br label %for.inc.i.i.i

sw.bb45.i.i.i:                                    ; preds = %for.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rem46.i.i.i = shl i32 %count.1139.i.i.i, 3
  %sub47.i.i.i = and i32 %rem46.i.i.i, 24
  %mul48.i.i.i = xor i32 %sub47.i.i.i, 24
  %shr49.i.i.i = lshr i32 %count.1139.i.i.i, %mul48.i.i.i
  br label %for.inc.i.i.i

sw.bb51.i.i.i:                                    ; preds = %for.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

sw.bb53.i.i.i:                                    ; preds = %for.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rem54.i.i.i = shl i32 %count.1139.i.i.i, 3
  %sub55.i.i.i = and i32 %rem54.i.i.i, 8
  %mul56.i.i.i = xor i32 %sub55.i.i.i, 8
  %shr57.i.i.i = ashr i32 %j.0141.i.i.i, %mul56.i.i.i
  br label %for.inc.i.i.i

sw.bb59.i.i.i:                                    ; preds = %for.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rem60.i.i.i = urem i32 %count.1139.i.i.i, 3
  %.neg.i.i.i = mul nsw i32 %rem60.i.i.i, -8
  %mul62.i.i.i = add nsw i32 %.neg.i.i.i, 16
  %shr63.i.i.i = ashr i32 %j.0141.i.i.i, %mul62.i.i.i
  br label %for.inc.i.i.i

sw.bb65.i.i.i:                                    ; preds = %for.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rem66.i.i.i = shl i32 %count.1139.i.i.i, 3
  %sub67.i.i.i = and i32 %rem66.i.i.i, 24
  %mul68.i.i.i = xor i32 %sub67.i.i.i, 24
  %shr69.i.i.i = ashr i32 %j.0141.i.i.i, %mul68.i.i.i
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %sw.bb65.i.i.i, %sw.bb59.i.i.i, %sw.bb53.i.i.i, %sw.bb51.i.i.i, %sw.bb45.i.i.i, %sw.bb39.i.i.i, %sw.bb33.i.i.i, %sw.bb31.i.i.i, %sw.bb24.i.i.i, %sw.bb17.i.i.i, %sw.bb14.i.i.i, %sw.bb.i.i.i, %for.body13.i.i.i.for.inc.i.i.i_crit_edge
  %conv.sink.in.i.i.i = phi i32 [ %85, %sw.bb.i.i.i ], [ %shr.i.i.i, %sw.bb14.i.i.i ], [ %shr22.i.i.i, %sw.bb17.i.i.i ], [ %shr29.i.i.i, %sw.bb24.i.i.i ], [ %count.1139.i.i.i, %sw.bb31.i.i.i ], [ %shr37.i.i.i, %sw.bb33.i.i.i ], [ %shr43.i.i.i, %sw.bb39.i.i.i ], [ %shr49.i.i.i, %sw.bb45.i.i.i ], [ %j.0141.i.i.i, %sw.bb51.i.i.i ], [ %shr57.i.i.i, %sw.bb53.i.i.i ], [ %shr63.i.i.i, %sw.bb59.i.i.i ], [ %shr69.i.i.i, %sw.bb65.i.i.i ], [ %i.0144.i.i.i, %for.body13.i.i.i.for.inc.i.i.i_crit_edge ]
  %conv.sink.i.i.i = trunc i32 %conv.sink.in.i.i.i to i8
  %92 = ptrtoint ptr %tx_buf.0137.i.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv.sink.i.i.i, ptr %tx_buf.0137.i.i.i, align 1
  %inc.i.i.i = add nuw i32 %j.0141.i.i.i, 1
  %incdec.ptr.i.i.i = getelementptr i8, ptr %tx_buf.0137.i.i.i, i32 1
  %inc74.i.i.i = add i32 %count.1139.i.i.i, 1
  %93 = ptrtoint ptr %len11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len11.i.i.i, align 8
  %cmp12.i.i.i = icmp ult i32 %inc.i.i.i, %94
  br i1 %cmp12.i.i.i, label %for.inc.i.i.i.for.body13.i.i.i_crit_edge, label %for.inc.i.i.i.for.inc75.i.i.i_crit_edge

for.inc.i.i.i.for.inc75.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc75.i.i.i

for.inc.i.i.i.for.body13.i.i.i_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body13.i.i.i

for.inc75.i.i.i:                                  ; preds = %for.inc.i.i.i.for.inc75.i.i.i_crit_edge, %for.cond9.preheader.i.i.i.for.inc75.i.i.i_crit_edge, %if.end.i93.i.i.for.inc75.i.i.i_crit_edge
  %count.2.i.i.i = phi i32 [ %count.0143.i.i.i, %if.end.i93.i.i.for.inc75.i.i.i_crit_edge ], [ %count.0143.i.i.i, %for.cond9.preheader.i.i.i.for.inc75.i.i.i_crit_edge ], [ %inc74.i.i.i, %for.inc.i.i.i.for.inc75.i.i.i_crit_edge ]
  %inc76.i.i.i = add nuw i32 %i.0144.i.i.i, 1
  %95 = ptrtoint ptr %transfer_count.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %transfer_count.i, align 8
  %cmp.i.i.i = icmp ult i32 %inc76.i.i.i, %96
  br i1 %cmp.i.i.i, label %for.inc75.i.i.i.for.body.i.i.i_crit_edge, label %for.inc75.i.i.i.if.end10.i.i_crit_edge

for.inc75.i.i.i.if.end10.i.i_crit_edge:           ; preds = %for.inc75.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

for.inc75.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %for.inc75.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

spi_test_fill_pattern.exit.i.i:                   ; preds = %for.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.80, i32 noundef %82) #10
  br label %spi_test_run_iter.exit

if.end10.i.i.critedge:                            ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %msg1.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %msg1.i.i, ptr %msg1.i.i, align 8
  %98 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %msg1.i.i, ptr %prev.i.i.i.i, align 4
  %99 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 8
  %100 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %101 = call ptr @memset(ptr %rx, i32 85, i32 135168)
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.end10.i.i.critedge, %for.inc75.i.i.i.if.end10.i.i_crit_edge, %for.end.i.i.if.end10.i.i_crit_edge, %for.end90.loopexit.i.if.end10.i.i_crit_edge
  %102 = ptrtoint ptr %execute_msg.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %execute_msg.i.i, align 8
  %tobool11.not.i.i = icmp eq ptr %103, null
  br i1 %tobool11.not.i.i, label %if.else.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i.i = call i32 %103(ptr noundef %spi, ptr noundef nonnull %test.i, ptr noundef %tx, ptr noundef %rx) #7
  br label %if.end16.i.i

if.else.i.i:                                      ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i.i = call i32 @spi_test_execute_msg(ptr noundef %spi, ptr noundef nonnull %test.i, ptr undef, ptr noundef %rx) #7
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.else.i.i, %if.then12.i.i
  %ret.0.i.i = phi i32 [ %call14.i.i, %if.then12.i.i ], [ %call15.i.i, %if.else.i.i ]
  %104 = ptrtoint ptr %expected_return.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %expected_return.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0.i.i, i32 %105)
  %cmp17.i.i = icmp eq i32 %ret.0.i.i, %105
  br i1 %cmp17.i.i, label %if.end16.i.i.for.inc_crit_edge, label %do.end.i.i

if.end16.i.i.for.inc_crit_edge:                   ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end.i.i:                                       ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.76, i32 noundef %ret.0.i.i, i32 noundef %105) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool21.not.i.i = icmp eq i32 %ret.0.i.i, 0
  %spec.select77 = select i1 %tobool21.not.i.i, i32 -14, i32 %ret.0.i.i
  br label %spi_test_run_iter.exit

spi_test_run_iter.exit:                           ; preds = %do.end.i.i, %spi_test_fill_pattern.exit.i.i, %spi_test_translate.exit90.i.i, %spi_test_translate.exit.i.i
  %retval.0.i = phi i32 [ -22, %spi_test_translate.exit.i.i ], [ -22, %spi_test_translate.exit90.i.i ], [ -22, %spi_test_fill_pattern.exit.i.i ], [ %spec.select77, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 680, ptr nonnull %test.i) #7
  br label %cleanup

for.inc.sink.split:                               ; preds = %do.body27.i.for.inc.sink.split_crit_edge, %do.body.i.for.inc.sink.split_crit_edge
  %spi_test_run_iter.__print_once.sink = phi ptr [ @spi_test_run_iter.__print_once, %do.body.i.for.inc.sink.split_crit_edge ], [ @spi_test_run_iter.__print_once.66, %do.body27.i.for.inc.sink.split_crit_edge ]
  %.str.63.sink = phi ptr [ @.str.63, %do.body.i.for.inc.sink.split_crit_edge ], [ @.str.68, %do.body27.i.for.inc.sink.split_crit_edge ]
  %106 = ptrtoint ptr %spi_test_run_iter.__print_once.sink to i32
  call void @__asan_store1_noabort(i32 %106)
  store i1 true, ptr %spi_test_run_iter.__print_once.sink, align 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull %.str.63.sink, ptr noundef nonnull %test.i) #10
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end16.i.i.for.inc_crit_edge, %do.body27.i.for.inc_crit_edge, %do.body.i.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 680, ptr nonnull %test.i) #7
  %inc = add i32 %rx_align.0, 1
  br label %for.cond17

for.inc41:                                        ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #9
  %inc42 = add i32 %tx_align.0, 1
  br label %for.cond4

for.inc44:                                        ; preds = %cond.end12
  %inc45 = add nuw nsw i32 %idx_len.084, 1
  %exitcond.not = icmp eq i32 %inc45, 32
  br i1 %exitcond.not, label %for.inc44.cleanup_crit_edge, label %for.inc44.land.rhs_crit_edge

for.inc44.land.rhs_crit_edge:                     ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.inc44.cleanup_crit_edge:                      ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc44.cleanup_crit_edge, %spi_test_run_iter.exit, %land.rhs.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -7, %do.end ], [ %retval.0.i, %spi_test_run_iter.exit ], [ 0, %for.inc44.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_test_run_tests(ptr noundef %spi, ptr noundef %tests) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @use_vmalloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call noalias ptr @vmalloc(i32 noundef 135168) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 135168, i32 noundef 3520, i32 noundef 6) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rx.0 = phi ptr [ %call, %if.then ], [ %call1.i.i.i, %if.else ]
  %tobool2.not = icmp eq ptr %rx.0, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = load i32, ptr @use_vmalloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool5.not = icmp eq i32 %1, 0
  br i1 %tobool5.not, label %if.else8, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call noalias ptr @vmalloc(i32 noundef 135168) #12
  br label %if.end10

if.else8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i.i.i48 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 135168, i32 noundef 3520, i32 noundef 6) #12
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then6
  %tx.0 = phi ptr [ %call7, %if.then6 ], [ %call1.i.i.i48, %if.else8 ]
  %tobool11.not = icmp eq ptr %tx.0, null
  br i1 %tobool11.not, label %if.end10.err_tx_crit_edge, label %for.cond.preheader

if.end10.err_tx_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_tx

for.cond.preheader:                               ; preds = %if.end10
  %2 = ptrtoint ptr %tests to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tests, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool14.not50 = icmp eq i8 %3, 0
  br i1 %tobool14.not50, label %for.cond.preheader.out_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %test.052 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %tests, %for.cond.preheader.for.body_crit_edge ]
  %count.051 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = load i32, ptr @run_only_test, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp slt i32 %4, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %count.051, i32 %4)
  %cmp15.not = icmp eq i32 %count.051, %4
  %or.cond = select i1 %cmp, i1 true, i1 %cmp15.not
  br i1 %or.cond, label %if.end17, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %run_test = getelementptr inbounds %struct.spi_test, ptr %test.052, i32 0, i32 4
  %5 = ptrtoint ptr %run_test to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %run_test, align 4
  %tobool18.not = icmp eq ptr %6, null
  br i1 %tobool18.not, label %if.else22, label %if.then19

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 %6(ptr noundef %spi, ptr noundef %test.052, ptr noundef nonnull %tx.0, ptr noundef nonnull %rx.0) #7
  br label %if.end24

if.else22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call i32 @spi_test_run_test(ptr noundef %spi, ptr noundef %test.052, ptr noundef nonnull %tx.0, ptr noundef nonnull %rx.0)
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then19
  %ret.1 = phi i32 [ %call21, %if.then19 ], [ %call23, %if.else22 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool25.not = icmp eq i32 %ret.1, 0
  br i1 %tobool25.not, label %if.end24.while.body_crit_edge, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end24.while.body_crit_edge
  %__ms.049 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %if.end24.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.049, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #7
  %tobool28.not = icmp eq i32 %dec, 0
  br i1 %tobool28.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @schedule() #7
  br label %for.inc

for.inc:                                          ; preds = %while.end, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.spi_test, ptr %test.052, i32 1
  %inc = add i32 %count.051, 1
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr, align 8
  %tobool14.not = icmp eq i8 %9, 0
  br i1 %tobool14.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.end24.out_crit_edge, %for.cond.preheader.out_crit_edge
  %ret.3 = phi i32 [ 0, %for.cond.preheader.out_crit_edge ], [ 0, %for.inc.out_crit_edge ], [ %ret.1, %if.end24.out_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %tx.0) #7
  br label %err_tx

err_tx:                                           ; preds = %out, %if.end10.err_tx_crit_edge
  %ret.4 = phi i32 [ %ret.3, %out ], [ -12, %if.end10.err_tx_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %rx.0) #7
  br label %cleanup

cleanup:                                          ; preds = %err_tx, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %err_tx ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_loopback_test_probe(ptr noundef %spi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @loop_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @no_cs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.do.end12_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %cond = phi i32 [ 0, %lor.lhs.false.if.then_crit_edge ], [ 32, %entry.if.then_crit_edge ]
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 8
  %or = or i32 %3, %cond
  %4 = load i32, ptr @no_cs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  %cond4 = select i1 %tobool3.not, i32 0, i32 64
  %or6 = or i32 %cond4, %or
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or6, ptr %mode, align 8
  %call = tail call i32 @spi_setup(ptr noundef %spi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.then.do.end12_crit_edge, label %do.end

if.then.do.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.15, i32 noundef %call) #10
  br label %cleanup

do.end12:                                         ; preds = %if.then.do.end12_crit_edge, %lor.lhs.false.do.end12_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.18) #10
  %call14 = tail call i32 @spi_test_run_tests(ptr noundef %spi, ptr noundef nonnull @spi_tests)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.21, i32 noundef %call14) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call14, %do.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spi_test_print_hex_dump(ptr noundef %pre, ptr noundef %ptr, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %len)
  %cmp = icmp ult i32 %len, 1024
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @print_hex_dump(ptr noundef nonnull @.str.3, ptr noundef %pre, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %ptr, i32 noundef %len, i1 noundef zeroext false) #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @print_hex_dump(ptr noundef nonnull @.str.3, ptr noundef %pre, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %ptr, i32 noundef 512, i1 noundef zeroext false) #7
  %sub = add i32 %len, -512
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %pre, i32 noundef %sub) #10
  %add.ptr = getelementptr i8, ptr %ptr, i32 %sub
  tail call void @print_hex_dump(ptr noundef nonnull @.str.3, ptr noundef %pre, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr, i32 noundef 512, i1 noundef zeroext false) #7
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rx_ranges_cmp(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %start = getelementptr inbounds %struct.rx_ranges, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %start, align 4
  %start4 = getelementptr inbounds %struct.rx_ranges, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %start4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %start4, align 4
  %cmp = icmp ugt ptr %1, %3
  %cmp7 = icmp ult ptr %1, %3
  %. = sext i1 %cmp7 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !45, !47, !49, !51, !52, !53, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !107, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !157, !158, !159, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223}
!llvm.module.flags = !{!224, !225, !226, !227, !228, !229, !230, !231}
!llvm.ident = !{!232}

!0 = !{ptr @__param_simulate_only, !1, !"__param_simulate_only", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-loopback-test.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_simulate_onlytype230, !1, !"__UNIQUE_ID_simulate_onlytype230", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_simulate_only231, !4, !"__UNIQUE_ID_simulate_only231", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-loopback-test.c", i32 28, i32 1}
!5 = !{ptr @__param_dump_messages, !6, !"__param_dump_messages", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-loopback-test.c", i32 32, i32 1}
!7 = !{ptr @__UNIQUE_ID_dump_messagestype232, !6, !"__UNIQUE_ID_dump_messagestype232", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_dump_messages233, !9, !"__UNIQUE_ID_dump_messages233", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-loopback-test.c", i32 33, i32 1}
!10 = !{ptr @__param_loopback, !11, !"__param_loopback", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-loopback-test.c", i32 39, i32 1}
!12 = !{ptr @__UNIQUE_ID_loopbacktype234, !11, !"__UNIQUE_ID_loopbacktype234", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_loopback235, !14, !"__UNIQUE_ID_loopback235", i1 false, i1 false}
!14 = !{!"../drivers/spi/spi-loopback-test.c", i32 40, i32 1}
!15 = !{ptr @__param_loop_req, !16, !"__param_loop_req", i1 false, i1 false}
!16 = !{!"../drivers/spi/spi-loopback-test.c", i32 46, i32 1}
!17 = !{ptr @__UNIQUE_ID_loop_reqtype236, !16, !"__UNIQUE_ID_loop_reqtype236", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_loop_req237, !19, !"__UNIQUE_ID_loop_req237", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-loopback-test.c", i32 47, i32 1}
!20 = !{ptr @__param_no_cs, !21, !"__param_no_cs", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-loopback-test.c", i32 52, i32 1}
!22 = !{ptr @__UNIQUE_ID_no_cstype238, !21, !"__UNIQUE_ID_no_cstype238", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_no_cs239, !24, !"__UNIQUE_ID_no_cs239", i1 false, i1 false}
!24 = !{!"../drivers/spi/spi-loopback-test.c", i32 53, i32 1}
!25 = !{ptr @__param_run_only_test, !26, !"__param_run_only_test", i1 false, i1 false}
!26 = !{!"../drivers/spi/spi-loopback-test.c", i32 58, i32 1}
!27 = !{ptr @__UNIQUE_ID_run_only_testtype240, !26, !"__UNIQUE_ID_run_only_testtype240", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_run_only_test241, !29, !"__UNIQUE_ID_run_only_test241", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-loopback-test.c", i32 59, i32 1}
!30 = !{ptr @__param_use_vmalloc, !31, !"__param_use_vmalloc", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-loopback-test.c", i32 64, i32 1}
!32 = !{ptr @__UNIQUE_ID_use_vmalloctype242, !31, !"__UNIQUE_ID_use_vmalloctype242", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_use_vmalloc243, !34, !"__UNIQUE_ID_use_vmalloc243", i1 false, i1 false}
!34 = !{!"../drivers/spi/spi-loopback-test.c", i32 65, i32 1}
!35 = !{ptr @__param_check_ranges, !36, !"__param_check_ranges", i1 false, i1 false}
!36 = !{!"../drivers/spi/spi-loopback-test.c", i32 70, i32 1}
!37 = !{ptr @__UNIQUE_ID_check_rangestype244, !36, !"__UNIQUE_ID_check_rangestype244", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_check_ranges245, !39, !"__UNIQUE_ID_check_ranges245", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-loopback-test.c", i32 71, i32 1}
!40 = !{ptr @__param_compatible, !41, !"__param_compatible", i1 false, i1 false}
!41 = !{!"../drivers/spi/spi-loopback-test.c", i32 352, i32 1}
!42 = !{ptr @__UNIQUE_ID_compatibletype246, !41, !"__UNIQUE_ID_compatibletype246", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_author247, !44, !"__UNIQUE_ID_author247", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-loopback-test.c", i32 369, i32 1}
!45 = !{ptr @__UNIQUE_ID_description248, !46, !"__UNIQUE_ID_description248", i1 false, i1 false}
!46 = !{!"../drivers/spi/spi-loopback-test.c", i32 370, i32 1}
!47 = !{ptr @__UNIQUE_ID_license249, !48, !"__UNIQUE_ID_license249", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-loopback-test.c", i32 371, i32 1}
!49 = !{ptr @.str, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/spi/spi-loopback-test.c", i32 916, i32 4}
!51 = !{ptr @.str.1, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.2, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.3, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.4, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @spi_test_execute_msg._entry, !50, !"_entry", i1 false, i1 false}
!56 = !{ptr @spi_test_execute_msg._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.6, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/spi/spi-loopback-test.c", i32 924, i32 4}
!59 = !{ptr @.str.7, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @spi_test_execute_msg._entry.5, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @spi_test_execute_msg._entry_ptr.8, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.10, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/spi/spi-loopback-test.c", i32 932, i32 4}
!64 = !{ptr @spi_test_execute_msg._entry.9, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @spi_test_execute_msg._entry_ptr.11, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @__ksymtab_spi_test_execute_msg, !67, !"__ksymtab_spi_test_execute_msg", i1 false, i1 false}
!67 = !{!"../drivers/spi/spi-loopback-test.c", i32 954, i32 1}
!68 = !{ptr @.str.12, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-loopback-test.c", i32 979, i32 3}
!70 = !{ptr @.str.13, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @spi_test_run_test._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @spi_test_run_test._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @__ksymtab_spi_test_run_test, !74, !"__ksymtab_spi_test_run_test", i1 false, i1 false}
!74 = !{!"../drivers/spi/spi-loopback-test.c", i32 1020, i32 1}
!75 = !{ptr @__ksymtab_spi_test_run_tests, !76, !"__ksymtab_spi_test_run_tests", i1 false, i1 false}
!76 = !{!"../drivers/spi/spi-loopback-test.c", i32 1084, i32 1}
!77 = !{ptr @simulate_only, !78, !"simulate_only", i1 false, i1 false}
!78 = !{!"../drivers/spi/spi-loopback-test.c", i32 26, i32 12}
!79 = !{ptr @dump_messages, !80, !"dump_messages", i1 false, i1 false}
!80 = !{!"../drivers/spi/spi-loopback-test.c", i32 31, i32 12}
!81 = !{ptr @loopback, !82, !"loopback", i1 false, i1 false}
!82 = !{!"../drivers/spi/spi-loopback-test.c", i32 38, i32 12}
!83 = !{ptr @loop_req, !84, !"loop_req", i1 false, i1 false}
!84 = !{!"../drivers/spi/spi-loopback-test.c", i32 45, i32 12}
!85 = !{ptr @no_cs, !86, !"no_cs", i1 false, i1 false}
!86 = !{!"../drivers/spi/spi-loopback-test.c", i32 51, i32 12}
!87 = !{ptr @use_vmalloc, !88, !"use_vmalloc", i1 false, i1 false}
!88 = !{!"../drivers/spi/spi-loopback-test.c", i32 63, i32 12}
!89 = !{ptr @___asan_gen_.83, !1, !"__param_str_simulate_only", i1 false, i1 false}
!90 = !{ptr @___asan_gen_.86, !6, !"__param_str_dump_messages", i1 false, i1 false}
!91 = !{ptr @___asan_gen_.89, !11, !"__param_str_loopback", i1 false, i1 false}
!92 = !{ptr @___asan_gen_.92, !16, !"__param_str_loop_req", i1 false, i1 false}
!93 = !{ptr @___asan_gen_.95, !21, !"__param_str_no_cs", i1 false, i1 false}
!94 = !{ptr @___asan_gen_.98, !26, !"__param_str_run_only_test", i1 false, i1 false}
!95 = !{ptr @run_only_test, !96, !"run_only_test", i1 false, i1 false}
!96 = !{!"../drivers/spi/spi-loopback-test.c", i32 57, i32 12}
!97 = !{ptr @___asan_gen_.101, !31, !"__param_str_use_vmalloc", i1 false, i1 false}
!98 = !{ptr @___asan_gen_.104, !36, !"__param_str_check_ranges", i1 false, i1 false}
!99 = !{ptr @check_ranges, !100, !"check_ranges", i1 false, i1 false}
!100 = !{!"../drivers/spi/spi-loopback-test.c", i32 69, i32 12}
!101 = !{ptr @__param_str_compatible, !41, !"__param_str_compatible", i1 false, i1 false}
!102 = !{ptr @__param_string_compatible, !41, !"__param_string_compatible", i1 false, i1 false}
!103 = !{ptr @spi_loopback_test_of_match, !104, !"spi_loopback_test_of_match", i1 false, i1 false}
!104 = !{!"../drivers/spi/spi-loopback-test.c", i32 346, i32 28}
!105 = !{ptr @.str.14, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/spi/spi-loopback-test.c", i32 360, i32 11}
!107 = !{ptr @spi_loopback_test_driver, !108, !"spi_loopback_test_driver", i1 false, i1 false}
!108 = !{!"../drivers/spi/spi-loopback-test.c", i32 358, i32 26}
!109 = !{ptr @.str.15, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/spi/spi-loopback-test.c", i32 329, i32 4}
!111 = !{ptr @.str.16, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @spi_loopback_test_probe._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @spi_loopback_test_probe._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.18, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/spi/spi-loopback-test.c", i32 335, i32 2}
!116 = !{ptr @spi_loopback_test_probe._entry.17, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @spi_loopback_test_probe._entry_ptr.19, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.21, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/spi/spi-loopback-test.c", i32 339, i32 2}
!120 = !{ptr @spi_loopback_test_probe._entry.20, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @spi_loopback_test_probe._entry_ptr.22, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @spi_tests, !123, !"spi_tests", i1 false, i1 false}
!123 = !{!"../drivers/spi/spi-loopback-test.c", i32 75, i32 24}
!124 = !{ptr @.str.24, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/spi/spi-loopback-test.c", i32 412, i32 2}
!126 = !{ptr @.str.25, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @spi_test_dump_message._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @spi_test_dump_message._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.27, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/spi/spi-loopback-test.c", i32 414, i32 3}
!131 = !{ptr @spi_test_dump_message._entry.26, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @spi_test_dump_message._entry_ptr.28, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.30, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/spi/spi-loopback-test.c", i32 416, i32 2}
!135 = !{ptr @spi_test_dump_message._entry.29, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @spi_test_dump_message._entry_ptr.31, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.33, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/spi/spi-loopback-test.c", i32 418, i32 2}
!139 = !{ptr @spi_test_dump_message._entry.32, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @spi_test_dump_message._entry_ptr.34, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.36, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/spi/spi-loopback-test.c", i32 422, i32 3}
!143 = !{ptr @spi_test_dump_message._entry.35, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @spi_test_dump_message._entry_ptr.37, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.39, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/spi/spi-loopback-test.c", i32 423, i32 3}
!147 = !{ptr @spi_test_dump_message._entry.38, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @spi_test_dump_message._entry_ptr.40, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.42, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/spi/spi-loopback-test.c", i32 424, i32 3}
!151 = !{ptr @spi_test_dump_message._entry.41, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @spi_test_dump_message._entry_ptr.43, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.44, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/spi/spi-loopback-test.c", i32 426, i32 28}
!155 = !{ptr @.str.46, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/spi/spi-loopback-test.c", i32 430, i32 3}
!157 = !{ptr @spi_test_dump_message._entry.45, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @spi_test_dump_message._entry_ptr.47, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.48, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/spi/spi-loopback-test.c", i32 432, i32 28}
!161 = !{ptr @.str.50, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/spi/spi-loopback-test.c", i32 443, i32 5}
!163 = !{ptr @spi_test_dump_message._entry.49, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @spi_test_dump_message._entry_ptr.51, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.52, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/spi/spi-loopback-test.c", i32 397, i32 2}
!167 = !{ptr @.str.53, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @spi_test_print_hex_dump._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @spi_test_print_hex_dump._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.54, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/spi/spi-loopback-test.c", i32 603, i32 5}
!172 = !{ptr @.str.55, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @spi_test_check_loopback_result._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @spi_test_check_loopback_result._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.57, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/spi/spi-loopback-test.c", i32 620, i32 2}
!177 = !{ptr @spi_test_check_loopback_result._entry.56, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @spi_test_check_loopback_result._entry_ptr.58, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.59, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/spi/spi-loopback-test.c", i32 523, i32 3}
!181 = !{ptr @.str.60, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @spi_check_rx_ranges._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @spi_check_rx_ranges._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.61, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/spi/spi-loopback-test.c", i32 555, i32 3}
!186 = !{ptr @.str.62, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @spi_test_check_elapsed_time._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @spi_test_check_elapsed_time._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = distinct !{null, !190, !"__print_once", i1 false, i1 false}
!190 = !{!"../drivers/spi/spi-loopback-test.c", i32 849, i32 3}
!191 = !{ptr @.str.63, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.64, !190, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.65, !190, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @spi_test_run_iter._entry, !190, !"_entry", i1 false, i1 false}
!195 = !{ptr @spi_test_run_iter._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!196 = distinct !{null, !197, !"__print_once", i1 false, i1 false}
!197 = !{!"../drivers/spi/spi-loopback-test.c", i32 855, i32 3}
!198 = !{ptr @.str.68, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @spi_test_run_iter._entry.67, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @spi_test_run_iter._entry_ptr.69, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.71, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/spi/spi-loopback-test.c", i32 863, i32 3}
!203 = !{ptr @spi_test_run_iter._entry.70, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @spi_test_run_iter._entry_ptr.72, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.74, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/spi/spi-loopback-test.c", i32 865, i32 3}
!207 = !{ptr @spi_test_run_iter._entry.73, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @spi_test_run_iter._entry_ptr.75, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.76, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/spi/spi-loopback-test.c", i32 803, i32 2}
!211 = !{ptr @.str.77, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @_spi_test_run_iter._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @_spi_test_run_iter._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.78, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/spi/spi-loopback-test.c", i32 661, i32 2}
!216 = !{ptr @.str.79, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @spi_test_translate._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @spi_test_translate._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.80, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/spi/spi-loopback-test.c", i32 743, i32 5}
!221 = !{ptr @.str.81, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @spi_test_fill_pattern._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @spi_test_fill_pattern._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{i32 1, !"wchar_size", i32 2}
!225 = !{i32 1, !"min_enum_size", i32 4}
!226 = !{i32 8, !"branch-target-enforcement", i32 0}
!227 = !{i32 8, !"sign-return-address", i32 0}
!228 = !{i32 8, !"sign-return-address-all", i32 0}
!229 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!230 = !{i32 7, !"uwtable", i32 1}
!231 = !{i32 7, !"frame-pointer", i32 2}
!232 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!233 = !{!"branch_weights", i32 2000, i32 1}
!234 = !{i64 2148007153, i64 2148007433, i64 2148007767, i64 2148008101}

; ModuleID = '/llk/IR_all_yes/drivers/soundwire/mipi_disco.c_pt.bc'
source_filename = "../drivers/soundwire/mipi_disco.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sdw_master_read_prop\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_master_read_prop\09\09\09\09"
module asm "\09.long\09__crc_sdw_master_read_prop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_master_read_prop:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_master_read_prop\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_master_read_prop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sdw_slave_read_prop\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_slave_read_prop\09\09\09\09"
module asm "\09.long\09__crc_sdw_slave_read_prop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_slave_read_prop:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_slave_read_prop\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_slave_read_prop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sdw_bus = type { ptr, ptr, i32, i32, %struct.list_head, [1 x i32], %struct.mutex, %struct.mutex, ptr, ptr, ptr, %struct.sdw_bus_params, %struct.sdw_master_prop, %struct.list_head, ptr, %struct.sdw_defer, i32, i32, i8, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sdw_bus_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sdw_master_prop = type { i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i8, i64 }
%struct.list_head = type { ptr, ptr }
%struct.sdw_defer = type { i32, %struct.completion, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.sdw_slave = type { %struct.sdw_slave_id, %struct.device, i32, ptr, ptr, %struct.sdw_slave_prop, ptr, %struct.list_head, [15 x %struct.completion], [15 x i32], i16, i16, i8, %struct.completion, %struct.completion, %struct.completion, i32, i8, i8 }
%struct.sdw_slave_id = type { i16, i16, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sdw_slave_prop = type { i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, i8, i32, i8 }
%struct.sdw_dp0_prop = type { i32, i32, i32, ptr, i8, i8, i8 }
%struct.sdw_dpn_prop = type { i32, i32, i32, i32, ptr, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i8, i8, i32, ptr }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mipi-sdw-sw-interface-revision\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mipi-sdw-link-%d-subproperties\00", [33 x i8] zeroinitializer }, align 32
@sdw_master_read_prop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 47, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Master node %s not found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sdw_master_read_prop\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/soundwire/mipi_disco.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdw_master_read_prop._entry_ptr = internal global ptr @sdw_master_read_prop._entry, section ".printk_index", align 4
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mipi-sdw-clock-stop-mode0-supported\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mipi-sdw-clock-stop-mode1-supported\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mipi-sdw-max-clock-frequency\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mipi-sdw-clock-frequencies-supported\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mipi-sdw-supported-clock-gears\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mipi-sdw-default-frame-rate\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mipi-sdw-default-frame-row-size\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mipi-sdw-default-frame-col-size\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mipi-sdw-dynamic-frame-shape\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mipi-sdw-command-error-threshold\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_sdw_master_read_prop = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_master_read_prop = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_master_read_prop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_master_read_prop to i32), ptr @__kstrtab_sdw_master_read_prop, ptr @__kstrtabns_sdw_master_read_prop }, section "___ksymtab+sdw_master_read_prop", align 4
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mipi-sdw-wake-up-unavailable\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mipi-sdw-test-mode-supported\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"mipi-sdw-simplified-clockstopprepare-sm-supported\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mipi-sdw-clockstopprepare-timeout\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mipi-sdw-slave-channelprepare-timeout\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"mipi-sdw-clockstopprepare-hard-reset-behavior\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mipi-sdw-highPHY-capable\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mipi-sdw-paging-support\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mipi-sdw-bank-delay-support\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mipi-sdw-port15-read-behavior\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mipi-sdw-master-count\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mipi-sdw-source-port-list\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mipi-sdw-sink-port-list\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mipi-sdw-dp-0-subproperties\00", [36 x i8] zeroinitializer }, align 32
@sdw_slave_read_prop.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"soundwire_bus\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sdw_slave_read_prop\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DP0 node not found!!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"source\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sink\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_sdw_slave_read_prop = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_slave_read_prop = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_slave_read_prop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_slave_read_prop to i32), ptr @__kstrtab_sdw_slave_read_prop, ptr @__kstrtabns_sdw_slave_read_prop }, section "___ksymtab+sdw_slave_read_prop", align 4
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mipi-sdw-port-max-wordlength\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mipi-sdw-port-min-wordlength\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mipi-sdw-port-wordlength-configs\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mipi-sdw-bra-flow-controlled\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mipi-sdw-simplified-channel-prepare-sm\00", [57 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mipi-sdw-imp-def-dp0-interrupts-supported\00", [54 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mipi-sdw-dp-%d-%s-subproperties\00", [32 x i8] zeroinitializer }, align 32
@sdw_slave_read_dpn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 184, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s dpN not found\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdw_slave_read_dpn\00", [45 x i8] zeroinitializer }, align 32
@sdw_slave_read_dpn._entry_ptr = internal global ptr @sdw_slave_read_dpn._entry, section ".printk_index", align 4
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mipi-sdw-data-port-type\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mipi-sdw-max-grouping-supported\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mipi-sdw-simplified-channelprepare-sm\00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mipi-sdw-port-channelprepare-timeout\00", [59 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mipi-sdw-imp-def-dpn-interrupts-supported\00", [54 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mipi-sdw-min-channel-number\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mipi-sdw-max-channel-number\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mipi-sdw-channel-number-list\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mipi-sdw-channel-combination-list\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mipi-sdw-modes-supported\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mipi-sdw-max-async-buffer\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mipi-sdw-block-packing-mode\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mipi-sdw-port-encoding-type\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 38, i32 6 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 43, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 47, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 52, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 56, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 60, i32 6 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 63, i32 41 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 89, i32 41 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 104, i32 33 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 107, i32 33 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 110, i32 33 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 114, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 116, i32 33 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 298, i32 5 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 302, i32 5 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 310, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 312, i32 32 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 315, i32 32 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 319, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 323, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 326, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 329, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 332, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 334, i32 32 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 337, i32 32 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 340, i32 32 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 344, i32 42 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 346, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 372, i32 27 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 383, i32 25 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 129, i32 33 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 132, i32 33 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 135, i32 41 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 151, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 154, i32 5 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 157, i32 5 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 178, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 184, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 208, i32 34 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 212, i32 7 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 216, i32 5 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 219, i32 7 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 223, i32 5 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 226, i32 34 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 229, i32 34 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 232, i32 42 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 247, i32 42 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 264, i32 5 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 266, i32 34 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 270, i32 5 }
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.236 = private constant [34 x i8] c"../drivers/soundwire/mipi_disco.c\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 272, i32 34 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__ksymtab_sdw_master_read_prop, ptr @__ksymtab_sdw_slave_read_prop, ptr @sdw_master_read_prop._entry, ptr @sdw_master_read_prop._entry_ptr, ptr @sdw_slave_read_dpn._entry, ptr @sdw_slave_read_dpn._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_master_read_prop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_slave_read_dpn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdw_master_read_prop(ptr noundef %bus) #0 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prop1 = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #6
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 8
  %call.i = tail call i32 @device_property_read_u32_array(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef %prop1, i32 noundef 1) #6
  %link_id = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 2
  %3 = ptrtoint ptr %link_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %link_id, align 8
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %4)
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 8
  %call5 = call ptr @device_get_named_child_node(ptr noundef %6, ptr noundef nonnull %name) #6
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i126 = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %call5, ptr noundef nonnull @.str.7) #6
  br i1 %call.i126, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %clk_stop_modes = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %clk_stop_modes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clk_stop_modes, align 4
  %or = or i32 %10, 1
  store i32 %or, ptr %clk_stop_modes, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %call.i127 = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %call5, ptr noundef nonnull @.str.8) #6
  br i1 %call.i127, label %if.then12, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %clk_stop_modes13 = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %clk_stop_modes13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clk_stop_modes13, align 4
  %or14 = or i32 %12, 2
  store i32 %or14, ptr %clk_stop_modes13, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10.if.end15_crit_edge
  %max_clk_freq = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 12, i32 2
  %call.i128 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call5, ptr noundef nonnull @.str.9, ptr noundef %max_clk_freq, i32 noundef 1) #6
  %call.i129 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call5, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %cmp = icmp sgt i32 %call.i129, 0
  br i1 %cmp, label %if.then18, label %if.end15.if.end29_crit_edge

if.end15.if.end29_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then18:                                        ; preds = %if.end15
  %num_clk_freq = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 12, i32 5
  %13 = ptrtoint ptr %num_clk_freq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i129, ptr %num_clk_freq, align 4
  %14 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i129, i32 4) #6
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !127

devm_kcalloc.exit.thread:                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %clk_freq141 = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 12, i32 6
  %16 = ptrtoint ptr %clk_freq141 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %clk_freq141, align 8
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.then18
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus, align 8
  %19 = extractvalue { i32, i1 } %14, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %18, i32 noundef %19, i32 noundef 3520) #6
  %clk_freq = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 12, i32 6
  %20 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i.i, ptr %clk_freq, align 8
  %tobool23.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool23.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end25

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %num_clk_freq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_clk_freq, align 4
  %call28 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call5, ptr noundef nonnull @.str.10, ptr noundef nonnull %call5.i.i, i32 noundef %22) #6
  br label %if.end29

if.end29:                                         ; preds = %if.end25, %if.end15.if.end29_crit_edge
  %23 = ptrtoint ptr %max_clk_freq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_clk_freq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool31.not = icmp eq i32 %24, 0
  br i1 %tobool31.not, label %land.lhs.true, label %if.end29.if.end48_crit_edge

if.end29.if.end48_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end29
  %clk_freq32 = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 12, i32 6
  %25 = ptrtoint ptr %clk_freq32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk_freq32, align 8
  %tobool33.not = icmp eq ptr %26, null
  br i1 %tobool33.not, label %land.lhs.true.if.end48_crit_edge, label %if.then34

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then34:                                        ; preds = %land.lhs.true
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = ptrtoint ptr %max_clk_freq to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %max_clk_freq, align 8
  %num_clk_freq37 = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 12, i32 5
  %30 = ptrtoint ptr %num_clk_freq37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_clk_freq37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp38146 = icmp ugt i32 %31, 1
  br i1 %cmp38146, label %if.then34.for.body_crit_edge, label %if.then34.if.end48_crit_edge

if.then34.if.end48_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then34.for.body_crit_edge:                     ; preds = %if.then34
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then34.for.body_crit_edge
  %i.0147 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %if.then34.for.body_crit_edge ]
  %arrayidx40 = getelementptr i32, ptr %26, i32 %i.0147
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx40, align 4
  %34 = ptrtoint ptr %max_clk_freq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_clk_freq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp42 = icmp ugt i32 %33, %35
  br i1 %cmp42, label %if.then43, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then43:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %max_clk_freq to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %max_clk_freq, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0147, 1
  %exitcond.not = icmp eq i32 %inc, %31
  br i1 %exitcond.not, label %for.inc.if.end48_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end48_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.end48:                                         ; preds = %for.inc.if.end48_crit_edge, %if.then34.if.end48_crit_edge, %land.lhs.true.if.end48_crit_edge, %if.end29.if.end48_crit_edge
  %call.i130 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call5, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %cmp50 = icmp sgt i32 %call.i130, 0
  br i1 %cmp50, label %if.then51, label %if.end48.if.end62_crit_edge

if.end48.if.end62_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then51:                                        ; preds = %if.end48
  %num_clk_gears = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 12, i32 3
  %37 = ptrtoint ptr %num_clk_gears to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call.i130, ptr %num_clk_gears, align 4
  %38 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i130, i32 4) #6
  %39 = extractvalue { i32, i1 } %38, 1
  br i1 %39, label %devm_kcalloc.exit134.thread, label %devm_kcalloc.exit134, !prof !127

devm_kcalloc.exit134.thread:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %clk_gears144 = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 12, i32 4
  %40 = ptrtoint ptr %clk_gears144 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %clk_gears144, align 8
  br label %cleanup

devm_kcalloc.exit134:                             ; preds = %if.then51
  %41 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus, align 8
  %43 = extractvalue { i32, i1 } %38, 0
  %call5.i.i131 = call noalias ptr @devm_kmalloc(ptr noundef %42, i32 noundef %43, i32 noundef 3520) #6
  %clk_gears = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 12, i32 4
  %44 = ptrtoint ptr %clk_gears to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call5.i.i131, ptr %clk_gears, align 8
  %tobool56.not = icmp eq ptr %call5.i.i131, null
  br i1 %tobool56.not, label %devm_kcalloc.exit134.cleanup_crit_edge, label %if.end58

devm_kcalloc.exit134.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit134
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end58:                                         ; preds = %devm_kcalloc.exit134
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %num_clk_gears to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_clk_gears, align 4
  %call61 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call5, ptr noundef nonnull @.str.11, ptr noundef nonnull %call5.i.i131, i32 noundef %46) #6
  br label %if.end62

if.end62:                                         ; preds = %if.end58, %if.end48.if.end62_crit_edge
  %default_frame_rate = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 12, i32 7
  %call.i135 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call5, ptr noundef nonnull @.str.12, ptr noundef %default_frame_rate, i32 noundef 1) #6
  %default_row = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 12, i32 8
  %call.i136 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call5, ptr noundef nonnull @.str.13, ptr noundef %default_row, i32 noundef 1) #6
  %default_col = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 12, i32 9
  %call.i137 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call5, ptr noundef nonnull @.str.14, ptr noundef %default_col, i32 noundef 1) #6
  %call.i138 = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %call5, ptr noundef nonnull @.str.15) #6
  %dynamic_frame = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 12, i32 10
  %frombool = zext i1 %call.i138 to i8
  %47 = ptrtoint ptr %dynamic_frame to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %frombool, ptr %dynamic_frame, align 8
  %err_threshold = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 12, i32 11
  %call.i139 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call5, ptr noundef nonnull @.str.16, ptr noundef %err_threshold, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %devm_kcalloc.exit134.cleanup_crit_edge, %devm_kcalloc.exit134.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end
  %retval.0 = phi i32 [ 0, %if.end62 ], [ -5, %do.end ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit134.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit134.thread ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdw_slave_read_prop(ptr noundef %slave) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prop1 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5
  %dev2 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %call.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev2, ptr noundef nonnull @.str, ptr noundef %prop1, i32 noundef 1) #6
  %call.i841 = tail call zeroext i1 @device_property_present(ptr noundef %dev2, ptr noundef nonnull @.str.17) #6
  %wake_capable = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 1
  %lnot = xor i1 %call.i841, true
  %frombool6 = zext i1 %lnot to i8
  %0 = ptrtoint ptr %wake_capable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool6, ptr %wake_capable, align 4
  %call.i842 = tail call zeroext i1 @device_property_present(ptr noundef %dev2, ptr noundef nonnull @.str.18) #6
  %test_mode_capable = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 2
  %frombool8 = zext i1 %call.i842 to i8
  %1 = ptrtoint ptr %test_mode_capable to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool8, ptr %test_mode_capable, align 1
  %clk_stop_mode1 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %clk_stop_mode1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %clk_stop_mode1, align 2
  %call.i843 = tail call zeroext i1 @device_property_present(ptr noundef %dev2, ptr noundef nonnull @.str.8) #6
  br i1 %call.i843, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %clk_stop_mode1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %clk_stop_mode1, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i844 = tail call zeroext i1 @device_property_present(ptr noundef %dev2, ptr noundef nonnull @.str.19) #6
  %simple_clk_stop_capable = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 4
  %frombool12 = zext i1 %call.i844 to i8
  %4 = ptrtoint ptr %simple_clk_stop_capable to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool12, ptr %simple_clk_stop_capable, align 1
  %clk_stop_timeout = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 5
  %call.i845 = tail call i32 @device_property_read_u32_array(ptr noundef %dev2, ptr noundef nonnull @.str.20, ptr noundef %clk_stop_timeout, i32 noundef 1) #6
  %ch_prep_timeout = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 6
  %call.i846 = tail call i32 @device_property_read_u32_array(ptr noundef %dev2, ptr noundef nonnull @.str.21, ptr noundef %ch_prep_timeout, i32 noundef 1) #6
  %reset_behave = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 7
  %call.i847 = tail call i32 @device_property_read_u32_array(ptr noundef %dev2, ptr noundef nonnull @.str.22, ptr noundef %reset_behave, i32 noundef 1) #6
  %call.i848 = tail call zeroext i1 @device_property_present(ptr noundef %dev2, ptr noundef nonnull @.str.23) #6
  %high_PHY_capable = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 8
  %frombool17 = zext i1 %call.i848 to i8
  %5 = ptrtoint ptr %high_PHY_capable to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool17, ptr %high_PHY_capable, align 4
  %call.i849 = tail call zeroext i1 @device_property_present(ptr noundef %dev2, ptr noundef nonnull @.str.24) #6
  %paging_support = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 9
  %frombool19 = zext i1 %call.i849 to i8
  %6 = ptrtoint ptr %paging_support to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool19, ptr %paging_support, align 1
  %call.i850 = tail call zeroext i1 @device_property_present(ptr noundef %dev2, ptr noundef nonnull @.str.25) #6
  %bank_delay_support = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 10
  %frombool21 = zext i1 %call.i850 to i8
  %7 = ptrtoint ptr %bank_delay_support to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool21, ptr %bank_delay_support, align 2
  %p15_behave = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 11
  %call.i851 = tail call i32 @device_property_read_u32_array(ptr noundef %dev2, ptr noundef nonnull @.str.26, ptr noundef %p15_behave, i32 noundef 1) #6
  %master_count = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 13
  %call.i852 = tail call i32 @device_property_read_u32_array(ptr noundef %dev2, ptr noundef nonnull @.str.27, ptr noundef %master_count, i32 noundef 1) #6
  %source_ports = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 14
  %call.i853 = tail call i32 @device_property_read_u32_array(ptr noundef %dev2, ptr noundef nonnull @.str.28, ptr noundef %source_ports, i32 noundef 1) #6
  %sink_ports = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 15
  %call.i854 = tail call i32 @device_property_read_u32_array(ptr noundef %dev2, ptr noundef nonnull @.str.29, ptr noundef %sink_ports, i32 noundef 1) #6
  %call26 = tail call ptr @device_get_named_child_node(ptr noundef %dev2, ptr noundef nonnull @.str.30) #6
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %do.body, label %if.else

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdw_slave_read_prop.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdw_slave_read_prop, %if.then35)) #6
          to label %cond.false [label %if.then35], !srcloc !128

if.then35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdw_slave_read_prop.__UNIQUE_ID_ddebug170, ptr noundef %dev2, ptr noundef nonnull @.str.33) #6
  br label %cond.false

if.else:                                          ; preds = %if.end
  %call.i855 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 20, i32 noundef 3520) #6
  %dp0_prop = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 16
  %8 = ptrtoint ptr %dp0_prop to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i855, ptr %dp0_prop, align 4
  %tobool40.not = icmp eq ptr %call.i855, null
  br i1 %tobool40.not, label %if.else.cleanup_crit_edge, label %if.end42

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %if.else
  %call.i.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call26, ptr noundef nonnull @.str.36, ptr noundef nonnull %call.i855, i32 noundef 1) #6
  %min_word.i = getelementptr inbounds %struct.sdw_dp0_prop, ptr %call.i855, i32 0, i32 1
  %call.i1.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call26, ptr noundef nonnull @.str.37, ptr noundef %min_word.i, i32 noundef 1) #6
  %call.i2.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call26, ptr noundef nonnull @.str.38, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %cmp.i = icmp sgt i32 %call.i2.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end42.if.end10.i_crit_edge

if.end42.if.end10.i_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then.i:                                        ; preds = %if.end42
  %num_words.i = getelementptr inbounds %struct.sdw_dp0_prop, ptr %call.i855, i32 0, i32 2
  %9 = ptrtoint ptr %num_words.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i2.i, ptr %num_words.i, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i2.i, i32 4) #6
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !127

devm_kcalloc.exit.thread.i:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %words7.i = getelementptr inbounds %struct.sdw_dp0_prop, ptr %call.i855, i32 0, i32 3
  %12 = ptrtoint ptr %words7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %words7.i, align 4
  br label %cond.false

devm_kcalloc.exit.i:                              ; preds = %if.then.i
  %13 = extractvalue { i32, i1 } %10, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef %13, i32 noundef 3520) #6
  %words.i = getelementptr inbounds %struct.sdw_dp0_prop, ptr %call.i855, i32 0, i32 3
  %14 = ptrtoint ptr %words.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i.i, ptr %words.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.cond.false_crit_edge, label %if.end.i

devm_kcalloc.exit.i.cond.false_crit_edge:         ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

if.end.i:                                         ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %num_words.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_words.i, align 4
  %call9.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call26, ptr noundef nonnull @.str.38, ptr noundef nonnull %call5.i.i.i, i32 noundef %16) #6
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i, %if.end42.if.end10.i_crit_edge
  %call.i3.i = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %call26, ptr noundef nonnull @.str.39) #6
  %BRA_flow_controlled.i = getelementptr inbounds %struct.sdw_dp0_prop, ptr %call.i855, i32 0, i32 4
  %frombool.i = zext i1 %call.i3.i to i8
  %17 = ptrtoint ptr %BRA_flow_controlled.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool.i, ptr %BRA_flow_controlled.i, align 4
  %call.i4.i = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %call26, ptr noundef nonnull @.str.40) #6
  %simple_ch_prep_sm.i = getelementptr inbounds %struct.sdw_dp0_prop, ptr %call.i855, i32 0, i32 5
  %frombool13.i = zext i1 %call.i4.i to i8
  %18 = ptrtoint ptr %simple_ch_prep_sm.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool13.i, ptr %simple_ch_prep_sm.i, align 1
  %call.i5.i = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %call26, ptr noundef nonnull @.str.41) #6
  %imp_def_interrupts.i = getelementptr inbounds %struct.sdw_dp0_prop, ptr %call.i855, i32 0, i32 6
  %frombool15.i = zext i1 %call.i5.i to i8
  %19 = ptrtoint ptr %imp_def_interrupts.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool15.i, ptr %imp_def_interrupts.i, align 2
  br label %cond.false

cond.false:                                       ; preds = %if.end10.i, %devm_kcalloc.exit.i.cond.false_crit_edge, %devm_kcalloc.exit.thread.i, %if.then35, %do.body
  %20 = ptrtoint ptr %source_ports to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %source_ports, align 4
  %call.i856 = tail call i32 @__sw_hweight32(i32 noundef %21) #6
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i856, i32 84) #6
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !127

devm_kcalloc.exit.thread:                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  %src_dpn_prop864 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 17
  %24 = ptrtoint ptr %src_dpn_prop864 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %src_dpn_prop864, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %cond.false
  %25 = extractvalue { i32, i1 } %22, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef %25, i32 noundef 3520) #6
  %src_dpn_prop = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 17
  %26 = ptrtoint ptr %src_dpn_prop to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i.i, ptr %src_dpn_prop, align 4
  %tobool367.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool367.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end369

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end369:                                        ; preds = %devm_kcalloc.exit
  %27 = ptrtoint ptr %source_ports to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %source_ports, align 4
  tail call fastcc void @sdw_slave_read_dpn(ptr noundef %slave, ptr noundef nonnull %call5.i.i, i32 noundef %28, ptr noundef nonnull @.str.34)
  %29 = ptrtoint ptr %sink_ports to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sink_ports, align 4
  %call.i857 = tail call i32 @__sw_hweight32(i32 noundef %30) #6
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i857, i32 84) #6
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %devm_kcalloc.exit861.thread, label %devm_kcalloc.exit861, !prof !127

devm_kcalloc.exit861.thread:                      ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #8
  %sink_dpn_prop867 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 18
  %33 = ptrtoint ptr %sink_dpn_prop867 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %sink_dpn_prop867, align 4
  br label %cleanup

devm_kcalloc.exit861:                             ; preds = %if.end369
  %34 = extractvalue { i32, i1 } %31, 0
  %call5.i.i858 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef %34, i32 noundef 3520) #6
  %sink_dpn_prop = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 18
  %35 = ptrtoint ptr %sink_dpn_prop to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call5.i.i858, ptr %sink_dpn_prop, align 4
  %tobool702.not = icmp eq ptr %call5.i.i858, null
  br i1 %tobool702.not, label %devm_kcalloc.exit861.cleanup_crit_edge, label %if.end704

devm_kcalloc.exit861.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit861
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end704:                                        ; preds = %devm_kcalloc.exit861
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %sink_ports to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sink_ports, align 4
  tail call fastcc void @sdw_slave_read_dpn(ptr noundef %slave, ptr noundef nonnull %call5.i.i858, i32 noundef %37, ptr noundef nonnull @.str.35)
  br label %cleanup

cleanup:                                          ; preds = %if.end704, %devm_kcalloc.exit861.cleanup_crit_edge, %devm_kcalloc.exit861.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end704 ], [ -12, %if.else.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit861.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit861.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdw_slave_read_dpn(ptr noundef %slave, ptr noundef %dpn, i32 noundef %ports, ptr noundef %type) unnamed_addr #0 align 64 {
entry:
  %addr = alloca i32, align 4
  %name = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %name) #6
  %0 = call ptr @memset(ptr %name, i32 255, i32 40)
  %and = and i32 %ports, 32766
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %and, ptr %addr, align 4
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %addr, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call)
  %cmp40 = icmp ult i32 %call, 32
  br i1 %cmp40, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end84.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end84.for.body_crit_edge ]
  %bit.041 = phi i32 [ %call, %for.body.lr.ph ], [ %call94, %if.end84.for.body_crit_edge ]
  %call1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 40, ptr noundef nonnull @.str.42, i32 noundef %bit.041, ptr noundef %type)
  %arrayidx = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %bit.041, ptr %arrayidx, align 4
  %call3 = call ptr @device_get_named_child_node(ptr noundef %dev, ptr noundef nonnull %name) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef nonnull %name) #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %max_word = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 1
  %call.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call3, ptr noundef nonnull @.str.36, ptr noundef %max_word, i32 noundef 1) #6
  %min_word = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 2
  %call.i1 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call3, ptr noundef nonnull @.str.37, ptr noundef %min_word, i32 noundef 1) #6
  %call.i2 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call3, ptr noundef nonnull @.str.38, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp11 = icmp sgt i32 %call.i2, 0
  br i1 %cmp11, label %if.then12, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then12:                                        ; preds = %if.end
  %num_words = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 3
  %3 = ptrtoint ptr %num_words to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.i2, ptr %num_words, align 4
  %4 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i2, i32 4) #6
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !127

devm_kcalloc.exit.thread:                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %words25 = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 4
  %6 = ptrtoint ptr %words25 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %words25, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.then12
  %7 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %7, i32 noundef 3520) #6
  %words = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 4
  %8 = ptrtoint ptr %words to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %words, align 4
  %tobool21.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool21.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end23

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %num_words to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_words, align 4
  %call28 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call3, ptr noundef nonnull @.str.38, ptr noundef nonnull %call5.i.i, i32 noundef %10) #6
  br label %if.end29

if.end29:                                         ; preds = %if.end23, %if.end.if.end29_crit_edge
  %type31 = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 5
  %call.i3 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call3, ptr noundef nonnull @.str.45, ptr noundef %type31, i32 noundef 1) #6
  %max_grouping = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 6
  %call.i4 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call3, ptr noundef nonnull @.str.46, ptr noundef %max_grouping, i32 noundef 1) #6
  %call.i5 = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %call3, ptr noundef nonnull @.str.47) #6
  %simple_ch_prep_sm = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 7
  %frombool = zext i1 %call.i5 to i8
  %11 = ptrtoint ptr %simple_ch_prep_sm to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %simple_ch_prep_sm, align 4
  %ch_prep_timeout = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 8
  %call.i6 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call3, ptr noundef nonnull @.str.48, ptr noundef %ch_prep_timeout, i32 noundef 1) #6
  %imp_def_interrupts = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 9
  %call.i7 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call3, ptr noundef nonnull @.str.49, ptr noundef %imp_def_interrupts, i32 noundef 1) #6
  %min_ch = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 11
  %call.i8 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call3, ptr noundef nonnull @.str.50, ptr noundef %min_ch, i32 noundef 1) #6
  %max_ch = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 10
  %call.i9 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call3, ptr noundef nonnull @.str.51, ptr noundef %max_ch, i32 noundef 1) #6
  %call.i10 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call3, ptr noundef nonnull @.str.52, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %cmp46 = icmp sgt i32 %call.i10, 0
  br i1 %cmp46, label %if.then47, label %if.end29.if.end64_crit_edge

if.end29.if.end64_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then47:                                        ; preds = %if.end29
  %num_channels = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 12
  %12 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i10, ptr %num_channels, align 4
  %13 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i10, i32 4) #6
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %devm_kcalloc.exit14.thread, label %devm_kcalloc.exit14, !prof !127

devm_kcalloc.exit14.thread:                       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %channels28 = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 13
  %15 = ptrtoint ptr %channels28 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %channels28, align 4
  br label %cleanup

devm_kcalloc.exit14:                              ; preds = %if.then47
  %16 = extractvalue { i32, i1 } %13, 0
  %call5.i.i11 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %16, i32 noundef 3520) #6
  %channels = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 13
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i11, ptr %channels, align 4
  %tobool56.not = icmp eq ptr %call5.i.i11, null
  br i1 %tobool56.not, label %devm_kcalloc.exit14.cleanup_crit_edge, label %if.end58

devm_kcalloc.exit14.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end58:                                         ; preds = %devm_kcalloc.exit14
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_channels, align 4
  %call63 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call3, ptr noundef nonnull @.str.52, ptr noundef nonnull %call5.i.i11, i32 noundef %19) #6
  br label %if.end64

if.end64:                                         ; preds = %if.end58, %if.end29.if.end64_crit_edge
  %call.i15 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call3, ptr noundef nonnull @.str.53, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %cmp66 = icmp sgt i32 %call.i15, 0
  br i1 %cmp66, label %if.then67, label %if.end64.if.end84_crit_edge

if.end64.if.end84_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.then67:                                        ; preds = %if.end64
  %num_ch_combinations = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 14
  %20 = ptrtoint ptr %num_ch_combinations to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i15, ptr %num_ch_combinations, align 4
  %21 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i15, i32 4) #6
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %devm_kcalloc.exit19.thread, label %devm_kcalloc.exit19, !prof !127

devm_kcalloc.exit19.thread:                       ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  %ch_combinations31 = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 15
  %23 = ptrtoint ptr %ch_combinations31 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %ch_combinations31, align 4
  br label %cleanup

devm_kcalloc.exit19:                              ; preds = %if.then67
  %24 = extractvalue { i32, i1 } %21, 0
  %call5.i.i16 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %24, i32 noundef 3520) #6
  %ch_combinations = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 15
  %25 = ptrtoint ptr %ch_combinations to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call5.i.i16, ptr %ch_combinations, align 4
  %tobool76.not = icmp eq ptr %call5.i.i16, null
  br i1 %tobool76.not, label %devm_kcalloc.exit19.cleanup_crit_edge, label %if.end78

devm_kcalloc.exit19.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end78:                                         ; preds = %devm_kcalloc.exit19
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %num_ch_combinations to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_ch_combinations, align 4
  %call83 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call3, ptr noundef nonnull @.str.53, ptr noundef nonnull %call5.i.i16, i32 noundef %27) #6
  br label %if.end84

if.end84:                                         ; preds = %if.end78, %if.end64.if.end84_crit_edge
  %modes = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 16
  %call.i20 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call3, ptr noundef nonnull @.str.54, ptr noundef %modes, i32 noundef 1) #6
  %max_async_buffer = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 17
  %call.i21 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call3, ptr noundef nonnull @.str.55, ptr noundef %max_async_buffer, i32 noundef 1) #6
  %call.i22 = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %call3, ptr noundef nonnull @.str.56) #6
  %block_pack_mode = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 18
  %frombool91 = zext i1 %call.i22 to i8
  %28 = ptrtoint ptr %block_pack_mode to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool91, ptr %block_pack_mode, align 4
  %port_encoding = getelementptr %struct.sdw_dpn_prop, ptr %dpn, i32 %i.042, i32 20
  %call.i23 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call3, ptr noundef nonnull @.str.57, ptr noundef %port_encoding, i32 noundef 1) #6
  %inc = add i32 %i.042, 1
  %add = add nuw nsw i32 %bit.041, 1
  %call94 = call i32 @_find_next_bit_be(ptr noundef nonnull %addr, i32 noundef 32, i32 noundef %add) #6
  %cmp = icmp ult i32 %call94, 32
  br i1 %cmp, label %if.end84.for.body_crit_edge, label %if.end84.cleanup_crit_edge

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end84.for.body_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %if.end84.cleanup_crit_edge, %devm_kcalloc.exit19.cleanup_crit_edge, %devm_kcalloc.exit19.thread, %devm_kcalloc.exit14.cleanup_crit_edge, %devm_kcalloc.exit14.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %name) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soundwire/mipi_disco.c", i32 38, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soundwire/mipi_disco.c", i32 43, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/soundwire/mipi_disco.c", i32 47, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @sdw_master_read_prop._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @sdw_master_read_prop._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soundwire/mipi_disco.c", i32 52, i32 11}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soundwire/mipi_disco.c", i32 56, i32 11}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soundwire/mipi_disco.c", i32 60, i32 6}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soundwire/mipi_disco.c", i32 63, i32 41}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soundwire/mipi_disco.c", i32 89, i32 41}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soundwire/mipi_disco.c", i32 104, i32 33}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soundwire/mipi_disco.c", i32 107, i32 33}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soundwire/mipi_disco.c", i32 110, i32 33}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soundwire/mipi_disco.c", i32 114, i32 4}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soundwire/mipi_disco.c", i32 116, i32 33}
!32 = !{ptr @__ksymtab_sdw_master_read_prop, !33, !"__ksymtab_sdw_master_read_prop", i1 false, i1 false}
!33 = !{!"../drivers/soundwire/mipi_disco.c", i32 121, i32 1}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soundwire/mipi_disco.c", i32 298, i32 5}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/soundwire/mipi_disco.c", i32 302, i32 5}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soundwire/mipi_disco.c", i32 310, i32 4}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/soundwire/mipi_disco.c", i32 312, i32 32}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/soundwire/mipi_disco.c", i32 315, i32 32}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/soundwire/mipi_disco.c", i32 319, i32 4}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/soundwire/mipi_disco.c", i32 323, i32 4}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/soundwire/mipi_disco.c", i32 326, i32 4}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soundwire/mipi_disco.c", i32 329, i32 4}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/soundwire/mipi_disco.c", i32 332, i32 4}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/soundwire/mipi_disco.c", i32 334, i32 32}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/soundwire/mipi_disco.c", i32 337, i32 32}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/soundwire/mipi_disco.c", i32 340, i32 32}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/soundwire/mipi_disco.c", i32 344, i32 42}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/soundwire/mipi_disco.c", i32 346, i32 3}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sdw_slave_read_prop.__UNIQUE_ID_ddebug170, !63, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/soundwire/mipi_disco.c", i32 372, i32 27}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/soundwire/mipi_disco.c", i32 383, i32 25}
!71 = !{ptr @__ksymtab_sdw_slave_read_prop, !72, !"__ksymtab_sdw_slave_read_prop", i1 false, i1 false}
!72 = !{!"../drivers/soundwire/mipi_disco.c", i32 387, i32 1}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/soundwire/mipi_disco.c", i32 129, i32 33}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/soundwire/mipi_disco.c", i32 132, i32 33}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/soundwire/mipi_disco.c", i32 135, i32 41}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/soundwire/mipi_disco.c", i32 151, i32 5}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/soundwire/mipi_disco.c", i32 154, i32 5}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/soundwire/mipi_disco.c", i32 157, i32 5}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/soundwire/mipi_disco.c", i32 178, i32 5}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/soundwire/mipi_disco.c", i32 184, i32 4}
!89 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @sdw_slave_read_dpn._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @sdw_slave_read_dpn._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/soundwire/mipi_disco.c", i32 208, i32 34}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/soundwire/mipi_disco.c", i32 212, i32 7}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/soundwire/mipi_disco.c", i32 216, i32 5}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/soundwire/mipi_disco.c", i32 219, i32 7}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/soundwire/mipi_disco.c", i32 223, i32 5}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/soundwire/mipi_disco.c", i32 226, i32 34}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/soundwire/mipi_disco.c", i32 229, i32 34}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/soundwire/mipi_disco.c", i32 232, i32 42}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/soundwire/mipi_disco.c", i32 247, i32 42}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/soundwire/mipi_disco.c", i32 264, i32 5}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/soundwire/mipi_disco.c", i32 266, i32 34}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/soundwire/mipi_disco.c", i32 270, i32 5}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/soundwire/mipi_disco.c", i32 272, i32 34}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"branch_weights", i32 1, i32 2000}
!128 = !{i64 2148286505, i64 2148286510, i64 2148286523, i64 2148286567, i64 2148286601, i64 2148286622}

; ModuleID = '/llk/IR_all_yes/drivers/char/tpm/eventlog/tpm1.c_pt.bc'
source_filename = "../drivers/char/tpm/eventlog/tpm1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.tcpa_event = type { i32, i32, [20 x i8], i32, [0 x i8] }
%struct.tcpa_pc_event = type { i32, i32, [0 x i8] }

@tpm1_ascii_b_measurements_seqops = dso_local constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @tpm1_bios_measurements_start, ptr @tpm1_bios_measurements_stop, ptr @tpm1_bios_measurements_next, ptr @tpm1_ascii_bios_measurements_show }, [16 x i8] zeroinitializer }, align 32
@tpm1_binary_b_measurements_seqops = dso_local constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @tpm1_bios_measurements_start, ptr @tpm1_bios_measurements_stop, ptr @tpm1_bios_measurements_next, ptr @tpm1_binary_bios_measurements_show }, [16 x i8] zeroinitializer }, align 32
@tpm1_ascii_bios_measurements_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: ERROR - No Memory for event name\0A \00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tpm1_ascii_bios_measurements_show\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/char/tpm/eventlog/tpm1.c\00", [63 x i8] zeroinitializer }, align 32
@tpm1_ascii_bios_measurements_show._entry_ptr = internal global ptr @tpm1_ascii_bios_measurements_show._entry, section ".printk_index", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%2d \00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%20phN\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %s\0A\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@tcpa_event_type_strings = internal constant { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.7, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], [56 x i8] zeroinitializer }, align 32
@tcpa_pc_event_id_strings = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.7, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.7, ptr @.str.35, ptr @.str.17, ptr @.str.36, ptr @.str.37, ptr @.str.20], [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[%.*s%.*s]\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PREBOOT\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"POST CODE\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NO ACTION\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SEPARATOR\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ACTION\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EVENT TAG\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"S-CRTM Contents\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"S-CRTM Version\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CPU Microcode\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Platform Config Flags\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Table of Devices\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Compact Hash\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IPL\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IPL Partition Data\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Non-Host Code\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Non-Host Config\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Non-Host Info\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SMBIOS\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BIS Certificate\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"POST BIOS \00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ESCD \00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CMOS\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"NVRAM\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Option ROM\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Option ROM config\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Option ROM microcode \00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"S-CRTM Contents \00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"POST Contents \00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [20 x i64] [i64 18, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.38 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 11, i64 12, i64 13]
@___asan_gen_.39 = private unnamed_addr constant [33 x i8] c"tpm1_ascii_b_measurements_seqops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 285, i32 29 }
@___asan_gen_.42 = private unnamed_addr constant [34 x i8] c"tpm1_binary_b_measurements_seqops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 292, i32 29 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 262, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 268, i32 16 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 271, i32 16 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 274, i32 16 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 279, i32 16 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 146, i32 21 }
@___asan_gen_.72 = private unnamed_addr constant [24 x i8] c"tcpa_event_type_strings\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 30, i32 20 }
@___asan_gen_.75 = private unnamed_addr constant [25 x i8] c"tcpa_pc_event_id_strings\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 51, i32 20 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 207, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 218, i32 40 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 31, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 32, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 34, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 35, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 36, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 37, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 38, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 39, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 40, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 41, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 42, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 43, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 44, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 45, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 46, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 47, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 48, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 53, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 54, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 55, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 56, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 57, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 58, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 59, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 60, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 62, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 64, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [36 x i8] c"../drivers/char/tpm/eventlog/tpm1.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 65, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @tpm1_ascii_bios_measurements_show._entry, ptr @tpm1_ascii_bios_measurements_show._entry_ptr, ptr @tpm1_ascii_b_measurements_seqops, ptr @tpm1_binary_b_measurements_seqops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @tcpa_event_type_strings, ptr @tcpa_pc_event_id_strings, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm1_ascii_b_measurements_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm1_binary_b_measurements_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm1_ascii_bios_measurements_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpa_event_type_strings to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpa_pc_event_id_strings to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal ptr @tpm1_bios_measurements_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %log1 = getelementptr inbounds %struct.tpm_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log1, align 4
  %bios_event_log_end = getelementptr inbounds %struct.tpm_chip, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %bios_event_log_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bios_event_log_end, align 4
  %add.ptr30 = getelementptr i8, ptr %3, i32 32
  %cmp31 = icmp ugt ptr %add.ptr30, %5
  br i1 %cmp31, label %entry.cleanup_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.end11.if.end_crit_edge, %entry.if.end_crit_edge
  %addr.033 = phi ptr [ %add.ptr12, %if.end11.if.end_crit_edge ], [ %3, %entry.if.end_crit_edge ]
  %i.032 = phi i64 [ %inc, %if.end11.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %6 = getelementptr i8, ptr %addr.033, i32 32
  %event_size = getelementptr inbounds %struct.tcpa_event, ptr %addr.033, i32 0, i32 3
  %7 = ptrtoint ptr %event_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %event_size, align 4
  %event_type = getelementptr inbounds %struct.tcpa_event, ptr %addr.033, i32 0, i32 1
  %9 = ptrtoint ptr %event_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %event_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2 = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3 = icmp eq i32 %8, 0
  %or.cond = select i1 %cmp2, i1 %cmp3, i1 false
  %add.ptr5 = getelementptr i8, ptr %6, i32 %8
  %cmp6 = icmp ugt ptr %add.ptr5, %5
  %or.cond29 = select i1 %or.cond, i1 true, i1 %cmp6
  br i1 %or.cond29, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %i.032, i64 %12)
  %cmp9 = icmp eq i64 %i.032, %12
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %inc = add i64 %i.032, 1
  %add = add i32 %8, 32
  %add.ptr12 = getelementptr i8, ptr %addr.033, i32 %add
  %add.ptr = getelementptr i8, ptr %add.ptr12, i32 32
  %cmp = icmp ugt ptr %add.ptr, %5
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end11.if.end_crit_edge

if.end11.if.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %addr.033, %if.end8.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tpm1_bios_measurements_stop(ptr nocapture noundef %m, ptr nocapture noundef %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @tpm1_bios_measurements_next(ptr nocapture noundef readonly %m, ptr noundef readonly %v, ptr nocapture noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %bios_event_log_end = getelementptr inbounds %struct.tpm_chip, ptr %1, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %bios_event_log_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios_event_log_end, align 4
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %pos, align 8
  %event_size = getelementptr inbounds %struct.tcpa_event, ptr %v, i32 0, i32 3
  %6 = ptrtoint ptr %event_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event_size, align 4
  %add = add i32 %7, 32
  %add.ptr = getelementptr i8, ptr %v, i32 %add
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 32
  %cmp = icmp ugt ptr %add.ptr2, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %event_size3 = getelementptr inbounds %struct.tcpa_event, ptr %add.ptr, i32 0, i32 3
  %8 = ptrtoint ptr %event_size3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %event_size3, align 4
  %event_type = getelementptr inbounds %struct.tcpa_event, ptr %add.ptr, i32 0, i32 1
  %10 = ptrtoint ptr %event_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %event_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4 = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5 = icmp eq i32 %9, 0
  %or.cond = select i1 %cmp4, i1 %cmp5, i1 false
  %add.ptr7 = getelementptr i8, ptr %add.ptr2, i32 %9
  %cmp8 = icmp ugt ptr %add.ptr7, %3
  %or.cond26 = select i1 %or.cond, i1 true, i1 %cmp8
  %spec.select = select i1 %or.cond26, ptr null, ptr %add.ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm1_ascii_bios_measurements_show(ptr noundef %m, ptr noundef %v) #3 align 64 {
entry:
  %data.i = alloca [41 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1000) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %v, i32 32
  %1 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %2) #10
  %pcr_value = getelementptr inbounds %struct.tcpa_event, ptr %v, i32 0, i32 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef %pcr_value) #10
  %event_type = getelementptr inbounds %struct.tcpa_event, ptr %v, i32 0, i32 1
  %3 = ptrtoint ptr %event_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %event_type, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, i32 noundef %4) #10
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %data.i) #10
  %5 = call ptr @memset(ptr %data.i, i32 0, i32 41)
  %6 = ptrtoint ptr %event_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event_type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.get_event_name.exit_crit_edge [
    i32 0, label %if.end.sw.bb.i_crit_edge
    i32 1, label %if.end.sw.bb.i_crit_edge16
    i32 2, label %if.end.sw.bb.i_crit_edge17
    i32 3, label %if.end.sw.bb.i_crit_edge18
    i32 7, label %if.end.sw.bb.i_crit_edge19
    i32 8, label %if.end.sw.bb.i_crit_edge20
    i32 9, label %if.end.sw.bb.i_crit_edge21
    i32 10, label %if.end.sw.bb.i_crit_edge22
    i32 11, label %if.end.sw.bb.i_crit_edge23
    i32 12, label %if.end.sw.bb.i_crit_edge24
    i32 13, label %if.end.sw.bb.i_crit_edge25
    i32 14, label %if.end.sw.bb.i_crit_edge26
    i32 15, label %if.end.sw.bb.i_crit_edge27
    i32 16, label %if.end.sw.bb.i_crit_edge28
    i32 17, label %if.end.sw.bb.i_crit_edge29
    i32 4, label %if.end.sw.bb2.i_crit_edge
    i32 5, label %if.end.sw.bb2.i_crit_edge30
    i32 6, label %sw.bb4.i
  ]

if.end.sw.bb2.i_crit_edge30:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i

if.end.sw.bb2.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i

if.end.sw.bb.i_crit_edge29:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge28:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge27:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge26:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge25:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge24:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge23:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge22:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge21:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge20:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge19:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge18:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge17:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge16:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.get_event_name.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_event_name.exit

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge16, %if.end.sw.bb.i_crit_edge17, %if.end.sw.bb.i_crit_edge18, %if.end.sw.bb.i_crit_edge19, %if.end.sw.bb.i_crit_edge20, %if.end.sw.bb.i_crit_edge21, %if.end.sw.bb.i_crit_edge22, %if.end.sw.bb.i_crit_edge23, %if.end.sw.bb.i_crit_edge24, %if.end.sw.bb.i_crit_edge25, %if.end.sw.bb.i_crit_edge26, %if.end.sw.bb.i_crit_edge27, %if.end.sw.bb.i_crit_edge28, %if.end.sw.bb.i_crit_edge29
  %arrayidx.i = getelementptr [18 x ptr], ptr @tcpa_event_type_strings, i32 0, i32 %7
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @strlen(ptr noundef %10) #15
  br label %get_event_name.exit

sw.bb2.i:                                         ; preds = %if.end.sw.bb2.i_crit_edge, %if.end.sw.bb2.i_crit_edge30
  %event_size.i = getelementptr inbounds %struct.tcpa_event, ptr %v, i32 0, i32 3
  %11 = ptrtoint ptr %event_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %event_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %12)
  %cmp.i = icmp ult i32 %12, 1000
  %spec.select.i = select i1 %cmp.i, ptr %add.ptr, ptr @.str.7
  %spec.select1.i = select i1 %cmp.i, i32 %12, i32 0
  br label %get_event_name.exit

sw.bb4.i:                                         ; preds = %if.end
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %14, label %sw.bb4.i.get_event_name.exit_crit_edge [
    i32 1, label %sw.bb4.i.sw.bb5.i_crit_edge
    i32 2, label %sw.bb4.i.sw.bb5.i_crit_edge31
    i32 5, label %sw.bb4.i.sw.bb5.i_crit_edge32
    i32 6, label %sw.bb4.i.sw.bb5.i_crit_edge33
    i32 7, label %sw.bb4.i.sw.bb5.i_crit_edge34
    i32 8, label %sw.bb4.i.sw.bb5.i_crit_edge35
    i32 11, label %sw.bb4.i.sw.bb5.i_crit_edge36
    i32 3, label %sw.bb4.i.sw.bb9.i_crit_edge
    i32 4, label %sw.bb4.i.sw.bb9.i_crit_edge37
    i32 10, label %sw.bb4.i.sw.bb9.i_crit_edge38
    i32 12, label %sw.bb4.i.sw.bb9.i_crit_edge39
    i32 13, label %sw.bb4.i.sw.bb9.i_crit_edge40
  ]

sw.bb4.i.sw.bb9.i_crit_edge40:                    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9.i

sw.bb4.i.sw.bb9.i_crit_edge39:                    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9.i

sw.bb4.i.sw.bb9.i_crit_edge38:                    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9.i

sw.bb4.i.sw.bb9.i_crit_edge37:                    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9.i

sw.bb4.i.sw.bb9.i_crit_edge:                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9.i

sw.bb4.i.sw.bb5.i_crit_edge36:                    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5.i

sw.bb4.i.sw.bb5.i_crit_edge35:                    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5.i

sw.bb4.i.sw.bb5.i_crit_edge34:                    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5.i

sw.bb4.i.sw.bb5.i_crit_edge33:                    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5.i

sw.bb4.i.sw.bb5.i_crit_edge32:                    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5.i

sw.bb4.i.sw.bb5.i_crit_edge31:                    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5.i

sw.bb4.i.sw.bb5.i_crit_edge:                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5.i

sw.bb4.i.get_event_name.exit_crit_edge:           ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_event_name.exit

sw.bb5.i:                                         ; preds = %sw.bb4.i.sw.bb5.i_crit_edge, %sw.bb4.i.sw.bb5.i_crit_edge31, %sw.bb4.i.sw.bb5.i_crit_edge32, %sw.bb4.i.sw.bb5.i_crit_edge33, %sw.bb4.i.sw.bb5.i_crit_edge34, %sw.bb4.i.sw.bb5.i_crit_edge35, %sw.bb4.i.sw.bb5.i_crit_edge36
  %arrayidx7.i = getelementptr [15 x ptr], ptr @tcpa_pc_event_id_strings, i32 0, i32 %14
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx7.i, align 4
  %call8.i = tail call i32 @strlen(ptr noundef %17) #15
  br label %get_event_name.exit

sw.bb9.i:                                         ; preds = %sw.bb4.i.sw.bb9.i_crit_edge, %sw.bb4.i.sw.bb9.i_crit_edge37, %sw.bb4.i.sw.bb9.i_crit_edge38, %sw.bb4.i.sw.bb9.i_crit_edge39, %sw.bb4.i.sw.bb9.i_crit_edge40
  %arrayidx11.i = getelementptr [15 x ptr], ptr @tcpa_pc_event_id_strings, i32 0, i32 %14
  %18 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx11.i, align 4
  %call12.i = tail call i32 @strlen(ptr noundef %19) #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb9.i
  %d_len.03.i = phi i32 [ 0, %sw.bb9.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %i.02.i = phi i32 [ 0, %sw.bb9.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i = shl nuw i32 %i.02.i, 1
  %arrayidx14.i = getelementptr [41 x i8], ptr %data.i, i32 0, i32 %mul.i
  %arrayidx15.i = getelementptr %struct.tcpa_pc_event, ptr %add.ptr, i32 0, i32 2, i32 %i.02.i
  %20 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx15.i, align 1
  %conv.i = zext i8 %21 to i32
  %call16.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx14.i, ptr noundef nonnull @.str.8, i32 noundef %conv.i) #10
  %add.i = add i32 %call16.i, %d_len.03.i
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %for.body.i.get_event_name.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.get_event_name.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_event_name.exit

get_event_name.exit:                              ; preds = %for.body.i.get_event_name.exit_crit_edge, %sw.bb5.i, %sw.bb4.i.get_event_name.exit_crit_edge, %sw.bb2.i, %sw.bb.i, %if.end.get_event_name.exit_crit_edge
  %name.0.i = phi ptr [ @.str.7, %if.end.get_event_name.exit_crit_edge ], [ @.str.7, %sw.bb4.i.get_event_name.exit_crit_edge ], [ %17, %sw.bb5.i ], [ %10, %sw.bb.i ], [ %spec.select.i, %sw.bb2.i ], [ %19, %for.body.i.get_event_name.exit_crit_edge ]
  %n_len.0.i = phi i32 [ 0, %if.end.get_event_name.exit_crit_edge ], [ 0, %sw.bb4.i.get_event_name.exit_crit_edge ], [ %call8.i, %sw.bb5.i ], [ %call.i, %sw.bb.i ], [ %spec.select1.i, %sw.bb2.i ], [ %call12.i, %for.body.i.get_event_name.exit_crit_edge ]
  %d_len.1.i = phi i32 [ 0, %if.end.get_event_name.exit_crit_edge ], [ 0, %sw.bb4.i.get_event_name.exit_crit_edge ], [ 0, %sw.bb5.i ], [ 0, %sw.bb.i ], [ 0, %sw.bb2.i ], [ %add.i, %for.body.i.get_event_name.exit_crit_edge ]
  %call19.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 1000, ptr noundef nonnull @.str.9, i32 noundef %n_len.0.i, ptr noundef %name.0.i, i32 noundef %d_len.1.i, ptr noundef nonnull %data.i) #10
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %data.i) #10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.6, ptr noundef nonnull %call7.i) #10
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %get_event_name.exit, %do.end
  %retval.0 = phi i32 [ 0, %get_event_name.exit ], [ -14, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm1_binary_bios_measurements_show(ptr noundef %m, ptr nocapture noundef readonly %v) #3 align 64 {
entry:
  %temp_event = alloca %struct.tcpa_event, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %temp_event) #10
  %0 = getelementptr inbounds %struct.tcpa_event, ptr %temp_event, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tcpa_event, ptr %temp_event, i32 0, i32 3
  %2 = call ptr @memcpy(ptr %temp_event, ptr %v, i32 28)
  %3 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %v, align 4
  %5 = ptrtoint ptr %temp_event to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %temp_event, align 4
  %event_type = getelementptr inbounds %struct.tcpa_event, ptr %v, i32 0, i32 1
  %6 = ptrtoint ptr %event_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event_type, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %0, align 4
  %event_size = getelementptr inbounds %struct.tcpa_event, ptr %v, i32 0, i32 3
  %9 = ptrtoint ptr %event_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %event_size, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %1, align 4
  br label %for.body

for.cond4.preheader:                              ; preds = %for.body
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %13)
  %cmp624 = icmp ult i32 %13, -32
  br i1 %cmp624, label %for.body7.preheader, label %for.cond4.preheader.for.end11_crit_edge

for.cond4.preheader.for.end11_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end11

for.body7.preheader:                              ; preds = %for.cond4.preheader
  %14 = add nuw i32 %13, 31
  br label %for.body7

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.023 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %temp_event, i32 %i.023
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %16) #10
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %for.cond4.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.body7.preheader
  %i.125 = phi i32 [ %inc10, %for.body7.for.body7_crit_edge ], [ 31, %for.body7.preheader ]
  %arrayidx8 = getelementptr i8, ptr %v, i32 %i.125
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx8, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %18) #10
  %inc10 = add nuw i32 %i.125, 1
  %exitcond26.not = icmp eq i32 %i.125, %14
  br i1 %exitcond26.not, label %for.body7.for.end11_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7

for.body7.for.end11_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end11

for.end11:                                        ; preds = %for.body7.for.end11_crit_edge, %for.cond4.preheader.for.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %temp_event) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @tpm1_ascii_b_measurements_seqops, !1, !"tpm1_ascii_b_measurements_seqops", i1 false, i1 false}
!1 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 285, i32 29}
!2 = !{ptr @tpm1_binary_b_measurements_seqops, !3, !"tpm1_binary_b_measurements_seqops", i1 false, i1 false}
!3 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 292, i32 29}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 262, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tpm1_ascii_bios_measurements_show._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @tpm1_ascii_bios_measurements_show._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 268, i32 16}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 271, i32 16}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 274, i32 16}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 279, i32 16}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 146, i32 21}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 207, i32 34}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 218, i32 40}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 31, i32 2}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 32, i32 2}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 34, i32 2}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 35, i32 2}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 36, i32 2}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 37, i32 2}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 38, i32 2}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 39, i32 2}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 40, i32 2}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 41, i32 2}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 42, i32 2}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 43, i32 2}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 44, i32 2}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 45, i32 2}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 46, i32 2}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 47, i32 2}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 48, i32 2}
!58 = !{ptr @tcpa_event_type_strings, !59, !"tcpa_event_type_strings", i1 false, i1 false}
!59 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 30, i32 20}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 53, i32 2}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 54, i32 2}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 55, i32 2}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 56, i32 2}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 57, i32 2}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 58, i32 2}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 59, i32 2}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 60, i32 2}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 62, i32 2}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 64, i32 2}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 65, i32 2}
!82 = !{ptr @tcpa_pc_event_id_strings, !83, !"tcpa_pc_event_id_strings", i1 false, i1 false}
!83 = !{!"../drivers/char/tpm/eventlog/tpm1.c", i32 51, i32 20}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}

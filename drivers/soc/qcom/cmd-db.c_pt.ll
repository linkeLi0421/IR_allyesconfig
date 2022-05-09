; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/cmd-db.c_pt.bc'
source_filename = "../drivers/soc/qcom/cmd-db.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cmd_db_ready\22, \22a\22\09"
module asm "\09.weak\09__crc_cmd_db_ready\09\09\09\09"
module asm "\09.long\09__crc_cmd_db_ready\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cmd_db_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22cmd_db_ready\22\09\09\09\09\09"
module asm "__kstrtabns_cmd_db_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cmd_db_read_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_cmd_db_read_addr\09\09\09\09"
module asm "\09.long\09__crc_cmd_db_read_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cmd_db_read_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22cmd_db_read_addr\22\09\09\09\09\09"
module asm "__kstrtabns_cmd_db_read_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cmd_db_read_aux_data\22, \22a\22\09"
module asm "\09.weak\09__crc_cmd_db_read_aux_data\09\09\09\09"
module asm "\09.long\09__crc_cmd_db_read_aux_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cmd_db_read_aux_data:\09\09\09\09\09"
module asm "\09.asciz \09\22cmd_db_read_aux_data\22\09\09\09\09\09"
module asm "__kstrtabns_cmd_db_read_aux_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cmd_db_read_slave_id\22, \22a\22\09"
module asm "\09.weak\09__crc_cmd_db_read_slave_id\09\09\09\09"
module asm "\09.long\09__crc_cmd_db_read_slave_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cmd_db_read_slave_id:\09\09\09\09\09"
module asm "\09.asciz \09\22cmd_db_read_slave_id\22\09\09\09\09\09"
module asm "__kstrtabns_cmd_db_read_slave_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cmd_db_header = type { i32, [4 x i8], [8 x %struct.rsc_hdr], i32, i32, [0 x i8] }
%struct.rsc_hdr = type { i16, i16, i16, i16, i16, [3 x i16] }
%struct.entry_header = type { [8 x i8], [2 x i32], i32, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.reserved_mem = type { ptr, i32, i32, ptr, i32, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }

@cmd_db_header = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_cmd_db_ready = external dso_local constant [0 x i8], align 1
@__kstrtabns_cmd_db_ready = external dso_local constant [0 x i8], align 1
@__ksymtab_cmd_db_ready = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cmd_db_ready to i32), ptr @__kstrtab_cmd_db_ready, ptr @__kstrtabns_cmd_db_ready }, section "___ksymtab+cmd_db_ready", align 4
@__kstrtab_cmd_db_read_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_cmd_db_read_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_cmd_db_read_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cmd_db_read_addr to i32), ptr @__kstrtab_cmd_db_read_addr, ptr @__kstrtabns_cmd_db_read_addr }, section "___ksymtab+cmd_db_read_addr", align 4
@__kstrtab_cmd_db_read_aux_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_cmd_db_read_aux_data = external dso_local constant [0 x i8], align 1
@__ksymtab_cmd_db_read_aux_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cmd_db_read_aux_data to i32), ptr @__kstrtab_cmd_db_read_aux_data, ptr @__kstrtabns_cmd_db_read_aux_data }, section "___ksymtab+cmd_db_read_aux_data", align 4
@__kstrtab_cmd_db_read_slave_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_cmd_db_read_slave_id = external dso_local constant [0 x i8], align 1
@__ksymtab_cmd_db_read_slave_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cmd_db_read_slave_id to i32), ptr @__kstrtab_cmd_db_read_slave_id, ptr @__kstrtabns_cmd_db_read_slave_id }, section "___ksymtab+cmd_db_read_slave_id", align 4
@__initcall__kmod_cmd_db__210_359_cmd_db_device_init3 = internal global ptr @cmd_db_device_init, section ".initcall3.init", align 4
@__UNIQUE_ID_description211 = internal constant [65 x i8] c"cmd_db.description=Qualcomm Technologies, Inc. Command DB Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file212 = internal constant [36 x i8] c"cmd_db.file=drivers/soc/qcom/cmd-db\00", section ".modinfo", align 1
@__UNIQUE_ID_license213 = internal constant [22 x i8] c"cmd_db.license=GPL v2\00", section ".modinfo", align 1
@CMD_DB_MAGIC = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\DB0\03\0C", [28 x i8] zeroinitializer }, align 32
@cmd_db_dev_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cmd_db_dev_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @cmd_db_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cmd-db\00", [25 x i8] zeroinitializer }, align 32
@cmd_db_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,cmd-db\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cmd_db_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 319, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to acquire memory region\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cmd_db_dev_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/soc/qcom/cmd-db.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cmd_db_dev_probe._entry_ptr = internal global ptr @cmd_db_dev_probe._entry, section ".printk_index", align 4
@cmd_db_dev_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 331, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid Command DB Magic\0A\00", [38 x i8] zeroinitializer }, align 32
@cmd_db_dev_probe._entry_ptr.8 = internal global ptr @cmd_db_dev_probe._entry.6, section ".printk_index", align 4
@cmd_db_debugfs_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @open_cmd_db_debugfs, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Command DB DUMP\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ARC\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VRM\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BCM\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Slave %s (v%u.%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"-------------------------\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"0x%05x: %*pEp\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" [%*ph]\00", [24 x i8] zeroinitializer }, align 32
@switch.table.cmd_db_debugfs_dump = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"cmd_db_header\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 104, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"CMD_DB_MAGIC\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 95, i32 17 }
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"cmd_db_dev_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 346, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 349, i32 14 }
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"cmd_db_match_table\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 340, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 319, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 331, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"cmd_db_debugfs_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 303, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 251, i32 16 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 260, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 263, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 266, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 269, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 277, i32 19 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 278, i32 17 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 282, i32 20 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [29 x i8] c"../drivers/soc/qcom/cmd-db.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 287, i32 21 }
@___asan_gen_.87 = private unnamed_addr constant [33 x i8] c"switch.table.cmd_db_debugfs_dump\00", align 1
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_file212, ptr @__UNIQUE_ID_license213, ptr @__initcall__kmod_cmd_db__210_359_cmd_db_device_init3, ptr @__ksymtab_cmd_db_read_addr, ptr @__ksymtab_cmd_db_read_aux_data, ptr @__ksymtab_cmd_db_read_slave_id, ptr @__ksymtab_cmd_db_ready, ptr @cmd_db_dev_probe._entry, ptr @cmd_db_dev_probe._entry.6, ptr @cmd_db_dev_probe._entry_ptr, ptr @cmd_db_dev_probe._entry_ptr.8, ptr @cmd_db_header, ptr @CMD_DB_MAGIC, ptr @cmd_db_dev_driver, ptr @.str, ptr @cmd_db_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @cmd_db_debugfs_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @switch.table.cmd_db_debugfs_dump], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_db_header to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CMD_DB_MAGIC to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_db_dev_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_db_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_db_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_db_dev_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_db_debugfs_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cmd_db_debugfs_dump to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cmd_db_ready() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cmd_db_header, align 4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %magic1.i = getelementptr inbounds %struct.cmd_db_header, ptr %0, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %magic1.i, ptr noundef nonnull dereferenceable(4) @CMD_DB_MAGIC, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  %. = select i1 %cmp.i, i32 0, i32 -22
  br label %return

return:                                           ; preds = %if.else, %entry.return_crit_edge
  %retval.0 = phi i32 [ -517, %entry.return_crit_edge ], [ %., %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cmd_db_read_addr(ptr nocapture noundef readonly %id) #1 align 64 {
entry:
  %ent = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ent) #10
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ent, align 4, !annotation !66
  %call = call fastcc i32 @cmd_db_get_header(ptr noundef %id, ptr noundef nonnull %ent, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ent, align 4
  %addr = getelementptr inbounds %struct.entry_header, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ent) #10
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cmd_db_get_header(ptr nocapture noundef readonly %id, ptr noundef writeonly %eh, ptr noundef writeonly %rh) unnamed_addr #1 align 64 {
entry:
  %query = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %query) #10
  %0 = load ptr, ptr @cmd_db_header, align 4
  %cmp.i = icmp eq ptr %0, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.else.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i:                                        ; preds = %entry
  %magic1.i.i = getelementptr inbounds %struct.cmd_db_header, ptr %0, i32 0, i32 1
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %magic1.i.i, ptr noundef nonnull dereferenceable(4) @CMD_DB_MAGIC, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.else.i
  %call1 = call ptr @strncpy(ptr noundef nonnull %query, ptr noundef %id, i32 noundef 8)
  %data.i = getelementptr inbounds %struct.cmd_db_header, ptr %0, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc24.for.body_crit_edge, %if.end
  %i.049 = phi i32 [ 0, %if.end ], [ %inc25, %for.inc24.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cmd_db_header, ptr %0, i32 0, i32 2, i32 %i.049
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool2.not = icmp eq i16 %2, 0
  br i1 %tobool2.not, label %for.body.cleanup_crit_edge, label %if.end4

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %cnt = getelementptr %struct.cmd_db_header, ptr %0, i32 0, i32 2, i32 %i.049, i32 3
  %3 = ptrtoint ptr %cnt to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp746.not = icmp eq i16 %4, 0
  br i1 %cmp746.not, label %if.end4.for.inc24_crit_edge, label %for.body9.preheader

if.end4.for.inc24_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc24

for.body9.preheader:                              ; preds = %if.end4
  %5 = call i16 @llvm.bswap.i16(i16 %4)
  %header_offset.i = getelementptr %struct.cmd_db_header, ptr %0, i32 0, i32 2, i32 %i.049, i32 1
  %6 = ptrtoint ptr %header_offset.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %header_offset.i, align 2
  %8 = call i16 @llvm.bswap.i16(i16 %7) #10
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %conv.i
  %9 = call i16 @llvm.umax.i16(i16 %5, i16 1)
  %umax = zext i16 %9 to i32
  br label %for.body9

for.body9:                                        ; preds = %for.inc.for.body9_crit_edge, %for.body9.preheader
  %j.048 = phi i32 [ %inc, %for.inc.for.body9_crit_edge ], [ 0, %for.body9.preheader ]
  %ent.047 = phi ptr [ %incdec.ptr, %for.inc.for.body9_crit_edge ], [ %add.ptr.i, %for.body9.preheader ]
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(8) %ent.047, ptr noundef nonnull dereferenceable(8) %query, i32 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp14 = icmp eq i32 %bcmp, 0
  br i1 %cmp14, label %if.then16, label %for.inc

if.then16:                                        ; preds = %for.body9
  %tobool17.not = icmp eq ptr %eh, null
  br i1 %tobool17.not, label %if.then16.if.end19_crit_edge, label %if.then18

if.then16.if.end19_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %eh to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ent.047, ptr %eh, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then16.if.end19_crit_edge
  %tobool20.not = icmp eq ptr %rh, null
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %if.then21

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %rh to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx, ptr %rh, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body9
  %inc = add nuw nsw i32 %j.048, 1
  %incdec.ptr = getelementptr %struct.entry_header, ptr %ent.047, i32 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.inc24_crit_edge, label %for.inc.for.body9_crit_edge

for.inc.for.body9_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9

for.inc.for.inc24_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc24

for.inc24:                                        ; preds = %for.inc.for.inc24_crit_edge, %if.end4.for.inc24_crit_edge
  %inc25 = add nuw nsw i32 %i.049, 1
  %exitcond52.not = icmp eq i32 %inc25, 8
  br i1 %exitcond52.not, label %for.inc24.cleanup_crit_edge, label %for.inc24.for.body_crit_edge

for.inc24.for.body_crit_edge:                     ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc24.cleanup_crit_edge:                      ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc24.cleanup_crit_edge, %if.then21, %if.end19.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then21 ], [ 0, %if.end19.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ], [ -517, %entry.cleanup_crit_edge ], [ -19, %for.body.cleanup_crit_edge ], [ -19, %for.inc24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %query) #10
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cmd_db_read_aux_data(ptr nocapture noundef readonly %id, ptr noundef writeonly %len) #1 align 64 {
entry:
  %ent = alloca ptr, align 4
  %rsc_hdr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ent) #10
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ent, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsc_hdr) #10
  %1 = ptrtoint ptr %rsc_hdr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %rsc_hdr, align 4, !annotation !66
  %call = call fastcc i32 @cmd_db_get_header(ptr noundef %id, ptr noundef nonnull %ent, ptr noundef nonnull %rsc_hdr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %len, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ent, align 4
  %len4 = getelementptr inbounds %struct.entry_header, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %len4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len4, align 4
  %7 = call i16 @llvm.bswap.i16(i16 %6)
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %len, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %9 = ptrtoint ptr %rsc_hdr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rsc_hdr, align 4
  %11 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ent, align 4
  %data_offset.i = getelementptr inbounds %struct.rsc_hdr, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data_offset.i, align 2
  %15 = call i16 @llvm.bswap.i16(i16 %14) #10
  %offset1.i = getelementptr inbounds %struct.entry_header, ptr %12, i32 0, i32 4
  %16 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %offset1.i, align 2
  %18 = call i16 @llvm.bswap.i16(i16 %17) #10
  %19 = load ptr, ptr @cmd_db_header, align 4
  %data.i = getelementptr inbounds %struct.cmd_db_header, ptr %19, i32 0, i32 5
  %conv.i = zext i16 %15 to i32
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %conv.i
  %conv2.i = zext i16 %18 to i32
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %conv2.i
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  %retval.0 = phi ptr [ %2, %if.then ], [ %add.ptr3.i, %if.end5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsc_hdr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ent) #10
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cmd_db_read_slave_id(ptr nocapture noundef readonly %id) #1 align 64 {
entry:
  %ent = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ent) #10
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ent, align 4, !annotation !66
  %call = call fastcc i32 @cmd_db_get_header(ptr noundef %id, ptr noundef nonnull %ent, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ent, align 4
  %addr1 = getelementptr inbounds %struct.entry_header, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr1, align 4
  %5 = lshr i32 %4, 8
  %and = and i32 %5, 7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ent) #10
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cmd_db_device_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cmd_db_dev_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmd_db_dev_probe(ptr noundef %pdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_reserved_mem_lookup(ptr noundef %1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %base = getelementptr inbounds %struct.reserved_mem, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %size = getelementptr inbounds %struct.reserved_mem, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %call2 = tail call ptr @memremap(i32 noundef %3, i32 noundef %5, i32 noundef 1) #10
  store ptr %call2, ptr @cmd_db_header, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  store ptr null, ptr @cmd_db_header, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %magic1.i = getelementptr inbounds %struct.cmd_db_header, ptr %call2, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %magic1.i, ptr noundef nonnull dereferenceable(4) @CMD_DB_MAGIC, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #15
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 256, ptr noundef null, ptr noundef null, ptr noundef nonnull @cmd_db_debugfs_ops) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end10, %if.then4, %do.end
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %do.end10 ], [ -12, %if.then4 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_reserved_mem_lookup(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @open_cmd_db_debugfs(ptr nocapture noundef readonly %inode, ptr noundef %file) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @cmd_db_debugfs_dump, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmd_db_debugfs_dump(ptr noundef %seq, ptr nocapture noundef readnone %p) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.9) #10
  br label %for.body

for.body:                                         ; preds = %for.inc21.for.body_crit_edge, %entry
  %i.052 = phi i32 [ 0, %entry ], [ %inc22, %for.inc21.for.body_crit_edge ]
  %0 = load ptr, ptr @cmd_db_header, align 4
  %arrayidx = getelementptr %struct.cmd_db_header, ptr %0, i32 0, i32 2, i32 %i.052
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %for.body.for.end23_crit_edge, label %if.end

for.body.for.end23_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end23

if.end:                                           ; preds = %for.body
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %switch.tableidx = add i16 %3, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %switch.tableidx)
  %4 = icmp ult i16 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.cmd_db_debugfs_dump, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %name.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.13, %if.end.sw.epilog_crit_edge ]
  %version4 = getelementptr %struct.cmd_db_header, ptr %0, i32 0, i32 2, i32 %i.052, i32 4
  %7 = ptrtoint ptr %version4 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %version4, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %10 = lshr i16 %9, 8
  %conv6 = zext i16 %10 to i32
  %11 = and i16 %9, 255
  %conv9 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.14, ptr noundef nonnull %name.0, i32 noundef %conv6, i32 noundef %conv9) #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.15) #10
  %cnt = getelementptr %struct.cmd_db_header, ptr %0, i32 0, i32 2, i32 %i.052, i32 3
  %12 = ptrtoint ptr %cnt to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp1248.not = icmp eq i16 %13, 0
  br i1 %cmp1248.not, label %sw.epilog.for.inc21_crit_edge, label %for.body14.lr.ph

sw.epilog.for.inc21_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21

for.body14.lr.ph:                                 ; preds = %sw.epilog
  %14 = load ptr, ptr @cmd_db_header, align 4
  %data.i = getelementptr inbounds %struct.cmd_db_header, ptr %14, i32 0, i32 5
  %header_offset.i = getelementptr %struct.cmd_db_header, ptr %0, i32 0, i32 2, i32 %i.052, i32 1
  %15 = ptrtoint ptr %header_offset.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %header_offset.i, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #10
  %conv.i = zext i16 %17 to i32
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %conv.i
  %data_offset.i = getelementptr %struct.cmd_db_header, ptr %0, i32 0, i32 2, i32 %i.052, i32 2
  br label %for.body14

for.body14:                                       ; preds = %if.end20.for.body14_crit_edge, %for.body14.lr.ph
  %ent.050 = phi ptr [ %add.ptr.i, %for.body14.lr.ph ], [ %incdec.ptr, %if.end20.for.body14_crit_edge ]
  %j.049 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc, %if.end20.for.body14_crit_edge ]
  %addr = getelementptr inbounds %struct.entry_header, ptr %ent.050, i32 0, i32 2
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.16, i32 noundef %20, i32 noundef 8, ptr noundef %ent.050) #10
  %len15 = getelementptr inbounds %struct.entry_header, ptr %ent.050, i32 0, i32 3
  %21 = ptrtoint ptr %len15 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %len15, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool16.not = icmp eq i16 %22, 0
  br i1 %tobool16.not, label %for.body14.if.end20_crit_edge, label %if.then17

for.body14.if.end20_crit_edge:                    ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then17:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %conv18 = zext i16 %23 to i32
  %24 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %data_offset.i, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #10
  %offset1.i = getelementptr inbounds %struct.entry_header, ptr %ent.050, i32 0, i32 4
  %27 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %offset1.i, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #10
  %30 = load ptr, ptr @cmd_db_header, align 4
  %data.i44 = getelementptr inbounds %struct.cmd_db_header, ptr %30, i32 0, i32 5
  %conv.i45 = zext i16 %26 to i32
  %add.ptr.i46 = getelementptr i8, ptr %data.i44, i32 %conv.i45
  %conv2.i = zext i16 %29 to i32
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i46, i32 %conv2.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.17, i32 noundef %conv18, ptr noundef %add.ptr3.i) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %for.body14.if.end20_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #10
  %inc = add nuw nsw i32 %j.049, 1
  %incdec.ptr = getelementptr %struct.entry_header, ptr %ent.050, i32 1
  %31 = ptrtoint ptr %cnt to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %cnt, align 2
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %conv11 = zext i16 %33 to i32
  %cmp12 = icmp ult i32 %inc, %conv11
  br i1 %cmp12, label %if.end20.for.body14_crit_edge, label %if.end20.for.inc21_crit_edge

if.end20.for.inc21_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21

if.end20.for.body14_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14

for.inc21:                                        ; preds = %if.end20.for.inc21_crit_edge, %sw.epilog.for.inc21_crit_edge
  %inc22 = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc22, 8
  br i1 %exitcond.not, label %for.inc21.for.end23_crit_edge, label %for.inc21.for.body_crit_edge

for.inc21.for.body_crit_edge:                     ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc21.for.end23_crit_edge:                    ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end23

for.end23:                                        ; preds = %for.inc21.for.end23_crit_edge, %for.body.for.end23_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__ksymtab_cmd_db_ready, !1, !"__ksymtab_cmd_db_ready", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/cmd-db.c", i32 136, i32 1}
!2 = !{ptr @__ksymtab_cmd_db_read_addr, !3, !"__ksymtab_cmd_db_read_addr", i1 false, i1 false}
!3 = !{!"../drivers/soc/qcom/cmd-db.c", i32 192, i32 1}
!4 = !{ptr @__ksymtab_cmd_db_read_aux_data, !5, !"__ksymtab_cmd_db_read_aux_data", i1 false, i1 false}
!5 = !{!"../drivers/soc/qcom/cmd-db.c", i32 217, i32 1}
!6 = !{ptr @__ksymtab_cmd_db_read_slave_id, !7, !"__ksymtab_cmd_db_read_slave_id", i1 false, i1 false}
!7 = !{!"../drivers/soc/qcom/cmd-db.c", i32 239, i32 1}
!8 = !{ptr @__initcall__kmod_cmd_db__210_359_cmd_db_device_init3, !9, !"__initcall__kmod_cmd_db__210_359_cmd_db_device_init3", i1 false, i1 false}
!9 = !{!"../drivers/soc/qcom/cmd-db.c", i32 359, i32 1}
!10 = !{ptr @__UNIQUE_ID_description211, !11, !"__UNIQUE_ID_description211", i1 false, i1 false}
!11 = !{!"../drivers/soc/qcom/cmd-db.c", i32 361, i32 1}
!12 = !{ptr @__UNIQUE_ID_file212, !13, !"__UNIQUE_ID_file212", i1 false, i1 false}
!13 = !{!"../drivers/soc/qcom/cmd-db.c", i32 362, i32 1}
!14 = !{ptr @__UNIQUE_ID_license213, !13, !"__UNIQUE_ID_license213", i1 false, i1 false}
!15 = !{ptr @cmd_db_header, !16, !"cmd_db_header", i1 false, i1 false}
!16 = !{!"../drivers/soc/qcom/cmd-db.c", i32 104, i32 30}
!17 = !{ptr @CMD_DB_MAGIC, !18, !"CMD_DB_MAGIC", i1 false, i1 false}
!18 = !{!"../drivers/soc/qcom/cmd-db.c", i32 95, i32 17}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/soc/qcom/cmd-db.c", i32 349, i32 14}
!21 = !{ptr @cmd_db_dev_driver, !22, !"cmd_db_dev_driver", i1 false, i1 false}
!22 = !{!"../drivers/soc/qcom/cmd-db.c", i32 346, i32 31}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/soc/qcom/cmd-db.c", i32 319, i32 3}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cmd_db_dev_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @cmd_db_dev_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/soc/qcom/cmd-db.c", i32 331, i32 3}
!33 = !{ptr @cmd_db_dev_probe._entry.6, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cmd_db_dev_probe._entry_ptr.8, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @cmd_db_debugfs_ops, !36, !"cmd_db_debugfs_ops", i1 false, i1 false}
!36 = !{!"../drivers/soc/qcom/cmd-db.c", i32 303, i32 37}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/soc/qcom/cmd-db.c", i32 251, i32 16}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/soc/qcom/cmd-db.c", i32 260, i32 11}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/qcom/cmd-db.c", i32 263, i32 11}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/soc/qcom/cmd-db.c", i32 266, i32 11}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/soc/qcom/cmd-db.c", i32 269, i32 11}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/soc/qcom/cmd-db.c", i32 277, i32 19}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/soc/qcom/cmd-db.c", i32 278, i32 17}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/soc/qcom/cmd-db.c", i32 282, i32 20}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/soc/qcom/cmd-db.c", i32 287, i32 21}
!55 = !{ptr @cmd_db_match_table, !56, !"cmd_db_match_table", i1 false, i1 false}
!56 = !{!"../drivers/soc/qcom/cmd-db.c", i32 340, i32 34}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
